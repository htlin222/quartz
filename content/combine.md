---
title: "combine"
slug: "combine"
date: "2023-11-11"
enableToc: false
tags:
  - building
---

> [!info]
>
> 🌱 來自: [[shell scripts]]

# combine

```bash
# 指定目錄
directory="."

# 初始化文件名稱和計數器
base_output_file="combined"
counter=1
output_file="${base_output_file}${counter}.md"

# 刪除之前的合併文件 (如果存在)
rm -f "$directory/${base_output_file}"*.md

# 合併操作
for file in "$directory"/*.md; do
 # 檢查文件大小是否超過1MB (1048576字節)
 if [ -f "$directory/$output_file" ] && [ $(stat -f%z "$directory/$output_file") -ge 1048576 ]; then
  ((counter++))
  output_file="${base_output_file}${counter}.md"
 fi

 # 確保 ✖ 不把最終的文件重複合併
 if [[ $file != "$directory/$output_file" ]]; then
  cat "$file" >>"$directory/$output_file"
  echo -e "\n" >>"$directory/$output_file" # 在文件間添加換行以分隔
 fi
done

echo "合併完成, 文件保存在 $directory/${base_output_file}*."

```
