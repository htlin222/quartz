---
title: "timing_decorator"
slug: "timingdecorator"
date: "2023-11-19"
enableToc: false
tags:
  - building
---

> [!info]
>
> 🌱 來自: [[learn python]]

# timing_decorator

```python
import time

def timing_decorator(func):
    def wrapper(*args, **kwargs):
        start_time = time.time()
        result = func(*args, **kwargs)
        end_time = time.time()
        print(f"{func.__name__} took {end_time - start_time} seconds to run")
        return result
    return wrapper

@timing_decorator
def my_function(x):
    time.sleep(x)

my_function(2)
```
