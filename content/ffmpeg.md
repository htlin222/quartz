---
title: "ffmpeg"
slug: "ffmpeg"
date: "2023-12-18"
enableToc: false
tags:
  - building
---

> [!info]
>
> 🌱 來自: [[command line know how]]

# ffmpeg

To create a video from your `audio.mp3` file and `img.png` image, and to add a running time code in the center of the image, you can use FFmpeg, a powerful multimedia framework. Here's a step-by-step guide on how to do it:

1. **Install FFmpeg**: If you haven't already, install FFmpeg on your computer. You can download it from the [FFmpeg website](https://ffmpeg.org/download.html) and follow the installation instructions for your operating system.

2. **Prepare the Command**: Use the following FFmpeg command as a template. This command will take your `img.png` and `audio.mp3`, create a video, and add a timecode overlay:

```bash
ffmpeg -loop 1 -framerate 25 -i img.png -i audio.mp3 -vf "drawtext=text='%{pts\:hms}': x=(w-tw)/2: y=(h/2-th/2): fontcolor=white: fontsize=30: box=1: boxcolor=black@0.5: boxborderw=5" -c:v libx264 -tune stillimage -c:a aac -b:a 192k -pix_fmt yuv420p -shortest output.mp4
```

## Explanation of the command

- `-loop 1 -framerate 25 -i img.png`: Loops the image at a frame rate of 25 FPS.
- `-i audio.mp3`: Specifies the audio file.
- `-vf "drawtext=..."`: This is the filter to draw the timecode.
  - `text='%{pts\:hms}'`: The timecode format (hours:minutes:seconds).
  - `x=(w-tw)/2`: Centers the text horizontally.
  - `y=(h/2-th/2)`: Centers the text vertically.
  - `fontcolor=white`: Sets the font color to white.
  - `fontsize=30`: Sets the font size.
  - `box=1`: Adds a background box for readability.
  - `boxcolor=black@0.5`: The box color (semi-transparent black).
  - `boxborderw=5`: The border width of the box.
- `-c:v libx264`: Uses the H.264 codec for the video.
- `-tune stillimage`: Optimizes for still image input.
- `-c:a aac -b:a 192k`: Uses AAC codec for audio with a bitrate of 192k.
- `-pix_fmt yuv420p`: Ensures compatibility with most players.
- `-shortest`: Ends the video when the shortest input (audio or video) ends.
- `output.mp4`: The name of the output file.

3. **Run the Command**: Open a terminal or command prompt, navigate to the directory where your `img.png` and `audio.mp3` files are located, and run the command.

This command will produce a video file named `output.mp4` with your image, the audio playing in the background, and a running time code centered on the image. Adjust the font size and box properties as needed to fit your preferences.

## Other overlay

```bash
#! /bin/sh
dur=45
ffmpeg -y -filter_complex "
color=green:size=1280x32,loop=loop=-1:size=2,setsar=1[pbbg];
color=white:size=1280x32,loop=loop=-1:size=2,setsar=1[pbfg];
[pbbg][pbfg]overlay='x=t/${dur}*w'[pb];

color=black:size=1920x1080,loop=loop=-1:size=2,setsar=1[bg];
[bg][pb]
overlay='x=(W-w)/2:y=700'
,drawtext='fontsize=50:fontcolor=white:text=%{pts\:hms} / 00\:00\:${dur}.000':x=600:y=750
[v]
" -map '[v]' -an -shortest -t ${dur}.1 01-out.mp4
```
