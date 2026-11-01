package com.cloud.hisavana.sdk.common.util;

import android.text.TextUtils;
import com.cloud.hisavana.sdk.common.bean.AdImage;
import com.cloud.hisavana.sdk.common.bean.VastData;
import com.cloud.hisavana.sdk.common.bean.VastIcon;
import com.cloud.hisavana.sdk.common.bean.VastMedia;
import com.cloud.hisavana.sdk.common.bean.VideoMask;
import com.cloud.hisavana.sdk.common.constant.Constants;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.http.DownLoadRequest;
import com.cloud.hisavana.sdk.common.http.listener.DrawableResponseListener;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.e4;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* JADX INFO: loaded from: classes3.dex */
public final class q0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f22173a = new a(null);

    public static final class a {

        /* JADX INFO: renamed from: com.cloud.hisavana.sdk.common.util.q0$a$a, reason: collision with other inner class name */
        public static final class C0304a extends DrawableResponseListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ String f22174b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ Ref.BooleanRef f22175c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ Ref.BooleanRef f22176d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            final /* synthetic */ Ref.BooleanRef f22177e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            final /* synthetic */ Ref.BooleanRef f22178f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            final /* synthetic */ b f22179g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            final /* synthetic */ Ref.BooleanRef f22180h;

            C0304a(String str, Ref.BooleanRef booleanRef, Ref.BooleanRef booleanRef2, Ref.BooleanRef booleanRef3, Ref.BooleanRef booleanRef4, b bVar, Ref.BooleanRef booleanRef5) {
                this.f22174b = str;
                this.f22175c = booleanRef;
                this.f22176d = booleanRef2;
                this.f22177e = booleanRef3;
                this.f22178f = booleanRef4;
                this.f22179g = bVar;
                this.f22180h = booleanRef5;
            }

            @Override // com.cloud.hisavana.sdk.common.http.listener.ResponseBaseListener
            public void a(TaErrorCode taErrorCode) {
                e4 e4VarB = e4.b();
                StringBuilder sb2 = new StringBuilder();
                sb2.append("onRequestError ");
                sb2.append(taErrorCode);
                sb2.append(' ');
                sb2.append(taErrorCode != null ? Integer.valueOf(taErrorCode.getErrorCode()) : null);
                sb2.append(' ');
                sb2.append(taErrorCode != null ? taErrorCode.getErrorMessage() : null);
                sb2.append(" url ");
                sb2.append(this.f22174b);
                sb2.append(')');
                e4VarB.e("VastMaterialDownloadUtil", sb2.toString());
                this.f22175c.element = true;
                q0.f22173a.b(true, this.f22176d.element, this.f22177e.element, this.f22178f.element, this.f22179g, this.f22180h.element);
            }

            @Override // com.cloud.hisavana.sdk.common.http.listener.DrawableResponseListener
            public void g(int i11, AdImage adImage) {
                e4.b().d("VastMaterialDownloadUtil", "onRequestSuccess " + i11);
                if (i11 == 250) {
                    this.f22180h.element = false;
                } else {
                    this.f22180h.element = true;
                }
                Ref.BooleanRef booleanRef = this.f22175c;
                booleanRef.element = true;
                this.f22178f.element = true;
                q0.f22173a.b(booleanRef.element, this.f22176d.element, this.f22177e.element, true, this.f22179g, this.f22180h.element);
            }
        }

        public static final class b extends DrawableResponseListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ Ref.BooleanRef f22181b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ Ref.BooleanRef f22182c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ Ref.BooleanRef f22183d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            final /* synthetic */ Ref.BooleanRef f22184e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            final /* synthetic */ b f22185f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            final /* synthetic */ Ref.BooleanRef f22186g;

            b(Ref.BooleanRef booleanRef, Ref.BooleanRef booleanRef2, Ref.BooleanRef booleanRef3, Ref.BooleanRef booleanRef4, b bVar, Ref.BooleanRef booleanRef5) {
                this.f22181b = booleanRef;
                this.f22182c = booleanRef2;
                this.f22183d = booleanRef3;
                this.f22184e = booleanRef4;
                this.f22185f = bVar;
                this.f22186g = booleanRef5;
            }

            @Override // com.cloud.hisavana.sdk.common.http.listener.ResponseBaseListener
            public void a(TaErrorCode taErrorCode) {
                this.f22181b.element = true;
                q0.f22173a.b(this.f22182c.element, true, this.f22183d.element, this.f22184e.element, this.f22185f, this.f22186g.element);
            }

            @Override // com.cloud.hisavana.sdk.common.http.listener.DrawableResponseListener
            public void g(int i11, AdImage adImage) {
                this.f22181b.element = true;
                q0.f22173a.b(this.f22182c.element, true, this.f22183d.element, this.f22184e.element, this.f22185f, this.f22186g.element);
            }
        }

        public static final class c extends DrawableResponseListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ Ref.BooleanRef f22187b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ Ref.BooleanRef f22188c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ Ref.BooleanRef f22189d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            final /* synthetic */ Ref.BooleanRef f22190e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            final /* synthetic */ b f22191f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            final /* synthetic */ Ref.BooleanRef f22192g;

            c(Ref.BooleanRef booleanRef, Ref.BooleanRef booleanRef2, Ref.BooleanRef booleanRef3, Ref.BooleanRef booleanRef4, b bVar, Ref.BooleanRef booleanRef5) {
                this.f22187b = booleanRef;
                this.f22188c = booleanRef2;
                this.f22189d = booleanRef3;
                this.f22190e = booleanRef4;
                this.f22191f = bVar;
                this.f22192g = booleanRef5;
            }

            @Override // com.cloud.hisavana.sdk.common.http.listener.ResponseBaseListener
            public void a(TaErrorCode taErrorCode) {
                this.f22187b.element = true;
                q0.f22173a.b(this.f22188c.element, this.f22189d.element, true, this.f22190e.element, this.f22191f, this.f22192g.element);
            }

            @Override // com.cloud.hisavana.sdk.common.http.listener.DrawableResponseListener
            public void g(int i11, AdImage adImage) {
                this.f22187b.element = true;
                q0.f22173a.b(this.f22188c.element, this.f22189d.element, true, this.f22190e.element, this.f22191f, this.f22192g.element);
            }
        }

        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void b(boolean z10, boolean z11, boolean z12, boolean z13, b bVar, boolean z14) {
            if (z12 && z11 && z10) {
                if (z13) {
                    int i11 = z14 ? 0 : 250;
                    if (bVar != null) {
                        bVar.b(i11);
                        return;
                    }
                    return;
                }
                if (bVar != null) {
                    TaErrorCode MAIN_VIDEO_DOWNLOAD_FAIL_ERROR = TaErrorCode.MAIN_VIDEO_DOWNLOAD_FAIL_ERROR;
                    Intrinsics.g(MAIN_VIDEO_DOWNLOAD_FAIL_ERROR, "MAIN_VIDEO_DOWNLOAD_FAIL_ERROR");
                    bVar.a(MAIN_VIDEO_DOWNLOAD_FAIL_ERROR);
                }
            }
        }

        public final void c(b bVar, AdsDTO adsDTO) {
            boolean z10;
            Ref.BooleanRef booleanRef;
            VideoMask videoMask;
            VastIcon icon;
            VastMedia mainAd;
            if (adsDTO == null) {
                if (bVar != null) {
                    TaErrorCode ERROR_AD_VAST_MATERIAL_DOWNLOAD_IS_NULL = TaErrorCode.ERROR_AD_VAST_MATERIAL_DOWNLOAD_IS_NULL;
                    Intrinsics.g(ERROR_AD_VAST_MATERIAL_DOWNLOAD_IS_NULL, "ERROR_AD_VAST_MATERIAL_DOWNLOAD_IS_NULL");
                    bVar.a(ERROR_AD_VAST_MATERIAL_DOWNLOAD_IS_NULL);
                    return;
                }
                return;
            }
            VastData videoInfo = adsDTO.getVideoInfo();
            String resource = null;
            String mediaResource = (videoInfo == null || (mainAd = videoInfo.getMainAd()) == null) ? null : mainAd.getMediaResource();
            String iconResource = (videoInfo == null || (icon = videoInfo.getIcon()) == null) ? null : icon.getIconResource();
            if (videoInfo != null && (videoMask = videoInfo.getVideoMask()) != null) {
                resource = videoMask.getResource();
            }
            String str = resource;
            Ref.BooleanRef booleanRef2 = new Ref.BooleanRef();
            Ref.BooleanRef booleanRef3 = new Ref.BooleanRef();
            Ref.BooleanRef booleanRef4 = new Ref.BooleanRef();
            Ref.BooleanRef booleanRef5 = new Ref.BooleanRef();
            Ref.BooleanRef booleanRef6 = new Ref.BooleanRef();
            if (TextUtils.isEmpty(mediaResource)) {
                if (bVar != null) {
                    TaErrorCode NO_MAIN_VIDEO_DATA_ERROR = TaErrorCode.NO_MAIN_VIDEO_DATA_ERROR;
                    Intrinsics.g(NO_MAIN_VIDEO_DATA_ERROR, "NO_MAIN_VIDEO_DATA_ERROR");
                    bVar.a(NO_MAIN_VIDEO_DATA_ERROR);
                    return;
                }
                return;
            }
            if (mediaResource == null) {
                z10 = true;
                booleanRef3.element = true;
                booleanRef = booleanRef6;
                booleanRef.element = false;
            } else if (adsDTO.getSource() == 1 && Constants.a(adsDTO.getAdType())) {
                booleanRef3.element = true;
                booleanRef5.element = true;
                booleanRef6.element = false;
                e4.b().d("VastMaterialDownloadUtil", "jump for real-time ad, do not download video, adId=" + adsDTO.getAdCreativeId() + ", url=" + mediaResource);
                z10 = true;
                booleanRef = booleanRef6;
            } else {
                z10 = true;
                booleanRef = booleanRef6;
                DownLoadRequest.l(mediaResource, adsDTO, true, new C0304a(mediaResource, booleanRef3, booleanRef2, booleanRef4, booleanRef5, bVar, booleanRef));
            }
            if (iconResource != null) {
                DownLoadRequest.k(iconResource, adsDTO, 11, z10, new b(booleanRef2, booleanRef3, booleanRef4, booleanRef5, bVar, booleanRef));
            } else {
                booleanRef2.element = z10;
            }
            if (str != 0) {
                DownLoadRequest.k(str, adsDTO, 12, z10, new c(booleanRef4, booleanRef3, booleanRef2, booleanRef5, bVar, booleanRef));
            } else {
                booleanRef4.element = z10;
                b(booleanRef3.element, booleanRef2.element, true, booleanRef5.element, bVar, booleanRef.element);
            }
        }
    }

    public interface b {
        void a(TaErrorCode taErrorCode);

        void b(int i11);
    }
}
