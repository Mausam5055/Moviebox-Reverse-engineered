package androidx.compose.runtime;

import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class b {
    public static final long a() {
        return Thread.currentThread().getId();
    }

    public static final String b() {
        return Thread.currentThread().getName();
    }

    public static final int c(Object obj) {
        return System.identityHashCode(obj);
    }

    public static final void d(i iVar, Function2 function2) {
        Intrinsics.f(function2, "null cannot be cast to non-null type kotlin.Function2<androidx.compose.runtime.Composer, kotlin.Int, kotlin.Unit>");
        ((Function2) TypeIntrinsics.e(function2, 2)).invoke(iVar, 1);
    }
}
