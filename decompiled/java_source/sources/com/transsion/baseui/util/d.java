package com.transsion.baseui.util;

import android.os.SystemClock;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public abstract class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static long f43508a;

    public static final void a(long j11, Function0 clickInvoke) {
        Intrinsics.h(clickInvoke, "clickInvoke");
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (jElapsedRealtime - f43508a > j11) {
            f43508a = jElapsedRealtime;
            clickInvoke.invoke();
        }
    }

    public static /* synthetic */ void b(long j11, Function0 function0, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            j11 = 600;
        }
        a(j11, function0);
    }
}
