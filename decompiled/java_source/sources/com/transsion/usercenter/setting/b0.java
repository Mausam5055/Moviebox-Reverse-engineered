package com.transsion.usercenter.setting;

import android.app.Application;
import androidx.p009lifecycle.LiveData;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class b0 extends androidx.p009lifecycle.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.p009lifecycle.b0 f57374b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final androidx.p009lifecycle.b0 f57375c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final androidx.p009lifecycle.b0 f57376d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Lazy f57377e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private io.reactivex.rxjava3.disposables.c f57378f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b0(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f57374b = new androidx.p009lifecycle.b0();
        this.f57375c = new androidx.p009lifecycle.b0();
        this.f57376d = new androidx.p009lifecycle.b0();
        this.f57377e = LazyKt.b(new Function0() { // from class: com.transsion.usercenter.setting.a0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return b0.d();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final yw.c d() {
        return new yw.c();
    }

    private final void e() {
        io.reactivex.rxjava3.disposables.c cVar;
        io.reactivex.rxjava3.disposables.c cVar2 = this.f57378f;
        if (cVar2 == null || cVar2.isDisposed() || (cVar = this.f57378f) == null) {
            return;
        }
        cVar.dispose();
    }

    public final LiveData f() {
        return this.f57374b;
    }

    public final LiveData g() {
        return this.f57375c;
    }

    public final LiveData h() {
        return this.f57376d;
    }

    @Override // androidx.p009lifecycle.t0
    protected void onCleared() {
        super.onCleared();
        e();
    }
}
