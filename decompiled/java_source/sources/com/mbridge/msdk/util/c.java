package com.mbridge.msdk.util;

import android.content.Context;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.common.GoogleApiAvailability;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.q0;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f38762a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static String f38763b = "";

    public static void a() {
        if (c()) {
            try {
                GoogleApiAvailability.getInstance().getApkVersion(com.mbridge.msdk.foundation.controller.c.m().d());
                GoogleApiAvailability.getInstance().verifyGooglePlayServicesIsAvailable(com.mbridge.msdk.foundation.controller.c.m().d(), 11925000);
                try {
                    String strB = b();
                    boolean zIsEmpty = TextUtils.isEmpty(strB);
                    f38762a = !zIsEmpty;
                    if (zIsEmpty) {
                        return;
                    }
                    f38763b = strB;
                } catch (Throwable th2) {
                    o0.b("CronetEnvCheckUtil", th2.getMessage());
                }
            } catch (Throwable th3) {
                o0.b("CronetEnvCheckUtil", th3.getMessage());
                f38762a = false;
            }
        }
    }

    private static String b() {
        ArrayList<Pair> arrayList = new ArrayList();
        arrayList.add(Pair.create(1, "org.chromium.net.impl.JavaCronetProvider"));
        arrayList.add(Pair.create(2, "org.chromium.net.impl.NativeCronetProvider"));
        arrayList.add(Pair.create(3, "com.google.android.gms.net.PlayServicesCronetProvider"));
        arrayList.add(Pair.create(4, "com.google.android.gms.net.GmsCoreCronetProvider"));
        try {
            StringBuilder sb2 = new StringBuilder();
            ClassLoader classLoader = com.mbridge.msdk.foundation.controller.c.m().d().getClassLoader();
            for (Pair pair : arrayList) {
                try {
                    if (!TextUtils.isEmpty(classLoader.loadClass((String) pair.second).getConstructor(Context.class).newInstance(com.mbridge.msdk.foundation.controller.c.m().d()).getClass().getName())) {
                        if (sb2.length() > 0) {
                            sb2.append(",");
                        }
                        sb2.append(pair.first);
                    }
                } catch (Throwable th2) {
                    o0.b("CronetEnvCheckUtil", th2.getMessage());
                }
            }
            return sb2.toString();
        } catch (Throwable th3) {
            o0.b("CronetEnvCheckUtil", th3.getMessage());
            return "";
        }
    }

    public static boolean c() {
        return q0.a().a("cronet_env_check", false);
    }
}
