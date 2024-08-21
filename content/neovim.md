---
title: neovim
date: "2023-01-22"
enableToc: false
---

> [!info]
>
> 🌱 來自: [[蜥蜴與VIM]]

# neovim

- [[lua]]
- [[my neovim config.md|my neovim config]] 🖖

## lsp 的問題
- [Avoiding LSP formatting conflicts · jose-elias-alvarez/null-ls.nvim Wiki](https://github.com/jose-elias-alvarez/null-ls.nvim/wiki/Avoiding-LSP-formatting-conflicts)
- [sbdchd/neoformat: :sparkles: A (Neo)vim plugin for formatting code.](https://github.com/sbdchd/neoformat)
- 自動排版，裡面有重要的，哪些lsp有支援很重要。
- 你這樣就可以用這個了：
- [mhartington/formatter.nvim](https://github.com/mhartington/formatter.nvim)

```lua
vim.lsp.buf.format()
```

## UI 方面的問題
[stevearc/dressing.nvim: Neovim plugin to improve the default vim.ui interfaces](https://github.com/stevearc/dressing.nvim)

[neovim 命令行和通知使用 noice.nvim 進行豐富 | 開發者IO](https://dev.classmethod.jp/articles/eetann-noice-nvim-beginner/)

## 別人的設定

[nvim/init.lua at main · tamton-aquib/nvim](https://github.com/tamton-aquib/nvim/blob/main/init.lua)
