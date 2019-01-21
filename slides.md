layout: true
background-image: url(photos/k8s-sticker.jpg)
background-size: cover
background-position: 50% 25%
image-credit: Photo "k8s Sticker" shared by Joe Beda under a [Creative Commons ( BY ) license](https://creativecommons.org/licenses/by/4.0/)

---
class: middle, center

# Kubernetes 101 / Kubernetes 导入培训

.cblock[
Joe Beda<br>
CTO, Heptio
]

.image-credit[
{{image-credit}}
]

---

class: column-slide
background-image: url(photos/record.jpg)
image-credit: [flickr photo](https://flickr.com/photos/mavadam/3241311268 "Turntable") shared by [VanDammeMaarten](https://flickr.com/people/mavadam) under a [Creative Commons ( BY ) license](https://creativecommons.org/licenses/by/2.0/)

.column-container[.left-column[
# Recap / 概述
## Containers / 容器
]
.right-column[
.center[
# “这是下一个大事件！”
]
]
]

.image-credit[
{{image-credit}}
]

---

class: column-slide
background-image: url(photos/record.jpg)
image-credit: [flickr photo](https://flickr.com/photos/mavadam/3241311268 "Turntable") shared by [VanDammeMaarten](https://flickr.com/people/mavadam) under a [Creative Commons ( BY ) license](https://creativecommons.org/licenses/by/2.0/)

.column-container[.left-column[
# Recap / 概述
## Linux Kernel Features / Linux 内核特性

]
.right-column[
cgroups：

* 资源限制、跟踪、优先级划分和隔离
* CPU、RAM、IO、网络等
* 十多年前由 Google 开发
* "nice++"

namespaces：

* 资源可见性和命名隔离
* 网络，PID，用户，挂载
* "chroot++"

cgroups + namespaces = “轻量级虚拟化”
]
]

.image-credit[
{{image-credit}}
]

---
class: column-slide
background-image: url(photos/record.jpg)
image-credit: [flickr photo](https://flickr.com/photos/mavadam/3241311268 "Turntable") shared by [VanDammeMaarten](https://flickr.com/people/mavadam) under a [Creative Commons ( BY ) license](https://creativecommons.org/licenses/by/2.0/)

.column-container[.left-column[
# Recap / 概述
## User Experience / 用户体验

]
.right-column[
Containers == Docker？

* *镜像格式：* 上传，下载，共享，构建
* *API/应用程序接口：* 自动化创建、删除、启动、停止
* *网络：* 良好的默认配置
]
]

.image-credit[
{{image-credit}}
]

---
class: column-slide
background-image: url(photos/record.jpg)
image-credit: [flickr photo](https://flickr.com/photos/mavadam/3241311268 "Turntable") shared by [VanDammeMaarten](https://flickr.com/people/mavadam) under a [Creative Commons ( BY ) license](https://creativecommons.org/licenses/by/2.0/)

.column-container[.left-column[
# Recap / 概述
## Excitement / 激动人心的特性

]
.right-column[
用户收益：

1. 打包，部署和重复使用
2. 效率和大量使用
3. 安全*

上述清单是有序的

\* 目前有很多需要注意的地方
]
]

.image-credit[
{{image-credit}}
]

---
class: column-slide
background-image: url(photos/record.jpg)
image-credit: [flickr photo](https://flickr.com/photos/mavadam/3241311268 "Turntable") shared by [VanDammeMaarten](https://flickr.com/people/mavadam) under a [Creative Commons ( BY ) license](https://creativecommons.org/licenses/by/2.0/)

.column-container[.left-column[
# Recap / 概述
## Gaps / 鸿沟

]
.right-column[
开发 &rarr; 生产

* 多节点部署（Multi-machine）
* 服务发现和 DNS （Discovery and Naming）
* 弹缩（Scale in, Scale out）
* 多用户（Multiple users）
* 容错和故障恢复（Failure tolerance and recovery）
* 监控（Monitoring）
* 日志（Logging）
* 高可用（High availability）
* 部署的生命周期管理（Deployment lifecycle）
* 负载均衡（Load balancing）
* 等等 ......

]
]

.image-credit[
{{image-credit}}
]

---
class: column-slide
background-image: url(photos/record.jpg)
image-credit: [flickr photo](https://flickr.com/photos/mavadam/3241311268 "Turntable") shared by [VanDammeMaarten](https://flickr.com/people/mavadam) under a [Creative Commons ( BY ) license](https://creativecommons.org/licenses/by/2.0/)

.column-container[.left-column[
# Recap / 概述
## Micro-services? / 微服务？

]
.right-column[

* 将您的应用拆分成小型服务，便于重用、混合和共享。
* 支持小型化、灵活和独立的团队和流程。
* 更好的工具支撑和促进微服务。

但这不是今天的重点。

]
]

.image-credit[
{{image-credit}}
]
---
class: column-slide
background-image: url(photos/ship-wheel.jpg)
image-credit: [flickr photo](https://flickr.com/photos/leroy-freakwinter/3108057269 "Captain Jack Sparrow") shared by [Rick Galvan](https://flickr.com/people/leroy-freakwinter) under a [Creative Commons ( BY ) license](https://creativecommons.org/licenses/by/2.0/)

.column-container[.left-column[
# Kubernetes
## Defined / 定义

]
.right-column[


Kubernetes 是 “Helmsman” 的古希腊语（舵手）。 “管理者”，“控制论” 一词的根源。
Kubernetes 是一个 “容器编排系统” 或者 “集群管理系统”。
* 在节点上部署容器
* 故障自动恢复
* 基本的监控、日志和健康检查
* 允许容器相互查找（服务注册发现）


关键组件参考后面的“逻辑架构”

]]

.image-credit[
{{image-credit}}
]
---
class: column-slide
background-image: url(photos/ship-wheel.jpg)
image-credit: [flickr photo](https://flickr.com/photos/leroy-freakwinter/3108057269 "Captain Jack Sparrow") shared by [Rick Galvan](https://flickr.com/people/leroy-freakwinter) under a [Creative Commons ( BY ) license](https://creativecommons.org/licenses/by/2.0/)

.column-container[.left-column[
# Kubernetes
## Google Grown / Google 经历
]
.right-column[
基于 Google 10多年来已证明的观点。

Google 的 *一切* 均在容器中运行。

Google 每周发布 20 亿个容器。

构建 Google 内部平台的工具集中的一部分。
]]

.image-credit[
{{image-credit}}
]
---
class: column-slide
background-image: url(photos/ship-wheel.jpg)
image-credit: [flickr photo](https://flickr.com/photos/leroy-freakwinter/3108057269 "Captain Jack Sparrow") shared by [Rick Galvan](https://flickr.com/people/leroy-freakwinter) under a [Creative Commons ( BY ) license](https://creativecommons.org/licenses/by/2.0/)

.column-container[.left-column[
# Kubernetes
## Open Source / 开源
]
.right-column[
https://github.com/kubernetes/kubernetes

*非常非常* 活跃的开源项目

47k+ stars（赞）, 1900+ 贡献者

Apache License 2.0

用 Go 语言编写

由云原生基金会（CNCF）托管
]]

.image-credit[
{{image-credit}}
]

???

stats with git shortlog -sn --no-merges | wc

---
class: column-slide
background-image: url(photos/ship-wheel.jpg)
image-credit: [flickr photo](https://flickr.com/photos/leroy-freakwinter/3108057269 "Captain Jack Sparrow") shared by [Rick Galvan](https://flickr.com/people/leroy-freakwinter) under a [Creative Commons ( BY ) license](https://creativecommons.org/licenses/by/2.0/)

.column-container[.left-column[
# Kubernetes
## Benefits / 收益
]
.right-column[
跨节点调度部署容器。

允许专业化的操作。 集群运维 vs. 应用运维。

降低生产环境运行的成本。实现了构建应用程序的新方法。
]]

.image-credit[
{{image-credit}}
]

---
class: column-slide
background-image: url(photos/space-needle.jpg)
image-credit: [flickr photo](https://flickr.com/photos/seattlemunicipalarchives/6175308389 "Space Needle under construction, 1961") shared by [Seattle Municipal Archives](https://flickr.com/people/seattlemunicipalarchives) under a [Creative Commons ( BY ) license](https://creativecommons.org/licenses/by/2.0/)

.column-container[.left-column[
# Design Principles / 设计原则
]
.right-column[
* 声明 > 命令（declarative > imperative）
* 控制器循环（control loops）
* 简单 > 复杂（simple > complex）
* 模块化（modularity）
* 传统兼容（legacy compatible）
* 中心化网络（CNI，network-centric）
* 标签 > 等级（labels > hierarchy）
* 无状态 > 有状态（cattle > pets）
* 开放 > 封闭（open > closed）
]]

.image-credit[
{{image-credit}}
]
---
class: column-slide
background-image: url(photos/core-memory.jpg)
image-credit: [flickr photo](https://flickr.com/photos/dvanzuijlekom/6952363784 "Magnetic-core Memory") shared by [dvanzuijlekom](https://flickr.com/people/dvanzuijlekom) under a [Creative Commons ( BY-SA ) license](https://creativecommons.org/licenses/by-sa/2.0/)

.column-container[.left-column[
# Core Concepts / 核心概念
## Cluster / 集群
]
.right-column[.center[
<object type="image/svg+xml" data="diagrams/cluster.svg">
</object>
]]]

.image-credit[
{{image-credit}}
]
---
class: column-slide
background-image: url(photos/core-memory.jpg)
image-credit: [flickr photo](https://flickr.com/photos/dvanzuijlekom/6952363784 "Magnetic-core Memory") shared by [dvanzuijlekom](https://flickr.com/people/dvanzuijlekom) under a [Creative Commons ( BY-SA ) license](https://creativecommons.org/licenses/by-sa/2.0/)

.column-container[.left-column[
# Core Concepts / 核心概念
## Pod / 容器组
]
.right-column[.center[
<object type="image/svg+xml" data="diagrams/pod.svg">
</object>
]]]

.image-credit[
{{image-credit}}
]
---
class: column-slide
background-image: url(photos/core-memory.jpg)
image-credit: [flickr photo](https://flickr.com/photos/dvanzuijlekom/6952363784 "Magnetic-core Memory") shared by [dvanzuijlekom](https://flickr.com/people/dvanzuijlekom) under a [Creative Commons ( BY-SA ) license](https://creativecommons.org/licenses/by-sa/2.0/)

.column-container[.left-column[
# Core Concepts / 核心概念
## Labels / 标签
]
.right-column[.center[
<object type="image/svg+xml" data="diagrams/labels.svg">
</object>
]]]

.image-credit[
{{image-credit}}
]
---
class: column-slide
background-image: url(photos/core-memory.jpg)
image-credit: [flickr photo](https://flickr.com/photos/dvanzuijlekom/6952363784 "Magnetic-core Memory") shared by [dvanzuijlekom](https://flickr.com/people/dvanzuijlekom) under a [Creative Commons ( BY-SA ) license](https://creativecommons.org/licenses/by-sa/2.0/)

.column-container[.left-column[
# Core Concepts / 核心概念
## ReplicaSet / 副本集
]
.right-column[.center[
<object type="image/svg+xml" data="diagrams/rc.svg">
</object>
]]]

.image-credit[
{{image-credit}}
]

---
class: column-slide
background-image: url(photos/core-memory.jpg)
image-credit: [flickr photo](https://flickr.com/photos/dvanzuijlekom/6952363784 "Magnetic-core Memory") shared by [dvanzuijlekom](https://flickr.com/people/dvanzuijlekom) under a [Creative Commons ( BY-SA ) license](https://creativecommons.org/licenses/by-sa/2.0/)

.column-container[.left-column[
# Core Concepts / 核心概念
## ReplicaSet / 副本集
]
.right-column[.center[
<object type="image/svg+xml" data="diagrams/rc2.svg">
</object>
]]]

.image-credit[
{{image-credit}}
]

---
class: column-slide
background-image: url(photos/core-memory.jpg)
image-credit: [flickr photo](https://flickr.com/photos/dvanzuijlekom/6952363784 "Magnetic-core Memory") shared by [dvanzuijlekom](https://flickr.com/people/dvanzuijlekom) under a [Creative Commons ( BY-SA ) license](https://creativecommons.org/licenses/by-sa/2.0/)

.column-container[.left-column[
# Core Concepts / 核心概念
## Service / 微服务
]
.right-column[.center[
<object type="image/svg+xml" data="diagrams/service.svg">
</object>
]]]

.image-credit[
{{image-credit}}
]
---
class: column-slide
background-image: url(photos/core-memory.jpg)
image-credit: [flickr photo](https://flickr.com/photos/dvanzuijlekom/6952363784 "Magnetic-core Memory") shared by [dvanzuijlekom](https://flickr.com/people/dvanzuijlekom) under a [Creative Commons ( BY-SA ) license](https://creativecommons.org/licenses/by-sa/2.0/)

.column-container[.left-column[
# Core Concepts / 核心概念
## Persistent Volumes / 持久化存储
]
.right-column[.center[
<object type="image/svg+xml" data="diagrams/pvs.svg">
</object>
]]]

.image-credit[
{{image-credit}}
]

---
class: column-slide
background-image: url(photos/road.jpg)
image-credit: [flickr photo](https://flickr.com/photos/mdalmuld/9559878695 "We're on the Road to Nowhere") shared by [mdalmuld](https://flickr.com/people/mdalmuld) under a [Creative Commons ( BY ) license](https://creativecommons.org/licenses/by/2.0/)

.column-container[.left-column[
# So much more! / 还有更多！
]
.right-column[
* **Namespaces**
  * 用户或项目的独立的工作区域Isolated workspaces for users/projects
* **Ingress**
  * L7 负载均衡*
* **Deployments**
  * 声明式的版本升级/回退
* **Jobs / Cron Job**
  * 工作至完成的任务 / 定时任务
* **Autoscaling**
  * 自动调整副本数目
* **DaemonSets**
  * 在所有（或某部分）节点运行工作负载
]]

.image-credit[
{{image-credit}}
]

---
class: column-slide
background-image: url(photos/road.jpg)
image-credit: [flickr photo](https://flickr.com/photos/mdalmuld/9559878695 "We're on the Road to Nowhere") shared by [mdalmuld](https://flickr.com/people/mdalmuld) under a [Creative Commons ( BY ) license](https://creativecommons.org/licenses/by/2.0/)

.column-container[.left-column[
# So much more! / 还有更多！
]
.right-column[
* **Role Based Access Control (RBAC)**
  * 控制用户访问对象的权限
* **Scheduler Extensions**
  * 用户自定义调度策略
* **Flexible Scheduling Constraints**
  * 亲和性，反亲和性，污点，容忍
* **StatefulSet**
  * 支持有状态的分布式应用*
* **Automatic Cluster Scaling**
  * 集群弹缩
* **Cloud Provider Integration**
  * GCP, AWS, Azure, OpenStack, vSphere, VMware, etc.
* **Network Policy**
  * 网络策略
]]

.image-credit[
{{image-credit}}
]
---
class: column-slide
background-image: url(photos/road.jpg)
image-credit: [flickr photo](https://flickr.com/photos/mdalmuld/9559878695 "We're on the Road to Nowhere") shared by [mdalmuld](https://flickr.com/people/mdalmuld) under a [Creative Commons ( BY ) license](https://creativecommons.org/licenses/by/2.0/)

.column-container[.left-column[
# Ecosystem / 生态系统
]
.right-column[
* **Custom Resource Definitions / Custom Controller**
  * 用户自定义资源及控制器
* **Extension API Server / Aggregation Layer**
  * 扩展 API Server / API 聚合层
* **Operators**
  * 通过 API 自动管理系统/业务APP
  * 通过 K8S 扩展机制实现
  * etcd, Prometheus, elasticsearch, memcahced, mongodb, rook, etc.
* **Container Storage Interface**
  * 开放的容器存储接口，方便存储厂商扩展
* **Container Runtime Interface / Open Container Initiative**
  * 开放的容器镜像和运行时规范 / 开放的容器运行时接口
* **Helm: Package Manager**
  * 超级容易安装和使用的包管理系统
* **Service Mesh**
  * 连接，保护，控制和观测微服务
]]

.image-credit[
{{image-credit}}
]
---
class: middle, left
# Thank you! / 谢谢！

.cblock[
Joe Beda<br>
[@jbeda](https://twitter.com/jbeda)<br>
https://www.heptio.com<br>
]

.ccblock[
[![Creative Commons License](img/cc-by.png)](http://creativecommons.org/licenses/by/4.0/)<br>
[Kubernetes 101](https://github.com/jbeda/k8s-slides) by Joe Beda is licensed under a [Creative Commons Attribution 4.0 International License](href="http://creativecommons.org/licenses/by/4.0/).
]

.image-credit[
{{image-credit}}
]
