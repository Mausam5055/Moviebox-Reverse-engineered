package androidx.compose.runtime;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
abstract /* synthetic */ class t2 {
    public static final q2 a() {
        j1 j1Var = j1.f3775a;
        Intrinsics.f(j1Var, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutationPolicy<T of androidx.compose.runtime.SnapshotStateKt__SnapshotMutationPolicyKt.neverEqualPolicy>");
        return j1Var;
    }

    public static final q2 b() {
        y1 y1Var = y1.f4073a;
        Intrinsics.f(y1Var, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutationPolicy<T of androidx.compose.runtime.SnapshotStateKt__SnapshotMutationPolicyKt.referentialEqualityPolicy>");
        return y1Var;
    }

    public static final q2 c() {
        d3 d3Var = d3.f3692a;
        Intrinsics.f(d3Var, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutationPolicy<T of androidx.compose.runtime.SnapshotStateKt__SnapshotMutationPolicyKt.structuralEqualityPolicy>");
        return d3Var;
    }
}
