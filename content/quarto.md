---
title: "quarto"
slug: "quarto"
date: "2024-05-05"
enableToc: false
tags:
  - building
---

> [!info]
>
> 🌱 來自：[[open source]]

# quarto

- [Quarto - Execution Options](https://quarto.org/docs/computations/execution-options.html#shell-commands)
  - Using shell commands (from Bash, Zsh, etc.) within Quarto computational documents differs by engine. If you are using the Jupyter engine you can use Jupyter shell magics.
  - tldr: 重點是要用 engine: knitr，就可以 ✔ 執行成功了

## Jupyter Kernel Issue

[Remove the kernel on a Jupyter Notebook - Stack Overflow](https://stackoverflow.com/questions/42635310/remove-the-kernel-on-a-jupyter-notebook)

```bash
# List all kernels and grap the name of the kernel you want to remove
jupyter kernelspec list
# Remove it
jupyter kernelspec remove <kernel_name>
```
