# ruby

## linux 节点使用指南

### 安装

``` 
 wget https://rubychain.org/download/latest/rubychain_latest.tar.gz
 tar zxvf rubychain_latest.tar.gz
 cd rubychain
 sudo chmod +x install.sh
 ./install.sh
```
### 启动

#### 启动正式链节点

` rubyz ruby `

#### 启动测试链节点

` rubyz testruby `

### CLI交互方式管理节点

#### 管理正式链节点

` rubyi ruby `

#### 管理测试链节点

` rubyi testruby `

### 停止节点

#### 停止正式链节点

` rubyi ruby stop `

#### 停止测试链节点

` rubyi testruby stop `

## mac 节点使用指南

### 安装

``` 
 curl -o rubychain_latest.tar https://rubychain.org/download/latest/rubychain_latest.tar
 tar zxvf rubychain_latest.tar
 cd rubychain
 chmod +x install.sh
 ./install_mac.sh
```
### 启动

#### 启动正式链节点

` rubyz ruby `

#### 启动测试链节点

` rubyz testruby `

### CLI交互方式管理节点

#### 管理正式链节点

` rubyi ruby `

#### 管理测试链节点

` rubyi testruby `

### 停止节点

#### 停止正式链节点

` rubyi ruby stop `

#### 停止测试链节点

` rubyi testruby stop `

## windows 节点使用指南

### 安装

  下载 [rubychain_latest.zip](https://rubychain.org/download/latest/rubychain_latest.zip)
  解压缩，并进入解压缩后的目录；右键，以管理员身份执行install.bat

### 启动

#### 启动正式链节点

` rubyz.exe ruby `

#### 启动测试链节点

` rubyz.exe testruby `

### CLI方式管理节点(windows不支持交互方式)

#### 管理正式链节点

` rubyi.exe ruby + 指令`

` rubyi.exe ruby help `

` rubyi.exe ruby showinfo `

#### 管理测试链节点

` rubyi.exe testruby +指令 `

` rubyi.exe testruby help `

` rubyi.exe testruby showinfo `

### 停止节点

#### 停止正式链节点

` rubyi.exe ruby stop `

#### 停止测试链节点

` rubyi.exe testruby stop `
