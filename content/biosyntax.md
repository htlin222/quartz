---
title: "biosyntax"
slug: "biosyntax"
date: "2024-05-06"
enableToc: false
tags:
  - building
---

> [!info]
>
> 🌱 來自：[[ngs_tools]]

# biosyntax

[bioSyntax/less at master · bioSyntax/bioSyntax](https://github.com/bioSyntax/bioSyntax/tree/master/less)

```bash
brew install source-highlight
```

## copy files

```bash
# cd into this folder
# /opt/homebrew/share/source-highlight -> Mac Chip
cp $(pwd)/less/bioSyntax.outlang <insert-path>
cp $(pwd)/less/bioSyntax-vcf.outlang <insert-path>
cp $(pwd)/less/*.style <insert-path>
cp $(pwd)/less/*.lang <insert-path>

```

## Install RC

```bash
# this file should be in /usr/local/bin/src-hilite-lesspipe.sh
# or  /Users/mac/.local/share/source-highlight/src-hilite-lesspipe.sh
ln -s /usr/local/opt/source-highlight/share/source-highlight/ /Users/mac/.local/share/source-highlight
chmod 755 /Users/mac/.local/share/source-highlight/src-hilite-lesspipe.sh
# cat $bioSyntax/less/rc_append.txt >> ~/.zshrc
```
