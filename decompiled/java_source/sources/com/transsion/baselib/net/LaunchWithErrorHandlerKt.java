package com.transsion.baselib.net;

import androidx.p009lifecycle.t0;
import androidx.p009lifecycle.u0;
import com.blankj.utilcode.util.NetworkUtils;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.t1;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes5.dex */
public abstract class LaunchWithErrorHandlerKt {
    public static final t1 b(t0 t0Var, Function2 block, Function2 function2) {
        Intrinsics.h(t0Var, "<this>");
        Intrinsics.h(block, "block");
        return k.d(u0.a(t0Var), y0.b(), null, new LaunchWithErrorHandlerKt$launchWithCatch$1(block, function2, Thread.currentThread().getStackTrace(), t0Var, null), 2, null);
    }

    public static final void c(n0 n0Var, Function2 block, Function2 function2) {
        Intrinsics.h(n0Var, "<this>");
        Intrinsics.h(block, "block");
        k.d(n0Var, y0.b(), null, new LaunchWithErrorHandlerKt$launchWithCatch$2(block, function2, Thread.currentThread().getStackTrace(), null), 2, null);
    }

    public static /* synthetic */ void d(n0 n0Var, Function2 function2, Function2 function3, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            function3 = null;
        }
        c(n0Var, function2, function3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(Throwable th2, String str) {
        if (NetworkUtils.n()) {
            lg.a.f68839a.h("LaunchWithCatch", "exception " + th2.getMessage() + "  from: " + str, th2, true);
            return;
        }
        lg.a.f68839a.h("LaunchWithCatch", "exception " + th2.getMessage() + "  from: " + str, th2, false);
    }
}
