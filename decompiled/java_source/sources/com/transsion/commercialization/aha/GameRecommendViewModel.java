package com.transsion.commercialization.aha;

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
public final class GameRecommendViewModel extends t0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b0 f43747a = new b0();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Lazy f43748b = LazyKt.b(new Function0() { // from class: com.transsion.commercialization.aha.h
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return GameRecommendViewModel.l();
        }
    });

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f43749c;

    /* JADX INFO: Access modifiers changed from: private */
    public final String j() {
        String simpleName = GameRecommendViewModel.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final g k() {
        return (g) this.f43748b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final g l() {
        return (g) zg.c.f79414e.a().h(g.class);
    }

    public final b0 h() {
        return this.f43747a;
    }

    public final void i() {
        k.d(u0.a(this), y0.b(), null, new GameRecommendViewModel$getAllGame$1(this, null), 2, null);
    }
}
