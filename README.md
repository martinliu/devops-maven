# DevOps必修课系列

## 01 Jenkins篇 v1.0

用到的工具和环境概述如下：

* JDK openjdk-1.8
* Maven 3
* Jenkins 2
    * Checkstyle Plug-in
    * Git plugin
    * GitHub plugin
    * Maven Integration plugin
    * Pipeline
    * Slack Notafaction
* 访问路径  Staging http://ip:8050/webapp/
* 访问路径  Production http://ip:8060/webapp/


## Jenkins 文件介绍

已经配置成了自动触发源码变更的作业，当master分支有任何变化的时候，自动化触发CI过程，在部署到staging的时候需要人工确认动作。
