---
title: "setup_for_sql"
slug: "setupforsql"
date: "2024-02-18"
enableToc: false
tags:
  - building
---

> [!info]
>
> 🌱 來自：[[sql]]

# setup_for_sql

```sh
brew install mysql
brew install --cask mysqlworkbench

```

## Preface

This procedure explains how to install [MySQL](https://www.mysql.com) and [MySQL Workbench](https://www.mysql.com/products/workbench/) using [Homebrew](http://brew.sh) on macOS. This is a fork of [these instructions](https://gist.github.com/nrollr/3f57fc15ded7dddddcc4e82fe137b58e), to make them more concise and solve the issues reported [here](https://stackoverflow.com/q/60864461/4999991).

### MySQL

To install MySQL enter :

- `brew install mysql`
- `brew services start mysql`
- then run `mysql_secure_installation` and follow the instructions

### MySQL Workbench

install via HomeBrew Cask: `brew cask install mysqlworkbench`

<!--
### DBeaver

- `brew cask install java`
- `brew cask install dbeaver-community`

-->

### phpMyAdmin

- install `brew install phpmyadmin`
- edit `/private/etc/apache2/httpd.conf` file as `sudo`
- add below code block at the end:

```
Alias /phpmyadmin /usr/local/share/phpmyadmin
    <Directory /usr/local/share/phpmyadmin/>
        Options Indexes FollowSymLinks MultiViews
        AllowOverride All
        <IfModule mod_authz_core.c>
            Require all granted
        </IfModule>
        <IfModule !mod_authz_core.c>
            Order allow,deny
            Allow from all
        </IfModule>
    </Directory>


LoadModule php7_module /usr/local/opt/php/lib/httpd/modules/libphp7.so

    <FilesMatch \.php$>
        SetHandler application/x-httpd-php
    </FilesMatch>
```

and make sure you have the line:

    DirectoryIndex index.html index.php home.pl index.cgi

- then `sudo apachectl restart`

### Visual Studio Code connection

- Install [MySQL plugin](https://marketplace.visualstudio.com/items?itemName=formulahendry.vscode-mysql)
- run `mysql - u <user> -p` to enter `mysql`
- run `ALTER USER '<user>'@'<server>' IDENTIFIED WITH mysql_native_password BY '<password>';`
- if your password is not accepted:

> ERROR 1819 (HY000): Your password does not satisfy the current policy requirements

- run `SHOW VARIABLES LIKE 'validate_password%';` to see the password policies
- run `SET GLOBAL <Variable_name> = <New_Value>;` to change

### Python

- install `pip3 install mysql-connector`
- run the blow code to test your Python connection:

```python
import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="<user>",
    passwd="<password>",
    auth_plugin='mysql_native_password',
)

print(mydb)
```

and using Pandas to run and fetch the results of MySQL queries:

```python
df = pd.read_sql_query("SELECT * FROM <table>", mydb)
df.head()
```

### Jupyter


- Install `pip3 install ipython-sql`
- `pip3 install mysqlclient`
- now you should be able to run these cells and get pretty-printed HTML output:

```python
# %%
%load_ext sql

# %%
%sql mysql+mysqldb://<user>:<password>@localhost/<dataBase>

# %%
%%sql

SELECT *
FROM <table>;
```

<!--
### JupyterLab SQL GUI:

- install node.js by `brew install node`
- then install the plugin from [here](https://github.com/pbugnion/jupyterlab-sql)
-->
