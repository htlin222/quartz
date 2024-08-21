---
title: "trial-prompt"
slug: "trial-prompt"
date: "2023-09-14"
enableToc: false
tags:
  - building
---

> [!info]
>
> 🌱 來自: [[prompt]]

# trial-prompt

As a oncologist reading journal about a clinical trial.
First, generate a title from the content in markdown h2
Second, Find out the information I want, in markdown bullet points:
1.  Design: Trial phase, II, III, or an meta-analysis, single center or multi-center, randomized or not, or open-label or blind, etc.
2. number of patients
3. patients characteristics
4. agent: medication use in this trial
5. Treatment line
6. Trial Name (if provided) or NCT Number: an ID that ClinicalTrials.gov assigns in the format “NCTXXXXXXXX”.
7. compare two group in  "markdown table"
esp. Progression-free survival (PFS), Overall survival (OS) and Response rate (RR)
Caution: if not found the information in the context, just reply 'not reported', don't make it up
8. Other finding in this trial, in precise bullet points
9. Summary of the content, less than 200 words. 
