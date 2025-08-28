# time_cangjie_wrapper

## Introduction

 The time_cangjie_wrapper is a Cangjie API encapsulated on OpenHarmony based on the capabilities of the time and time zone subsystem. The time and time zone subsystem provides OpenHarmony with the capability of managing the system time, time zone, and timing.

- **Time and time zone management**
  Manages the system time and time zone in a unified manner, including setting and obtaining the system time, date, and time zone, and obtaining the system startup time.

- **Timing management**
  Provides the system timer capability, including creating, starting, stopping, and destroying timers. There are three types of timers: system startup timer, system time timer, and wakeup timer.

## System Architecture

**Figure 1** Architecture of the time_cangjie_wrapper

![](figures/time_cangjie_wrapper_architecture_en.png "Architecture of the time_cangjie_wrapper")

## Directory Structure

The source code of the time and time zone subsystem is stored in the **/base/time** directory.

The directory structure is as follows:

```
base/time/time_cangjie_wrapper
├── ohos             # Cangjie Time and Time Zone Subsystem code
├── figures          # architecture pictures
```

## Constraint

- The currently Cangjie open interface for manageing time only supports standard devices.

## Instructions For Use

The following time manage functions are provided:

- Get the time elapsed from the Unix era to the current system time 
- Get the time elapsed since the system startup 
- Get the system time zone

Compared with ArkTS, the following functions are temporarily not supported:

- Set the system time zone 
- Create/start/Stop/destroy timers

For the time manage APIs, please refer to [ohos.system_date_time (System Time and Timezone)](https://gitcode.com/openharmony-sig/arkcompiler_cangjie_ark_interop/blob/master/doc/API_Reference/source_en/apis/BasicServicesKit/cj-apis-system_date_time.md).

## Code Contribution

Developers are welcome to contribute code, documentation, etc. For specific contribution processes and methods, please refer to [Code Contribution](https://gitcode.com/openharmony/docs/blob/master/en/contribute/code-contribution.md).

## Repositories Involved

[time_service](https://gitee.com/openharmony/time_time_service/blob/master/README.md)
