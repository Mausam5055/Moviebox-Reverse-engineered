package com.alibaba.sdk.android.oss.common.utils;

import android.os.Build;
import com.alibaba.sdk.android.oss.common.OSSConstants;
import com.alibaba.sdk.android.oss.common.OSSLog;
import com.cloud.tmc.kernel.utils.UrlUtils;

/* JADX INFO: loaded from: classes2.dex */
public class VersionInfoUtils {
    private static String userAgent;

    private static String getSystemInfo() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("(");
        sb2.append(System.getProperty("os.name"));
        sb2.append("/Android " + Build.VERSION.RELEASE);
        sb2.append("/");
        sb2.append(HttpUtil.urlEncode(Build.MODEL, "utf-8") + ";" + HttpUtil.urlEncode(Build.ID, "utf-8"));
        sb2.append(")");
        String string = sb2.toString();
        OSSLog.logDebug("user agent : " + string);
        return OSSUtils.isEmptyString(string) ? System.getProperty("http.agent").replaceAll("[^\\p{ASCII}]", UrlUtils.QUESTION_MARK) : string;
    }

    public static String getUserAgent(String str) {
        if (OSSUtils.isEmptyString(userAgent)) {
            userAgent = "aliyun-sdk-android/" + getVersion() + getSystemInfo();
        }
        if (OSSUtils.isEmptyString(str)) {
            return userAgent;
        }
        return userAgent + "/" + str;
    }

    public static String getVersion() {
        return OSSConstants.SDK_VERSION;
    }
}
