package com.transsion.shorttv.ad.common;

import android.app.Activity;
import com.hisavana.common.bean.TAdErrorCode;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.bidding.video.BiddingVideoManager;
import com.transsion.shorttv.ad.AdLoadState;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes6.dex */
public final class STCommonVideoAdHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f52699a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final n0 f52700b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private BiddingVideoManager f52701c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private BiddingIntermediateMaterialBean f52702d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Function3 f52703e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Function0 f52704f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Function1 f52705g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f52706h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private AdLoadState f52707i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f52708j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final STCommonVideoAdHelper$videoListener$1 f52709k;

    /* JADX WARN: Type inference failed for: r2v3, types: [com.transsion.shorttv.ad.common.STCommonVideoAdHelper$videoListener$1] */
    public STCommonVideoAdHelper(String sceneId, n0 scope) {
        Intrinsics.h(sceneId, "sceneId");
        Intrinsics.h(scope, "scope");
        this.f52699a = sceneId;
        this.f52700b = scope;
        this.f52706h = "";
        this.f52707i = AdLoadState.IDLE;
        this.f52709k = new di.a() { // from class: com.transsion.shorttv.ad.common.STCommonVideoAdHelper$videoListener$1
            @Override // di.a
            public void i(TAdErrorCode tAdErrorCode) {
                super.i(tAdErrorCode);
                this.f52710d.f52707i = AdLoadState.FAILED;
                ur.a aVar = ur.a.f76889a;
                String strR = this.f52710d.r();
                String str = "onBiddingError, error=" + tAdErrorCode;
                BiddingVideoManager biddingVideoManager = this.f52710d.f52701c;
                aVar.d(strR, str, biddingVideoManager != null ? biddingVideoManager.getMSceneId() : null);
                k.d(this.f52710d.f52700b, y0.c(), null, new STCommonVideoAdHelper$videoListener$1$onBiddingError$1(this.f52710d, tAdErrorCode, null), 2, null);
            }

            @Override // di.a
            public void j(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
                super.j(biddingIntermediateMaterialBean);
                this.f52710d.f52707i = AdLoadState.SUCCEED;
                ur.a aVar = ur.a.f76889a;
                String strR = this.f52710d.r();
                BiddingVideoManager biddingVideoManager = this.f52710d.f52701c;
                aVar.b(strR, "onBiddingLoad", biddingVideoManager != null ? biddingVideoManager.getMSceneId() : null);
                this.f52710d.f52702d = biddingIntermediateMaterialBean;
                k.d(this.f52710d.f52700b, y0.c(), null, new STCommonVideoAdHelper$videoListener$1$onBiddingLoad$1(this.f52710d, null), 2, null);
            }

            @Override // di.a
            public void m(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
                super.m(biddingIntermediateMaterialBean);
                this.f52710d.f52707i = AdLoadState.CLOSED;
                ur.a aVar = ur.a.f76889a;
                String strR = this.f52710d.r();
                String str = "onBiddingWrapperAdClose, isRewarded=" + this.f52710d.f52708j;
                BiddingVideoManager biddingVideoManager = this.f52710d.f52701c;
                aVar.b(strR, str, biddingVideoManager != null ? biddingVideoManager.getMSceneId() : null);
                k.d(this.f52710d.f52700b, y0.c(), null, new STCommonVideoAdHelper$videoListener$1$onBiddingWrapperAdClose$1(this.f52710d, this.f52710d.f52708j, null), 2, null);
            }

            @Override // di.a
            public void o(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
                super.o(biddingIntermediateMaterialBean);
                ur.a aVar = ur.a.f76889a;
                String strR = this.f52710d.r();
                BiddingVideoManager biddingVideoManager = this.f52710d.f52701c;
                aVar.b(strR, "onBiddingWrapperAdRewarded", biddingVideoManager != null ? biddingVideoManager.getMSceneId() : null);
                this.f52710d.f52708j = true;
                k.d(this.f52710d.f52700b, y0.c(), null, new STCommonVideoAdHelper$videoListener$1$onBiddingWrapperAdRewarded$1(this.f52710d, null), 2, null);
            }
        };
    }

    public static /* synthetic */ void q(STCommonVideoAdHelper sTCommonVideoAdHelper, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i11 = 0;
        }
        sTCommonVideoAdHelper.p(i11);
    }

    public final void p(int i11) {
        this.f52707i = AdLoadState.DESTROYED;
        try {
            Result.Companion companion = Result.INSTANCE;
            if (this.f52701c != null) {
                if (i11 == 0) {
                    ur.a.f76889a.b(this.f52706h, "trigger destroy", this.f52699a);
                } else if (i11 == 1) {
                    ur.a.f76889a.b(this.f52706h, "trigger destroy when load error", this.f52699a);
                } else if (i11 == 3) {
                    ur.a.f76889a.b(this.f52706h, "trigger destroy before load", this.f52699a);
                } else if (i11 != 4) {
                    ur.a.f76889a.b(this.f52706h, "trigger destroy", this.f52699a);
                } else {
                    ur.a.f76889a.b(this.f52706h, "trigger destroy when ad closed", this.f52699a);
                }
                BiddingVideoManager biddingVideoManager = this.f52701c;
                if (biddingVideoManager != null) {
                    biddingVideoManager.V();
                }
                this.f52701c = null;
            }
            this.f52702d = null;
            this.f52703e = null;
            this.f52704f = null;
            this.f52705g = null;
            Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    public final String r() {
        return this.f52706h;
    }

    public final String s() {
        return this.f52699a;
    }

    public final void t(Function3 function3) {
        if (this.f52699a.length() == 0) {
            ur.a.f76889a.d(this.f52706h, "trigger load ad error, sceneId is null", this.f52699a);
            return;
        }
        AdLoadState adLoadState = this.f52707i;
        if (adLoadState == AdLoadState.LOADING) {
            ur.a.f76889a.d(this.f52706h, "trigger load ad error, current ad is loading", this.f52699a);
        } else if (adLoadState == AdLoadState.SUCCEED) {
            ur.a.f76889a.d(this.f52706h, "trigger load ad error, current ad is already loaded succeed", this.f52699a);
        } else {
            k.d(this.f52700b, y0.c(), null, new STCommonVideoAdHelper$loadAd$1(this, function3, null), 2, null);
        }
    }

    public final void u(Activity activity, Function0 function0, Function1 function1) {
        Intrinsics.h(activity, "activity");
        if (this.f52701c == null || this.f52702d == null) {
            ur.a.f76889a.d(this.f52706h, "trigger show ad error, videoManager or maxEcpmObject is null", this.f52699a);
        } else {
            k.d(this.f52700b, y0.c(), null, new STCommonVideoAdHelper$showAd$1(this, function0, function1, activity, null), 2, null);
        }
    }
}
