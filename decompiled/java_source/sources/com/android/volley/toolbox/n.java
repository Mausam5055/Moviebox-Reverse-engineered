package com.android.volley.toolbox;

import android.os.Looper;

/* JADX INFO: loaded from: classes2.dex */
abstract class n {
    static void a() {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            throw new IllegalStateException("Must be invoked from the main thread.");
        }
    }
}
