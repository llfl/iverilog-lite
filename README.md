# iverilog-lite

## 介绍

iverilog-lite为轻量级的iverilog Docker镜像，镜像基于Ubuntu 18.04。可以用于很方便地编译verilog代码并生成VCD波形文件

## 食用方法

### 1. 构建docker镜像

运行./verilog.sh install-iverilog 或者 docker pull imux/iverilog。

### 2. 编译verilog

将代码和测试代码放到同一个文件夹下，运行

```bash
docker run --rm --name iverilog -v `pwd`:/root/verilog imux/iverilog $1
```

即可得到VCD波形文件。注：windows 下`pwd`换成绝对路径，“$1” 为指定编译输出文件，默认名字为output。
