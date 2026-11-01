package com.cloud.sdk.commonutil.util;

import android.text.TextUtils;
import java.text.SimpleDateFormat;
import java.util.Date;

/* JADX INFO: loaded from: classes3.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f23179a;

    public static String a() {
        if (TextUtils.isEmpty(f23179a) && e.a().getApplicationContext() != null) {
            try {
                f23179a = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss SSS Z").format(new Date(e.a().getApplicationContext().getPackageManager().getPackageInfo(e.a().getApplicationContext().getPackageName(), 0).firstInstallTime));
            } catch (Exception e11) {
                c.Log().d("ssp", "get installTime is error: " + e11.getMessage());
            }
        }
        return f23179a;
    }
}
