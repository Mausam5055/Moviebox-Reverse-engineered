package androidx.work.impl;

import android.content.Context;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public abstract class UnfinishedWorkListenerKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f15501a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final long f15502b;

    static {
        String strI = androidx.work.t.i("UnfinishedWorkListener");
        Intrinsics.g(strI, "tagWithPrefix(...)");
        f15501a = strI;
        f15502b = TimeUnit.HOURS.toMillis(1L);
    }

    public static final void c(kotlinx.coroutines.n0 n0Var, Context appContext, androidx.work.b configuration, WorkDatabase db2) {
        Intrinsics.h(n0Var, "<this>");
        Intrinsics.h(appContext, "appContext");
        Intrinsics.h(configuration, "configuration");
        Intrinsics.h(db2, "db");
        if (androidx.work.impl.utils.a0.b(appContext, configuration)) {
            kotlinx.coroutines.flow.d.v(kotlinx.coroutines.flow.d.A(kotlinx.coroutines.flow.d.k(kotlinx.coroutines.flow.d.j(kotlinx.coroutines.flow.d.E(db2.l0().q(), new UnfinishedWorkListenerKt$maybeLaunchUnfinishedWorkListener$1(null)))), new UnfinishedWorkListenerKt$maybeLaunchUnfinishedWorkListener$2(appContext, null)), n0Var);
        }
    }
}
