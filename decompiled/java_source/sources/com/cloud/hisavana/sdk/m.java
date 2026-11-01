package com.cloud.hisavana.sdk;

import android.text.TextUtils;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.bean.AdImage;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.http.DownLoadRequest;
import com.cloud.hisavana.sdk.common.http.listener.DrawableResponseListener;
import com.cloud.hisavana.sdk.common.util.z;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.AdsProtocolBean;
import com.cloud.hisavana.sdk.manager.NetStateManager;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
public class m extends l0 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final AdsDTO f22630d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private r3 f22631e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private AtomicInteger f22632f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f22633g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f22634h;

    class a extends DrawableResponseListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ AdsDTO f22635b;

        a(AdsDTO adsDTO) {
            this.f22635b = adsDTO;
        }

        @Override // com.cloud.hisavana.sdk.common.http.listener.ResponseBaseListener
        public void a(TaErrorCode taErrorCode) {
            this.f22635b.setACReady(Boolean.FALSE);
        }

        @Override // com.cloud.hisavana.sdk.common.http.listener.DrawableResponseListener
        public void g(int i11, AdImage adImage) {
            this.f22635b.setACReady(Boolean.TRUE);
        }
    }

    class b extends DrawableResponseListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ AdsDTO f22637b;

        b(AdsDTO adsDTO) {
            this.f22637b = adsDTO;
        }

        @Override // com.cloud.hisavana.sdk.common.http.listener.ResponseBaseListener
        public void a(TaErrorCode taErrorCode) {
            e4.b().e("BannerDownload", "onRequestError " + taErrorCode);
            m.this.k(taErrorCode);
        }

        @Override // com.cloud.hisavana.sdk.common.http.listener.DrawableResponseListener
        public void g(int i11, AdImage adImage) {
            m.this.f(i11);
            m.this.l(this.f22637b);
        }
    }

    class c extends DrawableResponseListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f22639b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ AdsDTO f22640c;

        class a implements com.cloud.hisavana.sdk.common.util.n {
            a() {
            }

            @Override // com.cloud.hisavana.sdk.common.util.n
            public void a(boolean z10) {
                c cVar = c.this;
                m.this.l(cVar.f22640c);
            }
        }

        c(int i11, AdsDTO adsDTO) {
            this.f22639b = i11;
            this.f22640c = adsDTO;
        }

        @Override // com.cloud.hisavana.sdk.common.http.listener.ResponseBaseListener
        public void a(TaErrorCode taErrorCode) {
            if (this.f22640c.isInteractiveAd()) {
                AthenaTracker.S(m.this.f22630d, 1);
            }
            m.this.k(taErrorCode);
        }

        @Override // com.cloud.hisavana.sdk.common.http.listener.DrawableResponseListener
        public void g(int i11, AdImage adImage) {
            m.this.b(i11);
            if (this.f22639b == 1 && m.this.f22630d.getPslinkInfo() != null && !TextUtils.isEmpty(adImage.getFilePath())) {
                m.this.f22630d.getPslinkInfo().setIconUri(com.cloud.hisavana.sdk.common.util.m.e(adImage.getFilePath()));
            }
            if (!this.f22640c.isInteractiveAd()) {
                m.this.l(this.f22640c);
                return;
            }
            AthenaTracker.S(m.this.f22630d, 0);
            if (adImage != null) {
                z.f22210a.h(this.f22640c, adImage.getFilePath(), new a());
            } else {
                m.this.k(TaErrorCode.ERROR_ZIP_MATERIAL_DECOMPRESS_FAILED);
            }
        }
    }

    class d extends DrawableResponseListener {
        d() {
        }

        @Override // com.cloud.hisavana.sdk.common.http.listener.ResponseBaseListener
        public void a(TaErrorCode taErrorCode) {
            e4.b().e("BannerDownload", "onRequestError " + taErrorCode);
            m.this.k(taErrorCode);
        }

        @Override // com.cloud.hisavana.sdk.common.http.listener.DrawableResponseListener
        public void g(int i11, AdImage adImage) {
            m.this.f(i11);
            m mVar = m.this;
            mVar.l(mVar.f22630d);
        }
    }

    public m(AdsDTO adsDTO, int i11, r3 r3Var) {
        this.f22630d = adsDTO;
        this.f22634h = i11;
        this.f22631e = r3Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k(TaErrorCode taErrorCode) {
        if (this.f22633g) {
            return;
        }
        this.f22633g = true;
        r3 r3Var = this.f22631e;
        if (r3Var != null) {
            r3Var.a(taErrorCode, this.f22611a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(AdsDTO adsDTO) {
        e4 e4VarB = e4.b();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("calculateDownloadCount imageCounter ");
        AtomicInteger atomicInteger = this.f22632f;
        sb2.append(atomicInteger == null ? "null" : Integer.valueOf(atomicInteger.get()));
        e4VarB.d("BannerDownload", sb2.toString());
        AtomicInteger atomicInteger2 = this.f22632f;
        if (atomicInteger2 == null || atomicInteger2.decrementAndGet() > 0) {
            return;
        }
        d();
        r3 r3Var = this.f22631e;
        if (r3Var != null) {
            r3Var.b(adsDTO, this.f22611a);
        }
        if (this.f22634h == 1) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(adsDTO);
            u0.f22991a.b(arrayList);
        }
        N0.M(adsDTO);
    }

    private void n() {
        AdsDTO adsDTO = this.f22630d;
        if (adsDTO == null) {
            return;
        }
        if (TextUtils.isEmpty(adsDTO.getAdChoiceImageUrl())) {
            e4.b().d("BannerDownload", "Not found adChoiceImageUrl");
        } else {
            e4.b().d("ssp", "textView impression");
            DownLoadRequest.k(adsDTO.getAdChoiceImageUrl(), adsDTO, 3, false, new a(adsDTO));
        }
    }

    private void p() {
        if (!NetStateManager.checkNetworkState(true)) {
            this.f22631e.a(TaErrorCode.ERROR_DOWNLOAD_NO_NETWORK, this.f22611a);
            return;
        }
        AdsDTO adsDTO = this.f22630d;
        if (adsDTO == null || this.f22631e == null) {
            this.f22631e.a(TaErrorCode.ERROR_MATERIAL_DOWNLOAD_LOCAL_BEAN_NULL, this.f22611a);
            return;
        }
        if (TextUtils.isEmpty(adsDTO.getAdm())) {
            e4.b().e("BannerDownload", "getAdmView,adm is null");
            k(TaErrorCode.ERROR_ADM_IS_NULL);
            return;
        }
        List<String> scales = this.f22630d.getScales();
        if (scales == null || scales.isEmpty()) {
            k(TaErrorCode.ERROR_ADM_SCALE_TAKE_FAILED);
            return;
        }
        String str = scales.get(0);
        str.hashCode();
        if (!str.equals("3:2") && !str.equals("20:3")) {
            k(TaErrorCode.ERROR_ADM_SCALE_TAKE_FAILED);
            e4.b().e("BannerDownload", "getAdmView adm scale is not fit");
            return;
        }
        if (this.f22630d.getExt() == null || this.f22630d.getExt().getStoreFlag().intValue() <= 0) {
            if (this.f22631e != null) {
                a();
                this.f22631e.b(this.f22630d, this.f22611a);
                return;
            }
            return;
        }
        AdsProtocolBean.Ext ext = this.f22630d.getExt();
        this.f22632f = new AtomicInteger(1);
        if (TextUtils.isEmpty(ext.getStoreImageurl())) {
            k(TaErrorCode.ERROR_MATERIAL_STORE_IMG_URL_IS_EMPTY);
        } else {
            DownLoadRequest.k(ext.getStoreImageurl(), this.f22630d, 6, false, new d());
        }
    }

    private void r() {
        int i11;
        boolean z10;
        AdsDTO adsDTO = this.f22630d;
        if (adsDTO == null) {
            this.f22631e.a(TaErrorCode.ERROR_MATERIAL_DOWNLOAD_LOCAL_BEAN_NULL, this.f22611a);
            return;
        }
        String adImgUrl = adsDTO.getAdImgUrl();
        if ((TextUtils.equals(adsDTO.getMaterialStyle(), "B20301") || TextUtils.equals(adsDTO.getMaterialStyle(), "B20302") || TextUtils.equals(adsDTO.getMaterialStyle(), "B20303")) && adsDTO.getNativeObject() != null) {
            adImgUrl = adsDTO.getNativeObject().getLogoUrl();
            i11 = 1;
            z10 = true;
        } else {
            z10 = false;
            i11 = 2;
        }
        if (adsDTO.isInteractiveAd()) {
            adImgUrl = adsDTO.getAdImgUrl();
            i11 = 8;
            z10 = true;
        }
        if (TextUtils.isEmpty(adImgUrl)) {
            this.f22631e.a(TaErrorCode.ERROR_MATERIAL_DOWNLOAD_URL_IS_EMPTY, this.f22611a);
            e4.b().d("BannerDownload", "Not found the render type");
            return;
        }
        AdsProtocolBean.Ext ext = adsDTO.getExt();
        if (ext == null || ext.getStoreFlag().intValue() <= 0) {
            this.f22632f = new AtomicInteger(1);
        } else {
            this.f22632f = new AtomicInteger(2);
            if (TextUtils.isEmpty(ext.getStoreImageurl())) {
                k(TaErrorCode.ERROR_MATERIAL_STORE_IMG_URL_IS_EMPTY);
                return;
            }
            DownLoadRequest.k(ext.getStoreImageurl(), adsDTO, 6, false, new b(adsDTO));
        }
        DownLoadRequest.k(adImgUrl, adsDTO, i11, z10, new c(i11, adsDTO));
        if (DownLoadRequest.f22044q) {
            return;
        }
        n();
    }

    public void q() {
        this.f22633g = false;
        AdsDTO adsDTO = this.f22630d;
        if (adsDTO != null) {
            int i11 = this.f22634h;
            if (i11 == 3 || i11 == 2) {
                if (this.f22631e != null) {
                    a();
                    this.f22631e.b(this.f22630d, this.f22611a);
                    return;
                }
                return;
            }
            if (TextUtils.isEmpty(adsDTO.getAdm())) {
                r();
            } else {
                p();
            }
        }
    }
}
