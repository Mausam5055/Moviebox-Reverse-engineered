package androidx.work.impl.constraints.controllers;

import android.os.Build;
import androidx.work.NetworkType;
import androidx.work.impl.model.j0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class e extends BaseConstraintController {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f15604b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(i4.g tracker) {
        super(tracker);
        Intrinsics.h(tracker, "tracker");
        this.f15604b = 7;
    }

    @Override // androidx.work.impl.constraints.controllers.d
    public boolean c(j0 workSpec) {
        Intrinsics.h(workSpec, "workSpec");
        return workSpec.f15773j.f() == NetworkType.CONNECTED;
    }

    @Override // androidx.work.impl.constraints.controllers.BaseConstraintController
    protected int e() {
        return this.f15604b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.work.impl.constraints.controllers.BaseConstraintController
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public boolean f(androidx.work.impl.constraints.g value) {
        Intrinsics.h(value, "value");
        return value.c() || !value.d() || (Build.VERSION.SDK_INT >= 26 && !value.g());
    }
}
