package com.cloud.hisavana.sdk;

import android.text.TextUtils;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.bean.AdImage;
import com.cloud.hisavana.sdk.common.bean.VastData;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.http.DownLoadRequest;
import com.cloud.hisavana.sdk.common.http.listener.DrawableResponseListener;
import com.cloud.hisavana.sdk.common.util.z;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.AdsProtocolBean;
import com.cloud.hisavana.sdk.manager.NetStateManager;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
public class n4 extends l0 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private AdsDTO f22751d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private AtomicInteger f22752e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private r3 f22753f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f22754g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f22755h;

    class a implements com.cloud.hisavana.sdk.common.util.q0.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ AdsDTO f22756a;

        a(AdsDTO adsDTO) {
            this.f22756a = adsDTO;
        }

        @Override // com.cloud.hisavana.sdk.common.util.q0.b
        public void a(TaErrorCode taErrorCode) {
            n4.this.i(this.f22756a, false);
            n4.this.g(taErrorCode);
        }

        @Override // com.cloud.hisavana.sdk.common.util.q0.b
        public void b(int i11) {
            n4.this.i(this.f22756a, true);
            n4.this.e(i11);
            n4.this.w();
            N0.M(this.f22756a);
        }
    }

    class b extends DrawableResponseListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ AdsDTO f22758b;

        b(AdsDTO adsDTO) {
            this.f22758b = adsDTO;
        }

        @Override // com.cloud.hisavana.sdk.common.http.listener.ResponseBaseListener
        public void a(TaErrorCode taErrorCode) {
            e4.b().e("SplashLoadManager", "load store url error," + taErrorCode);
            n4.this.g(taErrorCode);
        }

        @Override // com.cloud.hisavana.sdk.common.http.listener.DrawableResponseListener
        public void g(int i11, AdImage adImage) {
            n4.this.f(i11);
            n4.this.h(this.f22758b);
        }
    }

    class c extends DrawableResponseListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ AdsDTO f22760b;

        class a implements com.cloud.hisavana.sdk.common.util.n {
            a() {
            }

            @Override // com.cloud.hisavana.sdk.common.util.n
            public void a(boolean z10) {
                if (!z10) {
                    n4.this.g(TaErrorCode.ERROR_ZIP_MATERIAL_DECOMPRESS_FAILED);
                } else {
                    c cVar = c.this;
                    n4.this.h(cVar.f22760b);
                }
            }
        }

        c(AdsDTO adsDTO) {
            this.f22760b = adsDTO;
        }

        @Override // com.cloud.hisavana.sdk.common.http.listener.ResponseBaseListener
        public void a(TaErrorCode taErrorCode) {
            if (n4.this.f22751d.isInteractiveAd()) {
                AthenaTracker.S(n4.this.f22751d, 1);
            }
            n4.this.g(taErrorCode);
        }

        @Override // com.cloud.hisavana.sdk.common.http.listener.DrawableResponseListener
        public void g(int i11, AdImage adImage) {
            n4.this.b(i11);
            if (!this.f22760b.isInteractiveAd()) {
                n4.this.h(this.f22760b);
                return;
            }
            AthenaTracker.S(n4.this.f22751d, 0);
            if (adImage != null) {
                z.f22210a.h(this.f22760b, adImage.getFilePath(), new a());
            } else {
                n4.this.g(TaErrorCode.ERROR_ZIP_MATERIAL_TAKE_FAILED);
            }
        }
    }

    class d extends DrawableResponseListener {
        d() {
        }

        @Override // com.cloud.hisavana.sdk.common.http.listener.ResponseBaseListener
        public void a(TaErrorCode taErrorCode) {
            e4.b().e("SplashLoadManager", "load store url error," + taErrorCode);
            n4.this.g(taErrorCode);
        }

        @Override // com.cloud.hisavana.sdk.common.http.listener.DrawableResponseListener
        public void g(int i11, AdImage adImage) {
            n4.this.f(i11);
            n4 n4Var = n4.this;
            n4Var.h(n4Var.f22751d);
        }
    }

    public n4(AdsDTO adsDTO, int i11, r3 r3Var) {
        this.f22751d = adsDTO;
        this.f22755h = i11;
        this.f22753f = r3Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(TaErrorCode taErrorCode) {
        this.f22754g = false;
        r3 r3Var = this.f22753f;
        if (r3Var != null) {
            r3Var.a(taErrorCode, this.f22611a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h(AdsDTO adsDTO) {
        e4 e4VarB = e4.b();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("calculateDownloadCount imageCounter ");
        AtomicInteger atomicInteger = this.f22752e;
        sb2.append(atomicInteger == null ? "null" : Integer.valueOf(atomicInteger.get()));
        e4VarB.d("SplashLoadManager", sb2.toString());
        AtomicInteger atomicInteger2 = this.f22752e;
        if (atomicInteger2 == null || atomicInteger2.decrementAndGet() > 0) {
            return;
        }
        d();
        w();
        N0.M(adsDTO);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i(AdsDTO adsDTO, boolean z10) {
        VastData videoInfo = adsDTO.getVideoInfo();
        if (videoInfo != null) {
            videoInfo.setCached(Boolean.valueOf(z10));
        }
    }

    private void s() {
        e4.b().d("SplashLoadManager", "interstitial loadAdmAd");
        if (!NetStateManager.checkNetworkState(true)) {
            this.f22753f.a(TaErrorCode.ERROR_DOWNLOAD_NO_NETWORK, this.f22611a);
            return;
        }
        AdsDTO adsDTO = this.f22751d;
        if (adsDTO == null || TextUtils.isEmpty(adsDTO.getAdm())) {
            this.f22753f.a(TaErrorCode.ERROR_MATERIAL_DOWNLOAD_LOCAL_BEAN_NULL, this.f22611a);
            return;
        }
        if (this.f22751d.getExt() == null || this.f22751d.getExt().getStoreFlag().intValue() <= 0) {
            a();
            w();
            return;
        }
        AdsProtocolBean.Ext ext = this.f22751d.getExt();
        if (ext == null || ext.getStoreFlag().intValue() <= 0) {
            return;
        }
        this.f22752e = new AtomicInteger(1);
        if (TextUtils.isEmpty(ext.getStoreImageurl())) {
            g(TaErrorCode.ERROR_MATERIAL_STORE_IMG_URL_IS_EMPTY);
        } else {
            DownLoadRequest.k(ext.getStoreImageurl(), this.f22751d, 6, false, new d());
        }
    }

    private void u() {
        AdsProtocolBean.Ext ext;
        e4.b().d("SplashLoadManager", "interstitial loadNormalAd");
        AdsDTO adsDTO = this.f22751d;
        if (adsDTO == null) {
            return;
        }
        if (TextUtils.isEmpty(adsDTO.getAdImgUrl())) {
            g(TaErrorCode.ERROR_ADM_URL_IS_EMPTY);
            return;
        }
        this.f22752e = new AtomicInteger(1);
        if (adsDTO.getExt() != null && adsDTO.getExt().getStoreFlag().intValue() > 0 && (ext = adsDTO.getExt()) != null && ext.getStoreFlag().intValue() > 0) {
            this.f22752e.addAndGet(1);
            if (TextUtils.isEmpty(ext.getStoreImageurl())) {
                g(TaErrorCode.ERROR_MATERIAL_STORE_IMG_URL_IS_EMPTY);
                return;
            }
            DownLoadRequest.k(ext.getStoreImageurl(), this.f22751d, 6, false, new b(adsDTO));
        }
        DownLoadRequest.k(adsDTO.getAdImgUrl(), adsDTO, adsDTO.isInteractiveAd() ? 8 : 2, adsDTO.isInteractiveAd(), new c(adsDTO));
    }

    private void v() {
        e4.b().d("SplashLoadManager", "interstitial loadVastAd");
        AdsDTO adsDTO = this.f22751d;
        if (adsDTO == null) {
            g(TaErrorCode.ERROR_AD_INTERSTITIAL_MATERIAL_IS_NULL);
        } else {
            com.cloud.hisavana.sdk.common.util.q0.f22173a.c(new a(adsDTO), adsDTO);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w() {
        AdsDTO adsDTO;
        this.f22754g = false;
        r3 r3Var = this.f22753f;
        if (r3Var != null && (adsDTO = this.f22751d) != null) {
            r3Var.b(adsDTO, this.f22611a);
        }
        if (this.f22755h == 1) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(this.f22751d);
            u0.f22991a.b(arrayList);
        }
    }

    public void q() {
        AdsDTO adsDTO = this.f22751d;
        if (adsDTO == null) {
            g(TaErrorCode.ERROR_AD_INTERSTITIAL_MATERIAL_IS_NULL);
            return;
        }
        if (this.f22754g) {
            return;
        }
        this.f22754g = true;
        int i11 = this.f22755h;
        if (i11 == 3 || i11 == 2) {
            a();
            w();
        } else if (adsDTO.isVastTypeAd()) {
            v();
        } else if (TextUtils.isEmpty(this.f22751d.getAdm())) {
            u();
        } else {
            s();
        }
    }
}
