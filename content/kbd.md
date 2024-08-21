---
title: "kbd"
slug: "kbd"
date: "2024-01-01"
enableToc: false
tags:
  - building
---

> [!info]
>
> 🌱 來自：[[css]]

# kbd

```css
kbd {
  margin: 0;
  padding: 0;
  border: 0;
  outline: 0;
  color: var(--JAMA-blue);
  font-size: 100%;
  font-family: "Overpass Mono";
  vertical-align: baseline;
  background: transparent;
  border-color: #e6e6e6 #bebebe #bebebe #e6e6e6;
  border-style: solid;
  border-width: 1px 3px 4px;
  padding: 0 5px;
  background-color: #d2d2d2;
  background-color: rgba(210, 210, 210, 0.9);
  -webkit-border-radius: 5px;
  -moz-border-radius: 5px;
  border-radius: 5px;
}

kbd:hover {
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); /* 滑鼠懸停時的陰影 */
  background-color: rgba(200, 200, 200, 0.9); /* 滑鼠懸停時的背景色變化 */
}

kbd:active {
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2); /* 按下時的陰影，比懸停時小 */
  border-width: 1px 1px 3px; /* 按下時的邊框變化 */
  background-color: rgba(190, 190, 190, 0.9); /* 按下時的背景色變化 */
}
```
