/*
 * Copyright (c) 2025 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

// The Cangjie API is in Beta. For details on its capabilities and limitations, please refer to the README file.

package ohos.system_date_time

import ohos.ffi.{ RetCode, RetDataCString, RetDataI64 }
import ohos.labels.APILevel

foreign {
    func FfiOHOSSysDateTimeSetTime(time: Int64): RetCode

    func FfiOHOSSysDateTimegetCurrentTime(isNano: Bool): RetDataI64

    func FfiOHOSSysDateTimegetRealActiveTime(isNano: Bool): RetDataI64

    func FfiOHOSSysDateTimegetRealTime(isNano: Bool): RetDataI64

    func FfiOHOSSysDateTimeGetTime(isNano: Bool): RetDataI64

    func FfiOHOSSysDateTimeGetUptime(timeType: Int32, isNano: Bool): RetDataI64

    func FfiOHOSSysSetTimezone(Timezone: CString): RetCode

    func FfiOHOSSysGetTimezone(): RetDataCString
}

/**
 * System time and timezone.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.MiscServices.Time"
]
public class SystemDateTime {
    /**
     * Obtains the number of timestamp that have elapsed since the Unix epoch.
     *
     * @param { Bool } [isNanoseconds] - True if the result is in nanoseconds, otherwise in milliseconds.
     * @returns { Int64 } The timestamp returned of getTime.
     * @throws { BusinessException } 16000050 - Internal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.MiscServices.Time",
        throwexception: true
    ]
    public static func getTime(isNanoseconds!: Bool = false): Int64 {
        let cValue = unsafe { FfiOHOSSysDateTimeGetTime(isNanoseconds) }
        throwIfNotSuccess(cValue.code)
        return cValue.data
    }

    /**
     * Obtains the number of milliseconds since the system has been running.
     *
     * @param { TimeType } timeType - indicates the type of get uptime. It can only be `STARTUP` or `ACTIVE`.
     * @param { Bool } [isNanoseconds] - True if the result is in nanoseconds, otherwise in milliseconds.
     * @returns { Int64 } The timestamp returned of getUpTime.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.MiscServices.Time"
    ]
    public static func getUptime(timeType: TimeType, isNanoseconds!: Bool = false): Int64 {
        let cValue = unsafe { FfiOHOSSysDateTimeGetUptime(timeType.getValue(), isNanoseconds) }
        throwIfNotSuccess(cValue.code)
        return cValue.data
    }

    /**
     * Obtains the system time zone.
     *
     * @returns { String } The timezone returned of getTimezone.
     * @throws { BusinessException } 16000050 - Internal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.MiscServices.Time",
        throwexception: true
    ]
    public static func getTimezone(): String {
        let ret = unsafe { FfiOHOSSysGetTimezone() }
        throwIfNotSuccess(ret.code)
        let time = ret.data.toString()
        unsafe { LibC.free(ret.data) }
        return time
    }
}
