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
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
public class q2 extends l0 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private AdsDTO f22855d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private AtomicInteger f22856e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private r3 f22857f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f22858g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f22859h;

    class a extends DrawableResponseListener {
        a() {
        }

        @Override // com.cloud.hisavana.sdk.common.http.listener.ResponseBaseListener
        public void a(TaErrorCode taErrorCode) {
            q2.this.j(TaErrorCode.ERROR_STORE_MATERIAL_TAKE_FAILED);
        }

        @Override // com.cloud.hisavana.sdk.common.http.listener.DrawableResponseListener
        public void g(int i11, AdImage adImage) {
            q2.this.f(i11);
            q2.this.o();
        }
    }

    class b extends DrawableResponseListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ AdsDTO f22861b;

        class a implements com.cloud.hisavana.sdk.common.util.n {
            a() {
            }

            @Override // com.cloud.hisavana.sdk.common.util.n
            public void a(boolean z10) {
                if (z10) {
                    q2.this.o();
                } else {
                    q2.this.j(new TaErrorCode(1, ""));
                }
            }
        }

        b(AdsDTO adsDTO) {
            this.f22861b = adsDTO;
        }

        @Override // com.cloud.hisavana.sdk.common.http.listener.ResponseBaseListener
        public void a(TaErrorCode taErrorCode) {
            e4.b().d("SplashLoadManager", "onRequestError " + taErrorCode.getErrorMessage());
            if (this.f22861b.isInteractiveAd()) {
                AthenaTracker.S(this.f22861b, 1);
            }
            q2.this.j(taErrorCode);
        }

        @Override // com.cloud.hisavana.sdk.common.http.listener.DrawableResponseListener
        public void g(int i11, AdImage adImage) {
            q2.this.b(i11);
            if (adImage != null) {
                if (!this.f22861b.isInteractiveAd()) {
                    q2.this.o();
                } else {
                    AthenaTracker.S(this.f22861b, 0);
                    z.f22210a.h(this.f22861b, adImage.getFilePath(), new a());
                }
            }
        }
    }

    class c implements com.cloud.hisavana.sdk.common.util.q0.b {
        c() {
        }

        @Override // com.cloud.hisavana.sdk.common.util.q0.b
        public void a(TaErrorCode taErrorCode) {
            VastData videoInfo;
            if (q2.this.f22855d != null && (videoInfo = q2.this.f22855d.getVideoInfo()) != null) {
                videoInfo.setCached(Boolean.FALSE);
            }
            q2.this.j(taErrorCode);
        }

        @Override // com.cloud.hisavana.sdk.common.util.q0.b
        public void b(int i11) {
            VastData videoInfo;
            q2.this.e(i11);
            e4.b().d("SplashLoadManager", "loadVideo() -----> onSuccess");
            if (q2.this.f22855d != null && (videoInfo = q2.this.f22855d.getVideoInfo()) != null) {
                videoInfo.setCached(Boolean.TRUE);
            }
            q2.this.o();
        }
    }

    public q2(AdsDTO adsDTO, int i11, r3 r3Var) {
        this.f22855d = adsDTO;
        this.f22859h = i11;
        this.f22857f = r3Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j(TaErrorCode taErrorCode) {
        this.f22858g = false;
        r3 r3Var = this.f22857f;
        if (r3Var != null) {
            this.f22858g = false;
            r3Var.a(taErrorCode, this.f22611a);
        }
    }

    private void k(AdsDTO adsDTO, String str) {
        if (adsDTO == null || TextUtils.isEmpty(str)) {
            return;
        }
        b bVar = new b(adsDTO);
        if (adsDTO.isVastTypeAd()) {
            s();
        } else {
            DownLoadRequest.k(str, adsDTO, adsDTO.isInteractiveAd() ? 8 : 2, adsDTO.isInteractiveAd(), bVar);
        }
    }

    private boolean l(AdsDTO adsDTO) {
        AdsProtocolBean.Ext ext;
        if (adsDTO == null || (ext = adsDTO.getExt()) == null || ext.getStoreFlag().intValue() <= 0) {
            return false;
        }
        if (TextUtils.isEmpty(ext.getStoreImageurl())) {
            j(TaErrorCode.ERROR_MATERIAL_STORE_IMG_URL_IS_EMPTY);
            return true;
        }
        DownLoadRequest.k(ext.getStoreImageurl(), adsDTO, 6, false, new a());
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o() {
        e4 e4VarB = e4.b();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("calculateDownloadCount imageCounter ");
        AtomicInteger atomicInteger = this.f22856e;
        sb2.append(atomicInteger == null ? "null" : Integer.valueOf(atomicInteger.get()));
        e4VarB.d("SplashLoadManager", sb2.toString());
        AtomicInteger atomicInteger2 = this.f22856e;
        if (atomicInteger2 == null || atomicInteger2.decrementAndGet() > 0) {
            return;
        }
        q();
    }

    private void q() {
        AdsDTO adsDTO;
        this.f22858g = false;
        r3 r3Var = this.f22857f;
        if (r3Var != null && (adsDTO = this.f22855d) != null) {
            this.f22858g = false;
            r3Var.b(adsDTO, this.f22611a);
        }
        if (this.f22859h == 1) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(this.f22855d);
            u0.f22991a.b(arrayList);
        }
    }

    private void s() {
        e4.b().d("SplashLoadManager", "loadVideo");
        com.cloud.hisavana.sdk.common.util.q0.f22173a.c(new c(), this.f22855d);
    }

    public void r() {
        AdsDTO adsDTO = this.f22855d;
        if (adsDTO == null) {
            j(TaErrorCode.ERROR_AD_SPLASH_MATERIAL_IS_NULL);
            return;
        }
        if (this.f22858g) {
            return;
        }
        this.f22858g = true;
        int i11 = this.f22859h;
        if (i11 == 3 || i11 == 2) {
            a();
            q();
            return;
        }
        String strA = com.cloud.hisavana.sdk.common.util.b.f22148a.a(adsDTO);
        this.f22856e = new AtomicInteger(2);
        if (!l(this.f22855d)) {
            this.f22856e.decrementAndGet();
        }
        k(this.f22855d, strA);
    }
}
