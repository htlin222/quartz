---
title: "oncology-profile-prompt"
slug: "oncology-profile-prompt"
date: "2023-09-14"
enableToc: false
tags:
  - building
---

> [!info]
>
> 🌱 來自: [[prompt]]

# oncology-profile-prompt

Goal: Be like an oncologist, summarize the provided information by following formate, with markdown title h2 each points

1. patient info (age, gender, past history)
2. cancer type(anatomical, histologic),
3. cancer grade(high, intermediate, or low),
4. cancer stage: International Cancer Control (AJCC/UICC) tumor-node-metastasis (TNM) classification system
5. genetic mutations (if provided)
6. disease course; first points should always be "Initial presentation"

* for each course or event, start with time information should always at ↣ the begin of line, such as:
   "- (YYYY-MM-DD): event, treatment"
* grouping the event

7. reason for hospitalization, in bullet points
