---
title: "coding of snippets"
slug: "coding-of-snippets"
date: "2023-12-07"
enableToc: false
tags:
  - building
---

> [!info]
>
> 🌱 來自: [[snippets]]

# coding of snippets

關於建立片語，最好是把所有的片語分類一下，下面推薦一下我最近整理的分類法，我之後會照這個原則來建片語
經測試，片語最好用一個`.`來開當開頭，比較 ✖ 不會導致你一 ✖ 不小心就觸發片語出來

另外有神祕原因，如果你的片語們 💥 沒有用`.`來開頭的話，當你的片語數量越來越多的時候，系統會越跑越慢...

- A aes: adverse events
- B brief:, short version of anything
- C check
- D drug
- E edu
- F follow up schedule, follow up at which specialist
- G grade
- H hx history, PMH form, FH
- I icd coding
- N note, procedure note, death note, family meeting note
- O oop out of pocket
- P plan: clinical pathway, plan
- Q query: consult template (question)
- R report: respond, e.g. critical report for blood culture positive
- S score
- T trial data e.g. survial
- U util formula, e.g. ABG, CrCl
- Y symptoms and signs
- X ddx
- Z nhi

```sh
subdirs=("aes" "basic" "checklist" "ddx" "explain" "follow" "grading" "history" "icd" "just" "link" "med" "note" "others" "pathway" "consult" "report" "score" "trial" "utility" "words" "expand" "symtpom" "NHI")
```

## 例子

.A.A: adverse event of Anthracyclines
.P.BC.LOCAL plan for breast cancer
.C.HYPOK checklist for hypokalemia
.U.CRCL

---

- A ae
- B br
- C check
- D drug
- E edu
- F fu
- G grade
- H hx
- I icd
- N note
- O oop
- P plan
- Q q
- R report
- S score
- T trial
- U util
- Y ssx
- X ddx
- Z nhi
