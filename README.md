# time_cangjie_wrapper

## Introduction

The time_cangjie_wrapper is a Cangjie API encapsulated on OpenHarmony based on the capabilities of the time and time zone subsystem. The time and time zone subsystem provides OpenHarmony with the capability of managing the system time, time zone, and timing.

- **Time and time zone management**
  Manages the system time and time zone in a unified manner, including setting and obtaining the system time, date, and time zone, and obtaining the system startup time.

- **Timing management**
  Provides the system timer capability, including creating, starting, stopping, and destroying timers. There are three types of timers: system startup timer, system time timer, and wakeup timer.

The current time and time zone Cangjie interface supports standard devices and only provides the ability to obtain the time and time zone.

## System Architecture

**Figure 1** Architecture of the time_cangjie_wrapper

!["Architecture of the time_cangjie_wrapper"](figures/time_cangjie_wrapper_architecture_en.png )

As depicted in the architecture diagram:

- get  time since the Unix epoch: Provides an interface to obtain the elapsed time since the Unix epoch.
- get time since system startup: Provides an interface to obtain the elapsed time since system startup.
- get system time zone: Provides an interface to obtain the current system timezone.
- Cangjie timing and time FFI interface definition: Responsible for defining C language interoperability interfaces for Cangjie, used to implement Cangjie's time zone capabilities.
- timing and time service: Responsible for providing basic timezone functionality, encapsulating C  language interfaces for Cangjie interoperability.

## Directory Structure

```
base/time/time_cangjie_wrapper
├── figures                     # architecture pictures 
├── ohos
│   └── system_date_time        # Cangjie Time and Time Zone Subsystem code
└── test
    └── APILevel22
        └── system_date_time    # Cangjie Time and Time Zone Subsystem test code
```

## Instructions For Use

- The following time manage functions are provided:
  
  - Get the time elapsed from the Unix era to the current system time
  - Get the time elapsed since the system startup
  - Get the system time zone

- Compared with the API capabilities provided by ArkTS, the following functions are temporarily not supported:
  
  - Set the system time zone
  - Create/start/Stop/destroy timers

- For the time manage APIs, please refer to [time and time zone API reference](https://gitcode.com/openharmony-sig/arkcompiler_cangjie_ark_interop/blob/master/doc/API_Reference/source_en/apis/BasicServicesKit/cj-apis-system_date_time.md).

## Code Contribution

Developers are welcome to contribute code, documentation, etc. For specific contribution processes and methods, please refer to [Code Contribution](https://gitcode.com/openharmony/docs/blob/master/en/contribute/code-contribution.md).

## Repositories Involved

[time_service](https://gitee.com/openharmony/time_time_service/blob/master/README.md)

[cangjie_ark_interop](https://gitcode.com/openharmony-sig/arkcompiler_cangjie_ark_interop/blob/master/README.md)

[hiviewdfx_cangjie_wrapper](https://gitcode.com/openharmony-sig/hiviewdfx_hiviewdfx_cangjie_wrapper/blob/master/README.md)
