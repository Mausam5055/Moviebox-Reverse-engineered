package com.cloud.hisavana.sdk;

import android.util.Log;

/* JADX INFO: loaded from: classes3.dex */
public class e4 extends com.cloud.sdk.commonutil.util.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static e4 f22431a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final boolean f22432b = Log.isLoggable("ADSDK", 3);

    public static synchronized e4 b() {
        try {
            if (f22431a == null) {
                synchronized (e4.class) {
                    try {
                        if (f22431a == null) {
                            f22431a = new e4();
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
        } catch (Throwable th3) {
            throw th3;
        }
        return f22431a;
    }

    public static boolean c() {
        return f22432b;
    }

    @Override // com.cloud.sdk.commonutil.util.c
    public String getGlobalTag() {
        return "ADSDK_S";
    }
}
