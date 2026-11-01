package com.cloud.hisavana.sdk.common.http;

import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.Log;
import android.widget.ImageView;
import com.cloud.hisavana.net.HttpRequest;
import com.cloud.hisavana.net.RequestParams;
import com.cloud.hisavana.net.disklrucache.utils.DiskLruCacheUtil;
import com.cloud.hisavana.net.impl.HttpCallbackImpl;
import com.cloud.hisavana.sdk.N0;
import com.cloud.hisavana.sdk.common.bean.AdImage;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.http.listener.DrawableResponseListener;
import com.cloud.hisavana.sdk.common.http.listener.ResponseBaseListener;
import com.cloud.hisavana.sdk.common.util.m;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.e4;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import com.cloud.sdk.commonutil.util.Preconditions;
import com.vungle.ads.internal.model.AdPayload;
import java.io.File;
import okhttp3.Headers;

/* JADX INFO: loaded from: classes3.dex */
public class DownLoadRequest extends d {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static boolean f22044q;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f22050h;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private String f22058p;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    long f22045c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    String f22046d = "";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    long f22047e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f22048f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f22049g = 1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f22051i = 1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f22052j = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f22053k = false;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private String f22054l = "";

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f22055m = 1;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f22056n = 1;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f22057o = false;

    /* JADX INFO: renamed from: com.cloud.hisavana.sdk.common.http.DownLoadRequest$3, reason: invalid class name */
    class AnonymousClass3 implements Runnable {
        final /* synthetic */ String val$filePath;
        final /* synthetic */ ImageView val$imageView;
        final /* synthetic */ DrawableResponseListener val$listener;

        AnonymousClass3(String str, DrawableResponseListener drawableResponseListener, ImageView imageView) {
            this.val$filePath = str;
            this.val$listener = drawableResponseListener;
            this.val$imageView = imageView;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$run$0(DrawableResponseListener drawableResponseListener) {
            drawableResponseListener.a(TaErrorCode.ERROR_BITMAP_TOO_LARGE);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$run$1(ImageView imageView, Drawable drawable, DrawableResponseListener drawableResponseListener) {
            imageView.setImageDrawable(drawable);
            if (drawableResponseListener != null) {
                drawableResponseListener.g(200, null);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (N0.w(com.cloud.sdk.commonutil.util.e.a(), this.val$filePath)) {
                    final DrawableResponseListener drawableResponseListener = this.val$listener;
                    if (drawableResponseListener != null) {
                        Preconditions.d(new Preconditions.a() { // from class: com.cloud.hisavana.sdk.common.http.b
                            @Override // com.cloud.sdk.commonutil.util.Preconditions.a
                            public final void onRun() {
                                DownLoadRequest.AnonymousClass3.lambda$run$0(drawableResponseListener);
                            }
                        });
                        return;
                    }
                    return;
                }
                final Drawable drawableB = l7.c.b(m.c(new File(this.val$filePath)));
                final ImageView imageView = this.val$imageView;
                final DrawableResponseListener drawableResponseListener2 = this.val$listener;
                Preconditions.d(new Preconditions.a() { // from class: com.cloud.hisavana.sdk.common.http.c
                    @Override // com.cloud.sdk.commonutil.util.Preconditions.a
                    public final void onRun() {
                        DownLoadRequest.AnonymousClass3.lambda$run$1(imageView, drawableB, drawableResponseListener2);
                    }
                });
            } catch (Throwable th2) {
                e4.b().e(Log.getStackTraceString(th2));
                DrawableResponseListener drawableResponseListener3 = this.val$listener;
                if (drawableResponseListener3 != null) {
                    drawableResponseListener3.a(TaErrorCode.ERROR_BITMAP_TAKE_FAILED);
                }
            }
        }
    }

    class a extends DrawableResponseListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DrawableResponseListener f22064b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ ImageView f22065c;

        a(DrawableResponseListener drawableResponseListener, ImageView imageView) {
            this.f22064b = drawableResponseListener;
            this.f22065c = imageView;
        }

        @Override // com.cloud.hisavana.sdk.common.http.listener.ResponseBaseListener
        public void a(TaErrorCode taErrorCode) {
            e4.b().e("DownLoadRequest", "loadImageView " + taErrorCode);
            DrawableResponseListener drawableResponseListener = this.f22064b;
            if (drawableResponseListener != null) {
                drawableResponseListener.a(taErrorCode);
            }
        }

        @Override // com.cloud.hisavana.sdk.common.http.listener.DrawableResponseListener
        public void g(int i11, AdImage adImage) {
            if (adImage == null) {
                DrawableResponseListener drawableResponseListener = this.f22064b;
                if (drawableResponseListener != null) {
                    drawableResponseListener.a(new TaErrorCode(TaErrorCode.CODE_BITMAP_TAKE_FAILED, "mediaBean == null."));
                    return;
                }
                return;
            }
            adImage.attachView(this.f22065c);
            DrawableResponseListener drawableResponseListener2 = this.f22064b;
            if (drawableResponseListener2 != null) {
                drawableResponseListener2.g(i11, adImage);
            }
        }
    }

