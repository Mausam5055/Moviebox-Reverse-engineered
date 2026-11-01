package androidx.work.impl;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
final class c0 implements a0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final a0 f15579b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Object f15580c;

    public c0(a0 delegate) {
        Intrinsics.h(delegate, "delegate");
        this.f15579b = delegate;
        this.f15580c = new Object();
    }

    @Override // androidx.work.impl.a0
    public boolean a(androidx.work.impl.model.x id2) {
        boolean zA;
        Intrinsics.h(id2, "id");
        synchronized (this.f15580c) {
            zA = this.f15579b.a(id2);
        }
        return zA;
    }

    @Override // androidx.work.impl.a0
    public y b(androidx.work.impl.model.x id2) {
        y yVarB;
        Intrinsics.h(id2, "id");
        synchronized (this.f15580c) {
            yVarB = this.f15579b.b(id2);
        }
        return yVarB;
    }

    @Override // androidx.work.impl.a0
    public /* synthetic */ y c(androidx.work.impl.model.j0 j0Var) {
        return z.a(this, j0Var);
    }

    @Override // androidx.work.impl.a0
    public y d(androidx.work.impl.model.x id2) {
        y yVarD;
        Intrinsics.h(id2, "id");
        synchronized (this.f15580c) {
            yVarD = this.f15579b.d(id2);
        }
        return yVarD;
    }

    @Override // androidx.work.impl.a0
    public List remove(String workSpecId) {
        List listRemove;
        Intrinsics.h(workSpecId, "workSpecId");
        synchronized (this.f15580c) {
            listRemove = this.f15579b.remove(workSpecId);
        }
        return listRemove;
    }
}
