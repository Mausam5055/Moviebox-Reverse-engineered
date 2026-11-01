package androidx.work.impl.constraints.controllers;

import androidx.work.impl.model.j0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public abstract class BaseConstraintController implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final i4.g f15597a;

    public BaseConstraintController(i4.g tracker) {
        Intrinsics.h(tracker, "tracker");
        this.f15597a = tracker;
    }

    @Override // androidx.work.impl.constraints.controllers.d
    public boolean a(j0 workSpec) {
        Intrinsics.h(workSpec, "workSpec");
        return c(workSpec) && f(this.f15597a.f());
    }

    @Override // androidx.work.impl.constraints.controllers.d
    public kotlinx.coroutines.flow.b b(androidx.work.d constraints) {
        Intrinsics.h(constraints, "constraints");
        return kotlinx.coroutines.flow.d.e(new BaseConstraintController$track$1(this, null));
    }

    protected abstract int e();

    protected abstract boolean f(Object obj);
}
