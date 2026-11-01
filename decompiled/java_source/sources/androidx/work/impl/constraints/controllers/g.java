package androidx.work.impl.constraints.controllers;

import android.os.Build;
import androidx.work.NetworkType;
import androidx.work.impl.model.j0;
import androidx.work.t;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class g extends BaseConstraintController {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final a f15608c = new a(null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f15609d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f15610b;

    private static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        String strI = t.i("NetworkNotRoamingCtrlr");
        Intrinsics.g(strI, "tagWithPrefix(...)");
        f15609d = strI;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(i4.g tracker) {
        super(tracker);
        Intrinsics.h(tracker, "tracker");
        this.f15610b = 7;
    }

    @Override // androidx.work.impl.constraints.controllers.d
    public boolean c(j0 workSpec) {
        Intrinsics.h(workSpec, "workSpec");
        return workSpec.f15773j.f() == NetworkType.NOT_ROAMING;
    }

    @Override // androidx.work.impl.constraints.controllers.BaseConstraintController
    protected int e() {
        return this.f15610b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.work.impl.constraints.controllers.BaseConstraintController
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public boolean f(androidx.work.impl.constraints.g value) {
        Intrinsics.h(value, "value");
        if (Build.VERSION.SDK_INT < 24) {
            t.e().a(f15609d, "Not-roaming network constraint is not supported before API 24, only checking for connected state.");
            if (!value.d() || value.c()) {
                return true;
            }
        } else if (!value.d() || !value.f() || value.c()) {
            return true;
        }
        return false;
    }
}
