package com.transsion.wrapperad.h5;

import android.app.Activity;
import com.hisavana.common.bean.TAdErrorCode;
import com.transsion.ad.bidding.base.AbsAdBidding;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.bidding.interstitial.BiddingInterstitialManager;
import com.transsion.wrapperadapi.H5AdStateEnum;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes7.dex */
public final class H5InterstitialAdProvider {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static jy.a f58166b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static BiddingInterstitialManager f58167c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final H5InterstitialAdProvider f58165a = new H5InterstitialAdProvider();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final a f58168d = new a();

    public static final class a extends di.a {
        a() {
        }

        @Override // di.a
        public void i(TAdErrorCode tAdErrorCode) {
            super.i(tAdErrorCode);
            jy.a aVar = H5InterstitialAdProvider.f58166b;
            if (aVar != null) {
                aVar.onAdStateCallback(H5AdStateEnum.MB_H5_AD_STATE_ON_FAIL.getValue(), tAdErrorCode != null ? tAdErrorCode.getErrorMessage() : null);
            }
            H5InterstitialAdProvider.f58165a.e();
        }

        @Override // di.a
        public void j(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            BiddingInterstitialManager biddingInterstitialManager;
            super.j(biddingIntermediateMaterialBean);
            Activity activityB = com.blankj.utilcode.util.a.b();
            if (activityB == null || (biddingInterstitialManager = H5InterstitialAdProvider.f58167c) == null) {
                return;
            }
            AbsAdBidding.R0(biddingInterstitialManager, activityB, biddingIntermediateMaterialBean, false, 4, null);
        }

        @Override // di.a
        public void m(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            super.m(biddingIntermediateMaterialBean);
            jy.a aVar = H5InterstitialAdProvider.f58166b;
            if (aVar != null) {
                aVar.onAdStateCallback(H5AdStateEnum.MB_H5_AD_STATE_ON_REWARDED.getValue(), "展示成功");
            }
            H5InterstitialAdProvider.f58165a.e();
        }

        @Override // di.a
        public void p(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            super.p(biddingIntermediateMaterialBean);
            jy.a aVar = H5InterstitialAdProvider.f58166b;
            if (aVar != null) {
                aVar.onAdStateCallback(H5AdStateEnum.MB_H5_AD_STATE_ON_FAIL.getValue(), "展示失败");
            }
            H5InterstitialAdProvider.f58165a.e();
        }
    }

    private H5InterstitialAdProvider() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void e() {
        BiddingInterstitialManager biddingInterstitialManager = f58167c;
        if (biddingInterstitialManager != null) {
            biddingInterstitialManager.V();
        }
        f58167c = null;
    }

    public final void f(String str, jy.a callback) {
        Intrinsics.h(callback, "callback");
        if (f58167c == null) {
            f58167c = new BiddingInterstitialManager();
        }
        f58166b = callback;
        k.d(o0.a(y0.b()), null, null, new H5InterstitialAdProvider$h5OpenAd$1(str, null), 3, null);
    }
}
