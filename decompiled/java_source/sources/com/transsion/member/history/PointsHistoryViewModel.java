package com.transsion.member.history;

import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.t0;
import androidx.p009lifecycle.u0;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes5.dex */
public final class PointsHistoryViewModel extends t0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Lazy f46572a = LazyKt.b(new Function0() { // from class: com.transsion.member.history.e
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return PointsHistoryViewModel.g();
        }
    });

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b0 f46573b = new b0();

    /* JADX INFO: Access modifiers changed from: private */
    public final vm.a f() {
        return (vm.a) this.f46572a.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final vm.a g() {
        return (vm.a) zg.c.f79414e.a().h(vm.a.class);
    }

    public final void d(String page) {
        Intrinsics.h(page, "page");
        k.d(u0.a(this), y0.b(), null, new PointsHistoryViewModel$fetchHistory$1(this, page, null), 2, null);
    }

    public final b0 e() {
        return this.f46573b;
    }
}
