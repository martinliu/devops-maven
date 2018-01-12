# DevOps必修课系列

## 01 Jenkins篇 v1.0

用到的工具和环境概述如下：

* JDK openjdk-1.8.0.151
* Maven 3.5.2   
* Jenkins 2.73.3
    * Checkstyle Plug-in
    * Copy Artifact Plugin
    * Git plugin
    * GitHub plugin
    * Maven Integration plugin
    * Pipeline
* Docker CE
* 访问路径  http://ip:port/webapp/

## Jenkins 文件介绍

已经配置成了自动触发源码变更的作业，当master分支有任何变化的时候，自动化触发CI过程，在部署到staging的时候需要人工确认动作。