    class b extends HttpCallbackImpl {
        b() {
        }

        @Override // com.cloud.hisavana.net.impl.HttpCallbackImpl
        public void i(int i11, byte[] bArr, Throwable th2) {
            e4.b().d("ssp", "DownLoadRequest --> onFailure statusCode " + i11 + " e" + th2 + " url " + DownLoadRequest.this.f22054l);
            DownLoadRequest.this.f22051i = i11 == 256 ? 2 : 1;
            ResponseBaseListener responseBaseListener = DownLoadRequest.this.f22085b;
            if (responseBaseListener != null) {
                ((DrawableResponseListener) responseBaseListener).d(i11, bArr, th2);
            }
            DownLoadRequest.this.f22048f = i11;
        }

        @Override // com.cloud.hisavana.net.impl.HttpCallbackImpl
        public void l(Headers headers) {
            String strValue;
            super.l(headers);
            if (headers == null || headers.size() <= 0) {
                return;
            }
            for (int i11 = 0; i11 < headers.size(); i11++) {
                if (headers.name(i11) != null && headers.name(i11).contains("x-response-cdn") && (strValue = headers.value(i11)) != null && !strValue.isEmpty()) {
                    DownLoadRequest.this.f22046d = strValue;
                }
            }
        }

        @Override // com.cloud.hisavana.net.impl.HttpCallbackImpl
        public void n(int i11, byte[] bArr) {
            e4.b().d("DownLoadRequest", "DownLoadRequest --> onSuccess statusCode " + i11 + " url " + DownLoadRequest.this.f22054l);
            DownLoadRequest.this.f22051i = i11 == 250 ? 2 : 1;
            DownLoadRequest downLoadRequest = DownLoadRequest.this;
            ResponseBaseListener responseBaseListener = downLoadRequest.f22085b;
            if (responseBaseListener != null && (responseBaseListener instanceof DrawableResponseListener)) {
                ((DrawableResponseListener) responseBaseListener).h(downLoadRequest.f22055m, i11, bArr, null);
            }
            if (bArr != null) {
                DownLoadRequest.this.f22045c = bArr.length;
            }
            if (DownLoadRequest.this.f22050h == 3) {
                DownLoadRequest.f22044q = true;
            }
        }

        @Override // com.cloud.hisavana.net.impl.HttpCallbackImpl
        public void o(int i11, byte[] bArr, String str) {
            e4.b().d("ssp", "DownLoadRequest --> onSuccess statusCode " + i11 + " filePath " + str + " url" + DownLoadRequest.this.f22054l);
            DownLoadRequest.this.f22051i = i11 == 250 ? 2 : 1;
            DownLoadRequest downLoadRequest = DownLoadRequest.this;
            ResponseBaseListener responseBaseListener = downLoadRequest.f22085b;
            if (responseBaseListener != null && (responseBaseListener instanceof DrawableResponseListener)) {
                ((DrawableResponseListener) responseBaseListener).h(downLoadRequest.f22055m, i11, bArr, str);
            }
            if (bArr != null) {
                DownLoadRequest.this.f22045c = bArr.length;
            }
            if (DownLoadRequest.this.f22050h == 3) {
                DownLoadRequest.f22044q = true;
            }
        }
    }

    public interface c {
        void a(boolean z10);

        void onSuccess();
    }

    private DownLoadRequest() {
    }

