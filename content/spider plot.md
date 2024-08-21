---
title: "spider plot"
slug: "spider-plot"
date: "2023-12-12"
enableToc: false
tags:
  - building
---

> [!info]
>
> 🌱 來自: [[python for visualization in solid tumor studies]]

# spider plot

[ChatGPT](https://chat.openai.com/share/454fff4e-dccf-40e0-8bd3-d71c641bc32b)

```python
import argparse
import pandas as pd
import matplotlib.pyplot as plt
import numpy as np

def generate_spider_plot_with_external_legend(df, output_file):
    # 獲取病人數量
    num_subjects = df['Patient ID'].nunique()

    # 建立一個色彩對應表
    colors = plt.cm.viridis(np.linspace(0, 1, num_subjects))

    # 繪製圖表
    plt.figure(figsize=(12, 8))  # 增加 ↑ 圖表大小以容納外部圖例
    # 按數字順序排序病人ID
    sorted_patient_ids = sorted(df['Patient ID'].unique(), key=lambda x: int(x.split(' ')[1]))
    for patient_id, color in zip(sorted_patient_ids, colors):
        group = df[df['Patient ID'] == patient_id]
        # 由於時間點是分類資料，我們需要將它們轉換為數值索引
        time_points = range(len(group))
        plt.plot(time_points, group['Growth Rate (%)'], color=color, marker='o', label=f'{patient_id}')

    plt.title('Spider Plot of Tumor Growth Rate by Patient', fontsize=14)
    plt.xlabel('Time Points', fontsize=12)
    plt.ylabel('Growth Rate (%)', fontsize=12)
    plt.xticks(time_points, group['Time Point'].unique(), rotation=45)

    # 將圖例放置在圖表外部
    plt.legend(loc='center left', bbox_to_anchor=(1, 0.5), fontsize=10)
    plt.grid(True)

    # 保存圖表
    plt.savefig(output_file, bbox_inches='tight')  # 確保圖例也被包含在保存的圖像中
# 使用更新后的数据集生成新的蜘蛛图
output_file_path_correct_order = '/mnt/data/spider_plot_tumor_growth_rate_correct_order.png'
generate_spider_plot_correct_order(trend_df_v2, output_file_path_correct_order)

# 返回生成的图表文件路径
output_file_path_correct_order

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Generate a spider plot from CSV data.')
    parser.add_argument('-i', '--input', required=True, help='Input CSV file path')
    parser.add_argument('-o', '--output', required=True, help='Output image file path')

    args = parser.parse_args()

    # 读取CSV文件
    df = pd.read_csv(args.input)

    # 生成蜘蛛图
    generate_spider_plot(df, args.output)
```

## then

```bash
python gen_spider.py -i mydata.csv -o result.png
```

## Data set example

Here's a preview of the first few rows of the dataset:

| Patient ID | Time Point | Tumor Size (mm) | Growth Rate (%) | Volume (mm³) | Response Score | Metastasis Sites |
| ---------- | ---------- | --------------- | --------------- | ------------ | -------------- | ---------------- |
| Patient 1  | Month 1    | 22              | 7.56            | 164          | 4              | 3                |
| Patient 1  | Month 2    | 13              | 9.08            | 183          | 3              | 4                |
| Patient 1  | Month 3    | 16              | 4.34            | 112          | 3              | 1                |
| Patient 1  | Month 4    | 16              | 8.87            | 146          | 1              | 1                |
| Patient 1  | Month 5    | 15              | 9.02            | 172          | 2              | 4                |
