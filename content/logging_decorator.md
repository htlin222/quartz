---
title: "logging_decorator"
slug: "loggingdecorator"
date: "2023-11-19"
enableToc: false
tags:
  - building
---

> [!info]
>
> 🌱 來自: [[learn python]]

# logging_decorator

```python
def logging_decorator(func):
    def wrapper(*args, **kwargs):
        print(f"Running {func.__name__} with arguments {args} and keyword arguments {kwargs}")
        result = func(*args, **kwargs)
        print(f"{func.__name__} returned {result}")
        return result
    return wrapper

@logging_decorator
def add(a, b):
    return a + b

add(5, 3)
```
