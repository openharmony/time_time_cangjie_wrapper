# 时间时区仓颉封装（beta特性）

## 简介

时间时区仓颉封装是 OpenHarmony 上面向开发者提供使用仓颉语言进行应用开发时的时间时区相关能力。时间时区仓颉封装提供了获取系统时间时区的能力，仅支持standard设备。

## 系统架构

**图 1**  时间时区仓颉封装架构图

![时间时区仓颉架构](figures/time_cangjie_wrapper_architecture.png)

接口层：

- 时间时区功能接口：提供系统时间和系统时区功能。开发者可以获取系统时间及系统时区。

框架层：

- 时间时区功能封装：该封装层是对获取系统时间及系统时区能力进行仓颉封装实现。

架构图中的依赖部件引入说明：

- time_service：负责提供时间时区基础功能。
- cangjie_ark_interop：负责提供仓颉注解类定义，用于对API进行标注，以及提供抛向用户的BusinessException异常类定义。
- hiviewdfx_cangjie_wrapper：负责提供日志接口，用于在关键路径处打印日志。

## 目录

```
base/time/time_cangjie_wrapper
├── figures                     # 存放README中的架构图
├── ohos
│   └── system_date_time        # 仓颉时间时区接口实现
└── test
    └── system_date_time        # 仓颉时间时区接口测试代码
```

## 使用说明

提供以下时间时区功能：

- 获取自Unix纪元以来到当前系统时间所经过的时间
- 获取自系统启动以来经过的时间
- 获取系统时区

时间时区相关API请参见[时间时区API参考](https://gitcode.com/openharmony-sig/arkcompiler_cangjie_ark_interop/blob/master/doc/API_Reference/source_zh_cn/apis/BasicServicesKit/cj-apis-system_date_time.md)，相关指南请参见[时间时区指南](https://gitcode.com/openharmony-sig/arkcompiler_cangjie_ark_interop/blob/master/doc/Dev_Guide/source_zh_cn/system_date_time/cj-system_data_time.md) 。

## 约束

与 ArkTS 提供的API能力相比，暂不支持以下功能：

- 设置系统时间/时区
- 创建/开启/停止/销毁 定时器

## 参与贡献

欢迎广大开发者贡献代码、文档等，具体的贡献流程和方式请参见[参与贡献](https://gitcode.com/openharmony/docs/blob/master/zh-cn/contribute/%E5%8F%82%E4%B8%8E%E8%B4%A1%E7%8C%AE.md)。

## 相关仓

[time_service](https://gitcode.com/openharmony/time_time_service/blob/master/README_zh.md)

[cangjie_ark_interop](https://gitcode.com/openharmony-sig/arkcompiler_cangjie_ark_interop/blob/master/README_zh.md)

[hiviewdfx_cangjie_wrapper](https://gitcode.com/openharmony-sig/hiviewdfx_hiviewdfx_cangjie_wrapper/blob/master/README_zh.md)
