package com.transsion.wrapperad.view;

import android.content.Context;
import android.os.Handler;
import androidx.appcompat.app.AppCompatActivity;
import androidx.p009lifecycle.LifecycleCoroutineScope;
import androidx.p009lifecycle.v;
import com.hisavana.common.bean.TAdErrorCode;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.ad.view.native_ad.NativeWrapperAdView;

/* JADX INFO: loaded from: classes7.dex */
public final class NativeSlideshowView$loadBottomAd$1 extends di.a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ NativeSlideshowView f58281d;

    NativeSlideshowView$loadBottomAd$1(NativeSlideshowView nativeSlideshowView) {
        this.f58281d = nativeSlideshowView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y(NativeSlideshowView nativeSlideshowView) {
        NativeWrapperAdView nativeWrapperAdView = nativeSlideshowView.vTop;
        if (nativeWrapperAdView != null) {
            nativeWrapperAdView.setVisibility(8);
        }
        NativeWrapperAdView nativeWrapperAdView2 = nativeSlideshowView.vBottom;
        if (nativeWrapperAdView2 != null) {
            nativeWrapperAdView2.setVisibility(0);
        }
        BiddingNativeManager biddingNativeManager = nativeSlideshowView.topNative;
        if (biddingNativeManager != null) {
            biddingNativeManager.V();
        }
        nativeSlideshowView.topNative = null;
    }

    @Override // di.a
    public void i(TAdErrorCode tAdErrorCode) {
        super.i(tAdErrorCode);
        this.f58281d.i(true);
    }

    @Override // di.a
    public void j(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
        LifecycleCoroutineScope lifecycleCoroutineScopeA;
        super.j(biddingIntermediateMaterialBean);
        Context context = this.f58281d.getContext();
        if (context != null) {
            NativeSlideshowView nativeSlideshowView = this.f58281d;
            Context context2 = nativeSlideshowView.getContext();
            AppCompatActivity appCompatActivity = context2 instanceof AppCompatActivity ? (AppCompatActivity) context2 : null;
            if (appCompatActivity != null && (lifecycleCoroutineScopeA = v.a(appCompatActivity)) != null) {
                kotlinx.coroutines.k.d(lifecycleCoroutineScopeA, null, null, new NativeSlideshowView$loadBottomAd$1$onBiddingLoad$1$1(context, nativeSlideshowView, biddingIntermediateMaterialBean, null), 3, null);
            }
        }
        Handler handler = this.f58281d.mHandler;
        final NativeSlideshowView nativeSlideshowView2 = this.f58281d;
        handler.postDelayed(new Runnable() { // from class: com.transsion.wrapperad.view.m
            @Override // java.lang.Runnable
            public final void run() {
                NativeSlideshowView$loadBottomAd$1.y(nativeSlideshowView2);
            }
        }, 300L);
        NativeSlideshowView.j(this.f58281d, false, 1, null);
    }
}
