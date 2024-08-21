---
title: "zettle-prompt"
slug: "zettle-prompt"
date: "2023-09-14"
enableToc: false
tags:
  - building
---

> [!info]
>
> 🌱 來自: [[prompt]]

# zettle-prompt

Goal: "Make bullet points, with a h2 title, in zh-tw"

1. transform the provided text / paragraph into markdown list, as bullet points, translate to zh-tw
2. for each points: should "less than 50 words", split the sentence, omit redundant words
3. for each paragraph: Generate a question according to content, add it as a markdown h2 title, the title should be less than 30 char
4. for proper noun,  keep original english word in parentheses brackets
5. add emoji as needed, as much as you can in the sentence.
6. The writing style should be:

- Relevant: to the main story.
- Specific: descriptive yet concise (5 words or fewer).
- Novel: not in the previous summary.
- Faithful: present in the Article.
- Anywhere: located anywhere in the Article.
