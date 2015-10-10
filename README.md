# Ubuntu-with-lnmp

## 一、Ubuntu：
可以设置SSH登陆密码**ROOT_PASS**变量

*ROOT_PASS：Password*

不设置为自动生成**ROOT_PASS**登陆密码

详细日志中查看

## 二、采用官网的lnmp一键包
### 1)连接SSH
### 2)安装：
`screen -S lnmp`

如果SSH断线了可以再次登录SSH使用：`screen -r lnmp`来恢复查看进程

`cd lnmp1.2-full && ./install.sh lnmp`

(其实下面的设置了MySQL的*root*密码其他全部按**回车**就行了)

------------------------------

需要设置MySQL的root密码（不输入直接回车将会设置为root），输入后回车进入下一步

这里需要确认是否启用MySQL InnoDB，如果不确定是否启用可以输入 y ，输入 y 表示启用，输入 n 表示不启用。默认为y启用，输入后回车进入下一步选择MySQL版本

输入PHP版本的序号，回车进入下一步，选择是否安装内存优化，可以选择不安装、Jemalloc或TCmalloc，输入对应序号回车。

提示"Press any key to install...or Press Ctrl+c to cancel"后，按回车键确认开始安装。LNMP脚本就会自动安装编译Nginx、MySQL、PHP、phpMyAdmin、Zend Optimizer这几个软件。

------------------------------

安装时间可能会几十分钟到几个小时不等，主要是机器的配置网速等原因会造成影响。

如果看不明白请到官网：<http://lnmp.org/install.html>查看图文教程。

### 安装完成
如果显示Nginx: OK，MySQL: OK，PHP: OK并且Nginx、MySQL、PHP都是running，80和3306端口都存在，并Install lnmp V1.2 completed! enjoy it.的话，说明已经安装成功。

## 三、其他相关
直接上官网的教程，这里就不再讲太多了，官网讲得详细。
+ [添加、删除虚拟主机及伪静态管理](http://lnmp.org/faq/lnmp-vhost-add-howto.html "添加、删除虚拟主机及伪静态管理")
+ [eAccelerator、xcache、memcached、imageMagick、ionCube、redis、opcache的安装](http://lnmp.org/faq/addons.html "eAccelerator、xcache、memcached、imageMagick、ionCube、redis、opcache的安装")
+ [LNMP相关软件目录及文件位置](http://lnmp.org/faq/lnmp-software-list.html "LNMP相关软件目录及文件位置")
+ [LNMP状态管理命令](http://lnmp.org/faq/lnmp-status-manager.html "LNMP状态管理命令")
