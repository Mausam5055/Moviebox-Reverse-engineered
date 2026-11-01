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
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class z1 extends l0 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private AdsDTO f23128d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f23129e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private r3 f23130f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f23131g = "Rewarded";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f23132h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private AtomicInteger f23133i;

    public static final class a extends DrawableResponseListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f23134b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ z1 f23135c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ boolean f23136d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ AdsDTO f23137e;

        a(int i11, z1 z1Var, boolean z10, AdsDTO adsDTO) {
            this.f23134b = i11;
            this.f23135c = z1Var;
            this.f23136d = z10;
            this.f23137e = adsDTO;
        }

        @Override // com.cloud.hisavana.sdk.common.http.listener.ResponseBaseListener
        public void a(TaErrorCode adError) {
            Intrinsics.h(adError, "adError");
            e4.b().d(this.f23135c.f23131g, "downloadImg error " + adError.getErrorCode() + " | " + adError.getErrorMessage());
            if (this.f23136d) {
                AthenaTracker.S(this.f23137e, 1);
            }
            this.f23135c.m(adError);
        }

        @Override // com.cloud.hisavana.sdk.common.http.listener.DrawableResponseListener
        public void g(int i11, AdImage adImage) {
            int i12 = this.f23134b;
            if (i12 == 6) {
                this.f23135c.f(i11);
            } else if (i12 == 2) {
                this.f23135c.b(i11);
            }
            if (!this.f23136d) {
                this.f23135c.n(this.f23137e);
            } else {
                AthenaTracker.S(this.f23137e, 0);
                this.f23135c.o(this.f23137e, adImage);
            }
        }
    }

    public static final class b implements com.cloud.hisavana.sdk.common.util.n {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ AdsDTO f23139b;

        b(AdsDTO adsDTO) {
            this.f23139b = adsDTO;
        }

        @Override // com.cloud.hisavana.sdk.common.util.n
        public void a(boolean z10) {
            if (z10) {
                z1.this.n(this.f23139b);
                return;
            }
            z1 z1Var = z1.this;
            TaErrorCode ERROR_ZIP_MATERIAL_DECOMPRESS_FAILED = TaErrorCode.ERROR_ZIP_MATERIAL_DECOMPRESS_FAILED;
            Intrinsics.g(ERROR_ZIP_MATERIAL_DECOMPRESS_FAILED, "ERROR_ZIP_MATERIAL_DECOMPRESS_FAILED");
            z1Var.m(ERROR_ZIP_MATERIAL_DECOMPRESS_FAILED);
        }
    }

    public static final class c implements com.cloud.hisavana.sdk.common.util.q0.b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ AdsDTO f23141b;

        c(AdsDTO adsDTO) {
            this.f23141b = adsDTO;
        }

        @Override // com.cloud.hisavana.sdk.common.util.q0.b
        public void a(TaErrorCode error) {
            Intrinsics.h(error, "error");
            z1.this.p(this.f23141b, false);
            z1.this.m(error);
        }

        @Override // com.cloud.hisavana.sdk.common.util.q0.b
        public void b(int i11) {
            z1.this.p(this.f23141b, true);
            z1.this.e(i11);
            z1.this.y();
            N0.M(this.f23141b);
        }
    }

    public z1(AdsDTO adsDTO, int i11, r3 r3Var) {
        this.f23128d = adsDTO;
        this.f23129e = i11;
        this.f23130f = r3Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void m(TaErrorCode taErrorCode) {
        this.f23132h = false;
        r3 r3Var = this.f23130f;
        if (r3Var != null) {
            r3Var.a(taErrorCode, this.f22611a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void n(AdsDTO adsDTO) {
        AtomicInteger atomicInteger = null;
        if (e4.c()) {
            e4 e4VarB = e4.b();
            String str = this.f23131g;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("calcDownloadCount imageCounter ");
            AtomicInteger atomicInteger2 = this.f23133i;
            if (atomicInteger2 == null) {
                Intrinsics.z("imageCounter");
                atomicInteger2 = null;
            }
            sb2.append(atomicInteger2.get());
            e4VarB.i(str, sb2.toString());
        }
        AtomicInteger atomicInteger3 = this.f23133i;
        if (atomicInteger3 == null) {
            Intrinsics.z("imageCounter");
        } else {
            atomicInteger = atomicInteger3;
        }
        if (atomicInteger.decrementAndGet() <= 0) {
            y();
            N0.M(adsDTO);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void o(AdsDTO adsDTO, AdImage adImage) {
        if (adImage == null) {
            TaErrorCode ERROR_ZIP_MATERIAL_TAKE_FAILED = TaErrorCode.ERROR_ZIP_MATERIAL_TAKE_FAILED;
            Intrinsics.g(ERROR_ZIP_MATERIAL_TAKE_FAILED, "ERROR_ZIP_MATERIAL_TAKE_FAILED");
            m(ERROR_ZIP_MATERIAL_TAKE_FAILED);
        } else {
            z zVar = z.f22210a;
            String filePath = adImage.getFilePath();
            Intrinsics.g(filePath, "getFilePath(...)");
            zVar.h(adsDTO, filePath, new b(adsDTO));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void p(AdsDTO adsDTO, boolean z10) {
        VastData videoInfo = adsDTO.getVideoInfo();
        if (videoInfo == null) {
            return;
        }
        videoInfo.setCached(Boolean.valueOf(z10));
    }

    private final void q(String str, AdsDTO adsDTO, int i11) {
        boolean zIsInteractiveAd = adsDTO.isInteractiveAd();
        int i12 = zIsInteractiveAd ? 8 : 2;
        DownLoadRequest.k(adsDTO.getAdImgUrl(), adsDTO, i12, zIsInteractiveAd, new a(i12, this, zIsInteractiveAd, adsDTO));
    }

    private final void t(AdsDTO adsDTO) {
        AdsProtocolBean.Ext ext = adsDTO.getExt();
        if (ext == null) {
            return;
        }
        Integer storeFlag = ext.getStoreFlag();
        Intrinsics.g(storeFlag, "getStoreFlag(...)");
        if (storeFlag.intValue() <= 0) {
            e4.b().d(this.f23131g, "Store flag is not valid, skipping download");
            return;
        }
        String storeImageurl = ext.getStoreImageurl();
        if (storeImageurl == null || storeImageurl.length() == 0) {
            TaErrorCode ERROR_MATERIAL_STORE_IMG_URL_IS_EMPTY = TaErrorCode.ERROR_MATERIAL_STORE_IMG_URL_IS_EMPTY;
            Intrinsics.g(ERROR_MATERIAL_STORE_IMG_URL_IS_EMPTY, "ERROR_MATERIAL_STORE_IMG_URL_IS_EMPTY");
            m(ERROR_MATERIAL_STORE_IMG_URL_IS_EMPTY);
            return;
        }
        AtomicInteger atomicInteger = this.f23133i;
        if (atomicInteger == null) {
            Intrinsics.z("imageCounter");
            atomicInteger = null;
        }
        atomicInteger.incrementAndGet();
        String storeImageurl2 = ext.getStoreImageurl();
        Intrinsics.g(storeImageurl2, "getStoreImageurl(...)");
        q(storeImageurl2, adsDTO, 6);
    }

    private final void w() {
        Unit unit;
        AdsDTO adsDTO = this.f23128d;
        if (adsDTO != null) {
            if (TextUtils.isEmpty(adsDTO.getAdImgUrl())) {
                TaErrorCode ERROR_ADM_URL_IS_EMPTY = TaErrorCode.ERROR_ADM_URL_IS_EMPTY;
                Intrinsics.g(ERROR_ADM_URL_IS_EMPTY, "ERROR_ADM_URL_IS_EMPTY");
                m(ERROR_ADM_URL_IS_EMPTY);
            } else {
                this.f23133i = new AtomicInteger(1);
                t(adsDTO);
                String adImgUrl = adsDTO.getAdImgUrl();
                Intrinsics.g(adImgUrl, "getAdImgUrl(...)");
                q(adImgUrl, adsDTO, 2);
            }
            unit = Unit.f67061a;
        } else {
            unit = null;
        }
        if (unit == null) {
            TaErrorCode ERROR_AD_REWARDED_AD_MATERIAL_IS_NULL = TaErrorCode.ERROR_AD_REWARDED_AD_MATERIAL_IS_NULL;
            Intrinsics.g(ERROR_AD_REWARDED_AD_MATERIAL_IS_NULL, "ERROR_AD_REWARDED_AD_MATERIAL_IS_NULL");
            m(ERROR_AD_REWARDED_AD_MATERIAL_IS_NULL);
        }
    }

    private final void x() {
        AdsDTO adsDTO = this.f23128d;
        if (adsDTO != null) {
            com.cloud.hisavana.sdk.common.util.q0.f22173a.c(new c(adsDTO), adsDTO);
            return;
        }
        TaErrorCode ERROR_AD_REWARDED_AD_MATERIAL_IS_NULL = TaErrorCode.ERROR_AD_REWARDED_AD_MATERIAL_IS_NULL;
        Intrinsics.g(ERROR_AD_REWARDED_AD_MATERIAL_IS_NULL, "ERROR_AD_REWARDED_AD_MATERIAL_IS_NULL");
        m(ERROR_AD_REWARDED_AD_MATERIAL_IS_NULL);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void y() {
        List listL;
        r3 r3Var;
        this.f23132h = false;
        AdsDTO adsDTO = this.f23128d;
        if (adsDTO != null && (r3Var = this.f23130f) != null) {
            r3Var.b(adsDTO, this.f22611a);
        }
        if (this.f23129e == 1) {
            AdsDTO adsDTO2 = this.f23128d;
            if (adsDTO2 == null || (listL = CollectionsKt.e(adsDTO2)) == null) {
                listL = CollectionsKt.l();
            }
            u0.f22991a.b(CollectionsKt.U0(listL));
        }
    }

    public final void u() {
        AdsDTO adsDTO = this.f23128d;
        if (adsDTO == null) {
            TaErrorCode ERROR_AD_REWARDED_AD_MATERIAL_IS_NULL = TaErrorCode.ERROR_AD_REWARDED_AD_MATERIAL_IS_NULL;
            Intrinsics.g(ERROR_AD_REWARDED_AD_MATERIAL_IS_NULL, "ERROR_AD_REWARDED_AD_MATERIAL_IS_NULL");
            m(ERROR_AD_REWARDED_AD_MATERIAL_IS_NULL);
            return;
        }
        if (this.f23132h) {
            return;
        }
        this.f23132h = true;
        int i11 = this.f23129e;
        if (i11 == 2 || i11 == 3) {
            a();
            y();
        } else {
            if (true == adsDTO.isVastTypeAd()) {
                x();
                return;
            }
            AdsDTO adsDTO2 = this.f23128d;
            if ((adsDTO2 != null ? adsDTO2.getNativeObject() : null) != null) {
                w();
            }
        }
    }
}
