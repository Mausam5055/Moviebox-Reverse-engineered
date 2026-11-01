package com.cloud.hisavana.sdk.api.view;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.cloud.hisavana.sdk.C0993p;
import com.cloud.hisavana.sdk.N0;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.bean.AdImage;
import com.cloud.hisavana.sdk.common.bean.TaNativeInfo;
import com.cloud.hisavana.sdk.common.tracking.DownUpPointBean;
import com.cloud.hisavana.sdk.common.widget.InteractiveFrameLayout;
import com.cloud.hisavana.sdk.common.widget.InteractiveWebView;
import com.cloud.hisavana.sdk.common.widget.TAdWebView;
import com.cloud.hisavana.sdk.common.widget.video.NativeAdVideoView;
import com.cloud.hisavana.sdk.data.bean.request.AdxImpBean;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.e4;
import com.cloud.hisavana.sdk.f4;
import com.cloud.hisavana.sdk.u3;
import com.cloud.hisavana.sdk.z3;
import com.cloud.sdk.commonutil.R$id;
import com.cloud.sdk.commonutil.util.k;
import com.cloud.sdk.commonutil.widget.TranCircleImageView;
import com.vungle.ads.internal.model.AdPayload;

/* JADX INFO: loaded from: classes3.dex */
public class MediaView extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private TranCircleImageView f21616a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private AdImage f21617b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private NativeAdVideoView f21618c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TAdWebView f21619d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private InteractiveFrameLayout f21620e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private InteractiveWebView f21621f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f21622g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f21623h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private volatile boolean f21624i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private float f21625j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private float f21626k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private float f21627l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private float f21628m;

    class a implements InteractiveWebView.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ AdsDTO f21629a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ z3 f21630b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ TaNativeInfo f21631c;

        a(AdsDTO adsDTO, z3 z3Var, TaNativeInfo taNativeInfo) {
            this.f21629a = adsDTO;
            this.f21630b = z3Var;
            this.f21631c = taNativeInfo;
        }

        @Override // com.cloud.hisavana.sdk.common.widget.InteractiveWebView.c
        public void a(String str) {
            AthenaTracker.y(this.f21629a, str);
        }

        @Override // com.cloud.hisavana.sdk.common.widget.InteractiveWebView.c
        public void b() {
            if (MediaView.this.f21621f != null) {
                z3 z3Var = this.f21630b;
                u3 u3Var = z3Var instanceof u3 ? (u3) z3Var : null;
                N0.b(MediaView.this.f21621f.getContext(), this.f21629a, new DownUpPointBean(MediaView.this.f21625j, MediaView.this.f21626k, MediaView.this.f21627l, MediaView.this.f21628m, MediaView.this.f21621f.getMeasuredHeight(), MediaView.this.f21621f.getMeasuredWidth()), u3Var != null && u3Var.p().v());
                AthenaTracker.W(this.f21629a);
                if (u3Var == null || u3Var.Z() == null) {
                    return;
                }
                u3Var.Z().y(this.f21631c);
            }
        }

        @Override // com.cloud.hisavana.sdk.common.widget.InteractiveWebView.c
        public void c() {
        }
    }

    public class b extends f4 {
        public b(AdsDTO adsDTO) {
            super(adsDTO);
        }

        @Override // com.cloud.hisavana.sdk.f4, com.cloud.hisavana.sdk.q4
        public void a(C0993p c0993p) {
            super.a(c0993p);
        }

        @Override // com.cloud.hisavana.sdk.f4, com.cloud.hisavana.sdk.q4
        public void b() {
            super.b();
        }

        @Override // com.cloud.hisavana.sdk.f4, com.cloud.hisavana.sdk.q4
        public void c(long j11, long j12, int i11) {
            super.c(j11, j12, i11);
        }

        @Override // com.cloud.hisavana.sdk.f4, com.cloud.hisavana.sdk.q4
        public void e() {
            super.e();
        }

        @Override // com.cloud.hisavana.sdk.f4, com.cloud.hisavana.sdk.q4
        public void onComplete() {
            super.onComplete();
        }

        @Override // com.cloud.hisavana.sdk.f4, com.cloud.hisavana.sdk.q4
        public void onIsPlayingChanged(boolean z10) {
            super.onIsPlayingChanged(z10);
        }

        @Override // com.cloud.hisavana.sdk.f4, com.cloud.hisavana.sdk.q4
        public void onVideoSizeChanged(int i11, int i12) {
            super.onVideoSizeChanged(i11, i12);
        }

        @Override // com.cloud.hisavana.sdk.f4, com.cloud.hisavana.sdk.q4
        public void onVolumeChanged(float f11) {
            super.onVolumeChanged(f11);
        }
    }

    private class c implements View.OnTouchListener {
        private c() {
        }

        /* synthetic */ c(MediaView mediaView, a aVar) {
            this();
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            if (action == 0) {
                MediaView.this.f21625j = motionEvent.getX();
                MediaView.this.f21626k = motionEvent.getY();
                return false;
            }
            if (action != 1) {
                return false;
            }
            MediaView.this.f21627l = motionEvent.getX();
            MediaView.this.f21628m = motionEvent.getY();
            return false;
        }
    }

    public MediaView(@NonNull Context context) {
        this(context, null);
    }

    public MediaView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MediaView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f21616a = null;
        this.f21617b = null;
        this.f21619d = null;
        this.f21624i = false;
        this.f21628m = -1.0f;
    }

    private FrameLayout.LayoutParams d(int i11, int i12) {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i11, i12);
        layoutParams.gravity = 17;
        return layoutParams;
    }

    private void f(TaNativeInfo taNativeInfo, String str) {
        if (taNativeInfo == null) {
            return;
        }
        AdsDTO adItem = taNativeInfo.getAdItem();
        z3 nativeBridge = taNativeInfo.getNativeBridge();
        if (this.f21620e == null) {
            this.f21620e = new InteractiveFrameLayout(getContext());
        }
        this.f21620e.setScale(str);
        if (indexOfChild(this.f21620e) < 0) {
            addView(this.f21620e, d(-1, -1));
        }
        if (this.f21621f == null) {
            InteractiveWebView interactiveWebView = new InteractiveWebView(getContext());
            this.f21621f = interactiveWebView;
            interactiveWebView.setWebClientCallback(adItem);
            this.f21621f.setOnTouchListener(new c(this, null));
            this.f21621f.setInteractiveListener(new a(adItem, nativeBridge, taNativeInfo));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(final InteractiveWebView interactiveWebView, InteractiveFrameLayout interactiveFrameLayout, final String str, int i11, int i12) {
        try {
            ViewParent parent = interactiveWebView.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(interactiveWebView);
            }
            interactiveFrameLayout.addView(interactiveWebView, new FrameLayout.LayoutParams(i11, i12));
            this.f21621f.measure(View.MeasureSpec.makeMeasureSpec(i11, 1073741824), View.MeasureSpec.makeMeasureSpec(i12, 1073741824));
            this.f21621f.layout(0, 0, i11, i12);
            interactiveWebView.post(new Runnable() { // from class: c7.c
                @Override // java.lang.Runnable
                public final void run() {
                    this.f17015a.h(interactiveWebView, str);
                }
            });
        } catch (Throwable th2) {
            e4.b().w("MediaView", "setInteractiveView error: " + th2.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h(InteractiveWebView interactiveWebView, String str) {
        if (this.f21624i || interactiveWebView.getParent() == null) {
            return;
        }
        interactiveWebView.loadUrl(AdPayload.FILE_SCHEME + str);
    }

    private void i(AdsDTO adsDTO, boolean z10) {
        if (this.f21618c == null) {
            NativeAdVideoView nativeAdVideoView = new NativeAdVideoView(getContext());
            this.f21618c = nativeAdVideoView;
            nativeAdVideoView.setAdMediaPlayerListener(new b(adsDTO));
        }
        this.f21618c.setUseListMode(z10);
        if (indexOfChild(this.f21618c) < 0) {
            addView(this.f21618c, d(-1, -2));
        }
        TranCircleImageView tranCircleImageView = this.f21616a;
        if (tranCircleImageView == null || !(tranCircleImageView.getParent() instanceof ViewGroup)) {
            return;
        }
        ((ViewGroup) this.f21616a.getParent()).removeView(this.f21616a);
        this.f21616a = null;
    }

    private void l() {
        if (this.f21616a == null) {
            TranCircleImageView tranCircleImageView = new TranCircleImageView(getContext());
            this.f21616a = tranCircleImageView;
            tranCircleImageView.setId(R$id.native_mediaview_iv_id);
        }
        if (indexOfChild(this.f21616a) < 0) {
            addView(this.f21616a, d(-1, -2));
        }
        if (this.f21622g == 2 && this.f21616a.getLayoutParams() != null) {
            this.f21616a.getLayoutParams().height = -2;
        }
        NativeAdVideoView nativeAdVideoView = this.f21618c;
        if (nativeAdVideoView == null || !(nativeAdVideoView.getParent() instanceof ViewGroup)) {
            return;
        }
        this.f21618c.release();
        ((ViewGroup) this.f21618c.getParent()).removeView(this.f21618c);
        this.f21618c = null;
    }

    public void destroy() {
        this.f21624i = true;
        TAdWebView tAdWebView = this.f21619d;
        if (tAdWebView != null) {
            ViewParent parent = tAdWebView.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.f21619d);
            }
            this.f21619d.stopLoading();
            this.f21619d.getSettings().setJavaScriptEnabled(false);
            this.f21619d.setWebViewClient(null);
            this.f21619d.setWebChromeClient(null);
            this.f21619d.clearHistory();
            this.f21619d.removeAllViews();
            this.f21619d.destroy();
            this.f21619d = null;
        }
        InteractiveWebView interactiveWebView = this.f21621f;
        if (interactiveWebView != null) {
            interactiveWebView.destroy();
            this.f21621f = null;
        }
        NativeAdVideoView nativeAdVideoView = this.f21618c;
        if (nativeAdVideoView != null) {
            nativeAdVideoView.release();
            this.f21618c = null;
        }
        k.a(this.f21616a);
        AdImage adImage = this.f21617b;
        if (adImage != null) {
            adImage.destroy();
        }
        removeAllViews();
    }

    public void init(int i11) {
        this.f21622g = i11;
        if (i11 != 3) {
            l();
        }
    }

    public boolean isAttached() {
        return this.f21623h;
    }

    public void pause() {
        NativeAdVideoView nativeAdVideoView = this.f21618c;
        if (nativeAdVideoView != null) {
            nativeAdVideoView.pause();
        }
    }

    public void play() {
        NativeAdVideoView nativeAdVideoView = this.f21618c;
        if (nativeAdVideoView != null) {
            nativeAdVideoView.play();
        }
    }

    public void setInteractiveView(TaNativeInfo taNativeInfo, final String str, String str2) {
        f(taNativeInfo, str2);
        final InteractiveFrameLayout interactiveFrameLayout = this.f21620e;
        final InteractiveWebView interactiveWebView = this.f21621f;
        if (interactiveFrameLayout == null || interactiveWebView == null) {
            return;
        }
        interactiveFrameLayout.registerGlobalLayoutListener(new InteractiveFrameLayout.a() { // from class: c7.b
            @Override // com.cloud.hisavana.sdk.common.widget.InteractiveFrameLayout.a
            public final void a(int i11, int i12) {
                this.f17011a.g(interactiveWebView, interactiveFrameLayout, str, i11, i12);
            }
        });
    }

    public void setMediaView(AdImage adImage, ImageView.ScaleType scaleType, boolean z10) {
        l();
        TranCircleImageView tranCircleImageView = this.f21616a;
        if (tranCircleImageView == null || scaleType == null) {
            return;
        }
        if (z10) {
            tranCircleImageView.setAdjustViewBounds(true);
            this.f21616a.setMaxWidth(i7.c.k());
            this.f21616a.setMaxHeight(i7.c.j());
        } else {
            tranCircleImageView.setAdjustViewBounds(true);
            this.f21616a.setScaleType(scaleType);
        }
        if (adImage != null) {
            this.f21617b = adImage;
            this.f21623h = adImage.attachView(this.f21616a);
        }
    }

    public void setRadius(float f11, float f12, float f13, float f14) {
        TranCircleImageView tranCircleImageView = this.f21616a;
        if (tranCircleImageView != null) {
            tranCircleImageView.setTopLeftRadius(f11);
            this.f21616a.setTopRightRadius(f12);
            this.f21616a.setBottomLeftRadius(f13);
            this.f21616a.setBottomRightRadius(f14);
            this.f21616a.setCircle((f11 == 0.0f && f12 == 0.0f && f13 == 0.0f && f14 == 0.0f) ? false : true);
            this.f21616a.invalidate();
        }
    }

    public void setVideoView(String str, boolean z10, String str2, AdsDTO adsDTO, boolean z11) {
        i(adsDTO, z11);
        if (TextUtils.isEmpty(str) || this.f21618c == null || adsDTO == null) {
            e4.b().e("MediaView", "setVideoView filePath is null or adVideoView is null or adsDTO is null");
            return;
        }
        AdxImpBean impBeanRequest = adsDTO.getImpBeanRequest();
        if (impBeanRequest != null) {
            e4.b().d("MediaView", "init impBean.isAutoPlayVideoAd " + impBeanRequest.isAutoPlayVideoAd);
            this.f21618c.setPlayWhenReady(impBeanRequest.isAutoPlayVideoAd);
        }
        e4.b().d("MediaView", "isMaterialStyleValid---->" + z10 + "   materialStyle---->" + str2);
        this.f21618c.setShowComponents(true);
        this.f21618c.setAutoReset(true);
        if (adsDTO.getVideoInfo() != null && adsDTO.getVideoInfo().getVideoMask() != null) {
            this.f21618c.setCompanionSize(adsDTO.getVideoInfo().getVideoMask().getResource());
        }
        this.f21618c.setMediaData(str, adsDTO, str.startsWith("http"));
    }
}
