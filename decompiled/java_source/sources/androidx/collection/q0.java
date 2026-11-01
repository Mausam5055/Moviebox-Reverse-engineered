package androidx.collection;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class q0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final k0 f2323a = new k0(0);

    public static final p0 a() {
        k0 k0Var = f2323a;
        Intrinsics.f(k0Var, "null cannot be cast to non-null type androidx.collection.ObjectIntMap<K of androidx.collection.ObjectIntMapKt.emptyObjectIntMap>");
        return k0Var;
    }

    public static final k0 b() {
        return new k0(0, 1, null);
    }
}
