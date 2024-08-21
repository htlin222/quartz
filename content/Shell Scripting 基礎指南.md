---
title: Shell Scripting 基礎指南
date: "2023-01-27"
enableToc: false
---

> [!info]
>
> 🌱 來自: [[command line know how]]

# Shell Scripting 基礎指南 #🚧 施工中

## 什麼是 Shell Scripting？
Shell Scripting 是一種在命令提示字元 ([[command line interface]]) 中使用的程式語言，用於自動化系統管理和其他任務。

## 如何建立一個 Shell Script？
首先，開啟文字編輯器 (例如: Sublime Text, Notepad++)，然後創建一個新檔案。在頂部加入 `#!/bin/bash`，這是程式的開頭。然後在程式中撰寫你的命令，並在結尾加上 `[[exit 0]]`。

## 如何執行一個 Shell Script？

將剛剛建立的檔案保存並改名為 .sh 檔。然後在命令提示字元中進入該檔案的目錄，並輸入 "sh [scriptname].sh"。這將執行你的程式。
示例：

```
#!/bin/bash
echo "Hello, Shell Scripting!"
exit 0
```

注意:在執行腳本之前，給它們設置執行權限,輸入 chmod +x [scriptname].sh

提醒：請確保在嘗試步驟之前已經安裝了相應的程式語言環境，並確保程式碼的正確性。
