package com.cloud.hisavana.sdk;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.CookieManager;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.cloud.hisavana.sdk.api.view.AdBadgeView;
import com.cloud.hisavana.sdk.api.view.AdChoicesView;
import com.cloud.hisavana.sdk.api.view.AdCloseView;
import com.cloud.hisavana.sdk.api.view.StoreMarkView;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.bean.AdImage;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.http.DownLoadRequest;
import com.cloud.hisavana.sdk.common.http.listener.DrawableResponseListener;
import com.cloud.hisavana.sdk.common.tracking.DownUpPointBean;
import com.cloud.hisavana.sdk.common.widget.InteractiveWebView;
import com.cloud.hisavana.sdk.common.widget.TadmWebView;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.ConfigCodeSeatDTO;
import com.cloud.hisavana.sdk.internal.agentpage.AgentPageJsBridge;
import com.cloud.hisavana.sdk.internal.agentpage.AgentPageWebViewClient;
import com.cloud.hisavana.sdk.internal.agentpage.bean.AgentPageCurrentAd;
import com.cloud.hisavana.sdk.manager.NetStateManager;
import com.vungle.ads.internal.model.AdPayload;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final p3 f22765a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ImageView f22768d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ImageView f22769e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private AdChoicesView f22770f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private TadmWebView f22771g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private InteractiveWebView f22772h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f22774j;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private long f22780p;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private r f22782r;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private AdsDTO f22766b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private View f22767c = null;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f22773i = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final e7.n f22775k = new e7.n(com.cloud.sdk.commonutil.util.e.a());

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private float f22776l = -1.0f;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private float f22777m = -1.0f;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private float f22778n = -1.0f;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private float f22779o = -1.0f;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f22783s = false;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f22784t = false;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f22785u = false;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    DrawableResponseListener f22786v = new e();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final g f22781q = new g(this);

    class a implements InteractiveWebView.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ AdsDTO f22787a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ InteractiveWebView f22788b;

        a(AdsDTO adsDTO, InteractiveWebView interactiveWebView) {
            this.f22787a = adsDTO;
            this.f22788b = interactiveWebView;
        }

        @Override // com.cloud.hisavana.sdk.common.widget.InteractiveWebView.c
        public void a(String str) {
            AthenaTracker.y(this.f22787a, str);
        }

        @Override // com.cloud.hisavana.sdk.common.widget.InteractiveWebView.c
        public void b() {
            o.this.d(this.f22788b);
        }

        @Override // com.cloud.hisavana.sdk.common.widget.InteractiveWebView.c
        public void c() {
            e4.b().d("BannerGemini", "timeoutShutdown");
        }
    }

    class b implements s4 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ TadmWebView f22790a;

        b(TadmWebView tadmWebView) {
            this.f22790a = tadmWebView;
        }

        @Override // com.cloud.hisavana.sdk.s4
        public void a() {
        }

        @Override // com.cloud.hisavana.sdk.s4
        public void a(String str, int i11) {
            if (o.this.f22765a != null) {
                o.this.f22765a.P();
                Bundle bundle = new Bundle();
                bundle.putString("s_err_code", i11 + "");
                bundle.putString("error_url", str);
                o.this.f22765a.K(TaErrorCode.ERROR_SHOW_ADM_LOAD_MATERIAL_ERROR, bundle);
            }
        }

        @Override // com.cloud.hisavana.sdk.s4
        public int b(float f11, float f12, float f13, float f14, boolean z10) {
            o.this.f22776l = f11;
            o.this.f22777m = f12;
            o.this.f22778n = f13;
            o.this.f22779o = f14;
            return o.this.q(this.f22790a);
        }
    }

    class c implements AgentPageJsBridge.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ViewGroup f22792a;

        c(ViewGroup viewGroup) {
            this.f22792a = viewGroup;
        }

        @Override // com.cloud.hisavana.sdk.internal.agentpage.AgentPageJsBridge.a
        public void a() {
            com.cloud.hisavana.sdk.common.tranmeasure.e.c().e(o.this.f22766b, this.f22792a, o.this.f22781q);
        }

        @Override // com.cloud.hisavana.sdk.internal.agentpage.AgentPageJsBridge.a
        public void a(int i11) {
            if (o.this.f22765a != null) {
                o.this.f22765a.H(i11);
            }
        }

        @Override // com.cloud.hisavana.sdk.internal.agentpage.AgentPageJsBridge.a
        public void onClick() {
            if (o.this.f22765a != null) {
                o.this.f22765a.U();
            }
        }
    }

    class d implements AgentPageWebViewClient.OverrideListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f22794a = false;

        d() {
        }

        @Override // com.cloud.hisavana.sdk.internal.agentpage.AgentPageWebViewClient.OverrideListener
        public boolean OnOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            if (webResourceRequest == null || webResourceRequest.getUrl() == null || TextUtils.isEmpty(webResourceRequest.getUrl().toString())) {
                return false;
            }
            AdsDTO adsDTOM232clone = o.this.f22766b.m232clone();
            adsDTOM232clone.setAdChoiceClickUrl(webResourceRequest.getUrl().toString());
            N0.m(webView.getContext(), adsDTOM232clone, true, false, null);
            return true;
        }

        @Override // com.cloud.hisavana.sdk.internal.agentpage.AgentPageWebViewClient.OverrideListener
        public boolean OnOverrideUrlLoading(WebView webView, String str) {
            AdsDTO adsDTOM232clone = o.this.f22766b.m232clone();
            adsDTOM232clone.setAdChoiceClickUrl(str);
            N0.m(webView.getContext(), adsDTOM232clone, true, false, null);
            return true;
        }

        @Override // com.cloud.hisavana.sdk.internal.agentpage.AgentPageWebViewClient.OverrideListener
        public void onError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            if (webResourceRequest == null || !webResourceRequest.isForMainFrame() || this.f22794a || o.this.f22765a == null) {
                return;
            }
            o.this.f22765a.P();
            Bundle bundle = new Bundle();
            try {
                bundle.putString("s_err_code", webResourceError.getErrorCode() + "");
                o.this.f22765a.K(TaErrorCode.ERROR_SHOW_ADM_LOAD_WEB_ERROR, bundle);
            } catch (Throwable unused) {
            }
        }

        @Override // com.cloud.hisavana.sdk.internal.agentpage.AgentPageWebViewClient.OverrideListener
        public void onPageFinished(WebView webView, String str) {
            if (webView == null || webView.getProgress() != 100) {
                return;
            }
            this.f22794a = true;
        }
    }

    class e extends DrawableResponseListener {
        e() {
        }

        @Override // com.cloud.hisavana.sdk.common.http.listener.ResponseBaseListener
        public void a(TaErrorCode taErrorCode) {
            try {
                if (o.this.f22765a != null) {
                    if (taErrorCode == null || !(taErrorCode.getErrorCode() == 3007 || taErrorCode.getErrorCode() == 3016)) {
                        o.this.f22765a.J(taErrorCode);
                    } else {
                        o.this.f22765a.K(taErrorCode, new Bundle());
                    }
                }
            } catch (Exception unused) {
            }
        }

        @Override // com.cloud.hisavana.sdk.common.http.listener.DrawableResponseListener
        public void g(int i11, AdImage adImage) {
        }
    }

    private class f implements View.OnClickListener {
        private f() {
        }

        /* synthetic */ f(o oVar, a aVar) {
            this();
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (o.this.f22766b != null) {
                N0.k(view.getContext(), o.this.f22766b);
            }
        }
    }

    private static class g extends com.cloud.hisavana.sdk.common.tranmeasure.a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final WeakReference f22798b;

        public g(o oVar) {
            this.f22798b = new WeakReference(oVar);
        }

        @Override // com.cloud.hisavana.sdk.common.tranmeasure.a, com.cloud.hisavana.sdk.common.tranmeasure.d.b
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public void a(AdsDTO adsDTO) {
            p3 p3Var;
            super.a(adsDTO);
            e4.b().d("BannerGemini", "onViewImpressed: start impression report");
            o oVar = (o) this.f22798b.get();
            if (oVar == null || (p3Var = oVar.f22765a) == null) {
                return;
            }
            p3Var.V();
            if (adsDTO == null || adsDTO.getImpBeanRequest() == null) {
                return;
            }
            P.g().k(adsDTO.getImpBeanRequest().pmid);
            if (adsDTO.getSource() == 4) {
                Z.f21541a.q(adsDTO.getAdCreativeId(), adsDTO.getCodeSeatId());
            } else if (adsDTO.isOfflineAd()) {
                adsDTO.setShowNum(Integer.valueOf(adsDTO.getShowNum().intValue() + 1));
                c0.F().q(adsDTO);
            }
        }
    }

    private class h implements View.OnClickListener {
        private h() {
        }

        /* synthetic */ h(o oVar, a aVar) {
            this();
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            o.this.d(view);
        }
    }

    private class i implements View.OnTouchListener {
        private i() {
        }

        /* synthetic */ i(o oVar, a aVar) {
            this();
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            if (action == 0) {
                o.this.f22776l = motionEvent.getX();
                o.this.f22777m = motionEvent.getY();
                return false;
            }
            if (action != 1) {
                return false;
            }
            o.this.f22778n = motionEvent.getX();
            o.this.f22779o = motionEvent.getY();
            return false;
        }
    }

    public o(p3 p3Var) {
        this.f22765a = p3Var;
    }

    private void A(ViewGroup viewGroup) {
        if (this.f22766b == null) {
            p3 p3Var = this.f22765a;
            if (p3Var != null) {
                p3Var.J(TaErrorCode.ERROR_SHOW_ADBEAN_NULL);
                return;
            }
            return;
        }
        InteractiveWebView interactiveWebView = this.f22772h;
        if (interactiveWebView != null) {
            interactiveWebView.destroy();
        }
        try {
            InteractiveWebView interactiveWebView2 = new InteractiveWebView(com.cloud.sdk.commonutil.util.e.a());
            this.f22772h = interactiveWebView2;
            i(interactiveWebView2, viewGroup);
        } catch (Throwable th2) {
            e4.b().e("BannerGemini", "create webview error: " + Log.getStackTraceString(th2));
            this.f22772h = null;
            p3 p3Var2 = this.f22765a;
            if (p3Var2 != null) {
                p3Var2.J(TaErrorCode.ERROR_SHOW_INTERACTIVE_WEBVIEW_ERROR);
            }
        }
    }

    private void B(ViewGroup viewGroup) {
        int i11;
        AdsDTO adsDTO = this.f22766b;
        if (adsDTO == null) {
            p3 p3Var = this.f22765a;
            if (p3Var != null) {
                p3Var.J(TaErrorCode.ERROR_SHOW_ADBEAN_NULL);
                return;
            }
            return;
        }
        String adImgUrl = adsDTO.getAdImgUrl();
        if ((!TextUtils.equals(this.f22766b.getMaterialStyle(), "B20301") && !TextUtils.equals(this.f22766b.getMaterialStyle(), "B20302") && !TextUtils.equals(this.f22766b.getMaterialStyle(), "B20303")) || this.f22766b.getPackageName() == null || this.f22766b.getNativeObject() == null) {
            i11 = 2;
        } else {
            adImgUrl = this.f22766b.getNativeObject().getLogoUrl();
            i11 = 1;
        }
        e(viewGroup);
        if (this.f22766b.getSource() == 4) {
            AdsDTO adsDTO2 = this.f22766b;
            DrawableResponseListener drawableResponseListener = this.f22786v;
            ImageView imageView = this.f22768d;
            if (imageView == null) {
                imageView = this.f22769e;
            }
            DownLoadRequest.n(adImgUrl, adsDTO2, drawableResponseListener, imageView);
            return;
        }
        AdsDTO adsDTO3 = this.f22766b;
        DrawableResponseListener drawableResponseListener2 = this.f22786v;
        ImageView imageView2 = this.f22768d;
        if (imageView2 == null) {
            imageView2 = this.f22769e;
        }
        DownLoadRequest.o(adImgUrl, adsDTO3, i11, drawableResponseListener2, imageView2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(View view) {
        try {
            AdsDTO adsDTO = this.f22766b;
            if (adsDTO != null) {
                if (adsDTO.getPslinkInfo() != null) {
                    if (view.getId() == R$id.tvBtn) {
                        this.f22766b.getPslinkInfo().setClickType(2);
                        this.f22766b.setTrackUserClickArea(2);
                        e4.b().d("BannerGemini", "pslink half setClickType, click_install");
                    } else {
                        this.f22766b.getPslinkInfo().setClickType(1);
                        this.f22766b.setTrackUserClickArea(1);
                        e4.b().d("BannerGemini", "pslink half setClickType, click_img");
                    }
                }
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (jCurrentTimeMillis - this.f22780p > 1000) {
                    q(view);
                    this.f22780p = jCurrentTimeMillis;
                }
            }
        } catch (Exception e11) {
            e4.b().e(Log.getStackTraceString(e11));
        }
    }

    private void f(ViewGroup viewGroup, StoreMarkView storeMarkView) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(storeMarkView);
        arrayList.add(this.f22767c.findViewById(R$id.ad_flag));
        arrayList.add(this.f22767c.findViewById(R$id.ad_close_view));
        arrayList.add(this.f22767c.findViewById(R$id.ps_mark_view));
        p3 p3Var = this.f22765a;
        if (p3Var != null) {
            m0.a(p3Var.v(), this.f22766b, viewGroup, arrayList);
        }
    }

    private void k(TadmWebView tadmWebView, ViewGroup viewGroup, boolean z10, boolean z11, boolean z12) {
        View viewFindViewById;
        viewGroup.removeAllViews();
        ((RelativeLayout) viewGroup).setGravity(17);
        this.f22767c = LayoutInflater.from(viewGroup.getContext()).inflate(R$layout.banner_style_3201_layout, viewGroup, false);
        if (!z12) {
            com.cloud.hisavana.sdk.common.tranmeasure.e.c().e(this.f22766b, viewGroup, this.f22781q);
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        layoutParams.gravity = 49;
        View viewFindViewById2 = this.f22767c.findViewById(R$id.ivBanner);
        if (viewFindViewById2 instanceof FrameLayout) {
            ((FrameLayout) viewFindViewById2).addView(tadmWebView, layoutParams);
        }
        if (z11 && (viewFindViewById = this.f22767c.findViewById(R$id.ad_flag)) != null) {
            viewFindViewById.setVisibility(8);
        }
        v(this.f22766b, this.f22767c);
        l(this.f22766b, this.f22767c);
        m(this.f22766b, this.f22767c, z10);
        ImageView imageView = (ImageView) this.f22767c.findViewById(R$id.ivIcon);
        boolean z13 = true;
        if (imageView != null && this.f22766b.getNativeObject() != null && this.f22766b.getNativeObject().getLogoUrl() != null) {
            DownLoadRequest.o(this.f22766b.getNativeObject().getLogoUrl(), this.f22766b, 1, null, imageView);
        }
        if (tadmWebView.getLayoutParams() == null) {
            z13 = false;
        } else {
            List<String> scales = this.f22766b.getScales();
            if (scales == null || scales.isEmpty()) {
                if (com.cloud.sdk.commonutil.util.h.e() != 1) {
                    tadmWebView.getLayoutParams().height = -1;
                    tadmWebView.getLayoutParams().width = -1;
                } else if (TextUtils.equals(this.f22766b.getMaterialStyle(), "B3201")) {
                    tadmWebView.getLayoutParams().height = (i7.c.k() * 2) / 3;
                    tadmWebView.getLayoutParams().width = i7.c.k();
                } else {
                    tadmWebView.getLayoutParams().height = (i7.c.k() * 3) / 20;
                    tadmWebView.getLayoutParams().width = i7.c.k();
                }
                z13 = false;
            } else {
                if (com.cloud.sdk.commonutil.util.h.e() == 1) {
                    String str = scales.get(0);
                    str.hashCode();
                    if (str.equals("3:2")) {
                        tadmWebView.getLayoutParams().height = (i7.c.k() * 2) / 3;
                        tadmWebView.getLayoutParams().width = i7.c.k();
                    } else if (str.equals("20:3")) {
                        tadmWebView.getLayoutParams().height = (i7.c.k() * 3) / 20;
                        tadmWebView.getLayoutParams().width = i7.c.k();
                    }
                } else {
                    tadmWebView.getLayoutParams().height = -1;
                    tadmWebView.getLayoutParams().width = -1;
                }
                z13 = false;
            }
        }
        tadmWebView.setVisibility(0);
        e4.b().d("BannerGemini", "banner attachBannerToViewTree");
        if (viewGroup.getBackground() != null) {
            viewGroup.getBackground().setAlpha(0);
        }
        viewGroup.setVisibility(0);
        if (com.cloud.sdk.commonutil.util.h.e() != 2) {
            viewGroup.addView(this.f22767c, -1, -2);
            return;
        }
        if (z13) {
            viewGroup.addView(this.f22767c, com.cloud.sdk.commonutil.util.h.a(300.0f), com.cloud.sdk.commonutil.util.h.a(200.0f));
        } else {
            viewGroup.addView(this.f22767c, com.cloud.sdk.commonutil.util.h.a(360.0f), com.cloud.sdk.commonutil.util.h.a(54.0f));
        }
        viewFindViewById2.getLayoutParams().height = -1;
    }

    private void l(AdsDTO adsDTO, View view) {
        AdBadgeView adBadgeView;
        if (adsDTO == null || view == null || (adBadgeView = (AdBadgeView) view.findViewById(R$id.ad_badge_view)) == null) {
            return;
        }
        adBadgeView.setDisplayStyle(adsDTO.getDisplayRule(), com.cloud.hisavana.sdk.common.util.f0.c(adsDTO));
    }

    private void m(AdsDTO adsDTO, View view, boolean z10) {
        AdCloseView adCloseView;
        if (adsDTO == null || view == null || (adCloseView = (AdCloseView) view.findViewById(R$id.ad_close_view)) == null) {
            return;
        }
        if (z10 && this.f22773i) {
            adCloseView.setVisibility(8);
            return;
        }
        adCloseView.setVisibility(0);
        t2.p().g(com.cloud.sdk.commonutil.util.e.a(), adCloseView, this.f22765a, adsDTO, this.f22774j);
        adCloseView.setDisplayStyle(adsDTO.getDisplayRule(), AdCloseView.CloseImageType.CLOSE);
        try {
            String materialStyle = this.f22766b.getMaterialStyle();
            if (this.f22783s && ("B20301".equals(materialStyle) || "B20302".equals(materialStyle) || "B20303".equals(materialStyle))) {
                adCloseView.setCloseStyle(androidx.core.content.b.getDrawable(com.cloud.sdk.commonutil.util.e.a(), R$drawable.hs_ad_banner_close), androidx.core.content.b.getColor(com.cloud.sdk.commonutil.util.e.a(), R$color.ad_banner_close_bg));
            } else {
                if (this.f22784t || this.f22785u || !"B20304".equals(materialStyle)) {
                    return;
                }
                adCloseView.setCloseStyle(androidx.core.content.b.getDrawable(com.cloud.sdk.commonutil.util.e.a(), R$drawable.hs_ad_banner_20304_close), 0);
                adCloseView.setViewSize(24, 24);
            }
        } catch (Throwable unused) {
        }
    }

    private void n(AdsDTO adsDTO, InteractiveWebView interactiveWebView) {
        if (adsDTO == null || TextUtils.isEmpty(adsDTO.getIndexLocation())) {
            return;
        }
        if (!new File(adsDTO.getIndexLocation()).exists() || interactiveWebView == null) {
            p3 p3Var = this.f22765a;
            if (p3Var != null) {
                p3Var.P();
            }
            AthenaTracker.S(this.f22766b, 3);
            return;
        }
        interactiveWebView.loadUrl(AdPayload.FILE_SCHEME + adsDTO.getIndexLocation());
    }

    private void o(AdsDTO adsDTO, boolean z10, View view) {
        if (adsDTO == null || view == null) {
            return;
        }
        boolean zA = com.cloud.hisavana.sdk.common.util.i0.a(adsDTO);
        StoreMarkView storeMarkView = (StoreMarkView) view.findViewById(R$id.ps_mark_view);
        if (storeMarkView != null) {
            storeMarkView.setVisibility(zA ? 0 : 8);
            storeMarkView.setTextColor(z10 ? -1 : -8882056);
            storeMarkView.setTextSize(z10 ? 8.0f : 6.0f);
            storeMarkView.attachInfo(adsDTO);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int q(View view) {
        Context context = view.getContext();
        AdsDTO adsDTO = this.f22766b;
        DownUpPointBean downUpPointBean = new DownUpPointBean(this.f22776l, this.f22777m, this.f22778n, this.f22779o, view.getMeasuredHeight(), view.getMeasuredWidth());
        p3 p3Var = this.f22765a;
        int iB = N0.b(context, adsDTO, downUpPointBean, p3Var == null ? false : p3Var.p().v());
        AthenaTracker.W(this.f22766b);
        p3 p3Var2 = this.f22765a;
        if (p3Var2 != null) {
            p3Var2.U();
        }
        return iB;
    }

    private void t(ViewGroup viewGroup) {
        AdsDTO adsDTO = this.f22766b;
        if (adsDTO == null || TextUtils.isEmpty(adsDTO.getAdm()) || viewGroup == null) {
            p3 p3Var = this.f22765a;
            if (p3Var != null) {
                AdsDTO adsDTO2 = this.f22766b;
                if (adsDTO2 == null) {
                    p3Var.J(TaErrorCode.ERROR_SHOW_ADBEAN_NULL);
                    return;
                } else if (TextUtils.isEmpty(adsDTO2.getAdm())) {
                    this.f22765a.J(TaErrorCode.ERROR_SHOW_ADM_NULL);
                    return;
                } else {
                    this.f22765a.J(TaErrorCode.ERROR_SHOW_VIEWGROUP_NULL);
                    return;
                }
            }
            return;
        }
        TadmWebView tadmWebView = this.f22771g;
        if (tadmWebView != null) {
            tadmWebView.destroy();
        }
        try {
            this.f22784t = true;
            TadmWebView tadmWebView2 = new TadmWebView(com.cloud.sdk.commonutil.util.e.a());
            this.f22771g = tadmWebView2;
            j(tadmWebView2, viewGroup);
        } catch (Throwable th2) {
            e4.b().e("BannerGemini", "create webview error: " + Log.getStackTraceString(th2));
            this.f22771g = null;
            p3 p3Var2 = this.f22765a;
            if (p3Var2 != null) {
                p3Var2.J(TaErrorCode.ERROR_SHOW_ADM_WEBVIEW_ERROR);
            }
        }
    }

    private void v(AdsDTO adsDTO, View view) {
        AdChoicesView adChoicesView;
        if (adsDTO == null || view == null || (adChoicesView = (AdChoicesView) view.findViewById(R$id.ad_choices_view)) == null) {
            return;
        }
        a aVar = null;
        if (adsDTO.getSource() == 4) {
            DownLoadRequest.n(adsDTO.getAdChoiceImageUrl(), adsDTO, null, adChoicesView);
        } else {
            DownLoadRequest.o(adsDTO.getAdChoiceImageUrl(), adsDTO, 3, null, adChoicesView);
        }
        adChoicesView.setOnClickListener(new f(this, aVar));
        this.f22770f = adChoicesView;
    }

    private void y(ViewGroup viewGroup) {
        if (viewGroup == null) {
            p3 p3Var = this.f22765a;
            if (p3Var != null) {
                p3Var.J(TaErrorCode.ERROR_SHOW_VIEWGROUP_NULL);
                return;
            }
            return;
        }
        TadmWebView tadmWebView = this.f22771g;
        if (tadmWebView != null) {
            tadmWebView.destroy();
        }
        try {
            TadmWebView tadmWebView2 = new TadmWebView(com.cloud.sdk.commonutil.util.e.a());
            this.f22771g = tadmWebView2;
            u(tadmWebView2, viewGroup);
        } catch (Throwable th2) {
            e4.b().e("BannerGemini", "create webview error: " + Log.getStackTraceString(th2));
            this.f22771g = null;
            p3 p3Var2 = this.f22765a;
            if (p3Var2 != null) {
                p3Var2.J(TaErrorCode.ERROR_SHOW_ADM_WEBVIEW_ERROR);
            }
        }
    }

    public void c() {
        com.cloud.sdk.commonutil.util.k.a(this.f22768d);
        com.cloud.sdk.commonutil.util.k.a(this.f22769e);
        com.cloud.sdk.commonutil.util.k.a(this.f22770f);
        TadmWebView tadmWebView = this.f22771g;
        if (tadmWebView != null) {
            tadmWebView.destroy();
            this.f22771g = null;
        }
        InteractiveWebView interactiveWebView = this.f22772h;
        if (interactiveWebView != null) {
            interactiveWebView.destroy();
            this.f22772h = null;
        }
        r rVar = this.f22782r;
        if (rVar != null) {
            rVar.c();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:111:0x0302  */
    /* JADX WARN: Code duplicated, block: B:113:0x0306  */
    /* JADX WARN: Code duplicated, block: B:117:0x0314 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:125:0x032d A[Catch: all -> 0x03a2, TryCatch #0 {all -> 0x03a2, blocks: (B:123:0x0327, B:125:0x032d, B:127:0x0333, B:129:0x0339, B:133:0x0344), top: B:188:0x0327 }] */
    /* JADX WARN: Code duplicated, block: B:136:0x03aa A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:138:0x03ae  */
    /* JADX WARN: Code duplicated, block: B:13:0x0070  */
    /* JADX WARN: Code duplicated, block: B:141:0x03bb A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:142:0x03bd  */
    /* JADX WARN: Code duplicated, block: B:143:0x03bf  */
    /* JADX WARN: Code duplicated, block: B:146:0x03c6  */
    /* JADX WARN: Code duplicated, block: B:147:0x03c8  */
    /* JADX WARN: Code duplicated, block: B:150:0x03d2  */
    /* JADX WARN: Code duplicated, block: B:151:0x03d5  */
    /* JADX WARN: Code duplicated, block: B:154:0x03ea  */
    /* JADX WARN: Code duplicated, block: B:156:0x03f8  */
    /* JADX WARN: Code duplicated, block: B:159:0x040c  */
    /* JADX WARN: Code duplicated, block: B:164:0x0428  */
    /* JADX WARN: Code duplicated, block: B:167:0x0464 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:168:0x0466  */
    /* JADX WARN: Code duplicated, block: B:169:0x047a  */
    /* JADX WARN: Code duplicated, block: B:170:0x048e  */
    /* JADX WARN: Code duplicated, block: B:173:0x049d  */
    /* JADX WARN: Code duplicated, block: B:174:0x04a6  */
    /* JADX WARN: Code duplicated, block: B:43:0x0146  */
    /* JADX WARN: Code duplicated, block: B:45:0x014a  */
    /* JADX WARN: Code duplicated, block: B:47:0x0150  */
    /* JADX WARN: Code duplicated, block: B:49:0x0172  */
    /* JADX WARN: Code duplicated, block: B:50:0x0174  */
    /* JADX WARN: Code duplicated, block: B:53:0x017b  */
    /* JADX WARN: Code duplicated, block: B:54:0x017d  */
    /* JADX WARN: Code duplicated, block: B:57:0x0184  */
    /* JADX WARN: Code duplicated, block: B:58:0x0186  */
    /* JADX WARN: Code duplicated, block: B:61:0x018d  */
    /* JADX WARN: Code duplicated, block: B:64:0x0193 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:65:0x0195  */
    /* JADX WARN: Code duplicated, block: B:67:0x01a5  */
    /* JADX WARN: Code duplicated, block: B:70:0x01ef  */
    /* JADX WARN: Code duplicated, block: B:72:0x0226  */
    /* JADX WARN: Code duplicated, block: B:75:0x022a  */
    /* JADX WARN: Code duplicated, block: B:78:0x026b  */
    /* JADX WARN: Code duplicated, block: B:79:0x027d  */
    /* JADX WARN: Code duplicated, block: B:82:0x0288  */
    /* JADX WARN: Code duplicated, block: B:83:0x028a  */
    /* JADX WARN: Code duplicated, block: B:85:0x0290  */
    /* JADX WARN: Code duplicated, block: B:86:0x0298  */
    /* JADX WARN: Code duplicated, block: B:87:0x029d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:88:0x029f  */
    /* JADX WARN: Code duplicated, block: B:90:0x02af  */
    /* JADX WARN: Code duplicated, block: B:91:0x02b7  */
    /* JADX WARN: Code duplicated, block: B:95:0x02c0  */
    /* JADX WARN: Code duplicated, block: B:97:0x02ca  */
    /* JADX WARN: Instruction removed from duplicated block: B:67:0x01a5, please report this as an issue */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    void e(ViewGroup viewGroup) {
        boolean z10;
        boolean z11;
        View view;
        TextView textView;
        com.cloud.hisavana.sdk.common.util.r rVar;
        String strK;
        String materialStyle;
        boolean z12;
        String str;
        boolean z13;
        boolean z14;
        StoreMarkView storeMarkView;
        TextView textView2;
        ImageView imageView;
        ViewGroup viewGroup2;
        int i11;
        int i12;
        int i13;
        float f11;
        ImageView imageView2;
        TextView textView3;
        TextView textView4;
        TextView textView5;
        String descriptionTxt;
        String strH;
        String titleTxt;
        p3 p3Var;
        String str2 = "B20301";
        AdsDTO adsDTO = this.f22766b;
        if (adsDTO == null || viewGroup == null) {
            p3 p3Var2 = this.f22765a;
            if (p3Var2 != null) {
                if (adsDTO == null) {
                    p3Var2.J(TaErrorCode.ERROR_SHOW_ADBEAN_NULL);
                    return;
                } else {
                    p3Var2.J(TaErrorCode.ERROR_SHOW_VIEWGROUP_NULL);
                    return;
                }
            }
            return;
        }
        viewGroup.removeAllViews();
        ((RelativeLayout) viewGroup).setGravity(17);
        if (this.f22766b.getNativeObject() == null || this.f22766b.getMaterialStyle() == null) {
            e4.b().d("BannerGemini", "TranBanner --> null == mAdBean.nativeBean || null == mAdBean.materialStyle");
            p3 p3Var3 = this.f22765a;
            if (p3Var3 != null) {
                p3Var3.J(TaErrorCode.ERROR_SHOW_NATIVEOBJ_NULL);
                return;
            }
            return;
        }
        e4.b().d("BannerGemini", "*----> TranBanner --> MaterialStyle =" + this.f22766b.getMaterialStyle());
        s sVar = new s(this.f22766b);
        int iG = sVar.g();
        this.f22783s = true;
        String materialStyle2 = this.f22766b.getMaterialStyle();
        materialStyle2.hashCode();
        a aVar = null;
        switch (materialStyle2) {
            case "B3201":
                this.f22767c = LayoutInflater.from(viewGroup.getContext()).inflate(R$layout.banner_style_3201_layout, viewGroup, false);
                z10 = true;
                z11 = z10;
                iG = -1;
                this.f22766b.setBannerStyle(iG);
                com.cloud.hisavana.sdk.common.tranmeasure.e.c().e(this.f22766b, this.f22767c, this.f22781q);
                AthenaTracker.A(this.f22766b);
                view = this.f22767c;
                if (view == null) {
                    p3Var = this.f22765a;
                    if (p3Var != null) {
                        p3Var.J(TaErrorCode.ERROR_SHOW_RENDERVIEW_NULL);
                    }
                    break;
                } else {
                    textView = (TextView) view.findViewById(R$id.tvDescription);
                    rVar = com.cloud.hisavana.sdk.common.util.r.f22193a;
                    strK = rVar.k(this.f22766b);
                    materialStyle = this.f22766b.getMaterialStyle();
                    materialStyle.hashCode();
                    switch (materialStyle) {
                        case "B20301":
                        case "B20302":
                            ((TextView) this.f22767c.findViewById(R$id.tvName)).setText(this.f22766b.getNativeObject().getTitleTxt());
                            ((TextView) this.f22767c.findViewById(R$id.tvBtn)).setText(this.f22766b.getNativeObject().getButtonTxt(this.f22766b.getInstallApk()));
                            if (iG != 1 || iG == 2) {
                                imageView2 = (ImageView) this.f22767c.findViewById(R$id.score_icon);
                                textView3 = (TextView) this.f22767c.findViewById(R$id.score_text);
                                str = "BannerGemini";
                                textView4 = (TextView) this.f22767c.findViewById(R$id.source_size);
                                TextView textView6 = (TextView) this.f22767c.findViewById(R$id.tv_source_separator);
                                z12 = z10;
                                textView5 = (TextView) this.f22767c.findViewById(R$id.tv_score_separator);
                                if (imageView2 != null) {
                                    imageView2.setImageDrawable(androidx.core.content.b.getDrawable(com.cloud.sdk.commonutil.util.e.a(), sVar.f(iG)));
                                }
                                try {
                                    if (rVar.d(this.f22766b) != 2) {
                                        if (textView != null) {
                                            descriptionTxt = this.f22766b.getNativeObject().getDescriptionTxt();
                                            if (TextUtils.isEmpty(descriptionTxt)) {
                                                textView.setVisibility(4);
                                            } else {
                                                textView.setVisibility(0);
                                                textView.setText(descriptionTxt);
                                            }
                                            z13 = false;
                                        }
                                        if (textView3 != null) {
                                            strH = sVar.h(iG);
                                            if (!TextUtils.isEmpty(strH) || strH.equals("0.0") || strH.equals("0")) {
                                                if (imageView2 != null) {
                                                    imageView2.setVisibility(8);
                                                }
                                                textView3.setVisibility(8);
                                            } else {
                                                textView3.setText(strH);
                                                textView3.setVisibility(0);
                                                if (rVar.e(textView4) && textView6 != null) {
                                                    textView6.setVisibility(0);
                                                    textView6.setText(" · ");
                                                }
                                                if (!z13 && textView != null && rVar.e(textView) && textView5 != null) {
                                                    textView5.setVisibility(0);
                                                    textView5.setText(" · ");
                                                }
                                            }
                                        }
                                        if (com.cloud.hisavana.sdk.common.util.i0.a(this.f22766b) && z13 && textView3 != null && rVar.e(textView3) && textView5 != null) {
                                            textView5.setVisibility(0);
                                            textView5.setText(" · ");
                                        }
                                        if (!rVar.e(textView3) && !rVar.e(textView) && !rVar.e(textView4) && (!com.cloud.hisavana.sdk.common.util.i0.a(this.f22766b) || !z13)) {
                                            ConstraintLayout constraintLayout = (ConstraintLayout) this.f22767c.findViewById(R$id.clRoot);
                                            androidx.constraintlayout.widget.b bVar = new androidx.constraintlayout.widget.b();
                                            bVar.q(constraintLayout);
                                            bVar.n(R$id.tvName);
                                            bVar.t(R$id.tvName, 3, R$id.ivIcon, 3);
                                            bVar.t(R$id.tvName, 4, R$id.ivIcon, 4);
                                            bVar.t(R$id.tvName, 6, R$id.ivIcon, 7);
                                            bVar.t(R$id.tvName, 7, R$id.tvBtn, 6);
                                            bVar.w(R$id.tvName, true);
                                            int dimensionPixelSize = com.cloud.sdk.commonutil.util.e.a().getResources().getDimensionPixelSize(R$dimen.dp_8);
                                            bVar.X(R$id.tvName, 6, dimensionPixelSize);
                                            bVar.X(R$id.tvName, 7, dimensionPixelSize);
                                            bVar.v(R$id.tvName, -2);
                                            bVar.i(constraintLayout);
                                        }
                                        break;
                                    } else if (textView4 != null) {
                                        if (TextUtils.isEmpty(strK)) {
                                            textView4.setVisibility(4);
                                        } else {
                                            textView4.setVisibility(0);
                                            textView4.setText(strK);
                                        }
                                    }
                                    if (!rVar.e(textView3)) {
                                        ConstraintLayout constraintLayout2 = (ConstraintLayout) this.f22767c.findViewById(R$id.clRoot);
                                        androidx.constraintlayout.widget.b bVar2 = new androidx.constraintlayout.widget.b();
                                        bVar2.q(constraintLayout2);
                                        bVar2.n(R$id.tvName);
                                        bVar2.t(R$id.tvName, 3, R$id.ivIcon, 3);
                                        bVar2.t(R$id.tvName, 4, R$id.ivIcon, 4);
                                        bVar2.t(R$id.tvName, 6, R$id.ivIcon, 7);
                                        bVar2.t(R$id.tvName, 7, R$id.tvBtn, 6);
                                        bVar2.w(R$id.tvName, true);
                                        int dimensionPixelSize2 = com.cloud.sdk.commonutil.util.e.a().getResources().getDimensionPixelSize(R$dimen.dp_8);
                                        bVar2.X(R$id.tvName, 6, dimensionPixelSize2);
                                        bVar2.X(R$id.tvName, 7, dimensionPixelSize2);
                                        bVar2.v(R$id.tvName, -2);
                                        bVar2.i(constraintLayout2);
                                    }
                                } catch (Throwable unused) {
                                }
                                z13 = true;
                                if (textView3 != null) {
                                    strH = sVar.h(iG);
                                    if (TextUtils.isEmpty(strH)) {
                                        if (imageView2 != null) {
                                            imageView2.setVisibility(8);
                                        }
                                        textView3.setVisibility(8);
                                    } else {
                                        if (imageView2 != null) {
                                            imageView2.setVisibility(8);
                                        }
                                        textView3.setVisibility(8);
                                    }
                                }
                                if (com.cloud.hisavana.sdk.common.util.i0.a(this.f22766b)) {
                                    textView5.setVisibility(0);
                                    textView5.setText(" · ");
                                }
                                break;
                            } else {
                                str2 = "B20301";
                                z12 = z10;
                                str = "BannerGemini";
                                z13 = true;
                                break;
                            }
                            break;
                        case "B20303":
                            if (textView != null) {
                                titleTxt = this.f22766b.getNativeObject().getTitleTxt();
                                if (!TextUtils.isEmpty(strK)) {
                                    titleTxt = strK + " · " + titleTxt;
                                }
                                textView.setText(titleTxt);
                            }
                            ((TextView) this.f22767c.findViewById(R$id.tvName)).setText(this.f22766b.getNativeObject().getDescriptionTxt());
                            ((TextView) this.f22767c.findViewById(R$id.tvBtn)).setText(this.f22766b.getNativeObject().getButtonTxt(this.f22766b.getInstallApk()));
                            str2 = "B20301";
                            z12 = z10;
                            str = "BannerGemini";
                            z13 = true;
                            break;
                        default:
                            str2 = "B20301";
                            z12 = z10;
                            str = "BannerGemini";
                            z13 = true;
                            break;
                    }
                    if (com.cloud.hisavana.sdk.common.util.i0.a(this.f22766b) || !z13) {
                        z14 = false;
                    } else {
                        z14 = true;
                    }
                    storeMarkView = (StoreMarkView) this.f22767c.findViewById(R$id.ps_mark_view);
                    if (storeMarkView != null) {
                        if (z14) {
                            i12 = 0;
                        } else {
                            i12 = 8;
                        }
                        storeMarkView.setVisibility(i12);
                        if (z11) {
                            i13 = -1;
                        } else {
                            i13 = -8882056;
                        }
                        storeMarkView.setTextColor(i13);
                        if (z11) {
                            f11 = 8.0f;
                        } else {
                            f11 = 6.0f;
                        }
                        storeMarkView.setTextSize(f11);
                        storeMarkView.attachInfo(this.f22766b);
                        if ("B20302".equals(this.f22766b.getMaterialStyle())) {
                            storeMarkView.setLogoSize(8);
                            storeMarkView.setTextSize(6.0f);
                        } else {
                            if (str2.equals(this.f22766b.getMaterialStyle())) {
                                storeMarkView.setLogoSize(8);
                                storeMarkView.setTextSize(6.0f);
                            }
                        }
                    }
                    textView2 = (TextView) this.f22767c.findViewById(R$id.tvName);
                    if (textView2 != null && textView2.getPaint() != null) {
                        textView2.getPaint().setFakeBoldText(true);
                    }
                    imageView = (ImageView) this.f22767c.findViewById(R$id.iv_main_image);
                    this.f22768d = imageView;
                    if (imageView != null) {
                        a aVar2 = null;
                        imageView.setOnTouchListener(new i(this, aVar2));
                        this.f22768d.setOnClickListener(new h(this, aVar2));
                    }
                    this.f22769e = (ImageView) this.f22767c.findViewById(R$id.ivIcon);
                    v(this.f22766b, this.f22767c);
                    l(this.f22766b, this.f22767c);
                    m(this.f22766b, this.f22767c, true);
                    if (com.cloud.sdk.commonutil.util.h.e() != 2) {
                        viewGroup2 = viewGroup;
                        viewGroup2.addView(this.f22767c, -1, -2);
                    } else if (z12) {
                        viewGroup2 = viewGroup;
                        viewGroup2.addView(this.f22767c, com.cloud.sdk.commonutil.util.h.a(300.0f), com.cloud.sdk.commonutil.util.h.a(200.0f));
                    } else {
                        viewGroup2 = viewGroup;
                        viewGroup2.addView(this.f22767c, com.cloud.sdk.commonutil.util.h.a(360.0f), com.cloud.sdk.commonutil.util.h.a(54.0f));
                    }
                    if (viewGroup.getBackground() != null) {
                        i11 = 0;
                        viewGroup.getBackground().setAlpha(0);
                    } else {
                        i11 = 0;
                    }
                    viewGroup2.setVisibility(i11);
                    e4.b().d(str, "ad banner show...");
                    f(viewGroup2, storeMarkView);
                    break;
                }
                break;
            case "B20301":
            case "B20302":
            case "B20303":
                View viewInflate = LayoutInflater.from(viewGroup.getContext()).inflate(R$layout.banner_style_203_newstyle_layout, viewGroup, false);
                this.f22767c = viewInflate;
                viewInflate.findViewById(R$id.clRoot).setOnTouchListener(new i(this, aVar));
                this.f22767c.findViewById(R$id.clRoot).setOnClickListener(new h(this, aVar));
                this.f22767c.findViewById(R$id.tvBtn).setOnClickListener(new h(this, aVar));
                z10 = false;
                z11 = false;
                this.f22766b.setBannerStyle(iG);
                com.cloud.hisavana.sdk.common.tranmeasure.e.c().e(this.f22766b, this.f22767c, this.f22781q);
                AthenaTracker.A(this.f22766b);
                view = this.f22767c;
                if (view == null) {
                    p3Var = this.f22765a;
                    if (p3Var != null) {
                        p3Var.J(TaErrorCode.ERROR_SHOW_RENDERVIEW_NULL);
                    }
                    break;
                } else {
                    textView = (TextView) view.findViewById(R$id.tvDescription);
                    rVar = com.cloud.hisavana.sdk.common.util.r.f22193a;
                    strK = rVar.k(this.f22766b);
                    materialStyle = this.f22766b.getMaterialStyle();
                    materialStyle.hashCode();
                    switch (materialStyle) {
                        case 1937180532:
                            if (!materialStyle.equals("B20301")) {
                            }
                            break;
                        case 1937180533:
                            if (!materialStyle.equals("B20302")) {
                            }
                            break;
                        case 1937180534:
                            if (!materialStyle.equals("B20303")) {
                            }
                            break;
                        default:
                            break;
                    }
                    /*  JADX ERROR: Method code generation error
                        java.lang.NullPointerException: Switch insn not found in header
                        	at java.base/java.util.Objects.requireNonNull(Unknown Source)
                        	at jadx.core.codegen.RegionGen.makeSwitch(RegionGen.java:246)
                        	at jadx.core.dex.regions.SwitchRegion.generate(SwitchRegion.java:90)
                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                        	at jadx.core.dex.regions.Region.generate(Region.java:35)
                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                        	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                        	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:140)
                        	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                        	at jadx.core.dex.regions.Region.generate(Region.java:35)
                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                        	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                        	at jadx.core.codegen.RegionGen.makeSwitch(RegionGen.java:267)
                        	at jadx.core.dex.regions.SwitchRegion.generate(SwitchRegion.java:90)
                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                        	at jadx.core.dex.regions.Region.generate(Region.java:35)
                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                        	at jadx.core.dex.regions.Region.generate(Region.java:35)
                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                        	at jadx.core.dex.regions.Region.generate(Region.java:35)
                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                        	at jadx.core.dex.regions.Region.generate(Region.java:35)
                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                        	at jadx.core.dex.regions.Region.generate(Region.java:35)
                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                        	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:291)
                        	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:270)
                        	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:420)
                        	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:345)
                        	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$2(ClassGen.java:299)
                        	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(Unknown Source)
                        	at java.base/java.util.ArrayList.forEach(Unknown Source)
                        	at java.base/java.util.stream.SortedOps$RefSortingSink.end(Unknown Source)
                        	at java.base/java.util.stream.Sink$ChainedReference.end(Unknown Source)
                        	at java.base/java.util.stream.ReferencePipeline$7$1FlatMap.end(Unknown Source)
                        	at java.base/java.util.stream.AbstractPipeline.copyInto(Unknown Source)
                        	at java.base/java.util.stream.AbstractPipeline.wrapAndCopyInto(Unknown Source)
                        	at java.base/java.util.stream.ForEachOps$ForEachOp.evaluateSequential(Unknown Source)
                        	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.evaluateSequential(Unknown Source)
                        	at java.base/java.util.stream.AbstractPipeline.evaluate(Unknown Source)
                        	at java.base/java.util.stream.ReferencePipeline.forEach(Unknown Source)
                        	at jadx.core.codegen.ClassGen.addInnerClsAndMethods(ClassGen.java:295)
                        	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:284)
                        	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:268)
                        	at jadx.core.codegen.ClassGen.addClassCode(ClassGen.java:160)
                        	at jadx.core.codegen.ClassGen.makeClass(ClassGen.java:104)
                        	at jadx.core.codegen.CodeGen.wrapCodeGen(CodeGen.java:45)
                        	at jadx.core.codegen.CodeGen.generateJavaCode(CodeGen.java:34)
                        	at jadx.core.codegen.CodeGen.generate(CodeGen.java:22)
                        	at jadx.core.ProcessClass.process(ProcessClass.java:89)
                        	at jadx.core.ProcessClass.generateCode(ProcessClass.java:127)
                        	at jadx.core.dex.nodes.ClassNode.generateClassCode(ClassNode.java:405)
                        	at jadx.core.dex.nodes.ClassNode.decompile(ClassNode.java:393)
                        	at jadx.core.dex.nodes.ClassNode.getCode(ClassNode.java:343)
                        */
                    /*
                        Method dump skipped, instruction units count: 1302
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.cloud.hisavana.sdk.o.e(android.view.ViewGroup):void");
                }

                public void g(ViewGroup viewGroup, boolean z10, boolean z11, AdsDTO adsDTO) {
                    this.f22773i = z10;
                    this.f22774j = z11;
                    if (adsDTO != null) {
                        this.f22766b = adsDTO;
                        ConfigCodeSeatDTO configCodeSeatDTOF = this.f22765a.p() != null ? this.f22765a.p().f() : null;
                        if (NetStateManager.checkNetworkState(false) && configCodeSeatDTOF != null && configCodeSeatDTOF.isPriorityH5Ad().booleanValue() && com.cloud.hisavana.sdk.common.util.p0.f(configCodeSeatDTOF.getH5AdUrl())) {
                            y(viewGroup);
                            return;
                        }
                        if (!TextUtils.isEmpty(adsDTO.getAdm())) {
                            t(viewGroup);
                        } else if (adsDTO.isInteractiveAd()) {
                            A(viewGroup);
                        } else {
                            B(viewGroup);
                        }
                    }
                }

                void i(InteractiveWebView interactiveWebView, ViewGroup viewGroup) {
                    boolean z10 = true;
                    AdsDTO adsDTO = this.f22766b;
                    if (adsDTO == null || viewGroup == null || interactiveWebView == null) {
                        TaErrorCode taErrorCode = TaErrorCode.ERROR_SHOW_INTERACTIVE_WEBVIEW_ERROR;
                        if (adsDTO == null) {
                            taErrorCode = TaErrorCode.ERROR_SHOW_ADBEAN_NULL;
                        } else if (viewGroup == null) {
                            taErrorCode = TaErrorCode.ERROR_SHOW_VIEWGROUP_NULL;
                        }
                        p3 p3Var = this.f22765a;
                        if (p3Var != null) {
                            p3Var.J(taErrorCode);
                            return;
                        }
                        return;
                    }
                    viewGroup.removeAllViews();
                    ((RelativeLayout) viewGroup).setGravity(17);
                    if (adsDTO.getNativeObject() == null || adsDTO.getMaterialStyle() == null) {
                        e4.b().d("BannerGemini", "TranBanner --> null == mAdBean.nativeBean || null == mAdBean.materialStyle");
                        p3 p3Var2 = this.f22765a;
                        if (p3Var2 != null) {
                            p3Var2.J(TaErrorCode.ERROR_SHOW_NATIVEOBJ_NULL);
                            return;
                        }
                        return;
                    }
                    e4.b().d("BannerGemini", "*----> TranBanner --> MaterialStyle =" + adsDTO.getMaterialStyle());
                    String materialStyle = adsDTO.getMaterialStyle();
                    materialStyle.hashCode();
                    switch (materialStyle) {
                        case "B3201":
                            this.f22767c = LayoutInflater.from(viewGroup.getContext()).inflate(R$layout.banner_style_3201_layout, viewGroup, false);
                            break;
                        case "B20301":
                        case "B20302":
                        case "B20303":
                        case "B20304":
                            this.f22767c = LayoutInflater.from(viewGroup.getContext()).inflate(R$layout.banner_style_20304_layout, viewGroup, false);
                            z10 = false;
                            break;
                        default:
                            e4.b().d("BannerGemini", "TranBanner --> 没有匹配到 materialStyle --> 配置错误 materialStyle=" + adsDTO.getMaterialStyle());
                            p3 p3Var3 = this.f22765a;
                            if (p3Var3 != null) {
                                p3Var3.J(TaErrorCode.ERROR_SHOW_MATERIAL_STYLE_NULL);
                                return;
                            }
                            return;
                    }
                    boolean z11 = z10;
                    com.cloud.hisavana.sdk.common.tranmeasure.e.c().e(adsDTO, this.f22767c, this.f22781q);
                    AthenaTracker.A(this.f22766b);
                    View view = this.f22767c;
                    if (view == null) {
                        p3 p3Var4 = this.f22765a;
                        if (p3Var4 != null) {
                            p3Var4.J(TaErrorCode.ERROR_SHOW_RENDERVIEW_NULL);
                            return;
                        }
                        return;
                    }
                    FrameLayout frameLayout = (FrameLayout) view.findViewById(R$id.ivBanner);
                    if (frameLayout != null) {
                        frameLayout.removeAllViews();
                        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
                        interactiveWebView.setLayoutParams(layoutParams);
                        List<String> scales = adsDTO.getScales();
                        if (scales != null && !scales.isEmpty()) {
                            String str = scales.get(0);
                            str.hashCode();
                            if (str.equals("3:2")) {
                                layoutParams.height = (i7.c.k() * 2) / 3;
                                layoutParams.width = i7.c.k();
                            } else if (str.equals("20:3")) {
                                layoutParams.height = (i7.c.k() * 3) / 20;
                                layoutParams.width = i7.c.k();
                            }
                        }
                        frameLayout.addView(interactiveWebView, layoutParams);
                        frameLayout.setOnTouchListener(new i(this, null));
                        interactiveWebView.setWebClientCallback(adsDTO);
                        interactiveWebView.setInteractiveListener(new a(adsDTO, interactiveWebView));
                        n(adsDTO, interactiveWebView);
                    }
                    o(adsDTO, z10, this.f22767c);
                    ImageView imageView = (ImageView) this.f22767c.findViewById(R$id.ivIcon);
                    if (imageView != null) {
                        imageView.setVisibility(8);
                    }
                    v(adsDTO, this.f22767c);
                    l(adsDTO, this.f22767c);
                    m(adsDTO, this.f22767c, false);
                    interactiveWebView.setVisibility(0);
                    if (com.cloud.sdk.commonutil.util.h.e() != 2) {
                        viewGroup.addView(this.f22767c, -1, -2);
                    } else if (z11) {
                        viewGroup.addView(this.f22767c, com.cloud.sdk.commonutil.util.h.a(300.0f), com.cloud.sdk.commonutil.util.h.a(200.0f));
                    } else {
                        viewGroup.addView(this.f22767c, com.cloud.sdk.commonutil.util.h.a(360.0f), com.cloud.sdk.commonutil.util.h.a(54.0f));
                    }
                    if (viewGroup.getBackground() != null) {
                        viewGroup.getBackground().setAlpha(0);
                    }
                    viewGroup.setVisibility(0);
                    e4.b().d("BannerGemini", "ad banner attachInteractiveAd show...");
                }

                void j(TadmWebView tadmWebView, ViewGroup viewGroup) {
                    AdsDTO adsDTO;
                    if (viewGroup == null || tadmWebView == null || (adsDTO = this.f22766b) == null || TextUtils.isEmpty(adsDTO.getAdm())) {
                        return;
                    }
                    AthenaTracker.A(this.f22766b);
                    if (this.f22782r == null) {
                        this.f22782r = new r();
                    }
                    this.f22782r.d(tadmWebView, this.f22766b, new b(tadmWebView));
                    k(tadmWebView, viewGroup, false, false, false);
                    tadmWebView.loadDataWithBaseURL(null, this.f22766b.getAdm() + TadmWebView.JS_TEXT, "text/html", "utf-8", null);
                }

                void u(TadmWebView tadmWebView, ViewGroup viewGroup) {
                    this.f22785u = true;
                    if (viewGroup == null || tadmWebView == null || this.f22766b == null) {
                        p3 p3Var = this.f22765a;
                        if (p3Var != null) {
                            p3Var.J(TaErrorCode.ERROR_SHOW_ADBEAN_NULL);
                            return;
                        }
                        return;
                    }
                    ConfigCodeSeatDTO configCodeSeatDTOF = this.f22765a.p() != null ? this.f22765a.p().f() : null;
                    if (configCodeSeatDTOF == null || TextUtils.isEmpty(configCodeSeatDTOF.getH5AdUrl())) {
                        e4.b().e("BannerGemini", "getConfig().getH5AdUrl() == null");
                        p3 p3Var2 = this.f22765a;
                        if (p3Var2 != null) {
                            p3Var2.J(TaErrorCode.ERROR_SHOW_H5_ADURL_NULL);
                            return;
                        }
                        return;
                    }
                    AthenaTracker.A(this.f22766b);
                    AthenaTracker.z(0, null, null, this.f22766b);
                    tadmWebView.getSettings().setCacheMode(-1);
                    tadmWebView.getSettings().setDomStorageEnabled(true);
                    CookieManager.getInstance().setAcceptThirdPartyCookies(tadmWebView, true);
                    tadmWebView.getSettings().setMediaPlaybackRequiresUserGesture(false);
                    AgentPageJsBridge agentPageJsBridge = new AgentPageJsBridge();
                    agentPageJsBridge.setWebview(tadmWebView);
                    AgentPageCurrentAd agentPageCurrentAd = new AgentPageCurrentAd(configCodeSeatDTOF.getH5AdUrl(), this.f22766b.getCodeSeatId(), this.f22766b.getTriggerId());
                    agentPageJsBridge.setCurrentAdInfo(agentPageCurrentAd);
                    agentPageJsBridge.setAdActionListener(new c(viewGroup));
                    agentPageJsBridge.setCurrentAd(this.f22766b);
                    tadmWebView.addJavascriptInterface(agentPageJsBridge, AgentPageJsBridge.INTERFACE_NAME);
                    AgentPageWebViewClient agentPageWebViewClient = new AgentPageWebViewClient(new d());
                    agentPageWebViewClient.setMainPageUrl(configCodeSeatDTOF.getH5AdUrl());
                    agentPageWebViewClient.setSource(this.f22766b.getSource());
                    tadmWebView.setWebViewClient(agentPageWebViewClient);
                    this.f22773i = true;
                    k(tadmWebView, viewGroup, true, true, true);
                    if (tadmWebView.getLayoutParams() != null) {
                        if (tadmWebView.getLayoutParams().width > 0 && tadmWebView.getLayoutParams().height > 0) {
                            agentPageCurrentAd.setWidth(tadmWebView.getLayoutParams().width);
                            agentPageCurrentAd.setHeight(tadmWebView.getLayoutParams().height);
                        } else if (TextUtils.equals(this.f22766b.getMaterialStyle(), "B3201")) {
                            agentPageCurrentAd.setHeight(com.cloud.sdk.commonutil.util.h.a(200.0f));
                            agentPageCurrentAd.setWidth(com.cloud.sdk.commonutil.util.h.a(300.0f));
                        } else {
                            agentPageCurrentAd.setHeight(com.cloud.sdk.commonutil.util.h.a(54.0f));
                            agentPageCurrentAd.setWidth(com.cloud.sdk.commonutil.util.h.a(360.0f));
                        }
                    }
                    tadmWebView.loadUrl(configCodeSeatDTOF.getH5AdUrl());
                }
            }
