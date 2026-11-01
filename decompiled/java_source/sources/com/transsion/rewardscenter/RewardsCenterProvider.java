package com.transsion.rewardscenter;

import android.content.Context;
import androidx.p009lifecycle.LiveData;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.v;
import com.transsion.rewardscenter.task.ad.g0;
import com.transsion.rewardscenterapi.IRewardsCenterApi;
import com.transsion.rewardscenterapi.RewardsCenterData;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
public final class RewardsCenterProvider implements IRewardsCenterApi {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile RewardsCenterData f50949b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Lazy f50948a = LazyKt.b(new Function0() { // from class: com.transsion.rewardscenter.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return RewardsCenterProvider.j();
        }
    });

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final b0 f50950c = new b0(0);

    /* JADX INFO: Access modifiers changed from: private */
    public static final up.a j() {
        return (up.a) zg.c.f79414e.a().h(up.a.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final up.a k() {
        return (up.a) this.f50948a.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit l(g0 g0Var) {
        g0Var.r();
        return Unit.f67061a;
    }

    @Override // com.transsion.rewardscenterapi.IRewardsCenterApi
    public RewardsCenterData a() {
        return this.f50949b;
    }

    @Override // com.transsion.rewardscenterapi.IRewardsCenterApi
    public void b() {
        k.d(v.a(androidx.p009lifecycle.g0.f9592i.a()), null, null, new RewardsCenterProvider$fetchRewardsCenterData$1(this, null), 3, null);
    }

    @Override // com.transsion.rewardscenterapi.IRewardsCenterApi
    public void c(Context context, n0 n0Var) {
        Intrinsics.h(context, "context");
        lg.a.C0828a.f(lg.a.f68839a, "RewardsCenter", "preloadTaskAd", false, 4, null);
        Context applicationContext = context.getApplicationContext();
        Intrinsics.g(applicationContext, "getApplicationContext(...)");
        final g0 g0Var = new g0(applicationContext, n0Var);
        g0Var.f(new Function0() { // from class: com.transsion.rewardscenter.b
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return RewardsCenterProvider.l(g0Var);
            }
        });
    }

    @Override // com.transsion.rewardscenterapi.IRewardsCenterApi
    public LiveData d() {
        k.d(v.a(androidx.p009lifecycle.g0.f9592i.a()), null, null, new RewardsCenterProvider$fetchUnclaimRewardCount$1(this, null), 3, null);
        return this.f50950c;
    }
}
