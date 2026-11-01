package com.mbridge.msdk.video.module;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.drawable.GradientDrawable;
import android.os.Handler;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.NotificationCompat;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.hisavana.common.tracking.TrackingKey;
import com.iab.omid.library.mmadbridge.adsession.FriendlyObstructionPurpose;
import com.iab.omid.library.mmadbridge.adsession.media.InteractionType;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.dycreator.baseview.cusview.MBridgeBaitClickView;
import com.mbridge.msdk.dycreator.baseview.cusview.MBridgeSegmentsProgressBar;
import com.mbridge.msdk.dycreator.baseview.cusview.SoundImageView;
import com.mbridge.msdk.dycreator.baseview.rewardpopview.AcquireRewardPopViewBehaviourListener;
import com.mbridge.msdk.dycreator.baseview.rewardpopview.AcquireRewardPopViewParameters;
import com.mbridge.msdk.dycreator.baseview.rewardpopview.MBAcquireRewardPopView;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.g0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.q0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.foundation.tools.y;
import com.mbridge.msdk.foundation.tools.y0;
import com.mbridge.msdk.foundation.tools.z0;
import com.mbridge.msdk.mbsignalcommon.commonwebview.CollapsibleWebView;
import com.mbridge.msdk.mbsignalcommon.commonwebview.CommonWebView;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import com.mbridge.msdk.playercommon.DefaultVideoPlayerStatusListener;
import com.mbridge.msdk.playercommon.PlayerView;
import com.mbridge.msdk.widget.FeedBackButton;
import com.mbridge.msdk.widget.dialog.MBAlertDialog;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class MBridgeVideoView extends MBridgeBaseView implements com.mbridge.msdk.video.signal.j {
    private static int R0;
    private static int S0;
    private static int T0;
    private static int U0;
    private static int V0;
    private static boolean W0;
    private static long X0;
    private boolean A;
    private int A0;
    private FrameLayout B;
    private int B0;
    private MBridgeClickCTAView C;
    private int C0;
    private com.mbridge.msdk.video.signal.factory.b D;
    private AcquireRewardPopViewParameters D0;
    private int E;
    private MBAcquireRewardPopView E0;
    private int F;
    private boolean F0;
    private RelativeLayout G;
    private RelativeLayout G0;
    private boolean H;
    private CollapsibleWebView H0;
    private boolean I;
    private RelativeLayout I0;
    private boolean J;
    private boolean J0;
    private String K;
    private int K0;
    private int L;
    private boolean L0;
    private int M;
    private boolean M0;
    private int N;
    private w N0;
    private MBAlertDialog O;
    private boolean O0;
    private com.mbridge.msdk.widget.dialog.b P;
    private Runnable P0;
    private String Q;
    private final Runnable Q0;
    private double R;
    private double S;
    private boolean T;
    private boolean U;
    private boolean V;
    private boolean W;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    private boolean f39357a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    private boolean f39358b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    private boolean f39359c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    private boolean f39360d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    private boolean f39361e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    private int f39362f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    private boolean f39363g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    private int f39364h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    private com.iab.omid.library.mmadbridge.adsession.b f39365i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    private com.iab.omid.library.mmadbridge.adsession.media.a f39366j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    private String f39367k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    private int f39368l0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private TextView f39369m;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    private int f39370m0;
    public List<CampaignEx> mCampOrderViewData;
    public int mCampaignSize;
    public int mCurrPlayNum;
    public int mCurrentPlayProgressTime;
    public int mMuteSwitch;
    public PlayerView mPlayerView;
    public SoundImageView mSoundImageView;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private View f39371n;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    private int f39372n0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private RelativeLayout f39373o;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    private boolean f39374o0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private ImageView f39375p;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    private boolean f39376p0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private ProgressBar f39377q;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    private boolean f39378q0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private FeedBackButton f39379r;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    private boolean f39380r0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private ImageView f39381s;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    private boolean f39382s0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private MBridgeSegmentsProgressBar f39383t;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    private boolean f39384t0;
    public TextView tvFlag;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private com.mbridge.msdk.video.module.listener.a f39385u;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    private boolean f39386u0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private u f39387v;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    private boolean f39388v0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f39389w;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    private boolean f39390w0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private com.mbridge.msdk.video.dynview.listener.a f39391x;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    private AlphaAnimation f39392x0;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private com.mbridge.msdk.video.dynview.listener.f f39393y;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    private MBridgeBaitClickView f39394y0;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int f39395z;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    private int f39396z0;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MBridgeVideoView.this.f39360d0 = true;
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f39398a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f39399b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f39400c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f39401d;

        b(int i11, int i12, int i13, int i14) {
            this.f39398a = i11;
            this.f39399b = i12;
            this.f39400c = i13;
            this.f39401d = i14;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (MBridgeVideoView.this.f39373o == null) {
                return;
            }
            MBridgeVideoView.this.f39373o.setVisibility(0);
            CampaignEx campaignEx = MBridgeVideoView.this.f39226b;
            if (campaignEx == null || campaignEx.getAdSpaceT() == 2) {
                return;
            }
            MBridgeVideoView.this.f39373o.setPadding(this.f39398a, this.f39399b, this.f39400c, this.f39401d);
            MBridgeVideoView.this.f39373o.startAnimation(MBridgeVideoView.this.f39392x0);
        }
    }

    class c implements com.mbridge.msdk.foundation.same.image.c {

        class a implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ Bitmap f39404a;

            /* JADX INFO: renamed from: com.mbridge.msdk.video.module.MBridgeVideoView$c$a$a, reason: collision with other inner class name */
            class RunnableC0568a implements Runnable {

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                final /* synthetic */ Bitmap f39406a;

                RunnableC0568a(Bitmap bitmap) {
                    this.f39406a = bitmap;
                }

                @Override // java.lang.Runnable
                public void run() {
                    MBridgeVideoView.this.f39375p.setVisibility(0);
                    MBridgeVideoView.this.f39375p.setImageBitmap(this.f39406a);
                }
            }

            a(Bitmap bitmap) {
                this.f39404a = bitmap;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    MBridgeVideoView.this.f39375p.post(new RunnableC0568a(y.a(this.f39404a, 10)));
                } catch (Exception e11) {
                    o0.b(MBridgeBaseView.TAG, e11.getMessage());
                }
            }
        }

        c() {
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onFailedLoad(String str, String str2) {
            o0.b(MBridgeBaseView.TAG, str);
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onSuccessLoad(Bitmap bitmap, String str) {
            if (bitmap != null) {
                try {
                    if (bitmap.isRecycled() || MBridgeVideoView.this.f39375p == null) {
                        return;
                    }
                    com.mbridge.msdk.foundation.same.threadpool.a.a().execute(new a(bitmap));
                } catch (Throwable th2) {
                    o0.b(MBridgeBaseView.TAG, th2.getMessage());
                }
            }
        }
    }

    class d implements CollapsibleWebView.e {
        d() {
        }

        private void a(String str, String str2) {
            if (MBridgeVideoView.this.J0) {
                return;
            }
            MBridgeVideoView.this.J0 = true;
            if (str == null) {
                str = "";
            }
            if (MBridgeVideoView.this.G0 != null && MBridgeVideoView.this.G0.getVisibility() == 0) {
                MBridgeVideoView.this.G0.setVisibility(8);
            }
            com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
            eVar.a("result", 2);
            eVar.a("url", str);
            eVar.a("reason", str2);
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("m_webview_render", MBridgeVideoView.this.f39226b, eVar);
        }

        @Override // com.mbridge.msdk.mbsignalcommon.commonwebview.CollapsibleWebView.e
        public void a(View view, String str) {
            JSONObject jSONObject;
            if (MBridgeVideoView.this.J0) {
                return;
            }
            MBridgeVideoView.this.J0 = true;
            if (MBridgeVideoView.this.G0 != null && MBridgeVideoView.this.G0.getVisibility() != 0) {
                MBridgeVideoView.this.G0.setVisibility(0);
            }
            Context context = MBridgeVideoView.this.getContext();
            MBridgeVideoView mBridgeVideoView = MBridgeVideoView.this;
            com.mbridge.msdk.click.a.a(context, mBridgeVideoView.f39226b, mBridgeVideoView.getUnitId(), MBridgeVideoView.this.f39226b.getNoticeUrl(), true, false, com.mbridge.msdk.click.retry.a.f34420o);
            com.mbridge.msdk.video.module.report.b.a(com.mbridge.msdk.foundation.controller.c.m().d().getApplicationContext(), MBridgeVideoView.this.f39226b);
            com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
            eVar.a("result", 1);
            if (MBridgeVideoView.this.f39385u != null) {
                try {
                    jSONObject = new JSONObject();
                    try {
                        jSONObject.put(com.mbridge.msdk.foundation.same.a.f35338j, MBridgeVideoView.this.a(0));
                    } catch (JSONException e11) {
                        e = e11;
                        e.printStackTrace();
                    }
                } catch (JSONException e12) {
                    e = e12;
                    jSONObject = null;
                }
                MBridgeVideoView.this.f39385u.a(Sdk$SDKError.Reason.MRAID_JS_WRITE_FAILED_VALUE, jSONObject);
                MBridgeVideoView.this.f39226b.setClickType(1);
                MBridgeVideoView.this.f39226b.setClickTempSource(1);
                MBridgeVideoView.this.f39226b.setTriggerClickSource(2);
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000149", MBridgeVideoView.this.f39226b);
                eVar.a(NativeComponentConstants.KEY_COMPONENT_TYPE, 9);
                ArrayList arrayList = new ArrayList();
                arrayList.add("web_view");
                eVar.a("click_path", arrayList.toString());
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000150", MBridgeVideoView.this.f39226b, eVar);
            }
            eVar.a("url", str);
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("m_webview_render", MBridgeVideoView.this.f39226b, eVar);
        }

        @Override // com.mbridge.msdk.mbsignalcommon.commonwebview.CollapsibleWebView.e
        public void a(View view, Map<String, String> map) {
        }

        @Override // com.mbridge.msdk.mbsignalcommon.commonwebview.CollapsibleWebView.e
        public void b(View view, String str) {
            a(str, "timeout");
        }

        @Override // com.mbridge.msdk.mbsignalcommon.commonwebview.CollapsibleWebView.e
        public void b(View view, Map<String, String> map) {
            String str;
            String str2 = "";
            if (map != null) {
                String str3 = map.get("url");
                str2 = str3 != null ? str3 : "";
                str = map.get(TrackingKey.DESCRIPTION);
            } else {
                str = "";
            }
            a(str2, str);
        }
    }

    class e extends WebViewClient {
        e() {
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        }

        @Override // android.webkit.WebViewClient
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            o0.b(MBridgeBaseView.TAG, "WebView called onRenderProcessGone");
            if (webView != null) {
                try {
                    ViewGroup viewGroup = (ViewGroup) webView.getParent();
                    if (viewGroup != null) {
                        viewGroup.removeView(webView);
                    }
                    if (webView instanceof WindVaneWebView) {
                        ((WindVaneWebView) webView).release();
                    } else {
                        webView.destroy();
                    }
                } catch (Throwable th2) {
                    o0.b(MBridgeBaseView.TAG, th2.getMessage());
                }
            }
            return true;
        }
    }

    class f implements CommonWebView.h {
        f() {
        }

        @Override // com.mbridge.msdk.mbsignalcommon.commonwebview.CommonWebView.h
        public void a() {
            if (MBridgeVideoView.this.I0 != null) {
                MBridgeVideoView.this.I0.setVisibility(0);
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a(NotificationCompat.CATEGORY_STATUS, 1);
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("m_webview_zoom", MBridgeVideoView.this.f39226b, eVar);
            }
            if (MBridgeVideoView.this.H0 != null) {
                MBridgeVideoView.this.H0.setCustomizedToolBarMarginWidthPixel(0, 0, 0, 0);
            }
            MBridgeVideoView.this.p();
        }
    }

    class g implements CommonWebView.h {
        g() {
        }

        @Override // com.mbridge.msdk.mbsignalcommon.commonwebview.CommonWebView.h
        public void a() {
            if (MBridgeVideoView.this.I0 != null) {
                MBridgeVideoView.this.I0.setVisibility(8);
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a(NotificationCompat.CATEGORY_STATUS, 2);
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("m_webview_zoom", MBridgeVideoView.this.f39226b, eVar);
            }
            if (MBridgeVideoView.this.H0 != null) {
                MBridgeVideoView.this.H0.setCustomizedToolBarMarginWidthPixel(0, MBridgeVideoView.this.K0, 0, 0);
            }
            MBridgeVideoView.this.o();
        }
    }

    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (MBridgeVideoView.this.I0 != null) {
                MBridgeVideoView.this.I0.setVisibility(0);
            }
            if (MBridgeVideoView.this.G0 != null) {
                MBridgeVideoView.this.G0.setVisibility(8);
            }
            if (MBridgeVideoView.this.f39382s0) {
                return;
            }
            MBridgeVideoView.this.p();
        }
    }

    class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MBridgeVideoView mBridgeVideoView = MBridgeVideoView.this;
            if (mBridgeVideoView.notifyListener != null) {
                mBridgeVideoView.f39226b.setTriggerClickSource(2);
                MBridgeVideoView.this.b("bait_click_clicked");
            }
        }
    }

    class j implements AcquireRewardPopViewBehaviourListener {
        j() {
        }

        @Override // com.mbridge.msdk.dycreator.baseview.rewardpopview.AcquireRewardPopViewBehaviourListener
        public void onOutOfContentClicked(float f11, float f12) {
            if (MBridgeVideoView.this.f39385u != null) {
                MBridgeVideoView.this.f39385u.a(105, "");
            }
        }

        @Override // com.mbridge.msdk.dycreator.baseview.rewardpopview.AcquireRewardPopViewBehaviourListener
        public void onReceivedFail(String str) {
            MBridgeVideoView.this.J = false;
            if (com.mbridge.msdk.util.b.b()) {
                MBridgeVideoView.this.setCover(false);
            }
            MBridgeVideoView.this.p();
            MBridgeVideoView mBridgeVideoView = MBridgeVideoView.this;
            com.mbridge.msdk.foundation.same.report.j.a(mBridgeVideoView.f39226b, mBridgeVideoView.Q, MBridgeVideoView.this.f39396z0, 2, str);
        }

        @Override // com.mbridge.msdk.dycreator.baseview.rewardpopview.AcquireRewardPopViewBehaviourListener
        public void onReceivedSuccess(int i11) {
            MBridgeVideoView.this.J = false;
            if (com.mbridge.msdk.util.b.b()) {
                MBridgeVideoView.this.setCover(false);
            }
            int videoCompleteTime = MBridgeVideoView.this.getVideoCompleteTime() - i11;
            MBridgeVideoView.this.f39226b.setVideoCompleteTime(videoCompleteTime);
            MBridgeVideoView.this.p();
            com.mbridge.msdk.video.module.listener.a aVar = MBridgeVideoView.this.notifyListener;
            if (aVar != null) {
                aVar.a(130, Integer.valueOf(videoCompleteTime));
            }
            MBridgeVideoView mBridgeVideoView = MBridgeVideoView.this;
            com.mbridge.msdk.foundation.same.report.j.a(mBridgeVideoView.f39226b, mBridgeVideoView.Q, MBridgeVideoView.this.f39396z0, 1, "");
        }
    }

    class k implements Runnable {
        k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (MBridgeVideoView.this.B != null) {
                MBridgeVideoView.this.B.setVisibility(8);
            }
        }
    }

    class l implements com.mbridge.msdk.video.dynview.listener.h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ViewGroup f39416a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.mbridge.msdk.video.dynview.c f39417b;

        class a extends com.mbridge.msdk.widget.a {
            a() {
            }

            @Override // com.mbridge.msdk.widget.a
            protected void a(View view) {
                if (view instanceof TextView) {
                    MBridgeVideoView.this.f39226b.setTriggerClickSource(1);
                } else {
                    MBridgeVideoView.this.f39226b.setTriggerClickSource(2);
                }
                if (MBridgeVideoView.this.f39226b.getRewardTemplateMode() == null || MBridgeVideoView.this.f39226b.getRewardTemplateMode().f() != 902) {
                    MBridgeVideoView.this.b("video_play_click");
                } else {
                    MBridgeVideoView.this.j();
                }
            }
        }

        l(ViewGroup viewGroup, com.mbridge.msdk.video.dynview.c cVar) {
            this.f39416a = viewGroup;
            this.f39417b = cVar;
        }

        @Override // com.mbridge.msdk.video.dynview.listener.h
        public void a(com.mbridge.msdk.video.dynview.a aVar) {
            if (aVar != null) {
                if (this.f39416a != null && aVar.b() != null) {
                    aVar.b().setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
                    this.f39416a.addView(aVar.b());
                }
                if (aVar.a() != null) {
                    Iterator<View> it = aVar.a().iterator();
                    while (it.hasNext()) {
                        it.next().setOnClickListener(new a());
                    }
                }
                MBridgeVideoView.this.f39390w0 = aVar.c();
                MBridgeVideoView.this.n();
                boolean unused = MBridgeVideoView.W0 = false;
                MBridgeVideoView mBridgeVideoView = MBridgeVideoView.this;
                CampaignEx campaignEx = mBridgeVideoView.f39226b;
                if (campaignEx != null) {
                    campaignEx.setTemplateRenderSucc(mBridgeVideoView.f39390w0);
                }
                MBridgeVideoView.this.E = this.f39417b.j();
                MBridgeVideoView.this.F = this.f39417b.e();
            }
        }

        @Override // com.mbridge.msdk.video.dynview.listener.h
        public void a(com.mbridge.msdk.video.dynview.error.a aVar) {
            o0.b(MBridgeBaseView.TAG, "errorMsg：" + aVar.c());
        }
    }

    class m implements Runnable {
        m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (MBridgeVideoView.this.A0 <= 0) {
                MBridgeVideoView.this.showRewardPopView();
                MBridgeVideoView mBridgeVideoView = MBridgeVideoView.this;
                mBridgeVideoView.removeCallbacks(mBridgeVideoView.Q0);
            } else {
                MBridgeVideoView.W(MBridgeVideoView.this);
                MBridgeVideoView mBridgeVideoView2 = MBridgeVideoView.this;
                mBridgeVideoView2.postDelayed(mBridgeVideoView2.Q0, 1000L);
            }
        }
    }

    class n implements PlayerView.OnPlayerViewVisibleListener {
        n() {
        }

        @Override // com.mbridge.msdk.playercommon.PlayerView.OnPlayerViewVisibleListener
        public void playerViewVisibleCallback() {
            if (MBridgeVideoView.this.f39389w) {
                return;
            }
            MBridgeVideoView.this.f39389w = true;
            MBridgeVideoView mBridgeVideoView = MBridgeVideoView.this;
            if (mBridgeVideoView.notifyListener == null || mBridgeVideoView.f39387v == null) {
                return;
            }
            MBridgeVideoView mBridgeVideoView2 = MBridgeVideoView.this;
            mBridgeVideoView2.notifyListener.a(20, mBridgeVideoView2.f39387v);
        }
    }

    class o implements View.OnClickListener {
        o() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (MBridgeVideoView.this.notifyListener != null) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put(com.mbridge.msdk.foundation.same.a.f35338j, MBridgeVideoView.this.mPlayerView.buildH5JsonObject(0));
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
                MBridgeVideoView.this.f39226b.setClickTempSource(1);
                MBridgeVideoView.this.f39226b.setTriggerClickSource(2);
                MBridgeVideoView.this.notifyListener.a(1, jSONObject);
            }
            if (MBridgeVideoView.this.f39366j0 != null) {
                try {
                    MBridgeVideoView.this.f39366j0.a(InteractionType.CLICK);
                    o0.a("omsdk", "play video view:  click");
                } catch (Exception e12) {
                    o0.b("omsdk", e12.getMessage());
                }
            }
            MBridgeVideoView.this.setCTALayoutVisibleOrGone();
        }
    }

    class p implements View.OnClickListener {
        p() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MBridgeVideoView.this.f39226b.setClickTempSource(1);
            MBridgeVideoView.this.f39226b.setTriggerClickSource(2);
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("m_player_click", MBridgeVideoView.this.f39226b);
            if (MBridgeVideoView.this.notifyListener != null) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put(com.mbridge.msdk.foundation.same.a.f35338j, MBridgeVideoView.this.mPlayerView.buildH5JsonObject(0));
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
                MBridgeVideoView.this.notifyListener.a(1, jSONObject);
            }
        }
    }

    class q implements View.OnClickListener {
        q() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
            Integer num = 2;
            PlayerView playerView = MBridgeVideoView.this.mPlayerView;
            if (playerView != null) {
                eVar.a("mute_state", Boolean.valueOf(playerView.isSilent()));
                if (MBridgeVideoView.this.mPlayerView.isSilent()) {
                    num = 1;
                }
            }
            if (num.intValue() == 1) {
                MBridgeVideoView.this.mMuteSwitch = 2;
            } else {
                MBridgeVideoView.this.mMuteSwitch = 1;
            }
            com.mbridge.msdk.video.module.listener.a aVar = MBridgeVideoView.this.notifyListener;
            if (aVar != null) {
                aVar.a(5, num);
            }
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("m_sound_click", MBridgeVideoView.this.f39226b, eVar);
        }
    }

    class r implements View.OnClickListener {
        r() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a(NativeComponentConstants.KEY_COMPONENT_TYPE, 1);
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000152", eVar);
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000148", MBridgeVideoView.this.f39226b, eVar);
            } catch (Exception e11) {
                if (MBridgeConstans.DEBUG) {
                    e11.printStackTrace();
                }
            }
            if (!MBridgeVideoView.this.f39363g0) {
                CampaignEx campaignEx = MBridgeVideoView.this.f39226b;
                if (campaignEx == null || campaignEx.getRewardTemplateMode() == null || MBridgeVideoView.this.f39226b.getRewardTemplateMode().f() != 5002010 || !MBridgeVideoView.this.f39382s0) {
                    MBridgeVideoView.this.y();
                    return;
                }
                MBridgeVideoView mBridgeVideoView = MBridgeVideoView.this;
                if (mBridgeVideoView.notifyListener != null) {
                    mBridgeVideoView.L0 = true;
                    MBridgeVideoView mBridgeVideoView2 = MBridgeVideoView.this;
                    mBridgeVideoView2.notifyListener.a(2, mBridgeVideoView2.c(mBridgeVideoView2.f39382s0));
                    return;
                }
                return;
            }
            MBridgeVideoView.this.f39388v0 = true;
            CampaignEx campaignEx2 = MBridgeVideoView.this.f39226b;
            if (campaignEx2 != null && campaignEx2.getRewardTemplateMode() != null && MBridgeVideoView.this.f39226b.getRewardTemplateMode().f() == 5002010 && MBridgeVideoView.this.f39382s0) {
                MBridgeVideoView mBridgeVideoView3 = MBridgeVideoView.this;
                if (mBridgeVideoView3.notifyListener != null) {
                    mBridgeVideoView3.L0 = true;
                    MBridgeVideoView mBridgeVideoView4 = MBridgeVideoView.this;
                    mBridgeVideoView4.notifyListener.a(2, mBridgeVideoView4.c(mBridgeVideoView4.f39382s0));
                    return;
                }
                return;
            }
            if (MBridgeVideoView.this.f39380r0) {
                MBridgeVideoView.this.y();
                return;
            }
            com.mbridge.msdk.video.module.listener.a aVar = MBridgeVideoView.this.notifyListener;
            if (aVar != null) {
                aVar.a(Sdk$SDKError.Reason.INVALID_RI_ENDPOINT_VALUE, "");
            }
        }
    }

    class s implements com.mbridge.msdk.widget.dialog.b {
        s() {
        }

        @Override // com.mbridge.msdk.widget.dialog.b
        public void a() {
            MBridgeVideoView.this.I = false;
            MBridgeVideoView.this.f39378q0 = true;
            MBridgeVideoView mBridgeVideoView = MBridgeVideoView.this;
            mBridgeVideoView.setShowingAlertViewCover(mBridgeVideoView.I);
            MBridgeVideoView mBridgeVideoView2 = MBridgeVideoView.this;
            com.mbridge.msdk.foundation.same.report.j.a(mBridgeVideoView2.f39225a, mBridgeVideoView2.f39226b, mBridgeVideoView2.f39367k0, MBridgeVideoView.this.Q, 1, 1, 1);
            if (MBridgeVideoView.this.f39363g0 && MBridgeVideoView.this.f39368l0 == com.mbridge.msdk.foundation.same.a.H) {
                MBridgeVideoView mBridgeVideoView3 = MBridgeVideoView.this;
                if (mBridgeVideoView3.notifyListener != null) {
                    mBridgeVideoView3.L0 = true;
                    MBridgeVideoView mBridgeVideoView4 = MBridgeVideoView.this;
                    mBridgeVideoView4.notifyListener.a(2, mBridgeVideoView4.c(mBridgeVideoView4.f39382s0));
                    return;
                }
                return;
            }
            if (MBridgeVideoView.this.f39363g0 && MBridgeVideoView.this.f39368l0 == com.mbridge.msdk.foundation.same.a.I) {
                MBridgeVideoView.this.p();
                return;
            }
            MBridgeVideoView mBridgeVideoView5 = MBridgeVideoView.this;
            if (mBridgeVideoView5.notifyListener != null) {
                mBridgeVideoView5.L0 = true;
                MBridgeVideoView.this.notifyListener.a(2, "");
            }
        }

        @Override // com.mbridge.msdk.widget.dialog.b
        public void b() {
            MBridgeVideoView.this.I = false;
            MBridgeVideoView mBridgeVideoView = MBridgeVideoView.this;
            mBridgeVideoView.setShowingAlertViewCover(mBridgeVideoView.I);
            if (MBridgeVideoView.this.f39363g0 && (MBridgeVideoView.this.f39368l0 == com.mbridge.msdk.foundation.same.a.I || MBridgeVideoView.this.f39368l0 == com.mbridge.msdk.foundation.same.a.H)) {
                MBridgeVideoView.this.f39376p0 = true;
                com.mbridge.msdk.video.module.listener.a aVar = MBridgeVideoView.this.notifyListener;
                if (aVar != null) {
                    aVar.a(Sdk$SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE, "");
                }
                MBridgeVideoView.this.f39386u0 = true;
                MBridgeVideoView.this.gonePlayingCloseView();
            }
            MBridgeVideoView.this.p();
            MBridgeVideoView mBridgeVideoView2 = MBridgeVideoView.this;
            com.mbridge.msdk.foundation.same.report.j.a(mBridgeVideoView2.f39225a, mBridgeVideoView2.f39226b, mBridgeVideoView2.f39367k0, MBridgeVideoView.this.Q, 1, 0, 1);
        }

        @Override // com.mbridge.msdk.widget.dialog.b
        public void c() {
        }
    }

    class t implements com.mbridge.msdk.foundation.feedback.a {
        t() {
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a() {
            MBridgeVideoView.this.o();
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a(String str) {
            MBridgeVideoView.this.p();
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void close() {
            MBridgeVideoView.this.p();
        }
    }

    public interface u {
        void a();
    }

    public static class v {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f39428a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f39429b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f39430c;

        public String toString() {
            return "ProgressData{curPlayPosition=" + this.f39428a + ", allDuration=" + this.f39429b + '}';
        }
    }

    private static final class w extends DefaultVideoPlayerStatusListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private MBridgeVideoView f39431a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f39432b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f39433c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f39434d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f39435e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private com.iab.omid.library.mmadbridge.adsession.media.a f39436f;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private boolean f39441k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private String f39442l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private CampaignEx f39443m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private int f39444n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private int f39445o;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private v f39437g = new v();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private boolean f39438h = false;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private boolean f39439i = false;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private boolean f39440j = false;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private boolean f39446p = false;

        public w(MBridgeVideoView mBridgeVideoView) {
            this.f39431a = mBridgeVideoView;
            if (mBridgeVideoView != null) {
                this.f39442l = mBridgeVideoView.getUnitId();
                this.f39443m = mBridgeVideoView.getCampaign();
            }
        }

        private void a(int i11) {
            if (i11 <= 0) {
                this.f39431a.f39369m.setBackgroundResource(g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_shape_progress", "drawable"));
                return;
            }
            this.f39431a.f39369m.setBackgroundResource(g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_video_time_count_num_bg", "drawable"));
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 30.0f));
            int iA = t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 5.0f);
            layoutParams.addRule(1, g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_native_endcard_feed_btn", "id"));
            layoutParams.setMargins(iA, 0, 0, 0);
            this.f39431a.f39369m.setPadding(iA, 0, iA, 0);
            this.f39431a.f39369m.setLayoutParams(layoutParams);
        }

        private void a(int i11, int i12) {
            int i13;
            String str;
            int i14 = this.f39444n;
            if (i14 == 100 || this.f39446p || i14 == 0) {
                return;
            }
            if (this.f39445o > i14) {
                this.f39445o = i14 / 2;
            }
            int i15 = this.f39445o;
            if (i15 < 0 || i11 < (i13 = (i12 * i15) / 100)) {
                return;
            }
            if (this.f39443m.getAdType() == 94 || this.f39443m.getAdType() == 287) {
                str = this.f39443m.getRequestId() + this.f39443m.getId() + this.f39443m.getVideoUrlEncode();
            } else {
                str = this.f39443m.getId() + this.f39443m.getVideoUrlEncode() + this.f39443m.getBidToken();
            }
            com.mbridge.msdk.videocommon.download.a aVarA = com.mbridge.msdk.videocommon.download.b.getInstance().a(this.f39442l, str);
            if (aVarA != null) {
                aVarA.v();
                this.f39446p = true;
                o0.b("DefaultVideoPlayerStatusListener", "CDRate is : " + i13 + " and start download !");
            }
        }

        private void a(int i11, int i12, int i13) {
            StringBuilder sb2;
            String str;
            String string;
            String str2;
            int i14 = 0;
            MBridgeVideoView mBridgeVideoView = this.f39431a;
            if (mBridgeVideoView == null) {
                return;
            }
            if (this.f39441k) {
                str2 = String.format("%s", Integer.valueOf(i12 - i13));
            } else {
                if (i11 > i12) {
                    i11 = i12;
                }
                int i15 = i11 <= 0 ? i12 - i13 : i11 - i13;
                if (i15 <= 0) {
                    string = i11 <= 0 ? "0" : (String) mBridgeVideoView.getContext().getResources().getText(g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_video_view_reward_time_complete", "string"));
                } else {
                    if (i11 <= 0) {
                        sb2 = new StringBuilder();
                        sb2.append(i15);
                        str = "";
                    } else {
                        sb2 = new StringBuilder();
                        sb2.append(i15);
                        str = (String) this.f39431a.getContext().getResources().getText(g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_video_view_reward_time_left", "string"));
                    }
                    sb2.append(str);
                    string = sb2.toString();
                    i14 = i15;
                }
                if (i14 < this.f39431a.C0 && this.f39431a.E0 != null && this.f39431a.J) {
                    this.f39431a.E0.onTimeLessThanReduce(i14);
                }
                str2 = string;
            }
            CampaignEx campaignEx = this.f39443m;
            if (campaignEx != null && campaignEx.getUseSkipTime() == 1) {
                int iMin = Math.min(this.f39431a.L, i12);
                if (iMin >= i11 || iMin < 0) {
                    int i16 = i11 - i13;
                    if (this.f39441k) {
                        if (i16 > 0) {
                            str2 = i16 + ((String) this.f39431a.getContext().getResources().getText(g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_video_view_reward_time_left_skip_time", "string")));
                        } else if (i16 == 0) {
                            this.f39431a.f39369m.setVisibility(4);
                        }
                    }
                } else {
                    int i17 = iMin - i13;
                    if (i17 > 0) {
                        str2 = i17 + ((String) this.f39431a.getContext().getResources().getText(g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_video_view_reward_time_left_skip_time", "string")));
                    } else if (this.f39441k && i17 == 0) {
                        this.f39431a.f39369m.setVisibility(4);
                    }
                }
            }
            this.f39431a.f39369m.setText(str2);
            if (this.f39431a.f39377q == null || this.f39431a.f39377q.getVisibility() != 0) {
                return;
            }
            this.f39431a.f39377q.setProgress(i13);
        }

        private void b(int i11) {
            MBridgeVideoView mBridgeVideoView = this.f39431a;
            if (mBridgeVideoView == null || mBridgeVideoView.f39369m == null) {
                return;
            }
            String str = "mbridge_reward_video_time_count_num_bg";
            if (this.f39443m.getDynamicTempCode() == 5) {
                MBridgeVideoView mBridgeVideoView2 = this.f39431a;
                if (mBridgeVideoView2.mCurrPlayNum > 1 && i11 <= 0) {
                    mBridgeVideoView2.f39369m.setBackgroundResource(g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_video_time_count_num_bg", "drawable"));
                    e();
                    return;
                }
            }
            if (i11 <= 0) {
                str = "mbridge_reward_shape_progress";
            } else if (!this.f39441k || this.f39443m.getDynamicTempCode() == 5) {
                e();
            }
            CampaignEx campaignEx = this.f39443m;
            if (campaignEx != null && campaignEx.getUseSkipTime() == 1 && this.f39441k) {
                e();
            }
            this.f39431a.f39369m.setBackgroundResource(g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), str, "drawable"));
        }

        private void b(int i11, int i12, int i13) {
            int i14;
            StringBuilder sb2;
            MBridgeVideoView mBridgeVideoView = this.f39431a;
            if (mBridgeVideoView == null) {
                return;
            }
            String string = (String) mBridgeVideoView.getContext().getResources().getText(g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_video_view_reward_time_complete", "string"));
            String str = (String) this.f39431a.getContext().getResources().getText(g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_video_view_reward_time_left", "string"));
            if (i11 >= 0) {
                if (this.f39443m.getUseSkipTime() == 1) {
                    int iMin = Math.min(this.f39431a.L, i11);
                    if (iMin >= i11 || iMin <= 0) {
                        i14 = i11 - i13;
                        if (this.f39441k) {
                            if (i14 <= 0) {
                                this.f39431a.f39369m.setVisibility(4);
                            } else {
                                str = (String) this.f39431a.getContext().getResources().getText(g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_video_view_reward_time_left_skip_time", "string"));
                            }
                        }
                    } else {
                        i14 = iMin - i13;
                        if (i14 <= 0) {
                            i14 = i11 - i13;
                            if (this.f39441k) {
                                this.f39431a.f39369m.setVisibility(4);
                            }
                        } else {
                            str = (String) this.f39431a.getContext().getResources().getText(g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_video_view_reward_time_left_skip_time", "string"));
                        }
                    }
                } else {
                    i14 = i11 - i13;
                }
                if (i14 > 0) {
                    string = i14 + str;
                }
            } else {
                i14 = i12 - i13;
                if (i14 > 0) {
                    if (i11 <= 0) {
                        sb2 = new StringBuilder();
                        sb2.append(i14);
                        sb2.append("");
                    } else {
                        sb2 = new StringBuilder();
                        sb2.append(i14);
                        sb2.append(str);
                    }
                    string = sb2.toString();
                } else if (i11 <= 0) {
                    string = "0";
                }
            }
            this.f39437g.f39428a = i13;
            this.f39431a.f39369m.setText(string);
            if (this.f39431a.f39377q != null && this.f39431a.f39377q.getVisibility() == 0) {
                this.f39431a.f39377q.setProgress(i13);
            }
            if (i14 >= this.f39431a.C0 || this.f39431a.E0 == null || !this.f39431a.J) {
                return;
            }
            this.f39431a.E0.onTimeLessThanReduce(i14);
        }

        private void c() {
            int i11;
            CampaignEx campaignEx;
            String str;
            if (!q0.a().a("h_c_r_w_p_c", false) || (i11 = this.f39444n) == 100 || this.f39445o != 0 || this.f39446p || i11 == 0 || (campaignEx = this.f39443m) == null) {
                return;
            }
            try {
                if (campaignEx.getAdType() == 94 || this.f39443m.getAdType() == 287) {
                    str = this.f39443m.getRequestId() + this.f39443m.getId() + this.f39443m.getVideoUrlEncode();
                } else {
                    str = this.f39443m.getId() + this.f39443m.getVideoUrlEncode() + this.f39443m.getBidToken();
                }
                com.mbridge.msdk.videocommon.download.a aVarA = com.mbridge.msdk.videocommon.download.b.getInstance().a(this.f39442l, str);
                if (aVarA != null) {
                    aVarA.v();
                    this.f39446p = true;
                    if (MBridgeConstans.DEBUG) {
                        o0.b("DefaultVideoPlayerStatusListener", "CDRate is : 0  and start download when player create!");
                    }
                }
            } catch (Exception e11) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("DefaultVideoPlayerStatusListener", e11.getMessage());
                }
            }
        }

        private void e() {
            MBridgeVideoView mBridgeVideoView = this.f39431a;
            if (mBridgeVideoView == null) {
                return;
            }
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) mBridgeVideoView.f39369m.getLayoutParams();
            if (layoutParams != null) {
                layoutParams.width = -2;
                layoutParams.height = t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 25.0f);
                this.f39431a.f39369m.setLayoutParams(layoutParams);
            }
            int iA = t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 5.0f);
            this.f39431a.f39369m.setPadding(iA, 0, iA, 0);
        }

        public int a() {
            return this.f39432b;
        }

        public void a(CampaignEx campaignEx) {
            this.f39443m = campaignEx;
        }

        public void a(String str) {
            this.f39442l = str;
        }

        public void a(boolean z10) {
            this.f39441k = z10;
        }

        public int b() {
            return this.f39434d;
        }

        public void b(int i11, int i12) {
            this.f39444n = i11;
            this.f39445o = i12;
            c();
        }

        public void d() {
            this.f39431a = null;
            boolean unused = MBridgeVideoView.W0 = false;
        }

        @Override // com.mbridge.msdk.playercommon.DefaultVideoPlayerStatusListener, com.mbridge.msdk.playercommon.VideoPlayerStatusListener
        public void onBufferingEnd() {
            try {
                super.onBufferingEnd();
                com.iab.omid.library.mmadbridge.adsession.media.a aVar = this.f39436f;
                if (aVar != null) {
                    aVar.b();
                    o0.a("omsdk", "play:  videoEvents.bufferFinish()");
                }
                this.f39431a.notifyListener.a(14, "");
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }

        @Override // com.mbridge.msdk.playercommon.DefaultVideoPlayerStatusListener, com.mbridge.msdk.playercommon.VideoPlayerStatusListener
        public void onBufferingStart(String str) {
            try {
                super.onBufferingStart(str);
                if (this.f39436f != null) {
                    o0.a("omsdk", "play:  videoEvents.bufferStart()");
                    this.f39436f.c();
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }

        @Override // com.mbridge.msdk.playercommon.DefaultVideoPlayerStatusListener, com.mbridge.msdk.playercommon.VideoPlayerStatusListener
        public void onBufferingTimeOut(String str) {
            try {
                this.f39431a.notifyListener.a(13, "");
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }

        @Override // com.mbridge.msdk.playercommon.DefaultVideoPlayerStatusListener, com.mbridge.msdk.playercommon.VideoPlayerStatusListener
        public void onPlayCompleted() {
            MBridgeVideoView mBridgeVideoView;
            super.onPlayCompleted();
            this.f39431a.f39382s0 = true;
            CampaignEx campaignEx = this.f39443m;
            if (campaignEx != null) {
                if (this.f39441k && campaignEx.getRewardTemplateMode() != null && this.f39443m.getRewardTemplateMode().f() == 5002010) {
                    this.f39431a.f39369m.setText("0");
                } else {
                    this.f39431a.f39369m.setText(g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_video_view_reward_time_complete", "string"));
                }
                this.f39443m.setVideoPlayProgress(100);
                if (this.f39443m.getAdSpaceT() == 2) {
                    this.f39431a.f39371n.setVisibility(4);
                    if (this.f39431a.f39379r != null) {
                        this.f39431a.f39379r.setClickable(false);
                    }
                    SoundImageView soundImageView = this.f39431a.mSoundImageView;
                    if (soundImageView != null) {
                        soundImageView.setClickable(false);
                    }
                }
            } else {
                this.f39431a.f39369m.setText("0");
            }
            com.iab.omid.library.mmadbridge.adsession.media.a aVar = this.f39436f;
            if (aVar != null) {
                aVar.d();
                o0.a("omsdk", "play:  videoEvents.complete()");
            }
            this.f39431a.mPlayerView.setClickable(false);
            String strC = this.f39431a.c(true);
            CampaignEx campaignEx2 = this.f39443m;
            if (campaignEx2 != null && campaignEx2.getRewardTemplateMode() != null && this.f39443m.getRewardTemplateMode().f() == 5002010) {
                this.f39431a.x();
            }
            CampaignEx campaignEx3 = this.f39443m;
            if (campaignEx3 != null && campaignEx3.getDynamicTempCode() == 5 && (mBridgeVideoView = this.f39431a) != null && mBridgeVideoView.f39391x != null) {
                MBridgeVideoView mBridgeVideoView2 = this.f39431a;
                if (mBridgeVideoView2.mCampaignSize > mBridgeVideoView2.mCurrPlayNum) {
                    HashMap map = new HashMap();
                    map.put(RequestParameters.POSITION, Integer.valueOf(this.f39431a.mCurrPlayNum));
                    int i11 = this.f39431a.mMuteSwitch;
                    if (i11 != 0) {
                        map.put(CampaignEx.JSON_NATIVE_VIDEO_MUTE, Integer.valueOf(i11));
                    }
                    this.f39431a.f39391x.a(map);
                    return;
                }
            }
            MBridgeVideoView mBridgeVideoView3 = this.f39431a;
            if (mBridgeVideoView3 != null) {
                mBridgeVideoView3.notifyListener.a(Sdk$SDKError.Reason.TPAT_ERROR_VALUE, "");
                this.f39431a.notifyListener.a(11, strC);
            }
            int i12 = this.f39433c;
            this.f39432b = i12;
            this.f39431a.mCurrentPlayProgressTime = i12;
            boolean unused = MBridgeVideoView.W0 = true;
        }

        @Override // com.mbridge.msdk.playercommon.DefaultVideoPlayerStatusListener, com.mbridge.msdk.playercommon.VideoPlayerStatusListener
        public void onPlayError(String str) {
            o0.b("DefaultVideoPlayerStatusListener", "errorStr" + str);
            super.onPlayError(str);
            MBridgeVideoView mBridgeVideoView = this.f39431a;
            if (mBridgeVideoView != null) {
                mBridgeVideoView.notifyListener.a(12, str);
            }
        }

        @Override // com.mbridge.msdk.playercommon.DefaultVideoPlayerStatusListener, com.mbridge.msdk.playercommon.VideoPlayerStatusListener
        public void onPlayProgress(int i11, int i12) {
            CampaignEx campaignEx;
            int videoCompleteTime;
            super.onPlayProgress(i11, i12);
            if (MBridgeVideoView.X0 == 0) {
                long unused = MBridgeVideoView.X0 = System.currentTimeMillis();
            }
            if (!this.f39431a.M0 && this.f39431a.f39393y != null) {
                this.f39431a.M0 = true;
                this.f39431a.f39393y.a();
            }
            if (this.f39431a.f39229e) {
                CampaignEx campaignEx2 = this.f39443m;
                if (campaignEx2 != null) {
                    videoCompleteTime = campaignEx2.getVideoCompleteTime();
                    if (videoCompleteTime <= 0) {
                        videoCompleteTime = i12;
                    }
                    com.mbridge.msdk.foundation.feedback.b.b().b(this.f39443m.getCampaignUnitId() + "_1", i11);
                } else {
                    videoCompleteTime = 0;
                }
                CampaignEx campaignEx3 = this.f39443m;
                if (campaignEx3 != null && campaignEx3.isDynamicView() && this.f39443m.getDynamicTempCode() == 5) {
                    try {
                        b(videoCompleteTime, this.f39431a.f39395z, i11);
                    } catch (Exception e11) {
                        o0.b("DefaultVideoPlayerStatusListener", e11.getMessage());
                    }
                } else {
                    a(videoCompleteTime, i12, i11);
                    this.f39437g.f39428a = i11;
                }
            }
            this.f39433c = i12;
            v vVar = this.f39437g;
            vVar.f39429b = i12;
            vVar.f39430c = this.f39431a.f39386u0;
            this.f39432b = i11;
            if (this.f39431a.f39381s != null) {
                this.f39431a.f39381s.setTag("" + this.f39432b);
            }
            MBridgeVideoView mBridgeVideoView = this.f39431a;
            mBridgeVideoView.mCurrentPlayProgressTime = i11;
            mBridgeVideoView.notifyListener.a(15, this.f39437g);
            com.iab.omid.library.mmadbridge.adsession.media.a aVar = this.f39436f;
            if (aVar != null) {
                int i13 = (i11 * 100) / i12;
                int i14 = ((i11 + 1) * 100) / i12;
                if (i13 <= 25 && 25 < i14 && !this.f39438h) {
                    this.f39438h = true;
                    aVar.h();
                    o0.a("omsdk", "play:  videoEvents.firstQuartile()");
                } else if (i13 <= 50 && 50 < i14 && !this.f39439i) {
                    this.f39439i = true;
                    aVar.i();
                    o0.a("omsdk", "play:  videoEvents.midpoint()");
                } else if (i13 <= 75 && 75 < i14 && !this.f39440j) {
                    this.f39440j = true;
                    aVar.o();
                    o0.a("omsdk", "play:  videoEvents.thirdQuartile()");
                }
            }
            if (this.f39431a.f39363g0 && !this.f39431a.f39374o0 && this.f39431a.f39368l0 == com.mbridge.msdk.foundation.same.a.I) {
                this.f39431a.y();
            }
            try {
                MBridgeVideoView mBridgeVideoView2 = this.f39431a;
                if (mBridgeVideoView2 != null && mBridgeVideoView2.f39383t != null) {
                    int i15 = (i11 * 100) / i12;
                    this.f39431a.f39383t.setProgress(i15, this.f39431a.mCurrPlayNum - 1);
                    this.f39443m.setVideoPlayProgress(i15);
                }
                MBridgeVideoView mBridgeVideoView3 = this.f39431a;
                if (mBridgeVideoView3 != null) {
                    int i16 = mBridgeVideoView3.F != -5 ? this.f39431a.F : this.f39431a.E;
                    if (i16 != -1 && i11 == i16 && (campaignEx = this.f39431a.f39226b) != null && campaignEx.isDynamicView()) {
                        this.f39431a.setCTALayoutVisibleOrGone();
                    }
                }
            } catch (Throwable th2) {
                o0.b("DefaultVideoPlayerStatusListener", th2.getMessage());
            }
            a(i11, i12);
        }

        @Override // com.mbridge.msdk.playercommon.DefaultVideoPlayerStatusListener, com.mbridge.msdk.playercommon.VideoPlayerStatusListener
        public void onPlaySetDataSourceError(String str) {
            super.onPlaySetDataSourceError(str);
        }

        @Override // com.mbridge.msdk.playercommon.DefaultVideoPlayerStatusListener, com.mbridge.msdk.playercommon.VideoPlayerStatusListener
        public void onPlayStarted(int i11) {
            PlayerView playerView;
            CampaignEx campaignEx;
            super.onPlayStarted(i11);
            MBridgeVideoView mBridgeVideoView = this.f39431a;
            if (mBridgeVideoView != null) {
                mBridgeVideoView.g();
            }
            if (!this.f39435e) {
                MBridgeVideoView mBridgeVideoView2 = this.f39431a;
                if (mBridgeVideoView2 != null) {
                    mBridgeVideoView2.A = true;
                    this.f39431a.notifyListener.a(10, this.f39437g);
                }
                this.f39435e = true;
            }
            this.f39434d = i11;
            CampaignEx campaignEx2 = this.f39443m;
            if (campaignEx2 != null) {
                int videoCompleteTime = campaignEx2.getVideoCompleteTime();
                if (videoCompleteTime <= 0) {
                    videoCompleteTime = i11;
                }
                if (this.f39443m.isDynamicView()) {
                    b(videoCompleteTime);
                } else {
                    a(videoCompleteTime);
                }
            }
            MBridgeVideoView mBridgeVideoView3 = this.f39431a;
            if (mBridgeVideoView3 != null && mBridgeVideoView3.f39377q != null) {
                this.f39431a.f39377q.setMax(i11);
            }
            MBridgeVideoView mBridgeVideoView4 = this.f39431a;
            if (mBridgeVideoView4 != null && mBridgeVideoView4.f39373o != null && (campaignEx = this.f39443m) != null && campaignEx.getAdSpaceT() == 2) {
                this.f39431a.f39373o.setVisibility(0);
            }
            MBridgeVideoView mBridgeVideoView5 = this.f39431a;
            if (mBridgeVideoView5 != null && mBridgeVideoView5.f39369m != null && this.f39431a.f39369m.getVisibility() == 0) {
                this.f39431a.f();
            }
            boolean unused = MBridgeVideoView.W0 = false;
            if (this.f39431a != null && this.f39443m.isDynamicView()) {
                if (this.f39431a.F != -5) {
                    if (this.f39431a.F == 0) {
                        this.f39431a.setCTALayoutVisibleOrGone();
                    }
                } else if (this.f39431a.E == 0) {
                    this.f39431a.setCTALayoutVisibleOrGone();
                }
            }
            MBridgeVideoView mBridgeVideoView6 = this.f39431a;
            if (mBridgeVideoView6 != null) {
                mBridgeVideoView6.showMoreOfferInPlayTemplate();
                this.f39431a.showBaitClickView();
                this.f39431a.q();
            }
            if (this.f39436f != null) {
                try {
                    MBridgeVideoView mBridgeVideoView7 = this.f39431a;
                    this.f39436f.n(i11, (mBridgeVideoView7 == null || (playerView = mBridgeVideoView7.mPlayerView) == null) ? 0.0f : playerView.getVolume());
                    o0.a("omsdk", "play video view:  videoEvents.start");
                } catch (Exception e11) {
                    o0.b("omsdk", e11.getMessage());
                }
            }
        }
    }

    public MBridgeVideoView(Context context) {
        super(context);
        this.mCampaignSize = 1;
        this.mCurrPlayNum = 1;
        this.mCurrentPlayProgressTime = 0;
        this.mMuteSwitch = 0;
        this.f39389w = false;
        this.f39395z = 0;
        this.H = false;
        this.I = false;
        this.J = false;
        this.Q = "";
        this.T = false;
        this.U = false;
        this.V = false;
        this.W = false;
        this.f39357a0 = false;
        this.f39358b0 = false;
        this.f39359c0 = false;
        this.f39360d0 = false;
        this.f39361e0 = false;
        this.f39363g0 = false;
        this.f39364h0 = 2;
        this.f39374o0 = false;
        this.f39376p0 = false;
        this.f39378q0 = false;
        this.f39380r0 = true;
        this.f39382s0 = false;
        this.f39384t0 = false;
        this.f39386u0 = false;
        this.f39388v0 = false;
        this.f39390w0 = false;
        this.f39396z0 = 0;
        this.A0 = 5;
        this.B0 = 5;
        this.C0 = 5;
        this.F0 = false;
        this.J0 = false;
        this.K0 = 0;
        this.L0 = false;
        this.M0 = false;
        this.N0 = new w(this);
        this.O0 = false;
        this.P0 = new k();
        this.Q0 = new m();
    }

    public MBridgeVideoView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mCampaignSize = 1;
        this.mCurrPlayNum = 1;
        this.mCurrentPlayProgressTime = 0;
        this.mMuteSwitch = 0;
        this.f39389w = false;
        this.f39395z = 0;
        this.H = false;
        this.I = false;
        this.J = false;
        this.Q = "";
        this.T = false;
        this.U = false;
        this.V = false;
        this.W = false;
        this.f39357a0 = false;
        this.f39358b0 = false;
        this.f39359c0 = false;
        this.f39360d0 = false;
        this.f39361e0 = false;
        this.f39363g0 = false;
        this.f39364h0 = 2;
        this.f39374o0 = false;
        this.f39376p0 = false;
        this.f39378q0 = false;
        this.f39380r0 = true;
        this.f39382s0 = false;
        this.f39384t0 = false;
        this.f39386u0 = false;
        this.f39388v0 = false;
        this.f39390w0 = false;
        this.f39396z0 = 0;
        this.A0 = 5;
        this.B0 = 5;
        this.C0 = 5;
        this.F0 = false;
        this.J0 = false;
        this.K0 = 0;
        this.L0 = false;
        this.M0 = false;
        this.N0 = new w(this);
        this.O0 = false;
        this.P0 = new k();
        this.Q0 = new m();
    }

    static /* synthetic */ int W(MBridgeVideoView mBridgeVideoView) {
        int i11 = mBridgeVideoView.A0;
        mBridgeVideoView.A0 = i11 - 1;
        return i11;
    }

    private int a(CampaignEx campaignEx) {
        if (campaignEx != null && campaignEx.getReady_rate() != -1) {
            return campaignEx.getReady_rate();
        }
        return com.mbridge.msdk.videocommon.setting.b.b().a(com.mbridge.msdk.foundation.controller.c.m().b(), this.Q, false).w();
    }

    private String a(int i11, int i12) {
        if (i12 != 0) {
            try {
                return t0.a(Double.valueOf(i11 / i12)) + "";
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
        }
        return i12 + "";
    }

    private void a(ViewGroup viewGroup, CampaignEx campaignEx) {
        com.mbridge.msdk.video.dynview.c cVarB = new com.mbridge.msdk.video.dynview.wrapper.c().b(viewGroup, campaignEx);
        com.mbridge.msdk.video.dynview.b.a().a(cVarB, new l(viewGroup, cVarB));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str) {
        JSONException e11;
        JSONObject jSONObject;
        if (this.f39385u != null) {
            CampaignEx campaignEx = this.f39226b;
            if (campaignEx != null) {
                campaignEx.setClickTempSource(1);
                try {
                    CampaignEx.c rewardTemplateMode = this.f39226b.getRewardTemplateMode();
                    String str2 = "";
                    if (rewardTemplateMode != null) {
                        str2 = rewardTemplateMode.f() + "";
                    }
                    com.mbridge.msdk.foundation.same.report.j.a(this.f39225a, str, this.f39226b.getCampaignUnitId(), this.f39226b.isBidCampaign(), this.f39226b.getRequestId(), this.f39226b.getRequestIdNotice(), this.f39226b.getId(), str2);
                } catch (Exception e12) {
                    e12.printStackTrace();
                }
            }
            try {
                jSONObject = new JSONObject();
                try {
                    jSONObject.put(com.mbridge.msdk.foundation.same.a.f35338j, a(0));
                } catch (JSONException e13) {
                    e11 = e13;
                    e11.printStackTrace();
                }
            } catch (JSONException e14) {
                e11 = e14;
                jSONObject = null;
            }
            this.f39385u.a(105, jSONObject);
            if (com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                try {
                    com.mbridge.msdk.video.module.report.b.a(com.mbridge.msdk.foundation.controller.c.m().d().getApplicationContext(), this.f39226b);
                } catch (Exception e15) {
                    o0.b(MBridgeBaseView.TAG, e15.getMessage());
                }
            }
        }
    }

    private boolean b(int i11, int i12) {
        return i11 > 0 && i12 > 0 && t0.g(this.f39225a) >= i11 && t0.f(this.f39225a) >= i12;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String c(boolean z10) {
        if (!this.f39363g0) {
            return "";
        }
        try {
            JSONObject jSONObject = new JSONObject();
            if (!this.f39374o0) {
                jSONObject.put("Alert_window_status", com.mbridge.msdk.foundation.same.a.F);
            }
            if (this.f39378q0) {
                jSONObject.put("Alert_window_status", com.mbridge.msdk.foundation.same.a.D);
            }
            if (this.f39376p0) {
                jSONObject.put("Alert_window_status", com.mbridge.msdk.foundation.same.a.E);
            }
            jSONObject.put("complete_info", z10 ? 1 : 2);
            return jSONObject.toString();
        } catch (Exception unused) {
            o0.b(MBridgeBaseView.TAG, "getIVRewardStatusString ERROR");
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        CampaignEx campaignEx = this.f39226b;
        if (campaignEx != null) {
            campaignEx.setCampaignUnitId(this.Q);
            com.mbridge.msdk.foundation.feedback.b.b().a(this.Q + "_1", this.f39226b);
        }
        if (!com.mbridge.msdk.foundation.feedback.b.b().a()) {
            FeedBackButton feedBackButton = this.f39379r;
            if (feedBackButton != null) {
                feedBackButton.setVisibility(8);
                return;
            }
            return;
        }
        if (this.f39379r != null) {
            com.mbridge.msdk.foundation.feedback.b.b().a(this.Q + "_1", this.f39379r);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        CollapsibleWebView collapsibleWebView = this.H0;
        if (collapsibleWebView == null || this.f39226b == null || !TextUtils.isEmpty(collapsibleWebView.getUrl())) {
            return;
        }
        this.H0.loadUrl(this.f39226b.getClickURL());
        this.H0.setToolBarTitle(this.f39226b.getAppName());
        com.mbridge.msdk.setting.g gVarD = com.mbridge.msdk.setting.h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
        if (gVarD == null) {
            gVarD = com.mbridge.msdk.setting.h.b().a();
        }
        this.H0.setPageLoadTimtout((int) gVarD.o0());
        this.H0.setPageLoadListener(new d());
        this.H0.setWebViewClient(new e());
        this.H0.setCollapseListener(new f());
        this.H0.setExpandListener(new g());
        this.H0.setExitsClickListener(new h());
    }

    private int getCDRate() {
        return com.mbridge.msdk.videocommon.setting.b.b().a(com.mbridge.msdk.foundation.controller.c.m().b(), this.Q, false).g();
    }

    private int getVideoAllDuration() {
        try {
            w wVar = this.N0;
            int iB = wVar != null ? wVar.b() : 0;
            return iB == 0 ? this.f39226b.getVideoLength() : iB;
        } catch (Throwable th2) {
            o0.b(MBridgeBaseView.TAG, th2.getMessage());
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getVideoCompleteTime() {
        int videoCompleteTime = 0;
        try {
            int videoAllDuration = getVideoAllDuration();
            CampaignEx campaignEx = this.f39226b;
            if (campaignEx == null) {
                return videoAllDuration;
            }
            videoCompleteTime = campaignEx.getVideoCompleteTime();
            if (this.f39226b.getDynamicTempCode() != 5 && videoCompleteTime > videoAllDuration) {
                videoCompleteTime = videoAllDuration;
            }
            if (videoCompleteTime <= 0) {
                return videoAllDuration;
            }
        } catch (Throwable th2) {
            o0.b(MBridgeBaseView.TAG, th2.getMessage());
        }
        return videoCompleteTime;
    }

    private void h() {
        int iFindLayout = findLayout("mbridge_reward_videoview_item");
        if (g0.a(iFindLayout)) {
            this.f39227c.inflate(iFindLayout, this);
            n();
        }
        W0 = false;
        r();
    }

    private void i() {
        if (this.O0 || this.f39360d0 || this.f39358b0) {
            return;
        }
        this.O0 = true;
        int i11 = this.L;
        if (i11 < 0) {
            return;
        }
        if (i11 == 0) {
            this.f39360d0 = true;
        } else {
            new Handler().postDelayed(new a(), this.L * 1000);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        CampaignEx campaignEx = this.f39226b;
        if (campaignEx == null || !campaignEx.isDynamicView() || this.B == null) {
            return;
        }
        if (this.C == null) {
            addCTAView();
        }
        if (this.B.getVisibility() != 0) {
            this.B.setVisibility(0);
            postDelayed(this.P0, 3000L);
        } else {
            this.B.setVisibility(8);
            getHandler().removeCallbacks(this.P0);
        }
    }

    private void k() {
        CampaignEx campaignEx = this.f39226b;
        if (campaignEx == null || !y0.b(campaignEx.getVideoResolution())) {
            return;
        }
        String videoResolution = this.f39226b.getVideoResolution();
        o0.c(MBridgeBaseView.TAG, "MBridgeBaseView videoResolution:" + videoResolution);
        String[] strArrSplit = videoResolution.split("x");
        if (strArrSplit.length == 2) {
            if (t0.m(strArrSplit[0]) > 0.0d) {
                this.R = t0.m(strArrSplit[0]);
            }
            if (t0.m(strArrSplit[1]) > 0.0d) {
                this.S = t0.m(strArrSplit[1]);
            }
            o0.c(MBridgeBaseView.TAG, "MBridgeBaseView mVideoW:" + this.R + "  mVideoH:" + this.S);
        }
        if (this.R <= 0.0d) {
            this.R = 1280.0d;
        }
        if (this.S <= 0.0d) {
            this.S = 720.0d;
        }
    }

    private boolean l() {
        try {
            this.mPlayerView = (PlayerView) findViewById(filterFindViewId(this.f39390w0, "mbridge_vfpv"));
            this.mSoundImageView = (SoundImageView) findViewById(filterFindViewId(this.f39390w0, "mbridge_sound_switch"));
            this.f39369m = (TextView) findViewById(filterFindViewId(this.f39390w0, "mbridge_tv_count"));
            View viewFindViewById = findViewById(filterFindViewId(this.f39390w0, "mbridge_rl_playing_close"));
            this.f39371n = viewFindViewById;
            if (viewFindViewById != null) {
                viewFindViewById.setVisibility(4);
            }
            this.f39373o = (RelativeLayout) findViewById(filterFindViewId(this.f39390w0, "mbridge_top_control"));
            this.f39375p = (ImageView) findViewById(filterFindViewId(this.f39390w0, "mbridge_videoview_bg"));
            this.f39377q = (ProgressBar) findViewById(filterFindViewId(this.f39390w0, "mbridge_video_progress_bar"));
            this.f39379r = (FeedBackButton) findViewById(filterFindViewId(this.f39390w0, "mbridge_native_endcard_feed_btn"));
            this.f39381s = (ImageView) findViewById(filterFindViewId(this.f39390w0, "mbridge_iv_link"));
            this.G0 = (RelativeLayout) findViewById(filterFindViewId(this.f39390w0, "mbridge_reward_scale_webview_layout"));
            this.I0 = (RelativeLayout) findViewById(filterFindViewId(this.f39390w0, "mbridge_reward_header_layout"));
            if (this.G0 != null) {
                CollapsibleWebView collapsibleWebView = new CollapsibleWebView(getContext());
                this.H0 = collapsibleWebView;
                this.G0.addView(collapsibleWebView, new RelativeLayout.LayoutParams(-1, -1));
            }
            t0.a(1, this.f39381s, this.f39226b, this.f39225a, false, new t());
            this.f39383t = (MBridgeSegmentsProgressBar) findViewById(filterFindViewId(this.f39390w0, "mbridge_reward_segment_progressbar"));
            this.B = (FrameLayout) findViewById(filterFindViewId(this.f39390w0, "mbridge_reward_cta_layout"));
            this.f39394y0 = (MBridgeBaitClickView) findViewById(filterFindViewId(this.f39390w0, "mbridge_animation_click_view"));
            this.G = (RelativeLayout) findViewById(filterFindViewId(this.f39390w0, "mbridge_reward_moreoffer_layout"));
            this.E0 = (MBAcquireRewardPopView) findViewById(filterFindViewId(this.f39390w0, "mbridge_reward_popview"));
            this.tvFlag = (TextView) findViewById(filterFindViewId(this.f39390w0, "mbridge_tv_flag"));
            return isNotNULL(this.mPlayerView, this.mSoundImageView, this.f39369m, this.f39371n);
        } catch (Throwable th2) {
            o0.b(MBridgeBaseView.TAG, th2.getMessage(), th2);
            return false;
        }
    }

    private boolean m() {
        int videoCompleteTime = getVideoCompleteTime();
        int curPosition = (this.mPlayerView.getCurPosition() / 1000) + 1;
        if (this.f39226b.getDynamicTempCode() != 5 || this.mCurrPlayNum <= 1) {
            if ((videoCompleteTime > 0 && curPosition < videoCompleteTime) || videoCompleteTime == 0) {
                return true;
            }
        } else if (videoCompleteTime != 0 && videoCompleteTime > 0 && curPosition < videoCompleteTime) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        PlayerView playerView;
        boolean zL = l();
        this.f39229e = zL;
        if (!zL) {
            o0.b(MBridgeBaseView.TAG, "MBridgeVideoView init fail");
        }
        if (q0.a().a("i_l_s_t_r_i", false) && (playerView = this.mPlayerView) != null) {
            playerView.setNotifyListener(new n());
        }
        d();
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 100.0f);
        this.f39392x0 = alphaAnimation;
        alphaAnimation.setDuration(200L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o() {
        try {
            PlayerView playerView = this.mPlayerView;
            if (playerView != null) {
                playerView.onPause();
                CampaignEx campaignEx = this.f39226b;
                if (campaignEx != null && !campaignEx.isRewardPopViewShowed) {
                    removeCallbacks(this.Q0);
                }
                if (com.mbridge.msdk.util.b.a()) {
                    this.mPlayerView.setIsCovered(this.F0 || this.I || this.J);
                }
                CampaignEx campaignEx2 = this.f39226b;
                if (campaignEx2 == null || campaignEx2.getNativeVideoTracking() == null || this.f39226b.isHasReportAdTrackPause()) {
                    return;
                }
                this.f39226b.setHasReportAdTrackPause(true);
                Context contextD = com.mbridge.msdk.foundation.controller.c.m().d();
                CampaignEx campaignEx3 = this.f39226b;
                com.mbridge.msdk.click.a.a(contextD, campaignEx3, this.Q, campaignEx3.getNativeVideoTracking().n(), false, false);
            }
        } catch (Throwable th2) {
            o0.b(MBridgeBaseView.TAG, th2.getMessage(), th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p() {
        w wVar;
        RelativeLayout relativeLayout;
        try {
            CampaignEx campaignEx = this.f39226b;
            if (campaignEx == null || campaignEx.getRewardTemplateMode() == null || this.f39226b.getRewardTemplateMode().f() != 5002010 || (relativeLayout = this.I0) == null || relativeLayout.getVisibility() == 0) {
                if (!this.U) {
                    boolean zPlayVideo = this.mPlayerView.playVideo();
                    CampaignEx campaignEx2 = this.f39226b;
                    if (campaignEx2 != null && campaignEx2.getPlayable_ads_without_video() != 2 && !zPlayVideo && (wVar = this.N0) != null) {
                        wVar.onPlayError("play video failed");
                    }
                    this.U = true;
                    return;
                }
                MBAcquireRewardPopView mBAcquireRewardPopView = this.E0;
                if (mBAcquireRewardPopView != null && this.J) {
                    mBAcquireRewardPopView.onResume();
                }
                if (this.J) {
                    return;
                }
                if (!com.mbridge.msdk.util.b.a()) {
                    w();
                } else {
                    if (this.F0 || this.I) {
                        return;
                    }
                    this.mPlayerView.setIsCovered(false);
                    w();
                }
            }
        } catch (Exception e11) {
            o0.b(MBridgeBaseView.TAG, e11.getMessage(), e11);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q() {
        String strE;
        CampaignEx campaignEx = this.f39226b;
        if (campaignEx == null || !campaignEx.isDynamicView() || this.H) {
            return;
        }
        if (!TextUtils.isEmpty(this.f39226b.getMof_template_url())) {
            strE = this.f39226b.getMof_template_url();
        } else if (this.f39226b.getRewardTemplateMode() == null) {
            return;
        } else {
            strE = this.f39226b.getRewardTemplateMode().e();
        }
        if (TextUtils.isEmpty(strE)) {
            return;
        }
        try {
            String strA = z0.a(strE, "guideShow");
            String strA2 = z0.a(strE, "guideDelay");
            String strA3 = z0.a(strE, "guideTime");
            String strA4 = z0.a(strE, "guideRewardTime");
            if (!TextUtils.isEmpty(strA)) {
                this.f39396z0 = Integer.parseInt(strA);
            }
            if (!TextUtils.isEmpty(strA2)) {
                int i11 = Integer.parseInt(strA2);
                this.A0 = i11;
                if (i11 > 10 || i11 < 3) {
                    this.A0 = 5;
                }
            }
            if (!TextUtils.isEmpty(strA3)) {
                int i12 = Integer.parseInt(strA3);
                this.B0 = i12;
                if (i12 > 10 || i12 < 3) {
                    this.B0 = 5;
                }
            }
            if (!TextUtils.isEmpty(strA4)) {
                int i13 = Integer.parseInt(strA4);
                this.C0 = i13;
                if (i13 > 10 || i13 < 5) {
                    this.C0 = 5;
                }
            }
            int i14 = this.f39396z0;
            if (i14 > 0 && i14 <= 2) {
                int videoCompleteTime = getVideoCompleteTime();
                if (videoCompleteTime == 0 || videoCompleteTime > this.A0) {
                    int i15 = videoCompleteTime - this.A0;
                    if (i15 >= 0 && this.C0 > i15) {
                        this.C0 = i15;
                    }
                    int videoAllDuration = getVideoAllDuration();
                    if (this.C0 >= videoAllDuration) {
                        this.C0 = videoAllDuration - this.A0;
                    }
                    if (this.A0 >= videoAllDuration) {
                        return;
                    }
                    ArrayList<String> arrayList = new ArrayList<>();
                    arrayList.add(this.f39226b.getAppName());
                    com.mbridge.msdk.setting.g gVarB = com.mbridge.msdk.setting.h.b().b(com.mbridge.msdk.foundation.controller.c.m().b());
                    this.D0 = new AcquireRewardPopViewParameters.Builder("", this.Q, this.f39396z0, gVarB != null ? gVarB.k() : "US").setAutoDismissTime(this.B0).setReduceTime(this.C0).setBehaviourListener(new j()).setRightAnswerList(arrayList).build();
                    postDelayed(this.Q0, 1000L);
                }
            }
        } catch (Throwable th2) {
            o0.b(MBridgeBaseView.TAG, th2.getMessage());
        }
    }

    private void r() {
        CampaignEx campaignEx = this.f39226b;
        if (campaignEx == null || campaignEx.getAdSpaceT() != 2 || this.tvFlag == null) {
            return;
        }
        String language = Locale.getDefault().getLanguage();
        if (TextUtils.isEmpty(language) || !language.equals("zh")) {
            this.tvFlag.setText("AD");
        } else {
            this.tvFlag.setText("广告");
        }
    }

    private void s() {
        int iB;
        int iF;
        float fG = t0.g(this.f39225a);
        float f11 = t0.f(this.f39225a);
        double d11 = this.R;
        if (d11 > 0.0d) {
            double d12 = this.S;
            if (d12 > 0.0d && fG > 0.0f && f11 > 0.0f) {
                double d13 = d11 / d12;
                double d14 = fG / f11;
                o0.c(MBridgeBaseView.TAG, "videoWHDivide:" + d13 + "  screenWHDivide:" + d14);
                double dA = t0.a(Double.valueOf(d13));
                double dA2 = t0.a(Double.valueOf(d14));
                o0.c(MBridgeBaseView.TAG, "videoWHDivideFinal:" + dA + "  screenWHDivideFinal:" + dA2);
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.mPlayerView.getLayoutParams();
                if (dA > dA2) {
                    double d15 = (((double) fG) * this.S) / this.R;
                    layoutParams.width = -1;
                    layoutParams.height = (int) d15;
                    layoutParams.gravity = 17;
                } else if (dA < dA2) {
                    layoutParams.width = (int) (((double) f11) * d13);
                    layoutParams.height = -1;
                    layoutParams.gravity = 17;
                } else {
                    layoutParams.width = -1;
                    layoutParams.height = -1;
                }
                try {
                    CampaignEx campaignEx = this.f39226b;
                    if (campaignEx != null && campaignEx.isDynamicView()) {
                        if (this.f39226b.getRewardTemplateMode() != null) {
                            iF = this.f39226b.getRewardTemplateMode().f();
                            iB = this.f39226b.getRewardTemplateMode().b();
                        } else {
                            iB = this.f39225a.getResources().getConfiguration().orientation;
                            iF = 904;
                        }
                        if (iF == 102 || iF == 202) {
                            if (iB == 1) {
                                layoutParams.width = -1;
                                layoutParams.gravity = 17;
                                layoutParams.height = (int) (this.S / (this.R / ((double) fG)));
                            } else {
                                layoutParams.height = -1;
                                layoutParams.gravity = 17;
                                layoutParams.width = (int) (((double) f11) * d13);
                            }
                        }
                        if (iF == 202 && !TextUtils.isEmpty(this.f39226b.getImageUrl())) {
                            setBlurBackgroundImage(this.f39226b.getImageUrl());
                        }
                        if (iF == 302 || iF == 802 || iF == 5002010) {
                            double d16 = this.R;
                            double d17 = this.S;
                            if (d16 / d17 > 1.0d) {
                                layoutParams.width = -1;
                                layoutParams.height = (int) ((d17 * ((double) fG)) / d16);
                            } else {
                                int iA = t0.a(getContext(), 220.0f);
                                layoutParams.width = (int) ((this.R * ((double) iA)) / this.S);
                                layoutParams.height = iA;
                            }
                        }
                    }
                } catch (Throwable th2) {
                    o0.b(MBridgeBaseView.TAG, th2.getMessage());
                }
                this.mPlayerView.setLayoutParams(layoutParams);
                setMatchParent();
                return;
            }
        }
        v();
    }

    private void setBlurBackgroundImage(String str) {
        com.mbridge.msdk.foundation.same.image.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).a(str, new c());
    }

    private void setPlayerViewRadius(int i11) {
        if (i11 > 0) {
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setCornerRadius(t0.a(getContext(), i11));
            gradientDrawable.setColor(-1);
            gradientDrawable.setStroke(1, 0);
            setBackground(gradientDrawable);
            this.mPlayerView.setBackground(gradientDrawable);
            setClipToOutline(true);
            this.mPlayerView.setClipToOutline(true);
        }
    }

    private void t() {
    }

    private void u() {
        CampaignEx campaignEx = this.f39226b;
        if (campaignEx == null) {
            return;
        }
        if (campaignEx.getAdSpaceT() == 2) {
            t();
        } else {
            s();
        }
    }

    private void v() {
        try {
            setLayoutParam(0, 0, -1, -1);
            if (isLandscape() || !this.f39229e) {
                return;
            }
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.mPlayerView.getLayoutParams();
            int iG = t0.g(this.f39225a);
            layoutParams.width = -1;
            layoutParams.height = (iG * 9) / 16;
            layoutParams.gravity = 17;
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    private void w() {
        if (this.f39382s0) {
            if (!this.f39384t0) {
                this.mPlayerView.seekToEndFrame();
            }
            this.f39384t0 = true;
        } else {
            this.mPlayerView.onResume();
        }
        CampaignEx campaignEx = this.f39226b;
        if (campaignEx == null || campaignEx.isRewardPopViewShowed) {
            return;
        }
        post(this.Q0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x() {
        if (!this.f39229e || this.f39371n.getVisibility() == 0) {
            return;
        }
        if (!this.f39232h || this.A) {
            this.f39371n.setVisibility(0);
        }
        this.f39357a0 = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y() {
        int i11;
        com.mbridge.msdk.video.module.listener.a aVar;
        boolean z10;
        try {
            CampaignEx campaignEx = this.f39226b;
            if (campaignEx != null && campaignEx.getRewardTemplateMode() != null && this.f39226b.getRewardTemplateMode().f() == 5002010 && this.L0 && !(z10 = this.f39382s0)) {
                com.mbridge.msdk.video.module.listener.a aVar2 = this.notifyListener;
                if (aVar2 != null) {
                    this.L0 = true;
                    aVar2.a(2, c(z10));
                    return;
                }
                return;
            }
            if (!this.f39363g0 || ((i11 = this.f39368l0) != com.mbridge.msdk.foundation.same.a.H && i11 != com.mbridge.msdk.foundation.same.a.I)) {
                CampaignEx campaignEx2 = this.f39226b;
                if (campaignEx2 == null || campaignEx2.getAdSpaceT() == 2) {
                    com.mbridge.msdk.video.module.listener.a aVar3 = this.notifyListener;
                    if (aVar3 != null) {
                        this.L0 = true;
                        aVar3.a(2, "");
                        return;
                    }
                    return;
                }
                boolean zM = m();
                if (zM && this.N == 1 && !this.f39361e0) {
                    o();
                    com.mbridge.msdk.video.module.listener.a aVar4 = this.notifyListener;
                    if (aVar4 != null) {
                        aVar4.a(8, "");
                        return;
                    }
                    return;
                }
                if (this.notifyListener != null) {
                    this.L0 = true;
                    if (this.f39226b.getAdType() == 94 && !zM) {
                        this.notifyListener.a(17, "");
                    }
                    this.notifyListener.a(2, c(!zM));
                    return;
                }
                return;
            }
            if (this.f39374o0) {
                if (i11 != com.mbridge.msdk.foundation.same.a.I || (aVar = this.notifyListener) == null) {
                    return;
                }
                this.L0 = true;
                aVar.a(2, c(this.f39382s0));
                return;
            }
            if (i11 == com.mbridge.msdk.foundation.same.a.I && this.f39388v0) {
                com.mbridge.msdk.video.module.listener.a aVar5 = this.notifyListener;
                if (aVar5 != null) {
                    this.L0 = true;
                    aVar5.a(2, c(this.f39382s0));
                    return;
                }
                return;
            }
            if (this.f39380r0) {
                int curPosition = this.mPlayerView.getCurPosition() / 1000;
                int videoLength = (int) ((curPosition / (this.mPlayerView.getDuration() == 0 ? this.f39226b.getVideoLength() : this.mPlayerView.getDuration())) * 100.0f);
                if (this.f39368l0 == com.mbridge.msdk.foundation.same.a.H) {
                    o();
                    int i12 = this.f39370m0;
                    if (i12 == com.mbridge.msdk.foundation.same.a.J && videoLength >= this.f39372n0) {
                        com.mbridge.msdk.video.module.listener.a aVar6 = this.notifyListener;
                        if (aVar6 != null) {
                            this.L0 = true;
                            aVar6.a(2, c(this.f39382s0));
                            return;
                        }
                        return;
                    }
                    if (i12 == com.mbridge.msdk.foundation.same.a.K && curPosition >= this.f39372n0) {
                        com.mbridge.msdk.video.module.listener.a aVar7 = this.notifyListener;
                        if (aVar7 != null) {
                            this.L0 = true;
                            aVar7.a(2, c(this.f39382s0));
                            return;
                        }
                        return;
                    }
                    com.mbridge.msdk.video.module.listener.a aVar8 = this.notifyListener;
                    if (aVar8 != null) {
                        aVar8.a(8, "");
                    }
                }
                if (this.f39368l0 == com.mbridge.msdk.foundation.same.a.I) {
                    int i13 = this.f39370m0;
                    if (i13 == com.mbridge.msdk.foundation.same.a.J && videoLength >= this.f39372n0) {
                        o();
                        com.mbridge.msdk.video.module.listener.a aVar9 = this.notifyListener;
                        if (aVar9 != null) {
                            aVar9.a(8, "");
                            return;
                        }
                        return;
                    }
                    if (i13 != com.mbridge.msdk.foundation.same.a.K || curPosition < this.f39372n0) {
                        return;
                    }
                    o();
                    com.mbridge.msdk.video.module.listener.a aVar10 = this.notifyListener;
                    if (aVar10 != null) {
                        aVar10.a(8, "");
                    }
                }
            }
        } catch (Exception e11) {
            o0.b(MBridgeBaseView.TAG, e11.getMessage());
        }
    }

    public void addCTAView() {
        if (this.B == null) {
            return;
        }
        if (this.C == null) {
            MBridgeClickCTAView mBridgeClickCTAView = new MBridgeClickCTAView(getContext());
            this.C = mBridgeClickCTAView;
            mBridgeClickCTAView.setCampaign(this.f39226b);
            this.C.setUnitId(this.Q);
            com.mbridge.msdk.video.module.listener.a aVar = this.f39385u;
            if (aVar != null) {
                this.C.setNotifyListener(new com.mbridge.msdk.video.module.listener.impl.i(aVar));
            }
            this.C.preLoadData(this.D);
        }
        this.B.addView(this.C);
    }

    @Override // com.mbridge.msdk.video.signal.j
    public void alertWebViewShowed() {
        this.I = true;
        setShowingAlertViewCover(true);
    }

    @Override // com.mbridge.msdk.video.signal.j
    public void closeVideoOperate(int i11, int i12) {
        if (i11 == 1) {
            this.f39388v0 = true;
            if (getVisibility() == 0) {
                y();
            }
            try {
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a(NativeComponentConstants.KEY_COMPONENT_TYPE, 1);
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000152", eVar);
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000148", this.f39226b, eVar);
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000134", this.f39226b);
            } catch (Throwable th2) {
                if (MBridgeConstans.DEBUG) {
                    th2.printStackTrace();
                }
            }
        }
        if (i12 == 1) {
            gonePlayingCloseView();
        } else if (i12 == 2) {
            if (this.f39386u0 && getVisibility() == 0) {
                return;
            }
            x();
        }
    }

    @Override // com.mbridge.msdk.video.module.MBridgeBaseView
    protected void d() {
        super.d();
        if (this.f39229e) {
            if (!this.f39232h) {
                this.mPlayerView.setOnClickListener(new p());
            } else if (com.mbridge.msdk.video.dynview.util.a.b(this.f39226b) == -1 || com.mbridge.msdk.video.dynview.util.a.b(this.f39226b) == 100) {
                this.mPlayerView.setOnClickListener(new o());
            }
            SoundImageView soundImageView = this.mSoundImageView;
            if (soundImageView != null) {
                soundImageView.setOnClickListener(new q());
            }
            this.f39371n.setOnClickListener(new r());
        }
    }

    @Override // com.mbridge.msdk.video.module.MBridgeBaseView
    public void defaultShow() {
        super.defaultShow();
        this.T = true;
        showVideoLocation(0, 0, t0.g(this.f39225a), t0.f(this.f39225a), 0, 0, 0, 0, 0);
        videoOperate(1);
        if (this.L == 0) {
            closeVideoOperate(-1, 2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.j
    public void dismissAllAlert() {
        MBAlertDialog mBAlertDialog = this.O;
        if (mBAlertDialog != null) {
            mBAlertDialog.dismiss();
        }
        com.mbridge.msdk.video.module.listener.a aVar = this.notifyListener;
        if (aVar != null) {
            aVar.a(Sdk$SDKError.Reason.INVALID_METRICS_ENDPOINT_VALUE, "");
        }
    }

    @Override // com.mbridge.msdk.video.signal.j
    public int getBorderViewHeight() {
        return V0;
    }

    @Override // com.mbridge.msdk.video.signal.j
    public int getBorderViewLeft() {
        return T0;
    }

    @Override // com.mbridge.msdk.video.signal.j
    public int getBorderViewRadius() {
        return R0;
    }

    @Override // com.mbridge.msdk.video.signal.j
    public int getBorderViewTop() {
        return S0;
    }

    @Override // com.mbridge.msdk.video.signal.j
    public int getBorderViewWidth() {
        return U0;
    }

    public int getBufferTimeout() {
        return this.M;
    }

    public int getCloseAlert() {
        return this.N;
    }

    @Override // com.mbridge.msdk.video.signal.j
    public String getCurrentProgress() {
        try {
            int iA = this.N0.a();
            CampaignEx campaignEx = this.f39226b;
            int videoLength = campaignEx != null ? campaignEx.getVideoLength() : 0;
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(NotificationCompat.CATEGORY_PROGRESS, a(iA, videoLength));
            jSONObject.put(EventConstants.KEY_TIME, iA);
            jSONObject.put("duration", videoLength + "");
            return jSONObject.toString();
        } catch (Throwable th2) {
            o0.b(MBridgeBaseView.TAG, th2.getMessage(), th2);
            return "{}";
        }
    }

    public int getMute() {
        return this.f39364h0;
    }

    public String getPlayURL() {
        return this.K;
    }

    public String getUnitId() {
        return this.Q;
    }

    public int getVideoSkipTime() {
        return this.L;
    }

    public void gonePlayingCloseView() {
        if (this.f39229e && this.f39371n.getVisibility() != 8) {
            this.f39371n.setVisibility(8);
            this.f39357a0 = false;
        }
        i();
    }

    @Override // com.mbridge.msdk.video.signal.j
    public void hideAlertView(int i11) {
        if (this.I) {
            this.I = false;
            this.f39374o0 = true;
            setShowingAlertViewCover(false);
            com.mbridge.msdk.foundation.same.report.j.a(this.f39225a, this.f39226b, com.mbridge.msdk.videocommon.setting.b.b().a(com.mbridge.msdk.foundation.controller.c.m().b(), this.Q, false).c(), this.Q, 1, i11, 1);
            if (i11 == 0) {
                p();
                if (this.f39363g0) {
                    int i12 = this.f39368l0;
                    if (i12 == com.mbridge.msdk.foundation.same.a.I || i12 == com.mbridge.msdk.foundation.same.a.H) {
                        this.f39376p0 = true;
                        com.mbridge.msdk.video.module.listener.a aVar = this.notifyListener;
                        if (aVar != null) {
                            aVar.a(Sdk$SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE, "");
                        }
                        CampaignEx campaignEx = this.f39226b;
                        if (campaignEx != null && campaignEx.getRewardTemplateMode() != null && this.f39226b.getRewardTemplateMode().f() == 5002010) {
                            x();
                            return;
                        } else {
                            this.f39386u0 = true;
                            gonePlayingCloseView();
                            return;
                        }
                    }
                    return;
                }
                return;
            }
            this.f39378q0 = true;
            boolean z10 = this.f39363g0;
            if (z10 && this.f39368l0 == com.mbridge.msdk.foundation.same.a.I) {
                p();
                return;
            }
            if (z10 && this.f39368l0 == com.mbridge.msdk.foundation.same.a.H) {
                com.mbridge.msdk.video.module.listener.a aVar2 = this.notifyListener;
                if (aVar2 != null) {
                    this.L0 = true;
                    aVar2.a(2, c(this.f39382s0));
                    return;
                }
                return;
            }
            com.mbridge.msdk.video.module.listener.a aVar3 = this.notifyListener;
            if (aVar3 != null) {
                this.L0 = true;
                aVar3.a(2, "");
            }
        }
    }

    @Override // com.mbridge.msdk.video.module.MBridgeBaseView
    public void init(Context context) {
    }

    @Override // com.mbridge.msdk.video.signal.j
    public boolean isH5Canvas() {
        return getLayoutParams().height < t0.f(this.f39225a.getApplicationContext());
    }

    public boolean isInstDialogShowing() {
        return this.F0;
    }

    public boolean isMiniCardShowing() {
        return this.W;
    }

    public boolean isRewardPopViewShowing() {
        return this.J;
    }

    public boolean isShowingAlertView() {
        return this.I;
    }

    public boolean isShowingTransparent() {
        return this.f39361e0;
    }

    public boolean isfront() {
        ViewGroup viewGroup = (ViewGroup) getParent();
        if (viewGroup == null) {
            return false;
        }
        int iIndexOfChild = viewGroup.indexOfChild(this);
        int childCount = viewGroup.getChildCount();
        int i11 = iIndexOfChild + 1;
        boolean z10 = false;
        while (i11 <= childCount - 1) {
            if (viewGroup.getChildAt(i11).getVisibility() == 0 && this.W) {
                return false;
            }
            i11++;
            z10 = true;
        }
        return z10;
    }

    @Override // com.mbridge.msdk.video.signal.j
    public void notifyCloseBtn(int i11) {
        if (i11 == 0) {
            this.f39358b0 = true;
            this.f39360d0 = false;
        } else if (i11 == 1) {
            this.f39359c0 = true;
        }
    }

    public void notifyVideoClose() {
        this.L0 = true;
        this.notifyListener.a(2, "");
    }

    public void onActivityPause() {
        try {
            MBAcquireRewardPopView mBAcquireRewardPopView = this.E0;
            if (mBAcquireRewardPopView != null) {
                mBAcquireRewardPopView.onPause();
            }
        } catch (Throwable th2) {
            o0.b(MBridgeBaseView.TAG, th2.getMessage());
        }
    }

    public void onActivityResume() {
        try {
            MBAcquireRewardPopView mBAcquireRewardPopView = this.E0;
            if (mBAcquireRewardPopView != null) {
                mBAcquireRewardPopView.onResume();
            }
        } catch (Throwable th2) {
            o0.b(MBridgeBaseView.TAG, th2.getMessage());
        }
    }

    public void onActivityStop() {
        try {
            MBAcquireRewardPopView mBAcquireRewardPopView = this.E0;
            if (mBAcquireRewardPopView != null) {
                mBAcquireRewardPopView.onStop();
            }
        } catch (Throwable th2) {
            o0.b(MBridgeBaseView.TAG, th2.getMessage());
        }
    }

    public void onBackPress() {
        boolean z10;
        if (this.W || this.I || this.f39376p0) {
            return;
        }
        CampaignEx campaignEx = this.f39226b;
        if (campaignEx != null && campaignEx.getRewardTemplateMode() != null && this.f39226b.getRewardTemplateMode().f() == 5002010 && (z10 = this.f39382s0)) {
            com.mbridge.msdk.video.module.listener.a aVar = this.notifyListener;
            if (aVar != null) {
                this.L0 = true;
                aVar.a(2, c(z10));
                return;
            }
            return;
        }
        if (this.f39357a0) {
            y();
            return;
        }
        boolean z11 = this.f39358b0;
        if (z11 && this.f39359c0) {
            y();
        } else {
            if (z11 || !this.f39360d0) {
                return;
            }
            y();
        }
    }

    @Override // com.mbridge.msdk.video.module.MBridgeBaseView, android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        CampaignEx campaignEx = this.f39226b;
        if ((campaignEx == null || !campaignEx.isDynamicView()) && this.f39229e && this.T) {
            u();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        try {
            if (this.P0 != null) {
                getHandler().removeCallbacks(this.P0);
            }
            if (this.f39396z0 != 0) {
                removeCallbacks(this.Q0);
            }
        } catch (Throwable th2) {
            o0.b(MBridgeBaseView.TAG, th2.getMessage());
        }
    }

    public void preLoadData(com.mbridge.msdk.video.signal.factory.b bVar) {
        this.D = bVar;
        if (!this.f39229e) {
            com.mbridge.msdk.video.module.listener.a aVar = this.notifyListener;
            if (aVar != null) {
                aVar.a(12, "MBridgeVideoView initSuccess false");
            }
        } else if (!TextUtils.isEmpty(this.K) && this.f39226b != null) {
            com.iab.omid.library.mmadbridge.adsession.b bVar2 = this.f39365i0;
            if (bVar2 != null) {
                bVar2.d(this.mPlayerView);
                SoundImageView soundImageView = this.mSoundImageView;
                if (soundImageView != null) {
                    this.f39365i0.a(soundImageView, FriendlyObstructionPurpose.OTHER, null);
                }
                this.f39365i0.a(this.f39369m, FriendlyObstructionPurpose.OTHER, null);
                this.f39365i0.a(this.f39371n, FriendlyObstructionPurpose.VIDEO_CONTROLS, null);
            }
            k();
            this.mPlayerView.initBufferIngParam(this.M);
            this.mPlayerView.initVFPData(this.K, this.f39226b.getVideoUrlEncode(), this.N0);
            soundOperate(this.f39364h0, -1, null);
        }
        W0 = false;
    }

    @Override // com.mbridge.msdk.video.signal.j
    public void progressBarOperate(int i11) {
        ProgressBar progressBar;
        if (this.f39229e) {
            if (i11 == 1) {
                ProgressBar progressBar2 = this.f39377q;
                if (progressBar2 != null) {
                    progressBar2.setVisibility(8);
                    return;
                }
                return;
            }
            if (i11 != 2 || (progressBar = this.f39377q) == null) {
                return;
            }
            progressBar.setVisibility(0);
        }
    }

    @Override // com.mbridge.msdk.video.signal.j
    public void progressOperate(int i11, int i12) {
        if (this.f39229e) {
            o0.c(MBridgeBaseView.TAG, "progressOperate progress:" + i11);
            CampaignEx campaignEx = this.f39226b;
            int videoLength = campaignEx != null ? campaignEx.getVideoLength() : 0;
            if (i11 > 0 && i11 <= videoLength && this.mPlayerView != null) {
                o0.c(MBridgeBaseView.TAG, "progressOperate progress:" + i11);
                this.mPlayerView.seekTo(i11 * 1000);
            }
            if (i12 == 1) {
                this.f39369m.setVisibility(8);
            } else if (i12 == 2) {
                this.f39369m.setVisibility(0);
            }
            if (this.f39369m.getVisibility() == 0) {
                f();
            }
        }
    }

    public void releasePlayer() {
        try {
            PlayerView playerView = this.mPlayerView;
            if (playerView != null && !this.V) {
                playerView.release();
                if (!TextUtils.isEmpty(this.K)) {
                    com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                    long jCurrentTimeMillis = X0;
                    if (jCurrentTimeMillis != 0) {
                        jCurrentTimeMillis = System.currentTimeMillis() - X0;
                    }
                    eVar.a("duration", Long.valueOf(jCurrentTimeMillis));
                    com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000146", this.f39226b, eVar);
                }
            }
            w wVar = this.N0;
            if (wVar != null) {
                wVar.d();
            }
            if (this.f39385u != null) {
                this.f39385u = null;
            }
        } catch (Exception e11) {
            o0.b(MBridgeBaseView.TAG, e11.getMessage());
        }
    }

    public void setAdSession(com.iab.omid.library.mmadbridge.adsession.b bVar) {
        this.f39365i0 = bVar;
    }

    public void setBufferTimeout(int i11) {
        this.M = i11;
    }

    public void setCTALayoutVisibleOrGone() {
        CampaignEx campaignEx = this.f39226b;
        if (campaignEx == null || this.B == null) {
            return;
        }
        if (campaignEx.getRewardTemplateMode() == null || this.f39226b.getRewardTemplateMode().f() != 902) {
            int i11 = this.F;
            if (i11 != -5) {
                if (i11 == -3) {
                    return;
                }
                if (this.C == null) {
                    addCTAView();
                }
                if (this.F == -1) {
                    if (this.B.getVisibility() != 0) {
                        this.B.setVisibility(0);
                        postDelayed(this.P0, 3000L);
                    } else {
                        this.B.setVisibility(8);
                        getHandler().removeCallbacks(this.P0);
                    }
                }
                if (this.F >= 0) {
                    this.B.setVisibility(0);
                    return;
                }
                return;
            }
            if (this.E < -1) {
                return;
            }
            if (this.C == null) {
                addCTAView();
            }
            int i12 = this.E;
            if (i12 >= 0) {
                this.B.setVisibility(0);
                return;
            }
            if (i12 == -1) {
                if (this.B.getVisibility() != 0) {
                    this.B.setVisibility(0);
                    postDelayed(this.P0, 3000L);
                } else {
                    this.B.setVisibility(8);
                    getHandler().removeCallbacks(this.P0);
                }
            }
        }
    }

    public void setCamPlayOrderCallback(com.mbridge.msdk.video.dynview.listener.a aVar, List<CampaignEx> list, int i11, int i12) {
        MBridgeSegmentsProgressBar mBridgeSegmentsProgressBar;
        this.f39391x = aVar;
        this.mCampaignSize = list.size();
        this.mCurrPlayNum = i11;
        this.f39395z = i12;
        this.mCampOrderViewData = list;
        CampaignEx campaignEx = this.f39226b;
        if (campaignEx == null || campaignEx.getDynamicTempCode() != 5) {
            CampaignEx campaignEx2 = this.f39226b;
            if (campaignEx2 == null || campaignEx2.getProgressBarShow() != 1 || (mBridgeSegmentsProgressBar = this.f39383t) == null) {
                return;
            }
            mBridgeSegmentsProgressBar.init(1, 3);
            this.f39383t.setVisibility(0);
            return;
        }
        MBridgeSegmentsProgressBar mBridgeSegmentsProgressBar2 = this.f39383t;
        if (mBridgeSegmentsProgressBar2 == null || this.mCampOrderViewData == null) {
            return;
        }
        if (this.mCampaignSize > 1) {
            mBridgeSegmentsProgressBar2.setVisibility(0);
            this.f39383t.init(this.mCampaignSize, 2);
            for (int i13 = 0; i13 < this.mCampOrderViewData.size(); i13++) {
                int videoPlayProgress = this.mCampOrderViewData.get(i13).getVideoPlayProgress();
                if (videoPlayProgress > 0) {
                    this.f39383t.setProgress(videoPlayProgress, i13);
                }
                if (this.mCampOrderViewData.get(i13).isRewardPopViewShowed) {
                    this.H = true;
                }
            }
            return;
        }
        CampaignEx campaignEx3 = this.f39226b;
        if (campaignEx3 == null || campaignEx3.getProgressBarShow() != 1) {
            this.f39383t.setVisibility(8);
            return;
        }
        MBridgeSegmentsProgressBar mBridgeSegmentsProgressBar3 = this.f39383t;
        if (mBridgeSegmentsProgressBar3 != null) {
            mBridgeSegmentsProgressBar3.init(1, 3);
            this.f39383t.setVisibility(0);
        }
    }

    @Override // com.mbridge.msdk.video.module.MBridgeBaseView
    public void setCampaign(CampaignEx campaignEx) {
        super.setCampaign(campaignEx);
        w wVar = this.N0;
        if (wVar != null) {
            wVar.a(campaignEx);
            this.N0.b(a(campaignEx), getCDRate());
        }
    }

    public void setCloseAlert(int i11) {
        this.N = i11;
    }

    public void setContainerViewOnNotifyListener(com.mbridge.msdk.video.module.listener.a aVar) {
        this.f39385u = aVar;
    }

    @Override // com.mbridge.msdk.video.signal.j
    public void setCover(boolean z10) {
        if (this.f39229e) {
            this.mPlayerView.setIsCovered(z10);
        }
    }

    public void setDialogRole(int i11) {
        this.f39380r0 = i11 == 1;
        o0.b(MBridgeBaseView.TAG, i11 + " " + this.f39380r0);
    }

    public void setIPlayVideoViewLayoutCallBack(com.mbridge.msdk.video.dynview.listener.f fVar) {
        this.f39393y = fVar;
    }

    public void setIVRewardEnable(int i11, int i12, int i13) {
        this.f39368l0 = i11;
        this.f39370m0 = i12;
        this.f39372n0 = i13;
    }

    public void setInstDialogState(boolean z10) {
        PlayerView playerView;
        this.F0 = z10;
        if (!com.mbridge.msdk.util.b.a() || (playerView = this.mPlayerView) == null) {
            return;
        }
        playerView.setIsCovered(z10);
    }

    public void setIsIV(boolean z10) {
        this.f39363g0 = z10;
        w wVar = this.N0;
        if (wVar != null) {
            wVar.a(z10);
        }
    }

    @Override // com.mbridge.msdk.video.signal.j
    public void setMiniEndCardState(boolean z10) {
        this.W = z10;
    }

    public void setNotchPadding(int i11, int i12, int i13, int i14) {
        RelativeLayout relativeLayout;
        try {
            o0.b(MBridgeBaseView.TAG, "NOTCH VideoView " + String.format("%1s-%2s-%3s-%4s", Integer.valueOf(i11), Integer.valueOf(i12), Integer.valueOf(i13), Integer.valueOf(i14)));
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) getLayoutParams();
            int i15 = layoutParams.leftMargin;
            int i16 = layoutParams.rightMargin;
            int i17 = layoutParams.topMargin;
            int i18 = layoutParams.bottomMargin;
            this.K0 = i13;
            if (Math.max(Math.max(i15, i16), Math.max(i17, i18)) <= Math.max(Math.max(i11, i12), Math.max(i13, i14)) && (relativeLayout = this.f39373o) != null) {
                relativeLayout.postDelayed(new b(i11, i13, i12, i14), 200L);
            }
            if (this.f39369m.getVisibility() == 0) {
                f();
            }
        } catch (Exception e11) {
            o0.b(MBridgeBaseView.TAG, e11.getMessage());
        }
    }

    public void setPlayURL(String str) {
        this.K = str;
    }

    public void setPlayerViewAttachListener(u uVar) {
        this.f39387v = uVar;
    }

    @Override // com.mbridge.msdk.video.signal.j
    public void setScaleFitXY(int i11) {
        this.f39362f0 = i11;
    }

    public void setShowingAlertViewCover(boolean z10) {
        MBAcquireRewardPopView mBAcquireRewardPopView;
        if (z10 && (mBAcquireRewardPopView = this.E0) != null && this.J && this.I) {
            mBAcquireRewardPopView.onPause();
        }
        this.mPlayerView.setIsCovered(z10);
    }

    public void setShowingTransparent(boolean z10) {
        this.f39361e0 = z10;
    }

    public void setSoundState(int i11) {
        this.f39364h0 = i11;
    }

    public void setUnitId(String str) {
        this.Q = str;
        w wVar = this.N0;
        if (wVar != null) {
            wVar.a(str);
        }
    }

    public void setVideoEvents(com.iab.omid.library.mmadbridge.adsession.media.a aVar) {
        this.f39366j0 = aVar;
        w wVar = this.N0;
        if (wVar != null) {
            wVar.f39436f = aVar;
        }
        PlayerView playerView = this.mPlayerView;
        if (playerView != null) {
            playerView.setVideoEvents(aVar);
        }
    }

    public void setVideoLayout(CampaignEx campaignEx) {
        if (campaignEx != null) {
            this.f39226b = campaignEx;
            this.f39232h = campaignEx.isDynamicView();
        }
        if (this.f39232h) {
            a(this, campaignEx);
        } else {
            h();
        }
    }

    public void setVideoSkipTime(int i11) {
        this.L = i11;
    }

    @Override // com.mbridge.msdk.video.signal.j
    public void setVisible(int i11) {
        setVisibility(i11);
    }

    @Override // com.mbridge.msdk.video.signal.j
    public void showAlertView() {
        CampaignEx campaignEx;
        if (this.W) {
            return;
        }
        if (this.P == null) {
            this.P = new s();
        }
        if (this.O == null) {
            MBAlertDialog mBAlertDialog = new MBAlertDialog(getContext(), this.P);
            this.O = mBAlertDialog;
            com.iab.omid.library.mmadbridge.adsession.b bVar = this.f39365i0;
            if (bVar != null) {
                bVar.a(mBAlertDialog.getWindow().getDecorView(), FriendlyObstructionPurpose.NOT_VISIBLE, null);
            }
        }
        if (this.f39363g0) {
            this.O.makeIVAlertView(this.f39368l0, this.Q);
        } else {
            this.O.makeRVAlertView(this.Q);
        }
        PlayerView playerView = this.mPlayerView;
        if (playerView != null) {
            if (playerView.isComplete() && ((campaignEx = this.f39226b) == null || campaignEx.getRewardTemplateMode() == null || this.f39226b.getRewardTemplateMode().f() != 5002010)) {
                return;
            }
            this.O.show();
            this.f39374o0 = true;
            this.I = true;
            setShowingAlertViewCover(true);
            String strC = com.mbridge.msdk.videocommon.setting.b.b().a(com.mbridge.msdk.foundation.controller.c.m().b(), this.Q, false).c();
            this.f39367k0 = strC;
            com.mbridge.msdk.foundation.same.report.j.a(this.f39225a, this.f39226b, strC, this.Q, 1, 1);
        }
    }

    public void showBaitClickView() {
        int i11;
        MBridgeBaitClickView mBridgeBaitClickView;
        CampaignEx campaignEx = this.f39226b;
        if (campaignEx == null || !campaignEx.isDynamicView() || this.f39226b.getRewardTemplateMode() == null) {
            return;
        }
        String strE = this.f39226b.getRewardTemplateMode().e();
        if (TextUtils.isEmpty(strE)) {
            return;
        }
        try {
            String strA = z0.a(strE, "bait_click");
            if (TextUtils.isEmpty(strA) || (i11 = Integer.parseInt(strA)) == 0 || (mBridgeBaitClickView = this.f39394y0) == null) {
                return;
            }
            mBridgeBaitClickView.setVisibility(0);
            this.f39394y0.init(i11);
            this.f39394y0.startAnimation();
            this.f39394y0.setOnClickListener(new i());
        } catch (Exception e11) {
            o0.b(MBridgeBaseView.TAG, e11.getMessage());
        }
    }

    @Override // com.mbridge.msdk.video.signal.j
    public void showIVRewardAlertView(String str) {
        this.notifyListener.a(8, "");
    }

    public void showMoreOfferInPlayTemplate() {
        CampaignEx campaignEx = this.f39226b;
        if (campaignEx == null || this.G == null || !campaignEx.isDynamicView() || this.f39226b.getRewardTemplateMode() == null) {
            return;
        }
        String strE = this.f39226b.getRewardTemplateMode().e();
        if (TextUtils.isEmpty(strE)) {
            return;
        }
        try {
            String strA = z0.a(strE, "mof");
            if (TextUtils.isEmpty(strA) || Integer.parseInt(strA) != 1) {
                return;
            }
            com.mbridge.msdk.video.dynview.moffer.a.a().a(this.f39226b, this, new com.mbridge.msdk.video.module.listener.impl.i(this.f39385u), 1);
        } catch (Exception e11) {
            o0.b(MBridgeBaseView.TAG, e11.getMessage());
        }
    }

    public void showRewardPopView() {
        AcquireRewardPopViewParameters acquireRewardPopViewParameters;
        MBAcquireRewardPopView mBAcquireRewardPopView = this.E0;
        if (mBAcquireRewardPopView == null || (acquireRewardPopViewParameters = this.D0) == null) {
            return;
        }
        try {
            mBAcquireRewardPopView.init(acquireRewardPopViewParameters);
            this.E0.setVisibility(0);
            setCover(true);
            o();
            this.J = true;
            CampaignEx campaignEx = this.f39226b;
            if (campaignEx != null) {
                campaignEx.isRewardPopViewShowed = true;
            }
        } catch (Exception e11) {
            o0.b(MBridgeBaseView.TAG, e11.getMessage());
        }
    }

    @Override // com.mbridge.msdk.video.signal.j
    public void showVideoLocation(int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19) {
        float f11;
        if (this.f39229e) {
            this.f39373o.setPadding(0, 0, 0, 0);
            setVisibility(0);
            if (this.f39373o.getVisibility() != 0) {
                this.f39373o.setVisibility(0);
            }
            if (this.f39369m.getVisibility() == 0) {
                f();
            }
            if (!b(i13, i14) || this.T) {
                u();
                return;
            }
            S0 = i16;
            T0 = i17;
            U0 = i18 + 4;
            V0 = i19 + 4;
            float f12 = i13 / i14;
            try {
                f11 = (float) (this.R / this.S);
            } catch (Throwable th2) {
                o0.b(MBridgeBaseView.TAG, th2.getMessage(), th2);
                f11 = 0.0f;
            }
            if (i15 > 0) {
                R0 = i15;
                setPlayerViewRadius(i15);
            }
            if (Math.abs(f12 - f11) > 0.1f && this.f39362f0 != 1) {
                u();
                videoOperate(1);
                return;
            }
            u();
            if (!this.f39361e0) {
                setLayoutParam(i12, i11, i13, i14);
                return;
            }
            setLayoutCenter(i13, i14);
            if (W0) {
                this.notifyListener.a(Sdk$SDKError.Reason.ASSET_WRITE_ERROR_VALUE, "");
            } else {
                this.notifyListener.a(Sdk$SDKError.Reason.GZIP_ENCODE_ERROR_VALUE, "");
            }
        }
    }

    @Override // com.mbridge.msdk.video.signal.j
    public void soundOperate(int i11, int i12) {
        soundOperate(i11, i12, "2");
    }

    @Override // com.mbridge.msdk.video.signal.j
    public void soundOperate(int i11, int i12, String str) {
        com.mbridge.msdk.video.module.listener.a aVar;
        SoundImageView soundImageView;
        if (this.f39229e) {
            this.f39364h0 = i11;
            if (i11 == 1) {
                this.D.getJSCommon().g(i11);
                SoundImageView soundImageView2 = this.mSoundImageView;
                if (soundImageView2 != null) {
                    soundImageView2.setSoundStatus(false);
                }
                this.mPlayerView.closeSound();
                try {
                    com.iab.omid.library.mmadbridge.adsession.media.a aVar2 = this.f39366j0;
                    if (aVar2 != null) {
                        aVar2.p(0.0f);
                        o0.a("omsdk", "play video view:  mute");
                    }
                } catch (Exception e11) {
                    o0.a("OMSDK", e11.getMessage());
                }
            } else if (i11 == 2) {
                this.D.getJSCommon().g(i11);
                SoundImageView soundImageView3 = this.mSoundImageView;
                if (soundImageView3 != null) {
                    soundImageView3.setSoundStatus(true);
                }
                this.mPlayerView.openSound();
                try {
                    com.iab.omid.library.mmadbridge.adsession.media.a aVar3 = this.f39366j0;
                    if (aVar3 != null) {
                        aVar3.p(1.0f);
                        o0.a("omsdk", "play video view:  unmute");
                    }
                } catch (Exception e12) {
                    o0.a("OMSDK", e12.getMessage());
                }
            }
            CampaignEx campaignEx = this.f39226b;
            if (campaignEx != null && campaignEx.isDynamicView()) {
                SoundImageView soundImageView4 = this.mSoundImageView;
                if (soundImageView4 != null) {
                    soundImageView4.setVisibility(0);
                }
            } else if (i12 == 1) {
                SoundImageView soundImageView5 = this.mSoundImageView;
                if (soundImageView5 != null) {
                    soundImageView5.setVisibility(8);
                }
            } else if (i12 == 2 && (soundImageView = this.mSoundImageView) != null) {
                soundImageView.setVisibility(0);
            }
        }
        if (str == null || !str.equals("2") || (aVar = this.notifyListener) == null) {
            return;
        }
        aVar.a(7, Integer.valueOf(i11));
    }

    @Override // com.mbridge.msdk.video.signal.j
    public void videoOperate(int i11) {
        o0.a(MBridgeBaseView.TAG, "VideoView videoOperate:" + i11);
        if (this.f39229e) {
            if (i11 == 1) {
                if (getVisibility() == 0 && isfront()) {
                    o0.a(MBridgeBaseView.TAG, "VideoView videoOperate:play");
                    RelativeLayout relativeLayout = this.I0;
                    if ((relativeLayout != null && relativeLayout.getVisibility() != 0) || this.I || com.mbridge.msdk.foundation.feedback.b.f35289f) {
                        return;
                    }
                    if (!com.mbridge.msdk.util.b.a()) {
                        p();
                        return;
                    } else {
                        if (this.W || this.F0) {
                            return;
                        }
                        p();
                        return;
                    }
                }
                return;
            }
            if (i11 == 2) {
                if (getVisibility() == 0 && isfront()) {
                    o0.a(MBridgeBaseView.TAG, "VideoView videoOperate:pause");
                    o();
                    return;
                }
                return;
            }
            if (i11 == 3) {
                if (this.V) {
                    return;
                }
                this.mPlayerView.stop();
                CampaignEx campaignEx = this.f39226b;
                if (campaignEx == null || campaignEx.getRewardTemplateMode() == null || this.f39226b.getRewardTemplateMode().f() != 5002010) {
                    this.mPlayerView.release();
                    this.V = true;
                    if (TextUtils.isEmpty(this.K)) {
                        return;
                    }
                    com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                    long jCurrentTimeMillis = X0;
                    if (jCurrentTimeMillis != 0) {
                        jCurrentTimeMillis = System.currentTimeMillis() - X0;
                    }
                    eVar.a("duration", Long.valueOf(jCurrentTimeMillis));
                    com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000146", this.f39226b, eVar);
                    return;
                }
                return;
            }
            if (i11 == 5) {
                if (com.mbridge.msdk.util.b.a()) {
                    this.F0 = true;
                    if (this.V) {
                        return;
                    }
                    o();
                    return;
                }
                return;
            }
            if (i11 == 4) {
                if (com.mbridge.msdk.util.b.a()) {
                    this.F0 = false;
                    if (this.V || isMiniCardShowing()) {
                        return;
                    }
                    p();
                    return;
                }
                return;
            }
            if (i11 != 6 || this.V) {
                return;
            }
            this.mPlayerView.release();
            this.V = true;
            if (TextUtils.isEmpty(this.K)) {
                return;
            }
            com.mbridge.msdk.foundation.same.report.metrics.e eVar2 = new com.mbridge.msdk.foundation.same.report.metrics.e();
            long jCurrentTimeMillis2 = X0;
            if (jCurrentTimeMillis2 != 0) {
                jCurrentTimeMillis2 = System.currentTimeMillis() - X0;
            }
            eVar2.a("duration", Long.valueOf(jCurrentTimeMillis2));
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000146", this.f39226b, eVar2);
        }
    }
}
