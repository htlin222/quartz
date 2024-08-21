---
title: "test_here_is_a_boon"
slug: "bodyhereisaboon"
date: "2023-07-01"
enableToc: false
tags:
- building
---

> [!info]

# test_here_is_a_boon

[(18) Open link from neovim. : neovim](https://www.reddit.com/r/neovim/comments/ro6oye/open_link_from_neovim/)

```lua
if vim.fn.has("mac") == 1 then
	map("", "gx", '<Cmd>call jobstart(["open", expand("<cfile>")], {"detach": v:true})<CR>', {})
filetype_extend("telekasten", { "markdown" }).
```

