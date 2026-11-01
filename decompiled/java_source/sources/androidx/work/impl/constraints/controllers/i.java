package androidx.work.impl.constraints.controllers;

import androidx.work.impl.model.j0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class i extends BaseConstraintController {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f15612b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(i4.g tracker) {
        super(tracker);
        Intrinsics.h(tracker, "tracker");
        this.f15612b = 9;
    }

    @Override // androidx.work.impl.constraints.controllers.d
    public boolean c(j0 workSpec) {
        Intrinsics.h(workSpec, "workSpec");
        return workSpec.f15773j.k();
    }

    @Override // androidx.work.impl.constraints.controllers.BaseConstraintController
    protected int e() {
        return this.f15612b;
    }

    @Override // androidx.work.impl.constraints.controllers.BaseConstraintController
    public /* bridge */ /* synthetic */ boolean f(Object obj) {
        return g(((Boolean) obj).booleanValue());
    }

    protected boolean g(boolean z10) {
        return !z10;
    }
}
