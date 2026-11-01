package com.cloud.sdk.commonutil.util;

import android.text.TextUtils;
import android.util.Log;
import com.transsion.infra.gateway.core.utils.ObjectLogUtils;

/* JADX INFO: loaded from: classes3.dex */
public class c {
    public static final int DEBUG = 3;
    public static final int ERROR = 6;
    public static final String IMG_TAG = "ssp_img";
    public static final int INFO = 4;
    public static final int JSON = 9;
    public static final String LOAD_TAG = "ssp_load";
    public static final String MEASURE_TAG = "ssp_measure";
    public static final String SECOND_PRICE_TAG = "ssp_second_price";
    public static final String SPLASH_TAG = "ssp_splash";
    public static final String TAG = "ssp";
    public static final String TRACK_TAG = "ssp_track";
    public static final int VERBOSE = 2;
    public static final int WARN = 5;
    public static final int WTF = 8;
    private final ObjectLogUtils logUtils;
    public static ObjectLogUtils NET_LOG = new ObjectLogUtils.a().o("ADSDK_N").p(false).n(false).m();
    private static c adLogUtil = null;
    private final String gloableTag = "ADSDK_S";
    private final int mLoggingLevel = 2;

    public c() {
        ObjectLogUtils objectLogUtilsM = new ObjectLogUtils.a().o("ADSDK").q(true).n(false).m();
        this.logUtils = objectLogUtilsM;
        objectLogUtilsM.y(3);
    }

    public static synchronized c Log() {
        try {
            if (adLogUtil == null) {
                synchronized (c.class) {
                    try {
                        if (adLogUtil == null) {
                            adLogUtil = new c();
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
        } catch (Throwable th3) {
            throw th3;
        }
        return adLogUtil;
    }

    private boolean a(int i11) {
        return i11 >= 2;
    }

    public static void netLog(String str) {
        NET_LOG.o(str);
    }

    public void d(String str, int i11) {
        log(3, str, e.a().getString(i11));
    }

    public void d(String str, String str2) {
        log(3, str, str2);
    }

    public void d(String str, String str2, Throwable th2) {
        logWithThrowable(3, str, str2, th2);
    }

    public void e(String str) {
        log(6, "", "******" + str + "******");
    }

    public void e(String str, String str2) {
        log(6, str, "******" + str2 + "******");
    }

    public void e(String str, String str2, Throwable th2) {
        logWithThrowable(6, str, "******" + str2 + "******", th2);
    }

    public String getGlobalTag() {
        return "ADSDK_S";
    }

    public void i(String str, String str2) {
        log(4, str, str2);
    }

    public void i(String str, String str2, Throwable th2) {
        logWithThrowable(4, str, str2, th2);
    }

    public void log(int i11, String str, String str2) {
        logWithThrowable(i11, str, str2, null);
    }

    public void logWithThrowable(int i11, String str, String str2, Throwable th2) {
        try {
            if (a(i11)) {
                if (!TextUtils.isEmpty(str)) {
                    str = getGlobalTag() + "_" + str;
                }
                if (i11 == 2) {
                    if (th2 != null) {
                        this.logUtils.z(str, str2, th2);
                        return;
                    } else {
                        this.logUtils.z(str, str2);
                        return;
                    }
                }
                if (i11 == 3) {
                    if (th2 != null) {
                        this.logUtils.h(str, str2, th2);
                        return;
                    } else {
                        this.logUtils.h(str, str2);
                        return;
                    }
                }
                if (i11 == 4) {
                    if (th2 != null) {
                        this.logUtils.p(str, str2, th2);
                        return;
                    } else {
                        this.logUtils.p(str, str2);
                        return;
                    }
                }
                if (i11 == 5) {
                    if (th2 != null) {
                        this.logUtils.A(str, str2, th2);
                        return;
                    } else {
                        this.logUtils.A(str, str2);
                        return;
                    }
                }
                if (i11 != 6) {
                    if (i11 != 9) {
                        return;
                    }
                    this.logUtils.r(str, str2);
                } else if (th2 != null) {
                    this.logUtils.j(str, str2, th2);
                } else {
                    this.logUtils.j(str, str2);
                }
            }
        } catch (Exception e11) {
            Log.getStackTraceString(e11);
        }
    }

    public void setLogSwitch(boolean z10) {
        this.logUtils.m().q(z10);
    }

    public void v(String str, String str2) {
        log(2, str, str2);
    }

    public void v(String str, String str2, Throwable th2) {
        logWithThrowable(2, str, str2, th2);
    }

    public void w(String str, String str2) {
        log(5, str, str2);
    }

    public void w(String str, String str2, Throwable th2) {
        logWithThrowable(5, str, str2, th2);
    }
}
