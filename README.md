# android-ndk-r17-ollvm
clang 9.0.1 的 编译工具链

使用方法 (必要组件)
  安装termux 不知道的动脑子百度
  手机Root 
  懂中文,看到的Chinese就行
 # 注意事项 
 1.本编译链 使用了已发布的aarch64的编译链进行部分删减以及修改 使用该编译链后果由使用者自行承担 作者不参与以及增加恶意代码 
 2.编译链 目前分两个版本 开源于github的 为免费版本 免费版本和定制版本功能一样 无区别 只是编译时 describe 可以修改为定制 非专业人士,以及只需要简单的混淆加密 so/二进制 的作者 可不用关心
 3.当前版本使用 只需配合编译脚本使用即可


# 安装方法
1.安装termux(然后更新一下配置 update upgrade 不懂得百度)
2.完成安装后下载对应的 android-ndk-r17-ollvm.zip 
3.使用mt管理器 移动文件至 /data/data/com.termux/files/home/
4.修过编译连文件权限 7777 
5.打开termux终端 使用unzip (unzip android-ndk-r17-ollvm.zip)命令解压 如果报错没有找到unzip(pkg install unzip)即可
6.解压完成当前目录生成 android-ndk-r17 然后已经完成了一半了
7.使用脚本编译就行,带脚本的 ndk-build编译包自行下载  执行build.sh即可
