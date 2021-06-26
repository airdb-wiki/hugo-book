---
title: 简介
type: docs
---

# Hugo Wiki

{{< columns >}}
## 简单

Hugo 是由 Go 语言实现的静态网站生成器。简单、易用、高效、易扩展、快速部署。
hugo提供了通过主题构建网站的机制。hugo生态已经提供了300+的主题可以用。

<--->

## 易用


主题类似一种前端框架，可以帮助我们快速建站。 此项目是基于 [Hugo-book](https://github.com/alex-shpak/hugo-book) 进行的二次开发，此 hugo 主题
主要用户网站建设和文档建设。
只需导入作为 hugo themes 即可生效, 使用非常简单。

{{< /columns >}}

## Quick Start


- Step 1: Setup wls2 network for windows （Skip if Linux or Mac OS)

```bash
# Win10 所在局域网设备访问 WSL2
PS C:\WINDOWS\system32> wsl -- hostname -I

# Windows 监听 8080，转发到 WSL2 8080
PS C:\WINDOWS\system32> netsh interface portproxy add v4tov4 listenport=1313 connectaddress=172.23.232.213 connectport=1313

# Windows 放行 8080 入站
C:\WINDOWS\system32> New-NetFirewallRule -DisplayName "Allow Inbound TCP Port 1313" -Direction Inbound -Action Allow -Protocol TCP -LocalPort 1313
```

参考：[Win10 与 WSL2 间的网络和文件互访](https://logi.im/script/achieving-access-to-files-and-resources-on-the-network-between-win10-and-wsl2.html)



- Step: Install Hugo 

下载地址：
https://github.com/gohugoio/hugo/releases/latest

```bash
wget https://github.com/gohugoio/hugo/releases/download/v0.84.1/hugo_extended_0.84.1_Linux-64bit.deb

dpkg -i hugo_extended_0.84.1_Linux-64bit.deb

```


- Step 3: Create project

```bash
git clone https://github.com/airdb-wiki/hugo-book 

make create $(project)

cd ../$(project)

make
```