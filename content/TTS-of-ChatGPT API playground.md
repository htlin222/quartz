---
title: "TTS-of-ChatGPT API playground"
slug: "tts-of-chatgpt-api-playground"
date: "2023-11-08"
enableToc: false
tags:
  - building
---

> [!info]
>
> 🌱 來自: [[ChatGPT API playground]]

# TTS-of-ChatGPT API playground

```python
from openai import OpenAI

client = OpenAI()


def stream_and_play(text, output):
    response = client.audio.speech.create(
        model="tts-1",
        # voice="alloy",
        voice="onyx",
        input=text,
    )
    response.stream_to_file(output)


if __name__ == "__main__":
    with open("input.txt", "r", encoding="utf-8") as file:
        file_content = file.read()  # text = input("Enter text: ")
    # text = "今天是星期三
- "
    stream_and_play(file_content, "output.mp3")
```
