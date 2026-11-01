package androidx.compose.runtime;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
final class d3 implements q2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final d3 f3692a = new d3();

    private d3() {
    }

    @Override // androidx.compose.runtime.q2
    public /* synthetic */ Object a(Object obj, Object obj2, Object obj3) {
        return p2.a(this, obj, obj2, obj3);
    }

    @Override // androidx.compose.runtime.q2
    public boolean b(Object obj, Object obj2) {
        return Intrinsics.c(obj, obj2);
    }

    public String toString() {
        return "StructuralEqualityPolicy";
    }
}
