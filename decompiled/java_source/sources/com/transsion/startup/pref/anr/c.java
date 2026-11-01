package com.transsion.startup.pref.anr;

import android.util.Log;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c f54516a = new c();

    private c() {
    }

    public final void a(String msg) {
        Intrinsics.h(msg, "msg");
        Log.w("zxb_log_consume", msg);
    }
}
