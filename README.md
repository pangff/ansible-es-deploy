## 远程部署ElasticSearch及Kibana

### 脚本说明

该脚本服务目的是远程进行elasticsearch及kibana部署，具体步骤是：

* 安装sshuttle并通过代理服务器代理网络请求加速相关资源下载
* 自动下载https://github.com/pangff/vagrant-elastic-simple
* 运行vagrant-elastic-simple中的shell进行docker环境搭建及用户组添加
* 在vagrant-elastic-simple根目录通过docker-compose启动容器完成部署

### 环境配置

#### 保证本地可以免密登录待部署的elk服务器

#### 如果需要代理保证elk服务器可以通过ssh免密登录到代理服务器

#### Mac下安装ansible
```
 brew install ansible
```

#### 配置host，编辑/etc/ansible/hosts

```
[elk]
ip
[elk:vars]
ansible_ssh_user="user" //服务器用户名 
ansible_ssh_port=22 //服务器端口
```

#### 配置运行变量

* 修改项目/vars/config-template.json 为 /vars/config.json 按内容提示进行相关参数配置
* 修改项目/roles/deploy/templates/.env.template.j2 为 /roles/deploy/templates/.env.j2 按内容提示配置es、kibana相关信息

### 运行方式

安装并启动代理(如果需要)
```
shell/overssh.sh
```
完成docker环境搭建并下载启动容器

```
shell/overssh.sh 
```

#### 访问

https://domian/kibana

domian为.env.js中的DOMAIN


