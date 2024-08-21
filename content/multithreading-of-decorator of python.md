---
title: "multithreading-of-decorator of python"
slug: "multithreading-of-decorator-of-python"
date: "2023-11-19"
enableToc: false
tags:
  - building
---

> [!info]
>
> 🌱 來自: [[decorator of python]]

# multithreading-of-decorator of python

在多執行緒 (multithreading) 的應用中，Python 裝飾器可以 ✔ 用於多種場景，比如線程安全、執行緒管理、性能監控等

- 以下是一些具體的例子，展示了如何在多執行緒環境中使用裝飾器：

### 1. 線程安全裝飾器

在多執行緒應用中，線程安全是一個重要的考慮因素

- 你可以 ✔ 使用裝飾器來確保特定函數的線程安全。

```python
from threading import Lock

def thread_safe_decorator(func):
    lock = Lock()

    def wrapper(*args, **kwargs):
        with lock:
            return func(*args, **kwargs)

    return wrapper

@thread_safe_decorator
def update_shared_resource(data):
    # 更新共享資源的代碼
    pass
```

### 2. 執行緒監控裝飾器

這個裝飾器可以 ✔ 用來監控函數在多個執行緒中的調用情況，例如記錄哪個執行緒調用了函數。

```python
from threading import current_thread

def thread_info_decorator(func):
    def wrapper(*args, **kwargs):
        thread_id = current_thread().ident
        thread_name = current_thread().name
        print(f"Function {func.__name__} called by thread ID {thread_id}, Name: {thread_name}")
        return func(*args, **kwargs)

    return wrapper

@thread_info_decorator
def thread_specific_task():
    # 執行緒特定任務的代碼
    pass
```

### 3. 執行緒執行時間裝飾器

類似於計時裝飾器，但專門用於多執行緒環境，用以監控函數在 ✖ 不同執行緒上的執行時間。

```python
import time

def thread_timing_decorator(func):
    def wrapper(*args, **kwargs):
        start_time = time.time()
        result = func(*args, **kwargs)
        end_time = time.time()
        print(f"Thread {current_thread().name}: {func.__name__} took {end_time - start_time} seconds")
        return result
    return wrapper

@thread_timing_decorator
def some_function():
    # 一些計算或處理的代碼
    pass
```

這些例子展示了如何利用裝飾器來管理和監控在多執行緒環境中的函數調用

- 裝飾器提供了一種靈活的方法來擴展函數的功能，而 ✖ 無需修改函數本身的代碼，這在複雜的多執行緒應用中尤其有用。
