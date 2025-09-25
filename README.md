# Time Zone Cangjie Wrapper

## Introduction

The Time Zone Cangjie Wrapper provides time zone-related capabilities for developers using the Cangjie language for application development on OpenHarmony. The time zone subsystem provides the OpenHarmony system with the ability to manage system time zones and timing, including:

- **Time Zone Management**
  Unified management of system time zones, including setting/getting system time, date, time zone, while providing system boot time acquisition.

- **Timing Capabilities**
  Provides system timer capabilities. Includes timer creation, start, stop, and destruction. Three types of timers are provided: system boot time timing timers, system current time timing timers, and wake-up timers.

The current time zone Cangjie wrapper supports standard devices and only provides the ability to obtain time zone information.

## System Architecture

**Figure 1** Time Zone Cangjie Interface Architecture

![Time Zone Cangjie Architecture](figures/time_cangjie_wrapper_architecture_en.png)

As shown in the architecture diagram:

Interface Layer

- Get Unix Epoch Time: Provides developers with the ability to obtain time elapsed since the Unix epoch.
- Get System Boot Time: Provides developers with the ability to obtain time elapsed since system boot.
- Get System Time Zone: Provides developers with the ability to obtain the current system time zone.

Framework Layer

- Get Unix Epoch Time Function Encapsulation: Based on the ability to get Unix epoch time provided by the underlying time zone component, implements the function of getting Unix epoch time in Cangjie.
- Get System Boot Time Function Encapsulation: Based on the ability to get system boot time provided by the underlying time zone component, implements the function of getting system boot time in Cangjie.
- Get System Time Zone Function Encapsulation: Based on the ability to get system time zone provided by the underlying time zone component, implements the function of getting system time zone in Cangjie.
- Cangjie Time Zone FFI Interface Definition: Responsible for defining C language interoperability interfaces called by the Cangjie language to implement Cangjie time zone capabilities.

Dependency Component Introduction in Architecture Diagram:

- time_service: Responsible for providing basic time zone functionality, encapsulating C language interfaces for interoperability with Cangjie.
- cangjie_ark_interop: Responsible for providing Cangjie annotation class definitions for API annotation, and providing BusinessException exception class definitions thrown to users.
- hiviewdfx_cangjie_wrapper: Responsible for providing log interfaces for printing logs at critical paths.

## Directory

```
base/time/time_cangjie_wrapper
├── figures                     # Architecture diagrams in README
├── ohos
│   └── system_date_time        # Cangjie time zone interface implementation
└── test
    └── system_date_time        # Cangjie time zone interface test code
```

## Usage Instructions

Provides the following time zone functions:

- Get time elapsed from Unix epoch to current system time
- Get time elapsed since system boot
- Get system time zone

For time zone-related APIs, please refer to [Time Zone API Reference](https://gitcode.com/openharmony-sig/arkcompiler_cangjie_ark_interop/blob/master/doc/API_Reference/source_en/apis/BasicServicesKit/cj-apis-system_date_time.md).

## Constraints

Compared to APIs provided by ArkTS, the following functions are not currently supported:

- Setting system time
- Setting system time zone
- Creating/starting/stopping/destroying timers

## Contribution

Developers are welcome to contribute code, documentation, etc. For specific contribution processes and methods, please refer to [Contribution](https://gitcode.com/openharmony/docs/blob/master/en/contribute/how-to-contribute.md).

## Related Repositories

[time_service](https://gitcode.com/openharmony/time_time_service/blob/master/README.md)

[cangjie_ark_interop](https://gitcode.com/openharmony-sig/arkcompiler_cangjie_ark_interop/blob/master/README.md)

[hiviewdfx_cangjie_wrapper](https://gitcode.com/openharmony-sig/hiviewdfx_hiviewdfx_cangjie_wrapper/blob/master/README.md)
