---
title: "generate video"
slug: "generate-video"
date: "2023-11-08"
enableToc: false
tags:
  - building
---

> [!info]
>
> 🌱 來自: [[shell scripts]]

# generate video

```bash
# 檢查參數是否足夠
if [ $# -lt 1 ]; then
    echo "Usage: $0 -f <input_file>"
    exit 1
fi

# 取得參數值
while [ $# -gt 0 ]; do
    case "$1" in
        -f)
            shift
            input_file="$1"
            ;;
        *)
            echo "Unknown option: $1"
            exit 1
            ;;
    esac
    shift
done

# 設定輸出目錄和檔名
output_dir="${input_file%.md}.tmp"
output_file="${input_file%.md}.mp4"
mkdir -p "$output_dir"

# 產生 png 圖片檔案
marp --theme-set ./themes --images png "$input_file" --image-scale 2 -o "$output_dir/${input_file%.md}.png"

# 分割 markdown 檔案並儲存
awk -v output_dir="$output_dir" -v input_file="$input_file" 'BEGIN { RS = "---\n"; FS = "\n" } NR > 2 { split(input_file, input_parts, "."); output_file = output_dir "/" input_parts[1] "." sprintf("%03d", NR-2) ".md"; print $0 > output_file }' "$input_file"

# 產生 ↪ 語音檔案和字幕檔案，並產生 ↪ 影片檔案
process_file() {
    local input_file="$1"
    local base_name="${input_file%.md}"

    # 轉換 markdown 檔案成為純文字檔案
    sed 's/<!--\([^>]*\)-->/[\1]/g' "$1" >> "${base_name}_mod.md"

    # 移除圖片設定
    sed -i '' '/!\[.*\](.*)/d' ${base_name}_mod.md

    # 產生 ↪ 語音檔案
    marp "${base_name}_mod.md" -o "${base_name}.txt"
    edge-tts --rate=+25% --voice zh-TW-YunJheNeural -f "${base_name}.txt" --write-media "${base_name}.mp3" --write-subtitles "${base_name}.vtt"

    # 處理字幕檔案
    sed -i "" 's/\([^A-Za-z]\)[[:space:]]\([^A-Za-z]\)/\1\2/g' "${base_name}.vtt"
    sed -i "" 's/\([^A-Za-z]\)[[:space:]]\([^A-Za-z]\)/\1\2/g' "${base_name}.vtt"
    perl -i -pe 's/(?<=\S)-->(?=\S)/ --> /g' "${base_name}.vtt"
    ffmpeg -y -i "${base_name}.vtt" "${base_name}.srt" -hide_banner

    # 取得圖片和音訊的寬度和長度
    input_image="${base_name}.png"
    image_width=$(sips -g pixelWidth "$input_image" | grep pixelWidth | awk '{print $2}')
    input_audio="${base_name}.mp3"
    output_video="${base_name}.mp4"
    duration=$(ffprobe -i "$input_audio" -show_entries format=duration -v quiet -of csv="p=0")

    # 設定影片檔案的格式和參數
    settings="-c:v libx264 -tune stillimage -c:a aac -b:a 96k -r 30 -pix_fmt yuv420p -t $duration"
    sub_settings="-vf subtitles=${base_name}.srt:force_style='Fontname=PingFangTC-Regular,OutlineColour=&000000000,BorderStyle=3,Outline=3,Shadow=0,MarginV=20'"
    ffmpeg -y -loop 1 -i "$input_image" -i "$input_audio" $settings $sub_settings "$output_video"
}

# 處理分割後的 markdown 檔案，產生 ↪ 影片檔案
for file in "$output_dir"/*.md; do
    if [ -f "$file" ]; then
        process_file "$file"
    fi
done

# 合併所有的影片檔案
input_list="input_list.txt"
rm -f "$input_list"
for input_file in "$output_dir"/*.mp4; do
    echo "file '$input_file'" >> "$input_list"
done

ffmpeg -y -f concat -safe 0 -i "$input_list" -c:v libx264 -c:a aac -strict experimental "$output_file"

# 顯示完成訊息
echo "🟢 DONE 🟢"
message="$output_file"
title="影片輸出已完成"
osascript -e "display notification \"$message\" with title \"$title\" sound name \"default\""
```