    public static void j(String str, int i11, boolean z10, int i12, boolean z11, int i13, boolean z12, AdsDTO adsDTO, DrawableResponseListener drawableResponseListener) {
        if (!N0.B(adsDTO)) {
            new DownLoadRequest().v(i11).u(drawableResponseListener).w(str).r(Boolean.valueOf(z10), i12, adsDTO != null ? adsDTO.getAdCreativeId() : "").s(i13).t(z11).m(z12).b();
        } else if (drawableResponseListener != null) {
            drawableResponseListener.a(new TaErrorCode(TaErrorCode.CODE_BITMAP_TOO_LARGE, "main image is too large."));
        }
    }

    public static void k(String str, AdsDTO adsDTO, int i11, boolean z10, DrawableResponseListener drawableResponseListener) {
        j(str, 3, adsDTO == null ? false : adsDTO.isOfflineAd(), i11, z10, 1, false, adsDTO, drawableResponseListener);
    }

    public static void l(String str, AdsDTO adsDTO, boolean z10, DrawableResponseListener drawableResponseListener) {
        j(str, 3, adsDTO == null ? false : adsDTO.isOfflineAd(), 10, z10, 3, true, adsDTO, drawableResponseListener);
    }

    public static void n(final String str, final AdsDTO adsDTO, final DrawableResponseListener drawableResponseListener, final ImageView imageView) {
        if (TextUtils.isEmpty(str) || imageView == null) {
            if (drawableResponseListener != null) {
                drawableResponseListener.a(new TaErrorCode(TaErrorCode.CODE_BITMAP_TAKE_FAILED, "filePath == null or imageView == null."));
            }
        } else if (!N0.B(adsDTO)) {
            HSScopeHelper.f23167a.g(new Runnable() { // from class: com.cloud.hisavana.sdk.common.http.DownLoadRequest.2

                /* JADX INFO: renamed from: com.cloud.hisavana.sdk.common.http.DownLoadRequest$2$a */
                class a implements Preconditions.a {

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    final /* synthetic */ String f22062a;

                    a(String str) {
                        this.f22062a = str;
                    }

                    @Override // com.cloud.sdk.commonutil.util.Preconditions.a
                    public void onRun() {
                        if (!l7.b.e(AdPayload.FILE_SCHEME + this.f22062a, false, imageView)) {
                            String str = this.f22062a;
                            AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                            DownLoadRequest.p(str, drawableResponseListener, imageView);
                        } else {
                            DrawableResponseListener drawableResponseListener = drawableResponseListener;
                            if (drawableResponseListener != null) {
                                drawableResponseListener.g(200, null);
                            }
                        }
                    }
                }

                @Override // java.lang.Runnable
                public void run() {
                    String strE = adsDTO.isFromLocal() ? str : DiskLruCacheUtil.e(str, 4);
                    if (new File(strE).exists()) {
                        Preconditions.d(new a(strE));
                        return;
                    }
                    DrawableResponseListener drawableResponseListener2 = drawableResponseListener;
                    if (drawableResponseListener2 != null) {
                        drawableResponseListener2.a(TaErrorCode.ERROR_BITMAP_TAKE_FAILED);
                    }
                }
            });
        } else if (drawableResponseListener != null) {
            drawableResponseListener.a(new TaErrorCode(TaErrorCode.CODE_BITMAP_TOO_LARGE, "main image is too large."));
        }
    }

