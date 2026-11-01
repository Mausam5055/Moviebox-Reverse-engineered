package com.transsion.home.viewmodel;

import androidx.p009lifecycle.t0;
import androidx.p009lifecycle.u0;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes5.dex */
public final class PlayListViewModel extends t0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ol.b f45816a = (ol.b) zg.c.f79414e.a().h(ol.b.class);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Lazy f45817b = LazyKt.b(new Function0() { // from class: com.transsion.home.viewmodel.m
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return PlayListViewModel.h();
        }
    });

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f45818c = 1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f45819d = 8;

    /* JADX INFO: Access modifiers changed from: private */
    public static final androidx.p009lifecycle.b0 h() {
        return new androidx.p009lifecycle.b0();
    }

    public final int e() {
        return this.f45818c;
    }

    public final void f(String label, String category, String recType, String topIds, int i11) {
        Intrinsics.h(label, "label");
        Intrinsics.h(category, "category");
        Intrinsics.h(recType, "recType");
        Intrinsics.h(topIds, "topIds");
        kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new PlayListViewModel$getPlayList$1(this, label, category, recType, topIds, i11, null), 2, null);
    }

    public final androidx.p009lifecycle.b0 g() {
        return (androidx.p009lifecycle.b0) this.f45817b.getValue();
    }

    public final void i(int i11) {
        this.f45818c = i11;
    }
}
