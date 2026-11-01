package androidx.collection;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final e0 f2313a = new e0(0);

    public static final o a() {
        e0 e0Var = f2313a;
        Intrinsics.f(e0Var, "null cannot be cast to non-null type androidx.collection.IntObjectMap<V of androidx.collection.IntObjectMapKt.intObjectMapOf>");
        return e0Var;
    }

    public static final e0 b() {
        return new e0(0, 1, null);
    }

    public static final e0 c(int i11, Object obj, int i12, Object obj2, int i13, Object obj3) {
        e0 e0Var = new e0(0, 1, null);
        e0Var.t(i11, obj);
        e0Var.t(i12, obj2);
        e0Var.t(i13, obj3);
        return e0Var;
    }
}
