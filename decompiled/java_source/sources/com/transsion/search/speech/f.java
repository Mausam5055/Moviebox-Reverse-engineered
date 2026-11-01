package com.transsion.search.speech;

import android.util.Log;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final f f52214a = new f();

    private f() {
    }

    public final void a(String msg) {
        Intrinsics.h(msg, "msg");
    }

    public final void b(String msg) {
        Intrinsics.h(msg, "msg");
        Log.w("sr_log", msg);
    }
}
