package com.transsion.shorttv.ad.common;

import com.hisavana.common.bean.TAdErrorCode;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.bidding.base.r;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.ad.view.native_ad.NativeWrapperAdView;
import com.transsion.shorttv.ad.AdLoadState;
import java.lang.ref.WeakReference;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes6.dex */
public final class STCommonNativeAdHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f52688a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final n0 f52689b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private BiddingNativeManager f52690c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private BiddingIntermediateMaterialBean f52691d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Function1 f52692e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Function1 f52693f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private WeakReference f52694g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f52695h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private AdLoadState f52696i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final STCommonNativeAdHelper$nativeAdListener$1 f52697j;

    /* JADX WARN: Type inference failed for: r2v3, types: [com.transsion.shorttv.ad.common.STCommonNativeAdHelper$nativeAdListener$1] */
    public STCommonNativeAdHelper(String sceneId, n0 scope) {
        Intrinsics.h(sceneId, "sceneId");
        Intrinsics.h(scope, "scope");
        this.f52688a = sceneId;
        this.f52689b = scope;
        this.f52695h = "";
        this.f52696i = AdLoadState.IDLE;
        this.f52697j = new di.a() { // from class: com.transsion.shorttv.ad.common.STCommonNativeAdHelper$nativeAdListener$1
            @Override // di.a
            public void i(TAdErrorCode tAdErrorCode) {
                super.i(tAdErrorCode);
                this.f52698d.f52696i = AdLoadState.FAILED;
                ur.a aVar = ur.a.f76889a;
                String strO = this.f52698d.o();
                String str = "onBiddingError, error=" + tAdErrorCode;
                BiddingNativeManager biddingNativeManager = this.f52698d.f52690c;
                aVar.d(strO, str, biddingNativeManager != null ? biddingNativeManager.getMSceneId() : null);
                k.d(this.f52698d.f52689b, y0.c(), null, new STCommonNativeAdHelper$nativeAdListener$1$onBiddingError$1(this.f52698d, null), 2, null);
            }

            @Override // di.a
            public void j(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
                super.j(biddingIntermediateMaterialBean);
                this.f52698d.f52696i = AdLoadState.SUCCEED;
                ur.a aVar = ur.a.f76889a;
                String strO = this.f52698d.o();
                BiddingNativeManager biddingNativeManager = this.f52698d.f52690c;
                aVar.b(strO, "onBiddingLoad", biddingNativeManager != null ? biddingNativeManager.getMSceneId() : null);
                this.f52698d.f52691d = biddingIntermediateMaterialBean;
                k.d(this.f52698d.f52689b, y0.c(), null, new STCommonNativeAdHelper$nativeAdListener$1$onBiddingLoad$1(this.f52698d, null), 2, null);
            }

            @Override // di.a
            public void m(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
                super.m(biddingIntermediateMaterialBean);
                this.f52698d.f52696i = AdLoadState.CLOSED;
                ur.a aVar = ur.a.f76889a;
                String strO = this.f52698d.o();
                BiddingNativeManager biddingNativeManager = this.f52698d.f52690c;
                aVar.d(strO, "onBiddingWrapperAdClose", biddingNativeManager != null ? biddingNativeManager.getMSceneId() : null);
                this.f52698d.m(4);
            }

            @Override // di.a
            public void n(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
                super.n(biddingIntermediateMaterialBean);
                ur.a aVar = ur.a.f76889a;
                String strO = this.f52698d.o();
                BiddingNativeManager biddingNativeManager = this.f52698d.f52690c;
                aVar.b(strO, "onBiddingWrapperAdDisplay", biddingNativeManager != null ? biddingNativeManager.getMSceneId() : null);
                k.d(this.f52698d.f52689b, y0.c(), null, new STCommonNativeAdHelper$nativeAdListener$1$onBiddingWrapperAdDisplay$1(this.f52698d, null), 2, null);
            }

            @Override // di.a
            public void p(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
                super.p(biddingIntermediateMaterialBean);
                ur.a aVar = ur.a.f76889a;
                String strO = this.f52698d.o();
                BiddingNativeManager biddingNativeManager = this.f52698d.f52690c;
                aVar.d(strO, "onBiddingWrapperAdShowError", biddingNativeManager != null ? biddingNativeManager.getMSceneId() : null);
                k.d(this.f52698d.f52689b, y0.c(), null, new STCommonNativeAdHelper$nativeAdListener$1$onBiddingWrapperAdShowError$1(this.f52698d, null), 2, null);
            }
        };
    }

    public static /* synthetic */ void n(STCommonNativeAdHelper sTCommonNativeAdHelper, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i11 = 0;
        }
        sTCommonNativeAdHelper.m(i11);
    }

    public final void m(int i11) {
        this.f52696i = AdLoadState.DESTROYED;
        try {
            Result.Companion companion = Result.INSTANCE;
            if (this.f52690c != null) {
                if (i11 == 0) {
                    ur.a.f76889a.b(this.f52695h, "trigger destroy", this.f52688a);
                } else if (i11 == 1) {
                    ur.a.f76889a.b(this.f52695h, "trigger destroy when load error", this.f52688a);
                } else if (i11 == 2) {
                    ur.a.f76889a.b(this.f52695h, "trigger destroy when show error", this.f52688a);
                } else if (i11 == 3) {
                    ur.a.f76889a.b(this.f52695h, "trigger destroy before load", this.f52688a);
                } else if (i11 != 4) {
                    ur.a.f76889a.b(this.f52695h, "trigger destroy", this.f52688a);
                } else {
                    ur.a.f76889a.b(this.f52695h, "trigger destroy when ad closed", this.f52688a);
                }
                BiddingNativeManager biddingNativeManager = this.f52690c;
                if (biddingNativeManager != null) {
                    biddingNativeManager.V();
                }
                this.f52690c = null;
            }
            this.f52691d = null;
            this.f52692e = null;
            this.f52693f = null;
            WeakReference weakReference = this.f52694g;
            if (weakReference != null) {
                weakReference.clear();
            }
            this.f52694g = null;
            Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    public final String o() {
        return this.f52695h;
    }

    public final String p() {
        return this.f52688a;
    }

    public final void q(Function1 callback) {
        Intrinsics.h(callback, "callback");
        if (this.f52688a.length() == 0) {
            ur.a.f76889a.d(this.f52695h, "trigger load ad error, sceneId is null", this.f52688a);
            return;
        }
        AdLoadState adLoadState = this.f52696i;
        if (adLoadState == AdLoadState.LOADING) {
            ur.a.f76889a.d(this.f52695h, "trigger load ad error, current ad is loading", this.f52688a);
        } else if (adLoadState == AdLoadState.SUCCEED) {
            ur.a.f76889a.d(this.f52695h, "trigger load ad error, current ad is already loaded succeed", this.f52688a);
        } else {
            k.d(this.f52689b, y0.c(), null, new STCommonNativeAdHelper$loadAd$1(this, callback, null), 2, null);
        }
    }

    public final void r(String str) {
        Intrinsics.h(str, "<set-?>");
        this.f52695h = str;
    }

    public final void s(r layoutProvider, NativeWrapperAdView nativeAdView, Function1 function1) {
        Intrinsics.h(layoutProvider, "layoutProvider");
        Intrinsics.h(nativeAdView, "nativeAdView");
        if (this.f52690c != null && this.f52691d != null) {
            k.d(this.f52689b, y0.c(), null, new STCommonNativeAdHelper$showAd$1(this, function1, nativeAdView, layoutProvider, null), 2, null);
            return;
        }
        ur.a.f76889a.d(this.f52695h, "trigger show ad error, nativeManager or maxEcpmObject is null", this.f52688a);
        if (function1 != null) {
            function1.invoke(Boolean.FALSE);
        }
    }
}
