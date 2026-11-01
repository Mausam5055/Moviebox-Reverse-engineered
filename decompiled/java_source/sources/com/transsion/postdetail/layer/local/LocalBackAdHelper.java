package com.transsion.postdetail.layer.local;

import android.app.Activity;
import com.hisavana.common.bean.TAdErrorCode;
import com.transsion.ad.bidding.base.AbsAdBidding;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.bidding.interstitial.BiddingInterstitialManager;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.t1;

/* JADX INFO: loaded from: classes6.dex */
public final class LocalBackAdHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f48931a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final kotlinx.coroutines.n0 f48932b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Function0 f48933c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Function0 f48934d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f48935e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private BiddingInterstitialManager f48936f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private t1 f48937g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f48938h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f48939i;

    public LocalBackAdHelper(String sceneId, kotlinx.coroutines.n0 scope, Function0 getActivity, Function0 onFinish, boolean z10) {
        Intrinsics.h(sceneId, "sceneId");
        Intrinsics.h(scope, "scope");
        Intrinsics.h(getActivity, "getActivity");
        Intrinsics.h(onFinish, "onFinish");
        this.f48931a = sceneId;
        this.f48932b = scope;
        this.f48933c = getActivity;
        this.f48934d = onFinish;
        this.f48935e = z10;
    }

    public /* synthetic */ LocalBackAdHelper(String str, kotlinx.coroutines.n0 n0Var, Function0 function0, Function0 function1, boolean z10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, n0Var, function0, function1, (i11 & 16) != 0 ? false : z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void m() {
        t1 t1Var = this.f48937g;
        if (t1Var != null) {
            t1.a.b(t1Var, null, 1, null);
        }
        this.f48937g = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final di.a n() {
        return new di.a() { // from class: com.transsion.postdetail.layer.local.LocalBackAdHelper$createListener$1
            @Override // di.a
            public void i(TAdErrorCode tAdErrorCode) {
                super.i(tAdErrorCode);
                if (this.f48940d.f48938h) {
                    return;
                }
                this.f48940d.f48939i = false;
                this.f48940d.m();
                ii.b.f65248a.e(this.f48940d.f48931a, false);
                this.f48940d.f48934d.invoke();
            }

            @Override // di.a
            public void j(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
                BiddingInterstitialManager biddingInterstitialManager;
                super.j(biddingIntermediateMaterialBean);
                if (this.f48940d.f48938h) {
                    return;
                }
                this.f48940d.m();
                ii.b bVar = ii.b.f65248a;
                if (!bVar.a(this.f48940d.f48931a)) {
                    this.f48940d.p();
                    return;
                }
                Activity activity = (Activity) this.f48940d.f48933c.invoke();
                if (activity != null && (biddingInterstitialManager = this.f48940d.f48936f) != null) {
                    AbsAdBidding.R0(biddingInterstitialManager, activity, biddingIntermediateMaterialBean, false, 4, null);
                }
                ii.b.g(bVar, this.f48940d.f48931a, null, 2, null);
            }

            @Override // di.a
            public void m(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
                super.m(biddingIntermediateMaterialBean);
                this.f48940d.f48939i = false;
                com.transsion.baselib.report.launch.b.f43370a.b().putLong("show_" + this.f48940d.f48931a + "_timestamp", System.currentTimeMillis());
                BiddingInterstitialManager biddingInterstitialManager = this.f48940d.f48936f;
                if (biddingInterstitialManager != null) {
                    biddingInterstitialManager.V();
                }
                ii.b.f65248a.e(this.f48940d.f48931a, true);
                if (this.f48940d.f48935e && ox.e.f72197a.b().c()) {
                    kotlinx.coroutines.k.d(this.f48940d.f48932b, null, null, new LocalBackAdHelper$createListener$1$onBiddingWrapperAdClose$1(this.f48940d, null), 3, null);
                } else {
                    this.f48940d.f48934d.invoke();
                }
            }

            @Override // di.a
            public void p(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
                super.p(biddingIntermediateMaterialBean);
                if (this.f48940d.f48938h) {
                    return;
                }
                this.f48940d.f48939i = false;
                this.f48940d.m();
                ii.b.f65248a.e(this.f48940d.f48931a, false);
                this.f48940d.f48934d.invoke();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void p() {
        if (this.f48938h) {
            return;
        }
        this.f48938h = true;
        this.f48939i = false;
        BiddingInterstitialManager biddingInterstitialManager = this.f48936f;
        if (biddingInterstitialManager != null) {
            biddingInterstitialManager.V();
        }
        this.f48936f = null;
        ii.b.f65248a.e(this.f48931a, false);
        this.f48934d.invoke();
    }

    private final void s() {
        this.f48937g = kotlinx.coroutines.k.d(this.f48932b, null, null, new LocalBackAdHelper$startTimeout$1(this, null), 3, null);
    }

    public final void o() {
        this.f48939i = false;
        m();
        BiddingInterstitialManager biddingInterstitialManager = this.f48936f;
        if (biddingInterstitialManager != null) {
            biddingInterstitialManager.V();
        }
        this.f48936f = null;
    }

    public final void q(String str) {
        BiddingInterstitialManager.f41965w.a(this.f48931a, com.transsion.ad.strategy.d.f42231a.a(str));
        ii.b.f65248a.h(this.f48931a);
    }

    public final void r(String str) {
        if (this.f48939i) {
            return;
        }
        this.f48938h = false;
        if (!ii.b.f65248a.a(this.f48931a)) {
            this.f48934d.invoke();
            return;
        }
        this.f48939i = true;
        kotlinx.coroutines.k.d(this.f48932b, null, null, new LocalBackAdHelper$show$1(this, str, null), 3, null);
        s();
    }
}
