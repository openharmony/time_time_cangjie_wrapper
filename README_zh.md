# 时间时区仓颉接口

## 简介

 测试框架仓颉接口是在 OpenHarmony 上基于测试子系统能力之上封装的仓颉API。时间时区为OpenHarmony系统提供了管理系统时间时区和定时的能力，包括：

-   **管理时间时区**

    统一管理系统时间时区，包括设置/获取系统时间、日期、时区，同时提供获取系统启动时间。

-   **定时能力**

    提供系统定时器能力。包括定时器创建、启动、停止和销毁。定时器类型提供三种：系统启动时间计时类定时器、系统当前时间计时类定时器、唤醒类定时器。


## 系统架构

**图 1**  时间时区仓颉架构图

![](figures/time_cangjie_wrapper_architecture.png "时间时区仓颉架构图")

## 目录

时间时区仓颉源代码在/base/time目录下。

目录结构如下所示：

```
base/time/time_cangjie_wrapper
├── ohos             # 仓颉时间时区接口实现
├── figures          # 存放readme中的架构图
```

## 相关仓

time_cangjie_wrapper

[time_service](https://gitee.com/openharmony/time_time_service/blob/master/README_zh.md)
