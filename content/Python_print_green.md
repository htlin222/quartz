---
title: "python print(): how to select color as green"
slug: "print-green"
date: "2023-02-19"
enableToc: false
---

# python print(): how to select color as green

To print text in green color using Python's `print()` function, you can use ANSI escape codes.

Here's an example:

python

```python
print("\033[32m" + "This text is printed in green." + "\033[0m")
```

In the code above, the escape sequence `\033[32m` sets the color to green, and `\033[0m` resets the color to the default color (which is usually white or black).

You can replace the string `"This text is printed in green."` with whatever text you want to print in green.

Alternatively, you can also use the `termcolor` module to print colored text. Here's an example:

python

```python
from termcolor import colored

print(colored("This text is printed in green.", "green"))
```

In this example, the `colored()` function takes two arguments: the text to be printed and the color to use (in this case, `"green"`). The `termcolor` module supports a wide range of colors, so you can experiment with different colors if you like.
