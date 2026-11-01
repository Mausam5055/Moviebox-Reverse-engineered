package com.cloud.tmc.integration.utils;

import android.text.TextUtils;
import com.cloud.tmc.kernel.log.TmcLogger;
import java.text.SimpleDateFormat;
import java.util.Date;

/* JADX INFO: loaded from: classes3.dex */
public class ApplicationUtil {
    private static String firstInstallTime = "";

    public static String getInstallTime() {
        try {
            if (TextUtils.isEmpty(firstInstallTime) && qk.a.a().getApplicationContext() != null) {
                firstInstallTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss SSS Z").format(new Date(qk.a.a().getApplicationContext().getPackageManager().getPackageInfo(qk.a.a().getApplicationContext().getPackageName(), 0).firstInstallTime));
            }
        } catch (Throwable th2) {
            TmcLogger.e("ApplicationUtil", "获取安装时间失败：" + th2);
        }
        return firstInstallTime;
    }
}
