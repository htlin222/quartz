---
title: macos config
---
# macos config


MACOS CATALINA 10.15 第三方软件文件提示已损坏解决办法
macOS 10.15 后，苹果加强了对第三方渠道下载软件的证书校验，对于无证书的应用，不允许打开。可以试试使用下面命令：

1
sudo xattr -r -d com.apple.quarantine xxx.app
