---
title: "how to init a python project"
slug: "how-to-init-a-python-project"
date: "2023-11-15"
enableToc: false
tags:
  - building
---

> [!info]
>
> 🌱 來自: [[python]]

# how to init a python project

```bash
#!/bin/bash

# 文字顏色設定
GREEN="\033[32m"
RESET="\033[0m"

# 項目名稱
PROJECT_NAME=$1

echo "Creating new virtualenv: ${GREEN}$PROJECT_NAME${RESET}"

# 初始化虛擬環境
eval "$(pyenv virtualenv-init -)"
pyenv virtualenv 3.11.6 "$PROJECT_NAME"

# 創建並進入項目資料夾
mkdir ./$PROJECT_NAME
cd ./$PROJECT_NAME

# 設定虛擬環境
pyenv local $PROJECT_NAME
pyenv activate $PROJECT_NAME

# 初始化.gitignore和requirements.txt
touch .gitignore
pip freeze > requirements.txt
echo ".python-version" >> .gitignore
echo ".DS_Store" >> .gitignore

# 創建主資料夾及其子資料夾
mkdir -p $PROJECT_NAME/$PROJECT_NAME
mkdir -p $PROJECT_NAME/tests
mkdir -p $PROJECT_NAME/docs
mkdir -p $PROJECT_NAME/resources
mkdir -p $PROJECT_NAME/scripts
mkdir -p $PROJECT_NAME/config

# 創建__init__.py文件
touch $PROJECT_NAME/$PROJECT_NAME/__init__.py
touch $PROJECT_NAME/$PROJECT_NAME/package1/__init__.py

# 創建空的模組文件
touch $PROJECT_NAME/$PROJECT_NAME/module1.py
touch $PROJECT_NAME/$PROJECT_NAME/module2.py
touch $PROJECT_NAME/$PROJECT_NAME/package1/submodule1.py
touch $PROJECT_NAME/$PROJECT_NAME/package1/submodule2.py

# 創建測試文件
touch $PROJECT_NAME/tests/test_module1.py
touch $PROJECT_NAME/tests/test_module2.py

# 創建文檔文件
echo "# $PROJECT_NAME" > $PROJECT_NAME/docs/documentation.md

# 創建資源文件
touch $PROJECT_NAME/resources/image.png
touch $PROJECT_NAME/resources/data.csv

# 創建腳本文件
echo "#!/bin/sh" > $PROJECT_NAME/scripts/setup_script.sh
chmod +x $PROJECT_NAME/scripts/setup_script.sh

# 創建配置文件
touch $PROJECT_NAME/config/settings.py

# 創建README.md文件
echo "# $PROJECT_NAME" > $PROJECT_NAME/README.md

echo -e "\rVirtualenv ${GREEN}$PROJECT_NAME${RESET} is created and project structure is initialized."
```
