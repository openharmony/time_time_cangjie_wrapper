# Time Zone Cangjie Interface

## Introduction

The Time Zone Cangjie Interface is a Cangjie API provided by the time zone subsystem of OpenHarmony that offers time and time zone related capabilities. The time zone subsystem provides OpenHarmony system with the ability to manage system time, time zones, and timing, including:

- **Time Zone Management**
  Unified management of system time and time zones, including setting/getting system time, date, time zone, and providing system boot time.

- **Timing Capabilities**
  Provides system timer capabilities, including timer creation, start, stop, and destruction. Three types of timers are provided: system boot time-based timer, system current time-based timer, and wake-up timer.

The current Time Zone Cangjie Interface supports standard devices and only provides the ability to get time and time zone information.

## System Architecture

**Figure 1** Time Zone Cangjie Interface Architecture Diagram

!["Architecture of the time_cangjie_wrapper"](figures/time_cangjie_wrapper_architecture_en.png )

As shown in the architecture diagram:

Interface Layer

* Get Unix Epoch Time: Provides an interface to get the elapsed time since the Unix epoch.
* Get System Boot Time: Provides an interface to get the elapsed time since system boot.
* Get System Time Zone: Provides an interface to get the current system time zone.

Framework Layer

- Encapsulates and adapts the underlying task capabilities, providing standardized functional support for the interface layer, including:
  
  * Get Unix Epoch Time Function Encapsulation
  
  * Get System Boot Time Function Encapsulation
  
  * Get System Time Zone Function Encapsulation

- Cangjie Time Zone FFI Interface Definition: Responsible for defining C language interoperability interfaces called by the Cangjie language to implement Cangjie time zone capabilities.

- time_service: Responsible for providing basic time zone functions, encapsulating C language interfaces for Cangjie interoperability.

- cangjie_ark_interop: Responsible for providing Cangjie annotation class definitions for API annotation, and providing BusinessException exception class definitions thrown to users.

- hiviewdfx_cangjie_wrapper: Responsible for providing log interfaces for printing logs at critical paths.

## Directory Structure

```
base/time/time_cangjie_wrapper
├── figures                     # Stores architecture diagrams in README
├── ohos
│   └── system_date_time        # Cangjie time zone interface implementation
└── test
    └── system_date_time        # Cangjie time zone interface test code
```

## Usage Instructions

Provides the following time and time zone functions:

- Get the elapsed time from Unix epoch to current system time
- Get the elapsed time since system boot
- Get system time zone

For time and time zone related APIs, please refer to [Time Zone API Reference](https://gitcode.com/openharmony-sig/arkcompiler_cangjie_ark_interop/blob/master/doc/API_Reference/source_en/apis/BasicServicesKit/cj-apis-system_date_time.md).

## Constraints

Compared to the API capabilities provided by ArkTS, the following functions are not currently supported:

- Setting system time zone
- Creating/starting/stopping/destroying timers

## Contributing

Developers are welcome to contribute code, documentation, etc. For specific contribution processes and methods, please refer to [Code Contribution](https://gitcode.com/openharmony/docs/blob/master/en/contribute/code-contribution.md).

## Related Repositories

[time_service](https://gitee.com/openharmony/time_time_service/blob/master/README.md)

[cangjie_ark_interop](https://gitcode.com/openharmony-sig/arkcompiler_cangjie_ark_interop/blob/master/README.md)

[hiviewdfx_cangjie_wrapper](https://gitcode.com/openharmony-sig/hiviewdfx_hiviewdfx_cangjie_wrapper/blob/master/README.md)




