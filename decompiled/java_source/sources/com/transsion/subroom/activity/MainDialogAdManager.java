package com.transsion.subroom.activity;

import com.hisavana.common.bean.TAdErrorCode;
import com.therouter.TheRouter;
import com.transsion.ad.bidding.base.AbsAdBidding;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.bidding.interstitial.BiddingInterstitialManager;
import com.transsion.memberapi.IPremiumApi;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class MainDialogAdManager extends di.a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private MainActivity f54579d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private BiddingInterstitialManager f54580e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f54581f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f54582g = "MainDialogInterstitialScene";

    private final void D(MainActivity mainActivity) {
        ii.b bVar = ii.b.f65248a;
        if (bVar.a(this.f54582g)) {
            if (hi.c.f64467a.a()) {
                ii.b.d(bVar, this.f54582g, false, 2, null);
            } else if (this.f54580e != null) {
                ii.b.d(bVar, this.f54582g, false, 2, null);
            } else {
                this.f54579d = mainActivity;
                kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(mainActivity), null, null, new MainDialogAdManager$loadAd$1(this, null), 3, null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit F(MainDialogAdManager mainDialogAdManager) {
        mainDialogAdManager.f54581f = true;
        ii.b.g(ii.b.f65248a, mainDialogAdManager.f54582g, null, 2, null);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit G(MainDialogAdManager mainDialogAdManager) {
        mainDialogAdManager.f54581f = false;
        ii.b.f65248a.e(mainDialogAdManager.f54582g, true);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit H(MainDialogAdManager mainDialogAdManager, MainActivity mainActivity, Throwable it) {
        Intrinsics.h(it, "it");
        lg.a.C0828a.f(lg.a.f68839a, "premium_discount", "会员促销弹窗展示失败 --> " + it.getMessage() + " --> 继续展示首页广告", false, 4, null);
        mainDialogAdManager.D(mainActivity);
        return Unit.f67061a;
    }

    private final void I() {
        BiddingInterstitialManager biddingInterstitialManager = this.f54580e;
        if (biddingInterstitialManager != null) {
            biddingInterstitialManager.V();
        }
        this.f54580e = null;
        this.f54579d = null;
        this.f54581f = false;
    }

    public final void E(final MainActivity activity) {
        Intrinsics.h(activity, "activity");
        if (this.f54581f) {
            lg.a.C0828a.f(lg.a.f68839a, "premium_discount", "首页弹窗 --> 已有弹窗正在展示", false, 4, null);
            return;
        }
        if (!ii.b.f65248a.a(this.f54582g)) {
            lg.a.C0828a.f(lg.a.f68839a, "premium_discount", "首页弹窗 --> 不满足展示条件", false, 4, null);
            return;
        }
        IPremiumApi iPremiumApi = (IPremiumApi) TheRouter.d(IPremiumApi.class, new Object[0]);
        if (iPremiumApi != null) {
            iPremiumApi.d(activity, this.f54582g, null, new Function0() { // from class: com.transsion.subroom.activity.y
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return MainDialogAdManager.F(this.f54664a);
                }
            }, new Function0() { // from class: com.transsion.subroom.activity.z
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return MainDialogAdManager.G(this.f54665a);
                }
            }, new Function1() { // from class: com.transsion.subroom.activity.a0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return MainDialogAdManager.H(this.f54628a, activity, (Throwable) obj);
                }
            });
        }
    }

    @Override // di.a
    public void i(TAdErrorCode tAdErrorCode) {
        super.i(tAdErrorCode);
        ii.b.f65248a.e(this.f54582g, false);
        I();
    }

    @Override // di.a
    public void j(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
        super.j(biddingIntermediateMaterialBean);
        ii.b bVar = ii.b.f65248a;
        if (bVar.a(this.f54582g)) {
            BiddingInterstitialManager biddingInterstitialManager = this.f54580e;
            if (biddingInterstitialManager != null) {
                AbsAdBidding.R0(biddingInterstitialManager, this.f54579d, biddingIntermediateMaterialBean, false, 4, null);
            }
            this.f54581f = true;
            ii.b.g(bVar, this.f54582g, null, 2, null);
        }
    }

    @Override // di.a
    public void m(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
        super.m(biddingIntermediateMaterialBean);
        ii.b.f65248a.e(this.f54582g, true);
        I();
    }

    @Override // di.a
    public void p(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
        super.p(biddingIntermediateMaterialBean);
        ii.b.f65248a.e(this.f54582g, false);
        I();
    }
}
