---
title: "uploads a file as public gist to Github"
slug: "uploads-a-file-as-public-gist-to-github"
date: "2023-02-02"
enableToc: false
tags:
- building
---

> [!info]
>
> 🌱 來自: [[shell scripts]]

# uploads a file as public gist to Github

```sh
#!/bin/bash

while [[ $# -gt 1 ]]; do
  key="$1"

  case $key in
    --file)
      FILE="$2"
      shift
      ;;
    --token)
      TOKEN="$2"
      shift
      ;;
    *)
      ;;
  esac
  shift
done

CONTENT=$(cat $FILE)

curl -H "Authorization: token $TOKEN" \
  -H "Content-Type: application/json" \
  -X POST -d "{\"public\":true,\"files\":{\"$FILE\":{\"content\":\"$CONTENT\"}}}" \
  https://api.github.com/gists
```
