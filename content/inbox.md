---
title: "inbox"
slug: "inbox"
date: "2023-06-25"
enableToc: false
tags:
- building
---

# inbox

```sh
function fzf-rg() {
    rg_prefix='rg --column --line-number --no-heading --color=always --smart-case --glob "*.md" --max-depth 1'
    fzf --bind "start:reload:$rg_prefix ''" \
        --bind "change:reload:$rg_prefix {q} || true" \
        --bind "enter:execute(echo {} )+abort" \
        --ansi --disabled \
        --height 100% --layout=reverse \
        --exit-0
}
```
