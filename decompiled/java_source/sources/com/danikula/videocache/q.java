package com.danikula.videocache;

import android.util.Log;

/* JADX INFO: loaded from: classes3.dex */
public final class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f24066a;

    public static void a(String str) {
    }

    public static void b(String str) {
        if (f24066a) {
            Log.e("Download_VideoCache", str);
        }
    }

    public static void c(String str) {
    }

    public static void d(boolean z10) {
        f24066a = z10;
    }

    public static void e(String str) {
        if (f24066a) {
            Log.v("Download_VideoCache", str);
        }
    }

    public static void f(String str) {
        if (f24066a) {
            Log.w("Download_VideoCache", str);
        }
    }
}