    public static void o(final String str, final AdsDTO adsDTO, final int i11, final DrawableResponseListener drawableResponseListener, final ImageView imageView) {
        if (TextUtils.isEmpty(str) || imageView == null) {
            if (drawableResponseListener != null) {
                drawableResponseListener.a(new TaErrorCode(TaErrorCode.CODE_BITMAP_TAKE_FAILED, "url == null."));
            }
        } else if (!N0.B(adsDTO)) {
            HSScopeHelper.f23167a.g(new Runnable() { // from class: com.cloud.hisavana.sdk.common.http.DownLoadRequest.1

                /* JADX INFO: renamed from: com.cloud.hisavana.sdk.common.http.DownLoadRequest$1$a */
                class a implements Preconditions.a {

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    final /* synthetic */ boolean f22059a;

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    final /* synthetic */ String f22060b;

                    a(boolean z10, String str) {
                        this.f22059a = z10;
                        this.f22060b = str;
                    }

                    @Override // com.cloud.sdk.commonutil.util.Preconditions.a
                    public void onRun() {
                        AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                        boolean zX = DownLoadRequest.x(adsDTO, i11);
                        if (this.f22059a) {
                            if (l7.b.e(AdPayload.FILE_SCHEME + this.f22060b, zX, imageView)) {
                                DrawableResponseListener drawableResponseListener = drawableResponseListener;
                                if (drawableResponseListener != null) {
                                    drawableResponseListener.g(200, null);
                                    return;
                                }
                                return;
                            }
                        }
                        e4.b().d("ssp", "loadImageView with ssp, url: " + str);
                        AnonymousClass1 anonymousClass2 = AnonymousClass1.this;
                        DownLoadRequest.q(str, imageView, adsDTO, i11, drawableResponseListener);
                    }
                }

                @Override // java.lang.Runnable
                public void run() {
                    String strE;
                    boolean z10 = false;
                    if (adsDTO != null) {
                        strE = DiskLruCacheUtil.e(str, 1);
                        if (!TextUtils.isEmpty(strE) && new File(strE).exists()) {
                            z10 = true;
                        }
                    } else {
                        strE = "";
                    }
                    Preconditions.d(new a(z10, strE));
                }
            });
        } else if (drawableResponseListener != null) {
            drawableResponseListener.a(new TaErrorCode(TaErrorCode.CODE_BITMAP_TOO_LARGE, "main image is too large."));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void p(String str, DrawableResponseListener drawableResponseListener, ImageView imageView) {
        if (imageView == null) {
            return;
        }
        HSScopeHelper.f23167a.g(new AnonymousClass3(str, drawableResponseListener, imageView));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void q(String str, ImageView imageView, AdsDTO adsDTO, int i11, DrawableResponseListener drawableResponseListener) {
        j(str, 1, adsDTO == null ? false : adsDTO.isOfflineAd(), i11, false, 1, false, adsDTO, new a(drawableResponseListener, imageView));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean x(AdsDTO adsDTO, int i11) {
        if (a7.c.v() && adsDTO != null && i11 == 2) {
            return adsDTO.getAdType() == 4 || adsDTO.getAdType() == 3 || adsDTO.getAdType() == 5 || adsDTO.getAdType() == 7;
        }
        return false;
    }

    @Override // com.cloud.hisavana.sdk.common.http.d
    protected void a() {
        try {
            RequestParams requestParams = new RequestParams();
            requestParams.m(this.f22052j);
            requestParams.o(true);
            requestParams.k(this.f22056n);
            requestParams.l(this.f22057o);
            requestParams.j(this.f22058p);
            this.f22047e = System.currentTimeMillis();
            HttpRequest.c(this.f22054l, requestParams, new b());
        } catch (Throwable th2) {
            e4.b().e(Log.getStackTraceString(th2));
            this.f22051i = 1;
            ResponseBaseListener responseBaseListener = this.f22085b;
            if (responseBaseListener != null) {
                ((DrawableResponseListener) responseBaseListener).e(TaErrorCode.ERROR_UNKNOWN);
            }
            this.f22048f = 101;
        }
    }

    @Override // com.cloud.hisavana.sdk.common.http.d
    public void b() {
        if (!TextUtils.isEmpty(this.f22054l)) {
            a();
            return;
        }
        ResponseBaseListener responseBaseListener = this.f22085b;
        if (responseBaseListener != null) {
            ((DrawableResponseListener) responseBaseListener).e(TaErrorCode.ERROR_DOWNLOAD_URL_IS_EMPTY);
        }
        e4.b().e("ssp", "url is empty");
    }

    public DownLoadRequest m(boolean z10) {
        this.f22057o = z10;
        return this;
    }

    public DownLoadRequest r(Boolean bool, int i11, String str) {
        this.f22053k = bool.booleanValue();
        this.f22050h = i11;
        this.f22058p = str;
        return this;
    }

    public DownLoadRequest s(int i11) {
        this.f22056n = i11;
        return this;
    }

    public DownLoadRequest t(boolean z10) {
        this.f22052j = z10;
        return this;
    }

    public DownLoadRequest u(DrawableResponseListener drawableResponseListener) {
        this.f22085b = drawableResponseListener;
        return this;
    }

    public DownLoadRequest v(int i11) {
        this.f22055m = i11;
        return this;
    }

    public DownLoadRequest w(String str) {
        this.f22054l = str;
        return this;
    }
}
