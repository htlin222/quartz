---
title: "statistical_power"
slug: "statisticalpower"
date: "2024-05-05"
enableToc: false
tags:
  - building
---

> [!info]
>
> 🌱 來自：[[medical_statistics]]

# statistical_power

![Figure: height:450px](https://i.imgur.com/Fd6J2BX.png)

```python
import matplotlib.pyplot as plt
import numpy as np
from scipy.stats import norm

# Set up variables for the power calculation
effect_size = 0.5  # Medium effect size
alpha = 0.05       # Significance level
sample_sizes = np.arange(10, 300, 10)  # Sample sizes from 10 to 300
power_values = []

# Calculate power for each sample size
for n in sample_sizes:
    # Calculate the critical z value at the desired alpha
    z_alpha = norm.ppf(1 - alpha)
    # Standard error of the mean for the given sample size
    se = 1 / np.sqrt(n)
    # Z score for the observed effect size
    z_effect = effect_size / se
    # Power is the probability that the Z score is beyond the critical value
    power = 1 - norm.cdf(z_alpha - z_effect)
    power_values.append(power)

# Plotting the power curve
plt.figure(figsize=(10, 6))
plt.plot(sample_sizes, power_values, label='Power Curve', color='blue', marker='o')
plt.title('Power Analysis')
plt.xlabel('Sample Size')
plt.ylabel('Power')
plt.grid(True)
plt.axhline(y=0.8, color='r', linestyle='--', label='80% Power Level')
plt.legend()
plt.show()

```
