package com.cloud.hisavana.sdk;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.ViewGroup;
import com.cloud.hisavana.sdk.api.adx.TBannerView;
import com.cloud.hisavana.sdk.api.listener.AdCallback;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.sdk.commonutil.util.DeviceUtil;
import com.cloud.sdk.commonutil.util.Preconditions;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes3.dex */
public final class p3 extends G {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    o f22830i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private volatile AdsDTO f22831j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    a f22832k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private ViewGroup f22833l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private CopyOnWriteArrayList f22834m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f22835n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private WeakReference f22836o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public long f22837p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Integer f22838q;

    private static class a extends Handler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final WeakReference f22839a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f22840b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f22841c;

        a(p3 p3Var, Looper looper, int i11) {
            super(looper);
            this.f22841c = 1;
            this.f22839a = new WeakReference(p3Var);
            this.f22840b = i11;
        }

        public void a() {
            this.f22841c = 1;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            p3 p3Var;
            super.handleMessage(message);
            int i11 = this.f22841c;
            if (i11 >= this.f22840b) {
                return;
            }
            this.f22841c = i11 + 1;
            WeakReference weakReference = this.f22839a;
            if (weakReference == null || weakReference.get() == null || (p3Var = (p3) this.f22839a.get()) == null) {
                return;
            }
            p3Var.T();
        }
    }

    public p3(q3 q3Var) {
        super(q3Var);
        this.f22831j = null;
        this.f22834m = new CopyOnWriteArrayList();
        this.f22836o = null;
        this.f22837p = 0L;
        this.f22838q = 0;
    }

    private void F() {
        e4.b().d("TranBanner", "postDelayRefresh");
        if (!S() || this.f22831j == null) {
            return;
        }
        this.f21501b.f();
        try {
            this.f22838q = this.f21501b.f().getCarouselCount();
        } catch (Throwable unused) {
        }
        if (this.f22832k == null) {
            this.f22832k = new a(this, Looper.getMainLooper(), this.f22838q.intValue());
        }
        long carouselTime = ((long) this.f21501b.f().getCarouselTime()) * 1000;
        this.f22837p = carouselTime;
        this.f22832k.sendEmptyMessageDelayed(1, carouselTime);
    }

    private void G() {
        this.f22830i = new o(this);
    }

    private void O(AdsDTO adsDTO) {
        if (adsDTO == null) {
            return;
        }
        com.cloud.hisavana.sdk.common.tranmeasure.e.c().g(adsDTO);
        k4.f22600a.j(adsDTO.getUuid());
    }

    private void Q() {
        ViewGroup viewGroup;
        AdCallback adCallback = this.f21504e;
        if (adCallback == null || (viewGroup = this.f22833l) == null || !(viewGroup instanceof TBannerView)) {
            return;
        }
        adCallback.n((TBannerView) viewGroup, this.f22831j);
    }

    private void R() {
        o oVar;
        if (this.f22831j != null && (oVar = this.f22830i) != null) {
            oVar.g(this.f22833l, this.f21501b.w(), this.f21501b.t(), this.f22831j);
            return;
        }
        if (this.f22831j == null) {
            J(TaErrorCode.ERROR_SHOW_ADBEAN_NULL);
        }
        e4.b().d("TranBanner", "no ad show, set visible gone");
        ViewGroup viewGroup = this.f22833l;
        if (viewGroup != null) {
            viewGroup.setVisibility(8);
        }
    }

    private boolean S() {
        return this.f21501b.f() != null && this.f21501b.f().getCarouselTime() > 0 && this.f21501b.f().getCarouselCount().intValue() > 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void T() {
        a aVar = this.f22832k;
        if (aVar != null) {
            aVar.a();
        }
        e4.b().d("TranBanner", "loadNextAD");
        this.f21501b.d(DeviceUtil.o());
        WeakReference weakReference = this.f22836o;
        if (weakReference == null) {
            e4.b().d("TranBanner", "loadNextAD weakTBannerView is null ,not show");
            return;
        }
        TBannerView tBannerView = (TBannerView) weakReference.get();
        if (tBannerView != null) {
            e4.b().d("TranBanner", "loadNextAD loadAdFromAutoRefresh true");
            tBannerView.loadAdFromAutoRefresh(true);
        }
    }

    public void H(int i11) {
        ViewGroup viewGroup = this.f22833l;
        if (viewGroup instanceof TBannerView) {
            ((TBannerView) viewGroup).setCloseTypeUsedForTrack(Integer.valueOf(i11));
        }
        Q();
    }

    public void I(TBannerView tBannerView) {
        this.f22836o = new WeakReference(tBannerView);
    }

    public void J(TaErrorCode taErrorCode) {
        try {
            AdCallback adCallback = this.f21504e;
            if (adCallback != null) {
                adCallback.t(taErrorCode, this);
            }
        } catch (Throwable unused) {
        }
    }

    public void K(TaErrorCode taErrorCode, Bundle bundle) {
        try {
            AdCallback adCallback = this.f21504e;
            if (adCallback != null) {
                adCallback.u(taErrorCode, this, bundle);
            }
        } catch (Throwable unused) {
        }
    }

    public void M(TBannerView tBannerView) {
        Preconditions.a();
        this.f22833l = tBannerView;
        G();
        if (this.f22833l == null || this.f22831j == null) {
            if (this.f22833l == null) {
                J(TaErrorCode.ERROR_SHOW_VIEWGROUP_NULL);
            } else if (this.f22831j == null) {
                J(TaErrorCode.ERROR_SHOW_ADBEAN_NULL);
            }
            e4.b().d("TranBanner", "bannerView or mAdBean = null");
            return;
        }
        if (r() == 0 && !z()) {
            R();
        } else {
            J(TaErrorCode.ERROR_SHOW_INNER_INVALID);
            e4.b().d("TranBanner", "ad not condition to use");
        }
    }

    public void N(boolean z10) {
        this.f22835n = z10;
        E();
    }

    public void P() {
        ViewGroup viewGroup = this.f22833l;
        if (viewGroup instanceof TBannerView) {
            ((TBannerView) viewGroup).setCloseTypeUsedForTrack(null);
        }
        Q();
    }

    void U() {
        AdCallback adCallback = this.f21504e;
        if (adCallback != null) {
            adCallback.m();
            this.f21504e.k(this.f22831j);
        }
    }

    void V() {
        f();
        F();
        k(true);
        AdCallback adCallback = this.f21504e;
        if (adCallback != null) {
            adCallback.s();
        }
    }

    @Override // com.cloud.hisavana.sdk.G, com.cloud.hisavana.sdk.api.listener.f
    public void b(TaErrorCode taErrorCode, Bundle bundle) {
        if (!this.f22835n) {
            AdCallback adCallback = this.f21504e;
            if (adCallback != null) {
                adCallback.x(this, taErrorCode, bundle);
                return;
            }
            return;
        }
        WeakReference weakReference = this.f22836o;
        if (weakReference == null || ((TBannerView) weakReference.get()) == null) {
            return;
        }
        F();
    }

    @Override // com.cloud.hisavana.sdk.G, com.cloud.hisavana.sdk.api.listener.f
    public void d(List list, Bundle bundle) {
        AdsDTO adsDTO = this.f22831j;
        this.f22831j = (list == null || list.isEmpty()) ? null : (AdsDTO) list.get(0);
        if (!this.f22835n) {
            super.d(list, bundle);
            return;
        }
        this.f21505f = list;
        if (list == null || list.isEmpty()) {
            b(TaErrorCode.ERROR_AD_FETCHED_AD_IS_NULL, bundle);
            return;
        }
        WeakReference weakReference = this.f22836o;
        if (weakReference == null) {
            e4.b().d("TranBanner", "weakTBannerView is null ,not show");
            return;
        }
        TBannerView tBannerView = (TBannerView) weakReference.get();
        if (tBannerView == null) {
            e4.b().d("TranBanner", "tBannerView is null ,not show");
            return;
        }
        AdCallback adCallback = this.f21504e;
        if (adCallback != null) {
            adCallback.D(this);
        }
        k(false);
        M(tBannerView);
        O(adsDTO);
    }

    @Override // com.cloud.hisavana.sdk.G
    public void m() {
        super.m();
        o oVar = this.f22830i;
        if (oVar != null) {
            oVar.c();
        }
        ViewGroup viewGroup = this.f22833l;
        if (viewGroup != null) {
            viewGroup.removeAllViews();
        }
        com.cloud.hisavana.sdk.common.tranmeasure.e.c().g(this.f22831j);
        a aVar = this.f22832k;
        if (aVar != null) {
            aVar.removeMessages(1);
            this.f22832k = null;
        }
    }
}
