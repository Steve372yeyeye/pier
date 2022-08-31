自己造的轮子哦！
程序基于 GPLv2 许可证。
依赖：Choice.exe、wget(uma-get.exe)、unzip.exe
pier(Windows Package Installer) 是一个 Windows 批处理 构成的软件包管理器，他轻量、便捷，但是不安全。所以，请仔细甄别网上的 Pier 命令。
<font color=red>该轮子制作者：？、アイドル宣言
</font>

## 安装软件

这里以 qgenerator 为例子，CMD 窗口输入：
```
pier install qgenerator
```
就这样，就能安装好qgenerator。

## 使用方法
```
本软件可以完全自由的使用，上传元数据到官方源请访问网页：
< https://gitee.com/steve372/pier/tree/master/sources >

pier install <packagename> - 安装选定的软件包。
pier remove <packagename> - 卸载选定的软件包。
pier --setlang set <language> - 设置 Package Installer 的语言。
pier --setlang install <language> - 从源镜像中下载其他语言。
pier list offline - 从本地拉取可用软件包列表。
pier list online - 从远程服务器拉取可用软件包列表。
pier list piersourcecode - 查看 Package Installer 的源代码。
pier license - 阅读许可证。
pier --help - 显示该帮助。
```
## 卸载软件

卸载软件也很简单，CMD 窗口输入：
```
pier remove qgenerator
```
这样，qgenerator就卸载了。

![](https://img.gejiba.com/images/cc31985fda4391a49f4e0338c544ae22.png)

# pier GUI

提供基础图形操作，可以切换语言。
![](https://img.gejiba.com/images/d8aef401cd42f71be27c5270d80abe8f.png)

# 下载 pier
## 版本：Latest
当前最新的 Windows Package Installer 版本。
下载：[点击此处下载](https://steve372yeyeye.github.io/pier/pier-latest.zip)

## 版本：1.0.0(Package Installer release)
1.支持拉取软件包数据。
2.从这个版本开始支持卸载软件
3.增加该软件遵循的许可证。
4.可快速查看 Windows Package Installer 的源代码。
下载：[点击此处下载](https://steve372yeyeye.github.io/pier/pier-1.0.0-release.zip)

## 版本：0.1.0(Package Installer beta 2)
支持切换语言和下载新语言。
下载：[点击此处下载](https://steve372yeyeye.github.io/pier/pier-0.1.0.zip)

## 版本：0.0.1(Package Installer beta 1)
开始构建
下载：[点击此处下载](https://steve372yeyeye.github.io/pier/pier-0.0.1.zip)

# 规范
## 文件夹
为了不污染到系统路径，Pier 规定你应用程序软件包文件夹必须存放在 C 盘的 steve372-folders 目录下。
并且文件夹必须放在 Pier 目录下，且注明操作系统。实例：
```
C:\steve372-folders\sources\pier@XP\软件包名
```
我们将会检查该路径是否存在文件，如果不存在文件将会无法定位软件。（元数据中 <font color=#66CC>installdir</font> 已经作废。）
默认打开的卸载程序是 C:\steve372-folders\sources\pier@操作系统\软件包名\uninstall.exe。
## 元数据
如果你是一个开发者，需要上传软件，请继续阅读。
Pier 的安装分为<font color=#66CC>下载元数据</font>和下载本体，您可在所谓“元数据”中告诉 Pier 您的应用程序的名称、版本、下载链接和安装位置，然后 Pier 会自动告诉用户这些内容。其中，元数据有以下文件：

    installername.sque - URL 获取到应用程序安装包的文件名称。
    packagename.sque - 您的应用程序名称。
    url.sque - 下载软件包的 URL，软件包要求是 pie 格式。
    os.sque - 您应用程序最低兼容的操作系统。
    version.sque - 应用程序的版本。

这五个文件缺一不可。
### installername.sque
这个文件是提交下载的安装包的名称。只需要告诉安装包的名称即可，不需要加后缀。
![](https://img.gejiba.com/images/dcf81696ebd56bb20ae184a990b76c74.png)
### packagename.sque
这个文件是提交您的应用程序名称。
![](https://img.gejiba.com/images/8583cee2efe47ef44df89280f46d5192.png)
### url.sque
顾名思义，这个文件是提交您安装包的下载 URL。注意，如果是自搭建服务器，请不要设置太多限制，否则有可能无法下载。
### version.sque
这个文件是提交您应用程序的版本。
### os.sque
这个文件是提交您应用程序最低兼容的操作系统。
## 服务器
默认 Pier 下载元数据的路径是中国的 Gitee 仓库，您可以更改下载 URL。
该 URL 存在于根目录的 <font color=#66CC>sourceimage.ini</font> 文件中，内容是：
![](https://img.gejiba.com/images/054cfa18e7af17733afa3a344331b56a.png)
## 安装包文件要求
因为 Pier 的固定操作，需要遵守以下规则：
需要制作一个“静默”安装的 exe 安装包，并改名为 pie 格式，然后再上传到你的服务器。必须改名。
## Pier 原理
首先向服务器下载“元数据”以让 Pier 知道用户操作是否正确。
然后，Pier 会按照“元数据”的要求下载主体并打开主体安装包，然后安装完成。
# 奉献翻译
Pier 目前仅支持简体中文和英文两种语言，其他语言需要各位的努力了。如果需要添加语言，请将修改好的语言文件打包发送到[？、アイドル宣言的邮箱](mailto:？、アイドル宣言<steve372@foxmail.com>)。
# 最后
感谢各位的使用，谢谢你们。
