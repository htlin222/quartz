---
title: "pubmed的二三事"
slug: "anecdotes-about-pubmed"
date: "2023-04-04"
enableToc: false
tags:
  - building
---

> [!info]
>
> 🌱 來自: [[researcher]]

# pubmed的二三事

- [[pubmed的搜尋技巧]]
-

## My serach term

```sql
("Colorectal Neoplasms/drug therapy"[MAJR])
AND
(("2022/01/01"[Date - Publication] : "3000"[Date - Publication]))
AND
("clinical trial"[Publication Type])


(("Colorectal Neoplasms/drug therapy"[MAJR]) AND ("2022/01/01"[Date - Publication] : "3000"[Date - Publication])) AND (("clinical trial, phase iii"[Publication Type]) OR ("clinical trial, phase ii"[Publication Type]))

("Breast Neoplasms/drug therapy"[MAJR])
AND
(("clinical trial, phase iii"[Publication Type]) OR ("randomized controlled trial"[Publication Type]) OR ("clinical trial"[Publication Type]))
AND
("2023/01/01"[Date - Publication] : "3000"[Date - Publication])
```
