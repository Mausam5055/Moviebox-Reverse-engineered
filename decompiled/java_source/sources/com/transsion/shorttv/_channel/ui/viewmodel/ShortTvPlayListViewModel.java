package com.transsion.shorttv._channel.ui.viewmodel;

import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.t0;
import androidx.p009lifecycle.u0;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes6.dex */
public final class ShortTvPlayListViewModel extends t0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final nr.a f52642a = (nr.a) zg.c.f79414e.a().h(nr.a.class);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Lazy f52643b = LazyKt.b(new Function0() { // from class: com.transsion.shorttv._channel.ui.viewmodel.f
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return ShortTvPlayListViewModel.h();
        }
    });

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f52644c = 1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f52645d = 8;

    /* JADX INFO: Access modifiers changed from: private */
    public static final b0 h() {
        return new b0();
    }

    public final int e() {
        return this.f52644c;
    }

    public final void f(String label, String category, String recType, String topIds, int i11) {
        Intrinsics.h(label, "label");
        Intrinsics.h(category, "category");
        Intrinsics.h(recType, "recType");
        Intrinsics.h(topIds, "topIds");
        k.d(u0.a(this), y0.b(), null, new ShortTvPlayListViewModel$getPlayList$1(this, label, category, recType, topIds, i11, null), 2, null);
    }

    public final b0 g() {
        return (b0) this.f52643b.getValue();
    }

    public final void i(int i11) {
        this.f52644c = i11;
    }
}
