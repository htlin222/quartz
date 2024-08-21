---
title: At client
aliases: [At client]
linter-yaml-title-alias: At client
---
[教學][NAS] Synology NAS SSH 免密碼登入 | Gary's ...Lasamia (garynil.tw)

# At client
ssh-keygen at home
Copy id rsa.pub file to NAS home dir via 
# At remote home dir
cat id rsa.pub >> .ssh/authorized keys

Generating a new SSH key and adding it to the ssh-agent - GitHub Docs
SOLVED : Authentication refused: bad ownership or modes for directory - Tech Monger
SSH Login 使用 Key 驗證，免密碼登入的設定方法 - TerryL


 open ~/.ssh/config     
 # config
Host github.com
  AddKeysToAgent yes
  PreferredAuthentications publickey
  IdentityFile ~/.ssh/id ed25519
Host nas
  Hostname lizard-home.synology.me
  Port 22
  User git
  IdentityFile ~/.ssh/id rsa