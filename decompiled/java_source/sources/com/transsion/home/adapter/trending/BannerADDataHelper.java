package com.transsion.home.adapter.trending;

import android.widget.ImageView;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.mediation.ad.TMediaView;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.bidding.base.r;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.ad.view.native_ad.NativeWrapperAdView;
import com.transsion.wrapperad.R$id;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes5.dex */
public final class BannerADDataHelper {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static BiddingNativeManager f44656c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static Function2 f44657d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static NativeWrapperAdView f44658e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static boolean f44659f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f44660g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final BannerADDataHelper f44654a = new BannerADDataHelper();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static int f44655b = 1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final a f44661h = new a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int f44662i = 8;

    public static final class a extends di.a {
        a() {
        }

        @Override // di.a
        public void i(TAdErrorCode tAdErrorCode) {
            super.i(tAdErrorCode);
            lg.a.C0828a.f(lg.a.f68839a, "BannerADDataHelper", "--> onBiddingError() --> p0 = " + (tAdErrorCode != null ? tAdErrorCode.getErrorMessage() : null), false, 4, null);
            Function2 function2 = BannerADDataHelper.f44657d;
            if (function2 != null) {
                function2.invoke(null, Integer.valueOf(BannerADDataHelper.f44655b));
            }
            BannerADDataHelper.f44659f = false;
            BannerADDataHelper.f44660g = true;
        }

        @Override // di.a
        public void j(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            super.j(biddingIntermediateMaterialBean);
            lg.a.C0828a.f(lg.a.f68839a, "BannerADDataHelper", "--> onBiddingLoad() --> " + biddingIntermediateMaterialBean, false, 4, null);
            Function2 function2 = BannerADDataHelper.f44657d;
            if (function2 != null) {
                function2.invoke(biddingIntermediateMaterialBean, Integer.valueOf(BannerADDataHelper.f44655b));
            }
            BannerADDataHelper.f44659f = false;
            BannerADDataHelper.f44660g = false;
        }

        @Override // di.a
        public void n(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            super.n(biddingIntermediateMaterialBean);
            BannerADDataHelper.f44660g = true;
        }

        @Override // di.a
        public void p(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            super.p(biddingIntermediateMaterialBean);
            BannerADDataHelper.f44660g = true;
        }
    }

    private BannerADDataHelper() {
    }

    public final void i(NativeWrapperAdView nativeWrapperAdView, r rVar, BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
        f44658e = nativeWrapperAdView;
        if (nativeWrapperAdView != null) {
            nativeWrapperAdView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        }
        if (nativeWrapperAdView != null) {
            nativeWrapperAdView.bindNativeView(f44656c, rVar, biddingIntermediateMaterialBean);
        }
    }

    public final void j() {
        BiddingNativeManager biddingNativeManager = f44656c;
        if (biddingNativeManager != null) {
            biddingNativeManager.V();
        }
        f44656c = null;
    }

    public final void k(Function2 function2) {
        if (f44659f) {
            return;
        }
        f44659f = true;
        f44657d = function2;
        j();
        k.d(o0.a(y0.b()), null, null, new BannerADDataHelper$fetchData$1(null), 3, null);
    }

    public final void l() {
        TMediaView tMediaView;
        NativeWrapperAdView nativeWrapperAdView = f44658e;
        if (nativeWrapperAdView == null || (tMediaView = (TMediaView) nativeWrapperAdView.findViewById(R$id.ad_media)) == null) {
            return;
        }
        tMediaView.performClick();
    }

    public final boolean m() {
        return f44660g;
    }

    public final void n() {
        f44658e = null;
    }
}
