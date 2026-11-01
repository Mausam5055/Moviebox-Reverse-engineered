package com.facebook.biddingkit.logging;

import android.util.Log;

/* JADX INFO: loaded from: classes3.dex */
public class b {
    public static void a(String str, String str2) {
    }

    public static void b(String str, String str2, Throwable th2) {
        h.b();
    }

    public static void c(String str, String str2) {
        e eVar = new e();
        eVar.e(str + ": " + str2);
        eVar.n();
        if (h.b()) {
            Log.e(str, str2);
        }
    }

    public static void d(String str, String str2, Throwable th2) {
        e eVar = new e();
        eVar.e(str + ": " + str2 + g.a(th2));
        eVar.n();
        if (h.b()) {
            Log.e(str, str2, th2);
        }
    }
}
