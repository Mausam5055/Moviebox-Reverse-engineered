package com.transsion.core.deviceinfo;

import android.content.Context;
import android.os.Looper;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.transsion.core.log.LogUtils;
import com.transsion.core.utils.c;

/* JADX INFO: loaded from: classes.dex */
public class DeviceInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f44012a = "";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static String f44013b = "";

    public static String c() {
        if (!TextUtils.isEmpty(f44013b)) {
            return f44013b;
        }
        String string = Settings.Secure.getString(qk.a.a().getContentResolver(), "android_id");
        if (!TextUtils.isEmpty(string)) {
            string = string.trim();
        }
        String strA = TextUtils.isEmpty(string) ? "" : c.a(string);
        f44013b = strA;
        return strA;
    }

    public static String d() {
        String str = f44012a;
        if (str == null || str.length() == 0) {
            new Thread(new Runnable() { // from class: com.transsion.core.deviceinfo.DeviceInfo.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        String unused = DeviceInfo.f44012a = a.a(qk.a.a()).a();
                        LogUtils.g("advertisingId is " + DeviceInfo.f44012a);
                    } catch (Exception e11) {
                        e11.printStackTrace();
                    }
                }
            }).start();
        }
        return f44012a;
    }

    public static String e() {
        if (g()) {
            return d();
        }
        String str = f44012a;
        if (str != null && str.length() != 0) {
            return f44012a;
        }
        try {
            f44012a = a.a(qk.a.a()).a();
            LogUtils.g("advertisingId is " + f44012a);
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        return f44012a;
    }

    public static String f() {
        try {
            TelephonyManager telephonyManager = (TelephonyManager) qk.a.a().getSystemService("phone");
            return telephonyManager == null ? "" : telephonyManager.getSimOperator();
        } catch (Exception unused) {
            return "";
        }
    }

    private static boolean g() {
        return Thread.currentThread() == Looper.getMainLooper().getThread();
    }

    public static boolean h() {
        Context contextA = qk.a.a();
        return contextA.getResources() != null && (contextA.getResources().getConfiguration().screenLayout & 15) >= 3;
    }
}
