package com.transsion.postdetail.util;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.p009lifecycle.LifecycleCoroutineScope;
import androidx.p009lifecycle.v;
import com.transsion.ad.bidding.interstitial.BiddingInterstitialManager;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.ad.view.native_ad.NativeWrapperAdView;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.postdetail.ad.AdInterceptTimerView;
import com.transsion.postdetail.ad.BaseVideoAdHelper;
import com.transsion.postdetail.layer.local.LocalUiType;
import com.transsion.postdetail.ui.view.AdCountDownView;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import so.b0;

/* JADX INFO: loaded from: classes6.dex */
public final class LocalVideoAdHelper extends BaseVideoAdHelper {
    private so.l S;
    private DownloadBean T;

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit p2(LocalVideoAdHelper localVideoAdHelper) {
        LifecycleCoroutineScope lifecycleCoroutineScopeV0 = localVideoAdHelper.v0();
        if (lifecycleCoroutineScopeV0 != null) {
            kotlinx.coroutines.k.d(lifecycleCoroutineScopeV0, null, null, new LocalVideoAdHelper$onCompletion$1$1(localVideoAdHelper, null), 3, null);
        }
        return Unit.f67061a;
    }

    @Override // com.transsion.postdetail.ad.BaseVideoAdHelper
    protected ViewGroup B0() {
        b0 b0Var;
        so.l lVar = this.S;
        if (lVar == null || (b0Var = lVar.f75587l) == null) {
            return null;
        }
        return b0Var.S;
    }

    @Override // com.transsion.postdetail.ad.BaseVideoAdHelper
    protected NativeWrapperAdView V() {
        so.l lVar = this.S;
        if (lVar != null) {
            return lVar.f75578c;
        }
        return null;
    }

    @Override // com.transsion.postdetail.ad.BaseVideoAdHelper
    protected AdCountDownView W() {
        so.l lVar = this.S;
        if (lVar != null) {
            return lVar.f75579d;
        }
        return null;
    }

    @Override // com.transsion.postdetail.ad.BaseVideoAdHelper
    protected AdInterceptTimerView d0() {
        so.l lVar = this.S;
        if (lVar != null) {
            return lVar.f75580e;
        }
        return null;
    }

    @Override // com.transsion.postdetail.ad.BaseVideoAdHelper
    protected NativeWrapperAdView e0() {
        so.l lVar = this.S;
        if (lVar != null) {
            return lVar.f75581f;
        }
        return null;
    }

    @Override // com.transsion.postdetail.ad.BaseVideoAdHelper
    protected ViewGroup f0() {
        so.l lVar = this.S;
        if (lVar != null) {
            return lVar.f75582g;
        }
        return null;
    }

    @Override // com.transsion.postdetail.ad.BaseVideoAdHelper
    public void f2() {
        ConstraintLayout constraintLayoutB;
        so.l lVar = this.S;
        Context context = (lVar == null || (constraintLayoutB = lVar.getRoot()) == null) ? null : constraintLayoutB.getContext();
        AppCompatActivity appCompatActivity = context instanceof AppCompatActivity ? (AppCompatActivity) context : null;
        if (appCompatActivity != null) {
            kotlinx.coroutines.k.d(v.a(appCompatActivity), null, null, new LocalVideoAdHelper$updateAdStartLastShowTime$1$1(this, null), 3, null);
        }
    }

    @Override // com.transsion.postdetail.ad.BaseVideoAdHelper
    protected ViewGroup g0() {
        so.l lVar = this.S;
        if (lVar != null) {
            return lVar.f75583h;
        }
        return null;
    }

    @Override // com.transsion.postdetail.ad.BaseVideoAdHelper
    protected View j0() {
        so.l lVar = this.S;
        if (lVar != null) {
            return lVar.f75584i;
        }
        return null;
    }

    public final void l2() {
        BiddingNativeManager biddingNativeManagerT0 = t0();
        if (biddingNativeManagerT0 != null) {
            biddingNativeManagerT0.V();
        }
        o1(null);
        BiddingInterstitialManager biddingInterstitialManagerU0 = u0();
        if (biddingInterstitialManagerU0 != null) {
            biddingInterstitialManagerU0.V();
        }
        s1(null);
        this.S = null;
        Q();
        R();
    }

    public final void m2() {
        x1(w0() + ((System.currentTimeMillis() - A0()) / ((long) 1000)));
        C1(System.currentTimeMillis());
        w1(true);
        N1();
    }

    public final void n2(so.l lVar, String str, Function1 adShowCallback) {
        Intrinsics.h(adShowCallback, "adShowCallback");
        this.S = lVar;
        D0(lVar, str, adShowCallback);
    }

    public final void o2() {
        x1(0L);
        C1(0L);
        R();
        X1(new Function0() { // from class: com.transsion.postdetail.util.b
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return LocalVideoAdHelper.p2(this.f50160a);
            }
        });
    }

    public final void q2() {
        e1(null);
        P();
        y1(0);
    }

    public final void r2(LocalUiType uiType, com.transsion.player.orplayer.g gVar) {
        Intrinsics.h(uiType, "uiType");
        u1(uiType == LocalUiType.LAND);
        a1();
        if (M0()) {
            return;
        }
        O();
        if (gVar != null && !gVar.isPlaying() && !gVar.isComplete() && P0()) {
            N1();
        }
        if (L0()) {
            R0();
            g1(false);
        }
    }

    @Override // com.transsion.postdetail.ad.BaseVideoAdHelper
    protected ImageView s0() {
        so.l lVar = this.S;
        if (lVar != null) {
            return lVar.f75585j;
        }
        return null;
    }

    public final void s2() {
        C1(System.currentTimeMillis());
        w1(false);
        O();
    }

    public final void t2() {
        Q();
        R();
    }

    public final void u2() {
        if (L0()) {
            I(b0());
        }
    }

    public final void v2(DownloadBean downloadBean) {
        Long lastAdEndTimeStamp;
        Long lastAdStartTimeStamp;
        this.T = downloadBean;
        long jLongValue = 0;
        long jLongValue2 = (downloadBean == null || (lastAdStartTimeStamp = downloadBean.getLastAdStartTimeStamp()) == null) ? 0L : lastAdStartTimeStamp.longValue();
        if (downloadBean != null && (lastAdEndTimeStamp = downloadBean.getLastAdEndTimeStamp()) != null) {
            jLongValue = lastAdEndTimeStamp.longValue();
        }
        C0(jLongValue2, jLongValue);
        E0("localVideo");
    }

    @Override // com.transsion.postdetail.ad.BaseVideoAdHelper
    protected ImageView y0() {
        so.l lVar = this.S;
        if (lVar != null) {
            return lVar.f75589n;
        }
        return null;
    }
}
