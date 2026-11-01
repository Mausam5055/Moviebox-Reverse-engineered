package com.mbridge.msdk.video.bt.module;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Handler;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Base64;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.RelativeLayout;
import androidx.core.app.NotificationCompat;
import com.aliyun.player.BuildConfig;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.iab.omid.library.mmadbridge.adsession.FriendlyObstructionPurpose;
import com.iab.omid.library.mmadbridge.adsession.media.InteractionType;
import com.iab.omid.library.mmadbridge.adsession.media.Position;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.RewardPlus;
import com.mbridge.msdk.foundation.tools.b0;
import com.mbridge.msdk.foundation.tools.g0;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.q0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import com.mbridge.msdk.out.Campaign;
import com.mbridge.msdk.out.MBSupportMuteAdType;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.mbridge.msdk.scheme.applet.AppletModelManager;
import com.mbridge.msdk.scheme.applet.AppletSchemeCallBack;
import com.mbridge.msdk.scheme.applet.AppletsModel;
import com.mbridge.msdk.video.module.MBridgeContainerView;
import com.mbridge.msdk.video.module.MBridgeVideoView;
import com.mbridge.msdk.video.signal.container.AbstractJSContainer;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class MBTempContainer extends MBTempContainerDiff {

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    private static final String f38824s0 = "MBTempContainer";
    private int A;
    private int B;
    private boolean C;
    private int D;
    private int E;
    private int F;
    private int G;
    private int H;
    private String I;
    private String J;
    private List<CampaignEx> K;
    private int L;
    private com.mbridge.msdk.foundation.same.report.metrics.c M;
    protected boolean N;
    private LayoutInflater O;
    protected boolean P;
    protected k Q;
    protected WindVaneWebView R;
    protected MBridgeContainerView S;
    protected Handler T;
    private int U;
    private int V;
    protected Runnable W;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    protected Runnable f38825a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    private View f38826b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    private boolean f38827c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    private boolean f38828d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    private boolean f38829e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    private boolean f38830f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    private boolean f38831g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    private boolean f38832h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    private boolean f38833i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    private boolean f38834j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    private boolean f38835k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    private boolean f38836l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    private com.mbridge.msdk.mbsignalcommon.mraid.d f38837m0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    private com.iab.omid.library.mmadbridge.adsession.b f38838n0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    private com.iab.omid.library.mmadbridge.adsession.media.a f38839o0;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    private com.iab.omid.library.mmadbridge.adsession.a f38840p0;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    private Runnable f38841q0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private View f38842r;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    private boolean f38843r0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private CampaignEx f38844s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private com.mbridge.msdk.videocommon.download.a f38845t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private com.mbridge.msdk.video.bt.module.orglistener.h f38846u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private com.mbridge.msdk.video.bt.module.listener.b f38847v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private com.mbridge.msdk.video.dynview.listener.a f38848w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private int f38849x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private String f38850y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private com.mbridge.msdk.video.signal.factory.b f38851z;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MBTempContainer.this.f38826b0.setVisibility(8);
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (MBTempContainer.this.getActivityProxy().a() == 0) {
                MBTempContainer.this.defaultLoad(-1, "WebView load timeout");
            } else {
                MBTempContainer.this.U = -3;
            }
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (MBTempContainer.this.getActivityProxy().a() == 0) {
                MBTempContainer.this.defaultLoad(-3, "Signal Communication connect timeout");
            } else {
                MBTempContainer.this.U = -4;
            }
        }
    }

    class d implements MBridgeVideoView.u {
        d() {
        }

        @Override // com.mbridge.msdk.video.module.MBridgeVideoView.u
        public void a() {
            if (MBTempContainer.this.f38844s != null) {
                MBTempContainer.this.l();
                if (!MBTempContainer.this.f38844s.isDynamicView() || !((AbstractJSContainer) MBTempContainer.this).f39794p || MBTempContainer.this.f38844s.isCampaignIsFiltered()) {
                    MBTempContainer.this.f38846u.a(MBTempContainer.this.M);
                }
                com.mbridge.msdk.video.bt.module.orglistener.f.a(MBTempContainer.this.getContext(), MBTempContainer.this.f38844s, ((AbstractJSContainer) MBTempContainer.this).f39782d, MBTempContainer.this.f38849x);
            }
        }
    }

    class e implements com.mbridge.msdk.video.dynview.listener.f {
        e() {
        }

        @Override // com.mbridge.msdk.video.dynview.listener.f
        public void a() {
            MBTempContainer.this.w();
        }
    }

    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (MBTempContainer.this.f38826b0 != null) {
                MBTempContainer.this.f38826b0.setVisibility(8);
            }
        }
    }

    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (((AbstractJSContainer) MBTempContainer.this).f39781c != null) {
                ((AbstractJSContainer) MBTempContainer.this).f39781c.finish();
            }
        }
    }

    class h implements com.mbridge.msdk.foundation.feedback.a {
        h() {
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a() {
            String string;
            MBTempContainer.this.onPause();
            try {
                JSONObject jSONObject = new JSONObject();
                if (com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                    jSONObject.put(NotificationCompat.CATEGORY_STATUS, 1);
                }
                string = jSONObject.toString();
            } catch (Throwable th2) {
                o0.b(MBTempContainer.f38824s0, th2.getMessage(), th2);
                string = "";
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) MBTempContainer.this.R, "onFeedbackAlertStatusNotify", Base64.encodeToString(string.getBytes(), 2));
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a(String str) {
            String string;
            MBTempContainer.this.onResume();
            try {
                JSONObject jSONObject = new JSONObject();
                if (com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                    jSONObject.put(NotificationCompat.CATEGORY_STATUS, 2);
                }
                string = jSONObject.toString();
            } catch (Throwable th2) {
                o0.b(MBTempContainer.f38824s0, th2.getMessage(), th2);
                string = "";
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) MBTempContainer.this.R, "onFeedbackAlertStatusNotify", Base64.encodeToString(string.getBytes(), 2));
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void close() {
            String string;
            MBTempContainer.this.onResume();
            try {
                JSONObject jSONObject = new JSONObject();
                if (com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                    jSONObject.put(NotificationCompat.CATEGORY_STATUS, 2);
                }
                string = jSONObject.toString();
            } catch (Throwable th2) {
                o0.b(MBTempContainer.f38824s0, th2.getMessage(), th2);
                string = "";
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) MBTempContainer.this.R, "onFeedbackAlertStatusNotify", Base64.encodeToString(string.getBytes(), 2));
        }
    }

    class i implements com.mbridge.msdk.mbsignalcommon.mraid.d.b {
        i() {
        }

        @Override // com.mbridge.msdk.mbsignalcommon.mraid.d.b
        public void a(double d11) {
            MBridgeContainerView mBridgeContainerView;
            o0.b(MBTempContainer.f38824s0, "volume is : " + d11);
            try {
                if (!MBTempContainer.this.f38844s.isMraid() || (mBridgeContainerView = MBTempContainer.this.S) == null || mBridgeContainerView.getH5EndCardView() == null) {
                    return;
                }
                MBTempContainer.this.S.getH5EndCardView().volumeChange(d11);
            } catch (Exception e11) {
                o0.b(MBTempContainer.f38824s0, e11.getMessage());
            }
        }
    }

    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MBTempContainer.this.f38826b0.setBackgroundColor(0);
            MBTempContainer.this.f38826b0.setVisibility(0);
            MBTempContainer.this.f38826b0.bringToFront();
        }
    }

    public interface k {

        public static class a implements k {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private boolean f38862a = false;

            @Override // com.mbridge.msdk.video.bt.module.MBTempContainer.k
            public void a(boolean z10) {
                this.f38862a = z10;
            }

            @Override // com.mbridge.msdk.video.bt.module.MBTempContainer.k
            public void onError(String str) {
                o0.b("ActivityErrorListener", str);
                this.f38862a = true;
            }
        }

        void a(boolean z10);

        void onError(String str);
    }

    private static final class l extends AppletSchemeCallBack {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private CampaignEx f38863a;

        public l(CampaignEx campaignEx) {
            this.f38863a = campaignEx;
        }

        @Override // com.mbridge.msdk.scheme.applet.AppletSchemeCallBack
        protected void onRequestFailed(int i11, String str, String str2) {
            if (MBridgeConstans.DEBUG) {
                o0.a(MBTempContainer.f38824s0, "request wx scheme failed: errorCode: " + i11 + " errorMessage: " + str);
            }
            try {
                CampaignEx campaignEx = this.f38863a;
                if (campaignEx != null) {
                    campaignEx.setClickURL(str2);
                }
            } catch (Exception e11) {
                if (MBridgeConstans.DEBUG) {
                    o0.b(MBTempContainer.f38824s0, e11.getMessage());
                }
            }
        }

        @Override // com.mbridge.msdk.scheme.applet.AppletSchemeCallBack
        protected void onRequestStart() {
            if (MBridgeConstans.DEBUG) {
                o0.a(MBTempContainer.f38824s0, "start request wx scheme");
            }
        }

        @Override // com.mbridge.msdk.scheme.applet.AppletSchemeCallBack
        protected void onRequestSuccess(String str) {
            if (MBridgeConstans.DEBUG) {
                o0.a(MBTempContainer.f38824s0, "request wx scheme success");
            }
            try {
                CampaignEx campaignEx = this.f38863a;
                if (campaignEx != null) {
                    campaignEx.setDeepLinkUrl(str);
                }
            } catch (Exception e11) {
                if (MBridgeConstans.DEBUG) {
                    o0.b(MBTempContainer.f38824s0, e11.getMessage());
                }
            }
        }
    }

    private final class m extends com.mbridge.msdk.video.module.listener.impl.a {
        public m(Activity activity, CampaignEx campaignEx) {
            super(activity, campaignEx);
        }

        /* JADX WARN: Code duplicated, block: B:40:0x00d9  */
        @Override // com.mbridge.msdk.video.module.listener.impl.a, com.mbridge.msdk.video.module.listener.impl.f, com.mbridge.msdk.video.module.listener.a
        public void a(int i11, Object obj) {
            if (com.mbridge.msdk.util.b.a()) {
                MBTempContainer.this.setChinaJsCommonContext();
            }
            if (i11 == 108) {
                if (com.mbridge.msdk.util.b.a()) {
                    MBTempContainer mBTempContainer = MBTempContainer.this;
                    mBTempContainer.setChinaCallBackStatus(mBTempContainer.R);
                }
                MBTempContainer.this.getJSCommon().a(new com.mbridge.msdk.video.signal.impl.a.b(MBTempContainer.this.getJSCommon(), new o(MBTempContainer.this, null)));
                MBTempContainer.this.getJSCommon().click(1, obj != null ? obj.toString() : "");
            } else if (i11 == 113) {
                MBTempContainer.this.f38846u.a(true, ((AbstractJSContainer) MBTempContainer.this).f39783e, ((AbstractJSContainer) MBTempContainer.this).f39782d);
            } else if (i11 == 117) {
                MBridgeVideoView mBridgeVideoView = MBTempContainer.this.mbridgeVideoView;
                if (mBridgeVideoView != null) {
                    mBridgeVideoView.setVisible(4);
                }
                MBTempContainer.this.f38834j0 = true;
                MBTempContainer.this.f38846u.a(((AbstractJSContainer) MBTempContainer.this).f39783e, ((AbstractJSContainer) MBTempContainer.this).f39782d);
            } else if (i11 == 126 || i11 == 128) {
                MBTempContainer.this.f38846u.a(false, ((AbstractJSContainer) MBTempContainer.this).f39783e, ((AbstractJSContainer) MBTempContainer.this).f39782d);
            } else if (i11 != 131) {
                switch (i11) {
                    case 103:
                    case 104:
                        MBTempContainer.this.onAdClose();
                        break;
                    case 105:
                        if (com.mbridge.msdk.util.b.a()) {
                            MBTempContainer.this.setChinaCTACallBack();
                        }
                        MBTempContainer.this.getJSCommon().click(1, obj != null ? obj.toString() : "");
                        break;
                    case 106:
                        if (!com.mbridge.msdk.util.b.a()) {
                            MBTempContainer.this.f38846u.a(true, ((AbstractJSContainer) MBTempContainer.this).f39783e, ((AbstractJSContainer) MBTempContainer.this).f39782d);
                        } else {
                            MBTempContainer mBTempContainer2 = MBTempContainer.this;
                            mBTempContainer2.setChinaBrowserCallBack(mBTempContainer2.f38847v, MBTempContainer.this.f38850y, MBTempContainer.this.f38846u, MBTempContainer.this.f38844s);
                            if (((AbstractJSContainer) MBTempContainer.this).f39781c != null && MBTempContainer.this.f38844s != null) {
                                MBTempContainer.this.onAdClose();
                            }
                        }
                        break;
                }
            } else {
                MBTempContainer.this.f38846u.a(true, ((AbstractJSContainer) MBTempContainer.this).f39783e, ((AbstractJSContainer) MBTempContainer.this).f39782d);
            }
            super.a(i11, obj);
        }
    }

    private final class n extends com.mbridge.msdk.video.module.listener.impl.f {
        private n() {
        }

        /* synthetic */ n(MBTempContainer mBTempContainer, b bVar) {
            this();
        }

        @Override // com.mbridge.msdk.video.module.listener.impl.f, com.mbridge.msdk.video.module.listener.a
        public void a(int i11, Object obj) {
            super.a(i11, obj);
            try {
                String string = obj instanceof JSONObject ? obj.toString() : (String) obj;
                if (((AbstractJSContainer) MBTempContainer.this).f39789k && !TextUtils.isEmpty(string)) {
                    JSONObject jSONObject = new JSONObject(string);
                    int iOptInt = jSONObject.optInt(NativeComponentConstants.KEY_COMPONENT_TYPE);
                    int iOptInt2 = jSONObject.optInt(CampaignEx.JSON_NATIVE_VIDEO_COMPLETE);
                    if (iOptInt == 2) {
                        MBTempContainer.this.A = com.mbridge.msdk.foundation.same.a.D;
                    } else if (iOptInt != 3) {
                        MBTempContainer.this.A = com.mbridge.msdk.foundation.same.a.F;
                    } else {
                        MBTempContainer.this.A = com.mbridge.msdk.foundation.same.a.E;
                    }
                    MBTempContainer.this.B = iOptInt2;
                }
            } catch (Exception unused) {
                o0.b("NotifyListener", "PlayableResultListener ERROR");
            }
            if (i11 == 120) {
                MBTempContainer.this.f38846u.a(((AbstractJSContainer) MBTempContainer.this).f39783e, ((AbstractJSContainer) MBTempContainer.this).f39782d);
            }
            if (i11 == 131) {
                MBTempContainer.this.getJSCommon().click(4, obj != null ? obj.toString() : "");
                return;
            }
            if (i11 == 126) {
                MBTempContainer.this.f38846u.a(false, ((AbstractJSContainer) MBTempContainer.this).f39783e, ((AbstractJSContainer) MBTempContainer.this).f39782d);
                return;
            }
            if (i11 == 127) {
                MBTempContainer.this.f38828d0 = true;
                MBTempContainer.this.f38846u.a(MBTempContainer.this.M);
                MBTempContainer.this.f38846u.a(((AbstractJSContainer) MBTempContainer.this).f39783e, ((AbstractJSContainer) MBTempContainer.this).f39782d);
                MBTempContainer.this.getJSContainerModule().showEndcard(100);
                return;
            }
            switch (i11) {
                case 100:
                    MBTempContainer.this.f38835k0 = true;
                    MBTempContainer mBTempContainer = MBTempContainer.this;
                    mBTempContainer.T.postDelayed(mBTempContainer.f38841q0, 250L);
                    MBTempContainer.this.f38846u.a(MBTempContainer.this.M);
                    break;
                case 101:
                case 102:
                    MBTempContainer.this.getJSCommon().f();
                    break;
                case 103:
                    MBTempContainer.this.f38828d0 = true;
                    if (!MBTempContainer.this.f38844s.isMraid()) {
                        MBTempContainer.this.getJSCommon().f();
                    } else {
                        MBTempContainer.this.onAdClose();
                    }
                    break;
                case 104:
                    MBTempContainer.this.onAdClose();
                    break;
                case 105:
                    if (com.mbridge.msdk.util.b.a()) {
                        MBTempContainer.this.setChinaCTACallBack();
                    }
                    MBTempContainer.this.getJSCommon().click(1, obj != null ? obj.toString() : "");
                    break;
            }
        }
    }

    private class o extends com.mbridge.msdk.video.signal.impl.a.C0571a {
        private o() {
        }

        /* synthetic */ o(MBTempContainer mBTempContainer, b bVar) {
            this();
        }

        @Override // com.mbridge.msdk.video.signal.impl.a.C0571a, com.mbridge.msdk.video.signal.a.InterfaceC0570a
        public void a() {
            super.a();
            MBTempContainer mBTempContainer = MBTempContainer.this;
            Handler handler = mBTempContainer.T;
            if (handler != null) {
                handler.removeCallbacks(mBTempContainer.W);
            }
        }

        @Override // com.mbridge.msdk.video.signal.impl.a.C0571a, com.mbridge.msdk.video.signal.a.InterfaceC0570a
        public void a(int i11, String str) {
            super.a(i11, str);
            MBTempContainer.this.defaultLoad(i11, str);
        }

        @Override // com.mbridge.msdk.video.signal.impl.a.C0571a, com.mbridge.msdk.video.signal.a.InterfaceC0570a
        public void a(boolean z10) {
            if (MBTempContainer.this.f38839o0 != null) {
                try {
                    MBTempContainer.this.f38839o0.a(InteractionType.CLICK);
                    o0.a("omsdk", "mbtc adUserInteraction click");
                } catch (Exception e11) {
                    o0.b("omsdk", e11.getMessage());
                }
            }
            super.a(z10);
            MBTempContainer.this.f38846u.a(z10, ((AbstractJSContainer) MBTempContainer.this).f39783e, ((AbstractJSContainer) MBTempContainer.this).f39782d);
        }

        @Override // com.mbridge.msdk.video.signal.impl.a.C0571a, com.mbridge.msdk.out.BaseTrackingListener
        public void onFinishRedirection(Campaign campaign, String str) {
            super.onFinishRedirection(campaign, str);
            MBTempContainer.this.f38832h0 = true;
            MBTempContainer.this.m();
            if (campaign != null && (campaign instanceof CampaignEx)) {
                try {
                    CampaignEx campaignEx = (CampaignEx) campaign;
                    String strOptString = new JSONObject(MBTempContainer.this.getJSVideoModule().getCurrentProgress()).optString(NotificationCompat.CATEGORY_PROGRESS, "");
                    if (campaignEx.getLinkType() == 3 && campaignEx.getEndcard_click_result() == 2 && strOptString.equals(BuildConfig.VERSION_NAME) && ((AbstractJSContainer) MBTempContainer.this).f39781c != null) {
                        if (((AbstractJSContainer) MBTempContainer.this).f39794p) {
                            MBTempContainer.this.onAdClose();
                        } else {
                            ((AbstractJSContainer) MBTempContainer.this).f39781c.finish();
                        }
                    }
                } catch (JSONException e11) {
                    e11.printStackTrace();
                }
            }
            if (MBTempContainer.this.f38843r0) {
                MBTempContainer.this.onResume();
            }
        }

        @Override // com.mbridge.msdk.video.signal.impl.a.C0571a, com.mbridge.msdk.video.signal.a.InterfaceC0570a
        public void onInitSuccess() {
            super.onInitSuccess();
            MBTempContainer.this.receiveSuccess();
        }

        @Override // com.mbridge.msdk.video.signal.impl.a.C0571a, com.mbridge.msdk.out.BaseTrackingListener
        public void onRedirectionFailed(Campaign campaign, String str) {
            super.onRedirectionFailed(campaign, str);
            MBTempContainer.this.m();
            MBTempContainer.this.f38832h0 = true;
        }

        @Override // com.mbridge.msdk.video.signal.impl.a.C0571a, com.mbridge.msdk.out.BaseTrackingListener
        public void onStartRedirection(Campaign campaign, String str) {
            super.onStartRedirection(campaign, str);
            MBTempContainer.this.y();
            if (MBTempContainer.this.f38843r0) {
                MBTempContainer.this.onPause();
            }
        }
    }

    private final class p extends com.mbridge.msdk.video.module.listener.impl.f {
        private p() {
        }

        /* synthetic */ p(MBTempContainer mBTempContainer, b bVar) {
            this();
        }

        @Override // com.mbridge.msdk.video.module.listener.impl.f, com.mbridge.msdk.video.module.listener.a
        public void a(int i11, Object obj) {
            String string;
            super.a(i11, obj);
            if (((AbstractJSContainer) MBTempContainer.this).f39789k) {
                try {
                    if (obj instanceof String) {
                        String str = (String) obj;
                        if (!TextUtils.isEmpty(str)) {
                            JSONObject jSONObject = new JSONObject(str);
                            MBTempContainer.this.A = jSONObject.getInt("Alert_window_status");
                            MBTempContainer.this.B = jSONObject.getInt("complete_info");
                        }
                    }
                } catch (Exception e11) {
                    o0.b("NotifyListener", e11.getMessage());
                }
            }
            if (i11 != 2) {
                if (i11 == 121) {
                    MBTempContainer.this.f38828d0 = true;
                    MBTempContainer.this.f38846u.b(((AbstractJSContainer) MBTempContainer.this).f39783e, ((AbstractJSContainer) MBTempContainer.this).f39782d);
                    MBTempContainer.this.f38833i0 = false;
                    return;
                }
                if (i11 == 16) {
                    if (com.mbridge.msdk.util.b.a()) {
                        MBTempContainer.this.onAdClose();
                        return;
                    } else {
                        MBTempContainer.this.getJSCommon().f();
                        return;
                    }
                }
                if (i11 == 17) {
                    MBTempContainer.this.f38828d0 = true;
                    MBridgeContainerView mBridgeContainerView = MBTempContainer.this.S;
                    if (mBridgeContainerView != null) {
                        mBridgeContainerView.setRewardStatus(true);
                        return;
                    }
                    return;
                }
                switch (i11) {
                    case 10:
                        MBTempContainer.this.f38833i0 = true;
                        if (MBTempContainer.this.f38844s != null && !q0.a().a("i_l_s_t_r_i", false)) {
                            MBTempContainer.this.l();
                            if (!MBTempContainer.this.f38844s.isDynamicView() || !((AbstractJSContainer) MBTempContainer.this).f39794p || MBTempContainer.this.f38844s.isCampaignIsFiltered()) {
                                MBTempContainer.this.f38846u.a(MBTempContainer.this.M);
                            }
                            com.mbridge.msdk.video.bt.module.orglistener.f.a(MBTempContainer.this.getContext(), MBTempContainer.this.f38844s, ((AbstractJSContainer) MBTempContainer.this).f39782d, MBTempContainer.this.f38849x);
                            break;
                        }
                        break;
                }
            }
            if (i11 == 12) {
                try {
                    string = obj instanceof String ? obj.toString() : "Play error but has no message.";
                } catch (Throwable th2) {
                    o0.b("NotifyListener", th2.getMessage());
                }
                com.mbridge.msdk.video.bt.module.orglistener.f.a(MBTempContainer.this.getContext(), MBTempContainer.this.f38844s, ((AbstractJSContainer) MBTempContainer.this).f39782d, string, MBTempContainer.this.f38849x);
                if (!MBTempContainer.this.f38833i0) {
                    if (((AbstractJSContainer) MBTempContainer.this).f39784f.C() == 0) {
                        MBTempContainer.this.f38846u.a(MBTempContainer.this.M, "play error");
                        MBTempContainer.this.f38833i0 = false;
                        MBTempContainer.this.onAdClose();
                        return;
                    } else {
                        MBTempContainer.this.l();
                        if (MBTempContainer.this.f38844s == null || !MBTempContainer.this.f38844s.isDynamicView() || !((AbstractJSContainer) MBTempContainer.this).f39794p || MBTempContainer.this.f38844s.isCampaignIsFiltered()) {
                            MBTempContainer.this.f38846u.a(MBTempContainer.this.M);
                        }
                    }
                }
            }
            MBTempContainer.this.getJSVideoModule().videoOperate(i11 == 2 ? 6 : 3);
            MBTempContainer.this.f38833i0 = false;
            if (MBTempContainer.this.f38839o0 == null || i11 != 2) {
                return;
            }
            o0.b("omsdk", "mbtc skip");
            try {
                MBTempContainer.this.f38839o0.m();
                MBTempContainer.this.f38839o0 = null;
            } catch (Exception e12) {
                o0.a("omsdk", e12.getMessage());
            }
        }
    }

    public MBTempContainer(Context context) {
        super(context);
        this.f38849x = 1;
        this.f38850y = "";
        this.A = com.mbridge.msdk.foundation.same.a.F;
        this.C = false;
        this.I = "";
        this.K = new ArrayList();
        this.L = 0;
        this.N = false;
        this.P = false;
        this.Q = new k.a();
        this.T = new Handler();
        this.U = 0;
        this.V = 0;
        this.W = new b();
        this.f38825a0 = new c();
        this.f38827c0 = false;
        this.f38828d0 = false;
        this.f38829e0 = false;
        this.f38831g0 = false;
        this.f38832h0 = false;
        this.f38833i0 = false;
        this.f38834j0 = false;
        this.f38835k0 = false;
        this.f38836l0 = false;
        this.f38838n0 = null;
        this.f38839o0 = null;
        this.f38840p0 = null;
        this.f38841q0 = new f();
        this.f38843r0 = false;
        init(context);
    }

    public MBTempContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f38849x = 1;
        this.f38850y = "";
        this.A = com.mbridge.msdk.foundation.same.a.F;
        this.C = false;
        this.I = "";
        this.K = new ArrayList();
        this.L = 0;
        this.N = false;
        this.P = false;
        this.Q = new k.a();
        this.T = new Handler();
        this.U = 0;
        this.V = 0;
        this.W = new b();
        this.f38825a0 = new c();
        this.f38827c0 = false;
        this.f38828d0 = false;
        this.f38829e0 = false;
        this.f38831g0 = false;
        this.f38832h0 = false;
        this.f38833i0 = false;
        this.f38834j0 = false;
        this.f38835k0 = false;
        this.f38836l0 = false;
        this.f38838n0 = null;
        this.f38839o0 = null;
        this.f38840p0 = null;
        this.f38841q0 = new f();
        this.f38843r0 = false;
        init(context);
    }

    private void A() {
        AppletsModel appletsModel;
        if (this.f38844s == null) {
            return;
        }
        try {
            appletsModel = AppletModelManager.getInstance().get(this.f38844s);
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                e11.printStackTrace();
            }
            appletsModel = null;
        }
        if (appletsModel != null) {
            try {
                if (appletsModel.can(0)) {
                    appletsModel.setUserClick(false);
                    appletsModel.requestWxAppletsScheme(0, new l(this.f38844s));
                }
            } catch (Exception e12) {
                appletsModel.clearRequestState();
                if (MBridgeConstans.DEBUG) {
                    e12.printStackTrace();
                }
            }
        }
    }

    private int a(int i11, int i12) {
        List<CampaignEx> list;
        if (i11 < 0 || (list = this.K) == null || list.size() == 0 || i12 <= 1) {
            return i11;
        }
        int videoLength = 0;
        for (int i13 = 0; i13 < i12 - 1; i13++) {
            if (this.K.get(i13) != null) {
                videoLength += this.K.get(i13).getVideoLength();
            }
        }
        if (i11 > videoLength) {
            return i11 - videoLength;
        }
        return 0;
    }

    private void b(int i11, String str) {
        try {
            com.mbridge.msdk.foundation.entity.m mVar = new com.mbridge.msdk.foundation.entity.m();
            mVar.j("2000037");
            mVar.h("code=" + i11 + ",desc=" + str);
            CampaignEx campaignEx = this.f38844s;
            mVar.t((campaignEx == null || campaignEx.getRewardTemplateMode() == null) ? "" : this.f38844s.getRewardTemplateMode().e());
            mVar.u(this.f39782d);
            CampaignEx campaignEx2 = this.f38844s;
            mVar.b(campaignEx2 != null ? campaignEx2.getId() : "");
            CampaignEx campaignEx3 = this.f38844s;
            if (campaignEx3 != null && !TextUtils.isEmpty(campaignEx3.getRequestId())) {
                mVar.n(this.f38844s.getRequestId());
            }
            CampaignEx campaignEx4 = this.f38844s;
            if (campaignEx4 != null && !TextUtils.isEmpty(campaignEx4.getRequestIdNotice())) {
                mVar.o(this.f38844s.getRequestIdNotice());
            }
            int iS = k0.s(getContext());
            mVar.c(iS);
            mVar.l(k0.a(getContext(), iS));
            com.mbridge.msdk.foundation.same.report.o.i(mVar);
        } catch (Throwable th2) {
            o0.b(f38824s0, th2.getMessage(), th2);
        }
    }

    private int getBufferTimeout() {
        try {
            com.mbridge.msdk.videocommon.setting.a aVarC = com.mbridge.msdk.videocommon.setting.b.b().c();
            if (aVarC == null) {
                com.mbridge.msdk.videocommon.setting.b.b().a();
            }
            if (aVarC != null) {
                return (int) aVarC.i();
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
        return 5;
    }

    private int getCloseBtnTime() {
        CampaignEx campaignEx = this.f38844s;
        if (campaignEx == null) {
            return 1;
        }
        boolean zA = t0.a(MBridgeConstans.DYNAMIC_VIEW_KEY_CLOSE_BTN_DELATE, campaignEx.getendcard_url());
        int iC = t0.c(this.f38844s.getendcard_url(), MBridgeConstans.DYNAMIC_VIEW_KEY_CLOSE_BTN_DELATE);
        if (!zA || iC < 0) {
            return this.f38844s.getCbd() > -2 ? this.f38844s.getCbd() : this.f39784f.i();
        }
        return iC;
    }

    private void k() {
        if (this.f39784f == null) {
            this.f39784f = com.mbridge.msdk.videocommon.setting.b.b().a(com.mbridge.msdk.foundation.controller.c.m().b(), this.f39782d, this.f39789k);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        try {
            com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
            MBridgeVideoView mBridgeVideoView = this.mbridgeVideoView;
            if (mBridgeVideoView == null || mBridgeVideoView.notifyListener == null) {
                eVar.a("notify_listener", 0);
            } else {
                eVar.a("notify_listener", 1);
                com.mbridge.msdk.video.module.listener.a aVar = this.mbridgeVideoView.notifyListener;
                if (aVar instanceof com.mbridge.msdk.video.module.listener.impl.n) {
                    eVar.a("listener_type", 1);
                } else if (aVar instanceof com.mbridge.msdk.video.module.listener.impl.m) {
                    eVar.a("listener_type", 2);
                } else {
                    eVar.a("listener_type", 3);
                }
            }
            com.mbridge.msdk.foundation.same.report.metrics.c cVar = this.M;
            if (cVar != null) {
                cVar.a("2000130", eVar);
            }
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                e11.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m() {
        if (isLoadSuccess()) {
            this.f39781c.runOnUiThread(new a());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAdClose() {
        int i11;
        try {
            com.mbridge.msdk.video.bt.module.listener.b bVar = this.f38847v;
            if (bVar == null) {
                Activity activity = this.f39781c;
                if (activity != null) {
                    activity.finish();
                    return;
                }
                return;
            }
            if (this.f39789k && ((i11 = this.f39791m) == com.mbridge.msdk.foundation.same.a.H || i11 == com.mbridge.msdk.foundation.same.a.I)) {
                boolean z10 = true;
                if (this.B != 1) {
                    z10 = false;
                }
                bVar.a(z10, this.A);
            }
            this.f38847v.a(this.f38850y, this.f38828d0, this.f39786h);
        } catch (Exception unused) {
            Activity activity2 = this.f39781c;
            if (activity2 != null) {
                activity2.finish();
            }
        }
    }

    private void q() {
        com.iab.omid.library.mmadbridge.adsession.b bVar = this.f38838n0;
        if (bVar != null) {
            try {
                MBridgeContainerView mBridgeContainerView = this.S;
                FriendlyObstructionPurpose friendlyObstructionPurpose = FriendlyObstructionPurpose.OTHER;
                bVar.a(mBridgeContainerView, friendlyObstructionPurpose, null);
                View view = this.f38826b0;
                if (view != null) {
                    this.f38838n0.a(view, friendlyObstructionPurpose, null);
                }
                WindVaneWebView windVaneWebView = this.R;
                if (windVaneWebView != null) {
                    this.f38838n0.a(windVaneWebView, friendlyObstructionPurpose, null);
                }
                this.mbridgeVideoView.setVideoEvents(this.f38839o0);
                this.f38838n0.g();
                if (this.f38840p0 != null) {
                    com.iab.omid.library.mmadbridge.adsession.media.b bVarB = com.iab.omid.library.mmadbridge.adsession.media.b.b(true, Position.STANDALONE);
                    o0.a("omsdk", "bt:   adEvents.loaded");
                    this.f38840p0.d(bVarB);
                    this.f38840p0.b();
                }
            } catch (Exception e11) {
                o0.a("omsdk", e11.getMessage());
            }
        }
    }

    private void r() {
        CampaignEx campaignEx;
        int i11;
        boolean z10 = true;
        try {
            this.f38827c0 = true;
            CampaignEx campaignEx2 = this.f38844s;
            if (campaignEx2 != null && campaignEx2.getPlayable_ads_without_video() == 2) {
                this.f38828d0 = true;
            }
            com.iab.omid.library.mmadbridge.adsession.media.a aVar = this.f38839o0;
            if (aVar != null && !this.f38828d0) {
                try {
                    aVar.m();
                    this.f38839o0 = null;
                } catch (Exception e11) {
                    o0.a("omsdk", e11.getMessage());
                }
            }
            com.mbridge.msdk.video.bt.module.orglistener.h hVar = this.f38846u;
            if (hVar != null) {
                if (this.f39789k && ((i11 = this.f39791m) == com.mbridge.msdk.foundation.same.a.H || i11 == com.mbridge.msdk.foundation.same.a.I)) {
                    if (this.B != 1) {
                        z10 = false;
                    }
                    hVar.a(z10, this.A);
                }
                if (!this.f38828d0) {
                    this.f39786h.a(0);
                }
                this.M.a(this.f38844s);
                this.f38846u.a(this.M, this.f38828d0, this.f39786h);
            }
            this.T.removeCallbacks(this.f38841q0);
            if ((!this.f39789k && !this.f39794p) || ((campaignEx = this.f38844s) != null && campaignEx.isDynamicView())) {
                u();
            }
            if (!this.f39794p) {
                if (this.f39789k) {
                    com.mbridge.msdk.videocommon.a.b(MBSupportMuteAdType.INTERSTITIAL_VIDEO, this.f38844s);
                } else {
                    com.mbridge.msdk.videocommon.a.b(94, this.f38844s);
                }
            }
            MBridgeContainerView mBridgeContainerView = this.S;
            if (mBridgeContainerView != null) {
                mBridgeContainerView.release();
            }
        } catch (Throwable th2) {
            o0.b(f38824s0, th2.getMessage(), th2);
        }
    }

    private void s() {
        com.mbridge.msdk.foundation.same.report.h hVar = new com.mbridge.msdk.foundation.same.report.h(getContext());
        CampaignEx campaignEx = this.f38844s;
        if (campaignEx != null) {
            hVar.b(campaignEx.getRequestId(), this.f38844s.getRequestIdNotice(), this.f38844s.getId(), this.f39782d, com.mbridge.msdk.mbsignalcommon.mraid.c.b(this.f38844s.getId()), this.f38844s.isBidCampaign());
            com.mbridge.msdk.mbsignalcommon.mraid.c.a(this.f38844s.getId());
            this.f38830f0 = true;
        }
    }

    private void t() {
        Runnable runnable;
        int i11 = this.U;
        if (i11 == -3) {
            runnable = this.W;
        } else {
            runnable = i11 == -4 ? this.f38825a0 : null;
        }
        if (runnable != null) {
            runnable.run();
            this.U = 0;
        }
    }

    private void u() {
        if (this.f38828d0) {
            if (com.mbridge.msdk.util.b.a() && checkChinaSendToServerDiff(this.f38846u)) {
                return;
            }
            o0.a(f38824s0, "sendToServerRewardInfo");
            com.mbridge.msdk.video.module.report.b.a(this.f38844s, this.f39786h, this.f39782d, this.f39785g, this.J);
        }
    }

    private void v() {
        getJSCommon().setAdEvents(this.f38840p0);
        getJSCommon().setAdSession(this.f38838n0);
        getJSCommon().setVideoEvents(this.f38839o0);
        getJSCommon().g(this.f39788j);
        getJSCommon().setUnitId(this.f39782d);
        getJSCommon().setRewardUnitSetting(this.f39784f);
        getJSCommon().a(new o(this, null));
        CampaignEx campaignEx = this.f38844s;
        if (campaignEx != null) {
            if (campaignEx.isMraid() || this.f38844s.isActiveOm()) {
                com.mbridge.msdk.mbsignalcommon.mraid.d dVar = new com.mbridge.msdk.mbsignalcommon.mraid.d(getContext());
                this.f38837m0 = dVar;
                dVar.c();
                this.f38837m0.a();
                this.f38837m0.a(new i());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w() {
        try {
            com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
            eVar.a("temp_container", getWidth() + "x" + getHeight());
            if (this.R != null) {
                eVar.a("web_view", this.R.getWidth() + "x" + this.R.getHeight());
            }
            if (this.mbridgeVideoView != null) {
                eVar.a("mbridge_video_view", this.mbridgeVideoView.getWidth() + "x" + this.mbridgeVideoView.getHeight());
                if (this.mbridgeVideoView.mPlayerView != null) {
                    eVar.a("player_view", this.mbridgeVideoView.mPlayerView.getWidth() + "x" + this.mbridgeVideoView.mPlayerView.getHeight());
                }
            }
            com.mbridge.msdk.foundation.same.report.metrics.c cVar = this.M;
            if (cVar != null) {
                cVar.a("2000136", eVar);
            }
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                e11.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y() {
        if (isLoadSuccess()) {
            this.f39781c.runOnUiThread(new j());
        }
    }

    @Override // com.mbridge.msdk.video.signal.container.AbstractJSContainer
    protected void b(String str) {
        com.mbridge.msdk.video.bt.module.orglistener.h hVar = this.f38846u;
        if (hVar != null) {
            hVar.a(this.M, str);
        }
        super.b(str);
    }

    public boolean canBackPress() {
        MBridgeContainerView mBridgeContainerView = this.S;
        return mBridgeContainerView == null || mBridgeContainerView.canBackPress();
    }

    public void defaultLoad(int i11, String str) {
        int i12;
        superDefaultLoad(i11, str);
        CampaignEx campaignEx = this.f38844s;
        if (campaignEx != null && !campaignEx.isDynamicView()) {
            this.f38844s.setTemplateRenderSucc(false);
        }
        if (!isLoadSuccess()) {
            b(i11, str);
            Activity activity = this.f39781c;
            if (activity != null) {
                activity.finish();
                return;
            }
            return;
        }
        b bVar = null;
        if (this.f38844s.getPlayable_ads_without_video() == 2) {
            this.S.setCampaign(this.f38844s);
            this.S.addOrderViewData(this.K);
            this.S.setUnitID(this.f39782d);
            this.S.setCloseDelayTime(getCloseBtnTime());
            this.S.setPlayCloseBtnTm(this.f39784f.u());
            this.S.setNotifyListener(new com.mbridge.msdk.video.module.listener.impl.h(this.f38844s, this.f38845t, this.f39786h, getInnerPlacementId(), this.f39782d, new n(this, bVar), this.f39784f.A(), this.f39794p));
            this.S.preLoadData(this.f38851z);
            this.f38851z.getJSCommon().g(this.f39788j);
            this.S.showPlayableView();
        } else {
            b(i11, str);
            this.f38826b0.setVisibility(8);
            loadModuleDatas();
            int iE = this.f39784f.E();
            int h5CloseType = getH5CloseType();
            int i13 = h5CloseType != 0 ? h5CloseType : iE;
            CampaignEx campaignEx2 = this.f38844s;
            if (campaignEx2 != null && campaignEx2.isDynamicView()) {
                this.mbridgeVideoView.setContainerViewOnNotifyListener(new m(this.f39781c, this.f38844s));
            }
            CampaignEx campaignEx3 = this.f38844s;
            int iF = (campaignEx3 == null || campaignEx3.getVst() <= -2) ? this.f39784f.F() : this.f38844s.getVst();
            CampaignEx campaignEx4 = this.f38844s;
            if (campaignEx4 != null && campaignEx4.getDynamicTempCode() == 5 && (i12 = this.f38849x) > 1) {
                iF = a(iF, i12);
                this.f38844s.setVst(iF);
            }
            int i14 = iF;
            this.mbridgeVideoView.setVideoSkipTime(i14);
            MBridgeVideoView mBridgeVideoView = this.mbridgeVideoView;
            mBridgeVideoView.setNotifyListener(new com.mbridge.msdk.video.module.listener.impl.m(mBridgeVideoView, this.S, this.f38844s, this.f39786h, this.f38845t, getInnerPlacementId(), this.f39782d, i13, i14, new p(this, bVar), this.f39784f.A(), this.f39794p, this.f39784f.C()));
            this.mbridgeVideoView.setAdSession(this.f38838n0);
            this.mbridgeVideoView.setVideoEvents(this.f38839o0);
            this.mbridgeVideoView.defaultShow();
            MBridgeContainerView mBridgeContainerView = this.S;
            mBridgeContainerView.setNotifyListener(new com.mbridge.msdk.video.module.listener.impl.b(this.mbridgeVideoView, mBridgeContainerView, this.f38844s, this.f39786h, this.f38845t, getInnerPlacementId(), this.f39782d, new m(this.f39781c, this.f38844s), this.f39784f.A(), this.f39794p));
            this.S.defaultShow();
        }
        q();
    }

    public int findID(String str) {
        return g0.a(getContext(), str, "id");
    }

    public int findLayout(String str) {
        return g0.a(getContext(), str, TtmlNode.TAG_LAYOUT);
    }

    public MBridgeContainerView findMBridgeContainerView() {
        return (MBridgeContainerView) findViewById(findID("mbridge_video_templete_container"));
    }

    public MBridgeVideoView findMBridgeVideoView() {
        return (MBridgeVideoView) findViewById(findID("mbridge_video_templete_videoview"));
    }

    public WindVaneWebView findWindVaneWebView() {
        try {
            if (!this.f39794p) {
                com.mbridge.msdk.videocommon.a.C0572a c0572aA = this.f39789k ? com.mbridge.msdk.videocommon.a.a(MBSupportMuteAdType.INTERSTITIAL_VIDEO, this.f38844s) : com.mbridge.msdk.videocommon.a.a(94, this.f38844s);
                if (c0572aA == null || !c0572aA.c()) {
                    return null;
                }
                if (this.f39789k) {
                    com.mbridge.msdk.videocommon.a.b(MBSupportMuteAdType.INTERSTITIAL_VIDEO, this.f38844s);
                } else {
                    com.mbridge.msdk.videocommon.a.b(94, this.f38844s);
                }
                WindVaneWebView windVaneWebViewB = c0572aA.b();
                if (this.f38831g0) {
                    windVaneWebViewB.setWebViewTransparent();
                }
                return windVaneWebViewB;
            }
            CampaignEx campaignEx = this.f38844s;
            if (campaignEx == null || campaignEx.getRewardTemplateMode() == null) {
                return null;
            }
            com.mbridge.msdk.videocommon.a.C0572a c0572aB = com.mbridge.msdk.videocommon.a.b(this.f39782d + "_" + this.f38844s.getId() + "_" + this.f38844s.getRequestId() + "_" + this.f38844s.getRewardTemplateMode().e());
            if (c0572aB != null) {
                return c0572aB.b();
            }
            return null;
        } catch (Exception e11) {
            if (!MBridgeConstans.DEBUG) {
                return null;
            }
            e11.printStackTrace();
            return null;
        }
    }

    public com.iab.omid.library.mmadbridge.adsession.a getAdEvents() {
        return this.f38840p0;
    }

    public com.iab.omid.library.mmadbridge.adsession.b getAdSession() {
        return this.f38838n0;
    }

    public CampaignEx getCampaign() {
        return this.f38844s;
    }

    protected RelativeLayout.LayoutParams getContentLayoutParams() {
        return new RelativeLayout.LayoutParams(-1, -1);
    }

    protected int getH5CloseType() {
        com.mbridge.msdk.video.signal.impl.k kVarB = b(this.f38844s);
        if (kVarB != null) {
            return kVarB.l();
        }
        return 0;
    }

    protected int getH5DialogRole() {
        if (getJSCommon() != null) {
            return getJSCommon().d();
        }
        return 1;
    }

    protected int getH5MuteState() {
        com.mbridge.msdk.video.signal.impl.k kVarB = b(this.f38844s);
        if (kVarB != null) {
            return kVarB.m();
        }
        return 0;
    }

    public String getInstanceId() {
        return this.f38850y;
    }

    protected boolean getIsShowingTransparent() {
        com.mbridge.msdk.video.signal.impl.k kVarB = b(this.f38844s);
        if (kVarB != null) {
            return kVarB.p();
        }
        return false;
    }

    public int getLayoutID() {
        return findLayout(this.f38831g0 ? "mbridge_reward_activity_video_templete_transparent" : "mbridge_reward_activity_video_templete");
    }

    public com.iab.omid.library.mmadbridge.adsession.media.a getVideoEvents() {
        return this.f38839o0;
    }

    public void init(Context context) {
        this.O = LayoutInflater.from(context);
    }

    public boolean initViews() {
        View viewFindViewById = findViewById(findID("mbridge_video_templete_progressbar"));
        this.f38826b0 = viewFindViewById;
        return viewFindViewById != null;
    }

    public boolean isHasDestoryed() {
        return this.C;
    }

    public boolean isLoadSuccess() {
        return this.P;
    }

    public void loadModuleDatas() {
        int i11;
        int i12;
        int h5MuteState = getH5MuteState();
        if (h5MuteState != 0) {
            this.f39788j = h5MuteState;
        }
        int iE = this.f39784f.E();
        int h5CloseType = getH5CloseType();
        int i13 = h5CloseType != 0 ? h5CloseType : iE;
        this.mbridgeVideoView.setSoundState(this.f39788j);
        this.mbridgeVideoView.setCampaign(this.f38844s);
        this.mbridgeVideoView.setPlayURL(this.f38845t.g());
        CampaignEx campaignEx = this.f38844s;
        int iF = (campaignEx == null || campaignEx.getVst() <= -2) ? this.f39784f.F() : this.f38844s.getVst();
        CampaignEx campaignEx2 = this.f38844s;
        if (campaignEx2 != null && campaignEx2.getDynamicTempCode() == 5 && (i12 = this.f38849x) > 1) {
            iF = a(iF, i12);
            this.f38844s.setVst(iF);
        }
        this.mbridgeVideoView.setVideoSkipTime(iF);
        this.mbridgeVideoView.setCloseAlert(this.f39784f.h());
        this.mbridgeVideoView.setBufferTimeout(getBufferTimeout());
        int i14 = iF;
        this.mbridgeVideoView.setNotifyListener(new com.mbridge.msdk.video.module.listener.impl.n(this.f38851z, this.f38844s, this.f39786h, this.f38845t, getInnerPlacementId(), this.f39782d, i13, iF, new p(this, null), this.f39784f.A(), this.f39794p, this.f39784f.C()));
        this.mbridgeVideoView.setShowingTransparent(this.f38831g0);
        this.mbridgeVideoView.setAdSession(this.f38838n0);
        if (this.f39789k && ((i11 = this.f39791m) == com.mbridge.msdk.foundation.same.a.H || i11 == com.mbridge.msdk.foundation.same.a.I)) {
            this.mbridgeVideoView.setIVRewardEnable(i11, this.f39792n, this.f39793o);
            this.mbridgeVideoView.setDialogRole(getH5DialogRole());
        }
        this.S.setCampaign(this.f38844s);
        this.S.addOrderViewData(this.K);
        this.S.setUnitID(this.f39782d);
        this.S.setCloseDelayTime(getCloseBtnTime());
        this.S.setPlayCloseBtnTm(this.f39784f.u());
        this.S.setVideoInteractiveType(this.f39784f.D());
        this.S.setEndscreenType(this.f39784f.m());
        this.S.setVideoSkipTime(i14);
        this.S.setShowingTransparent(this.f38831g0);
        this.S.setJSFactory(this.f38851z);
        this.f38851z.getJSCommon().g(this.f39788j);
        if (this.f38844s.getPlayable_ads_without_video() == 2) {
            this.S.setNotifyListener(new com.mbridge.msdk.video.module.listener.impl.h(this.f38844s, this.f38845t, this.f39786h, getInnerPlacementId(), this.f39782d, new n(this, null), this.f39784f.A(), this.f39794p));
            this.S.preLoadData(this.f38851z);
            this.S.showPlayableView();
        } else {
            this.S.setNotifyListener(new com.mbridge.msdk.video.module.listener.impl.c(this.f38851z, this.f38844s, this.f39786h, this.f38845t, getInnerPlacementId(), this.f39782d, new m(this.f39781c, this.f38844s), this.f39784f.A(), this.f39794p));
            this.S.preLoadData(this.f38851z);
            this.mbridgeVideoView.preLoadData(this.f38851z);
        }
        if (this.f38831g0) {
            this.S.setMBridgeClickMiniCardViewTransparent();
        }
    }

    protected boolean n() {
        this.R = findWindVaneWebView();
        MBridgeVideoView mBridgeVideoViewFindMBridgeVideoView = findMBridgeVideoView();
        this.mbridgeVideoView = mBridgeVideoViewFindMBridgeVideoView;
        mBridgeVideoViewFindMBridgeVideoView.setVideoLayout(this.f38844s);
        this.mbridgeVideoView.setIsIV(this.f39789k);
        this.mbridgeVideoView.setUnitId(this.f39782d);
        this.mbridgeVideoView.setCamPlayOrderCallback(this.f38848w, this.K, this.f38849x, this.L);
        if (this.f39794p) {
            this.mbridgeVideoView.setNotchPadding(this.E, this.F, this.G, this.H);
        }
        MBridgeContainerView mBridgeContainerViewFindMBridgeContainerView = findMBridgeContainerView();
        this.S = mBridgeContainerViewFindMBridgeContainerView;
        if (this.f39794p) {
            mBridgeContainerViewFindMBridgeContainerView.setNotchPadding(this.D, this.E, this.F, this.G, this.H);
        }
        if (q0.a().a("i_l_s_t_r_i", false)) {
            this.mbridgeVideoView.setPlayerViewAttachListener(new d());
        }
        this.mbridgeVideoView.setIPlayVideoViewLayoutCallBack(new e());
        return (this.mbridgeVideoView == null || this.S == null || !initViews()) ? false : true;
    }

    protected boolean o() {
        if (this.mbridgeVideoView == null) {
            return false;
        }
        if (com.mbridge.msdk.util.b.a()) {
            return this.mbridgeVideoView.isShowingAlertView() || checkChinaShowingAlertViewState() || this.mbridgeVideoView.isRewardPopViewShowing();
        }
        return this.mbridgeVideoView.isShowingAlertView() || this.mbridgeVideoView.isRewardPopViewShowing();
    }

    public void onBackPressed() {
        MBridgeContainerView mBridgeContainerView;
        MBridgeContainerView mBridgeContainerView2;
        MBridgeVideoView mBridgeVideoView;
        MBridgeVideoView mBridgeVideoView2;
        if (this.f38831g0 && (mBridgeVideoView2 = this.mbridgeVideoView) != null) {
            mBridgeVideoView2.notifyVideoClose();
            return;
        }
        CampaignEx campaignEx = this.f38844s;
        if (((campaignEx != null && campaignEx.getRewardTemplateMode() != null && this.f38844s.getRewardTemplateMode().f() == 5002010) || this.f38833i0) && (mBridgeVideoView = this.mbridgeVideoView) != null) {
            if (!mBridgeVideoView.isMiniCardShowing()) {
                this.mbridgeVideoView.onBackPress();
                return;
            }
            MBridgeContainerView mBridgeContainerView3 = this.S;
            if (mBridgeContainerView3 != null) {
                mBridgeContainerView3.onMiniEndcardBackPress();
                return;
            }
            return;
        }
        if (this.f38835k0 && (mBridgeContainerView2 = this.S) != null) {
            mBridgeContainerView2.onPlayableBackPress();
            return;
        }
        if (this.f38834j0 && (mBridgeContainerView = this.S) != null) {
            mBridgeContainerView.onEndcardBackPress();
        }
        if (getJSCommon().a()) {
            if (getJSContainerModule() == null || !getJSContainerModule().miniCardShowing()) {
                getActivityProxy().e();
                return;
            }
            return;
        }
        if (!canBackPress()) {
            o0.a(f38824s0, "onBackPressed can't excute");
            return;
        }
        Activity activity = this.f39781c;
        if (activity == null || this.f39794p || this.f38836l0) {
            return;
        }
        this.f38836l0 = true;
        activity.onBackPressed();
    }

    @Override // com.mbridge.msdk.video.signal.container.AbstractJSContainer, android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    public void onCreate() {
        k();
        try {
            A();
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                e11.printStackTrace();
            }
        }
        this.f38836l0 = false;
        try {
            if (this.f39794p) {
                CampaignEx campaignEx = this.f38844s;
                if (campaignEx == null || !campaignEx.isDynamicView()) {
                    this.f38846u = new com.mbridge.msdk.video.bt.module.orglistener.c(this.f38847v, this.f38850y);
                } else {
                    this.f38846u = new com.mbridge.msdk.video.bt.module.orglistener.d(getContext(), this.f39789k, this.f39784f, this.f38844s, this.f38846u, getInnerPlacementId(), this.f39782d);
                }
            } else {
                this.f38846u = new com.mbridge.msdk.video.bt.module.orglistener.d(getContext(), this.f39789k, this.f39784f, this.f38844s, this.f38846u, getInnerPlacementId(), this.f39782d);
            }
            registerErrorListener(new com.mbridge.msdk.video.bt.module.orglistener.e(this.M, this.f38846u));
            a(this.f39784f, this.f38844s);
            setShowingTransparent();
            int layoutID = getLayoutID();
            if (!g0.a(layoutID)) {
                b("layoutID not found");
                return;
            }
            View viewInflate = this.O.inflate(layoutID, (ViewGroup) null);
            this.f38842r = viewInflate;
            addView(viewInflate, getContentLayoutParams());
            x();
            if (n()) {
                this.P = true;
                p();
                return;
            }
            this.Q.onError("not found View IDS");
            Activity activity = this.f39781c;
            if (activity != null) {
                activity.finish();
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
            b("onCreate error" + th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.container.AbstractJSContainer
    public void onDestroy() {
        if (this.C) {
            return;
        }
        this.C = true;
        super.onDestroy();
        try {
            if (com.mbridge.msdk.util.b.a()) {
                setChinaDestroy();
            }
            MBridgeVideoView mBridgeVideoView = this.mbridgeVideoView;
            if (mBridgeVideoView != null) {
                mBridgeVideoView.releasePlayer();
            }
            WindVaneWebView windVaneWebView = this.R;
            if (windVaneWebView != null) {
                ViewGroup viewGroup = (ViewGroup) windVaneWebView.getParent();
                if (viewGroup != null) {
                    viewGroup.removeAllViews();
                }
                this.R.clearWebView();
                this.R.release();
            }
            if (this.f38847v != null) {
                this.f38847v = null;
            }
            this.T.removeCallbacks(this.W);
            this.T.removeCallbacks(this.f38825a0);
            getJSCommon().release();
            if (this.f39789k) {
                com.mbridge.msdk.setting.h.b().g(this.f39782d);
            }
            if (!this.f38827c0) {
                r();
            }
            if (!this.f38830f0) {
                s();
            }
            com.mbridge.msdk.mbsignalcommon.mraid.d dVar = this.f38837m0;
            if (dVar != null) {
                dVar.d();
            }
            if (this.f38838n0 != null) {
                o0.b("omsdk", "tc onDestroy");
                this.f38838n0.e();
                this.f38838n0.c();
                this.f38838n0 = null;
            }
            if (!this.f39794p) {
                if (isLoadSuccess()) {
                    this.T.postDelayed(new g(), 100L);
                } else {
                    Activity activity = this.f39781c;
                    if (activity != null) {
                        activity.finish();
                    }
                }
            }
            if (!this.f38830f0) {
                s();
            }
            com.mbridge.msdk.video.bt.component.d.c().a(this.f38850y);
        } catch (Throwable th2) {
            o0.a(f38824s0, th2.getMessage());
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    @Override // com.mbridge.msdk.video.signal.container.AbstractJSContainer
    public void onPause() {
        super.onPause();
        this.f38829e0 = true;
        try {
            getJSVideoModule().videoOperate(2);
            MBridgeContainerView mBridgeContainerView = this.S;
            if (mBridgeContainerView != null) {
                mBridgeContainerView.setOnPause();
            }
            MBridgeVideoView mBridgeVideoView = this.mbridgeVideoView;
            if (mBridgeVideoView != null) {
                mBridgeVideoView.onActivityPause();
            }
        } catch (Throwable th2) {
            o0.b(f38824s0, th2.getMessage(), th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.container.AbstractJSContainer
    public void onResume() {
        Activity activity;
        super.onResume();
        t();
        try {
            if (this.mbridgeVideoView != null && !o() && !this.mbridgeVideoView.isMiniCardShowing() && !com.mbridge.msdk.foundation.feedback.b.f35289f) {
                this.mbridgeVideoView.setCover(false);
            }
            MBridgeVideoView mBridgeVideoView = this.mbridgeVideoView;
            if (mBridgeVideoView != null) {
                mBridgeVideoView.onActivityResume();
            }
            MBridgeContainerView mBridgeContainerView = this.S;
            if (mBridgeContainerView != null) {
                mBridgeContainerView.setOnResume();
            }
            if (this.f38829e0 && !o() && !com.mbridge.msdk.foundation.feedback.b.f35289f) {
                getJSVideoModule().videoOperate(1);
            }
            Activity activity2 = this.f39781c;
            if (activity2 != null) {
                t0.a(activity2.getWindow().getDecorView());
            }
            if (this.f38831g0 && this.f38832h0 && (activity = this.f39781c) != null) {
                activity.finish();
            }
        } catch (Throwable th2) {
            o0.b(f38824s0, th2.getMessage(), th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.container.AbstractJSContainer
    public void onStop() {
        super.onStop();
        MBridgeVideoView mBridgeVideoView = this.mbridgeVideoView;
        if (mBridgeVideoView != null) {
            mBridgeVideoView.setCover(true);
            this.mbridgeVideoView.onActivityStop();
        }
    }

    protected void p() {
        ViewGroup viewGroup;
        List<CampaignEx> list;
        WindVaneWebView windVaneWebView = this.R;
        this.f38851z = new com.mbridge.msdk.video.signal.factory.b(this.f39781c, windVaneWebView, this.mbridgeVideoView, this.S, this.f38844s, new o(this, null));
        CampaignEx campaignEx = this.f38844s;
        if (campaignEx != null && campaignEx.getDynamicTempCode() == 5 && (list = this.K) != null) {
            this.f38851z.a(list);
        }
        registerJsFactory(this.f38851z);
        com.mbridge.msdk.foundation.feedback.b.b().a(this.f39782d + "_1", new h());
        q();
        if (windVaneWebView == null) {
            defaultLoad(0, "preload template webview is null or load error");
            return;
        }
        ViewGroup viewGroup2 = (ViewGroup) this.f38842r.findViewById(g0.a(getContext(), "mbridge_video_templete_webview_parent", "id"));
        windVaneWebView.setApiManagerJSFactory(this.f38851z);
        if (windVaneWebView.getParent() != null) {
            defaultLoad(0, "preload template webview is null or load error");
            return;
        }
        if (windVaneWebView.getObject() instanceof com.mbridge.msdk.video.signal.impl.k) {
            v();
            getJSContainerModule().readyStatus(((com.mbridge.msdk.video.signal.impl.k) windVaneWebView.getObject()).v());
            z();
            ((com.mbridge.msdk.video.signal.impl.k) windVaneWebView.getObject()).f39824m.onInitSuccess();
            if (this.f39794p) {
                getJSCommon().setWebViewFront(this.V);
            }
        }
        if (getJSCommon().b() == 1 && (viewGroup = (ViewGroup) this.f38842r.findViewById(g0.a(getContext(), "mbridge_video_templete_webview_parent", "id"))) != null) {
            ((ViewGroup) this.f38842r).removeView(viewGroup);
            ((ViewGroup) this.f38842r).addView(viewGroup, 1);
        }
        viewGroup2.addView(windVaneWebView, new ViewGroup.LayoutParams(-1, -1));
    }

    public void preload() {
    }

    public void receiveSuccess() {
        o0.a(f38824s0, "receiveSuccess ,start hybrid");
        this.T.removeCallbacks(this.f38825a0);
        this.T.postDelayed(this.f38841q0, 250L);
    }

    public void registerErrorListener(k kVar) {
        this.Q = kVar;
    }

    public void setAdEvents(com.iab.omid.library.mmadbridge.adsession.a aVar) {
        this.f38840p0 = aVar;
        com.mbridge.msdk.video.signal.factory.b bVar = this.f38851z;
        if (bVar == null || bVar.getJSCommon() == null) {
            return;
        }
        this.f38851z.getJSCommon().setAdEvents(aVar);
    }

    public void setAdSession(com.iab.omid.library.mmadbridge.adsession.b bVar) {
        this.f38838n0 = bVar;
        com.mbridge.msdk.video.signal.factory.b bVar2 = this.f38851z;
        if (bVar2 != null && bVar2.getJSCommon() != null) {
            this.f38851z.getJSCommon().setAdSession(bVar);
        }
        MBridgeVideoView mBridgeVideoView = this.mbridgeVideoView;
        if (mBridgeVideoView != null) {
            mBridgeVideoView.setAdSession(bVar);
        }
    }

    public void setCamPlayOrderCallback(com.mbridge.msdk.video.dynview.listener.a aVar, int i11) {
        this.f38848w = aVar;
        this.f38849x = i11;
    }

    public void setCampOrderViewData(List<CampaignEx> list, int i11) {
        if (list != null) {
            this.K = list;
        }
        this.L = i11;
    }

    public void setCampaign(CampaignEx campaignEx) {
        this.f38844s = campaignEx;
        if (campaignEx != null) {
            com.mbridge.msdk.foundation.same.report.metrics.c cVarA = com.mbridge.msdk.foundation.same.report.metrics.d.b().a(campaignEx.getCurrentLocalRid());
            this.M = cVarA;
            if (cVarA == null) {
                this.M = new com.mbridge.msdk.foundation.same.report.metrics.c();
            }
            this.M.h(campaignEx.getCurrentLocalRid());
            this.M.a(campaignEx);
            if (TextUtils.isEmpty(campaignEx.getCampaignUnitId()) && !TextUtils.isEmpty(this.f39782d)) {
                campaignEx.setCampaignUnitId(this.f39782d);
            }
            AppletsModel appletsModel = AppletModelManager.getInstance().get(campaignEx);
            if (appletsModel != null) {
                this.f38843r0 = appletsModel.isSupportWxScheme();
            }
            com.mbridge.msdk.foundation.feedback.b.b().a(campaignEx.getCampaignUnitId() + "_1", campaignEx);
        }
    }

    public void setCampaignDownLoadTask(com.mbridge.msdk.videocommon.download.a aVar) {
        this.f38845t = aVar;
    }

    public void setCampaignExpired(boolean z10) {
        try {
            CampaignEx campaignEx = this.f38844s;
            if (campaignEx != null) {
                if (z10) {
                    campaignEx.setSpareOfferFlag(1);
                    if (!com.mbridge.msdk.util.b.a()) {
                        com.mbridge.msdk.videocommon.setting.c cVar = this.f39784f;
                        if (cVar != null) {
                            if (cVar.A() == 1) {
                                this.f38844s.setCbt(1);
                            } else {
                                this.f38844s.setCbt(0);
                            }
                        }
                    } else if (this.f39790l) {
                        this.f38844s.setCbt(0);
                    } else {
                        com.mbridge.msdk.videocommon.setting.c cVar2 = this.f39784f;
                        if (cVar2 != null) {
                            if (cVar2.A() == 1) {
                                this.f38844s.setCbt(1);
                            } else {
                                this.f38844s.setCbt(0);
                            }
                        }
                    }
                } else {
                    campaignEx.setSpareOfferFlag(0);
                    this.f38844s.setCbt(0);
                }
            }
        } catch (Exception e11) {
            o0.b(f38824s0, e11.getMessage());
        }
    }

    public void setDeveloperExtraData(String str) {
        this.J = str;
    }

    public void setInstanceId(String str) {
        this.f38850y = str;
    }

    public void setJSFactory(com.mbridge.msdk.video.signal.factory.b bVar) {
        this.f38851z = bVar;
    }

    public void setMBridgeTempCallback(com.mbridge.msdk.video.bt.module.listener.b bVar) {
        this.f38847v = bVar;
    }

    public void setMatchParent() {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams == null) {
            setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        } else {
            layoutParams.height = -1;
            layoutParams.width = -1;
        }
    }

    public void setMediaPlayerUrl(String str) {
    }

    public void setNotchPadding(int i11, int i12, int i13, int i14, int i15) {
        this.D = i11;
        this.E = i12;
        this.F = i13;
        this.G = i14;
        this.H = i15;
        String strA = b0.a(i11, i12, i13, i14, i15);
        this.I = strA;
        o0.b(f38824s0, strA);
        if (getJSCommon() != null && !TextUtils.isEmpty(this.I)) {
            getJSCommon().a(this.I);
            if (this.R != null && !TextUtils.isEmpty(this.I)) {
                com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) this.R, "oncutoutfetched", Base64.encodeToString(this.I.getBytes(), 0));
            }
        }
        MBridgeVideoView mBridgeVideoView = this.mbridgeVideoView;
        if (mBridgeVideoView != null) {
            mBridgeVideoView.setNotchPadding(i12, i13, i14, i15);
        }
        MBridgeContainerView mBridgeContainerView = this.S;
        if (mBridgeContainerView != null) {
            mBridgeContainerView.setNotchPadding(i11, i12, i13, i14, i15);
        }
    }

    public void setShowRewardListener(com.mbridge.msdk.video.bt.module.orglistener.h hVar) {
        this.f38846u = hVar;
    }

    public void setShowingTransparent() {
        Activity activity;
        boolean isShowingTransparent = getIsShowingTransparent();
        this.f38831g0 = isShowingTransparent;
        if (isShowingTransparent) {
            return;
        }
        int iA = g0.a(getContext(), "mbridge_reward_theme", TtmlNode.TAG_STYLE);
        if (!g0.a(iA) || (activity = this.f39781c) == null) {
            return;
        }
        activity.setTheme(iA);
    }

    public void setVideoEvents(com.iab.omid.library.mmadbridge.adsession.media.a aVar) {
        this.f38839o0 = aVar;
        com.mbridge.msdk.video.signal.factory.b bVar = this.f38851z;
        if (bVar != null && bVar.getJSCommon() != null) {
            this.f38851z.getJSCommon().setVideoEvents(aVar);
        }
        MBridgeVideoView mBridgeVideoView = this.mbridgeVideoView;
        if (mBridgeVideoView != null) {
            mBridgeVideoView.setVideoEvents(aVar);
        }
    }

    public void setWebViewFront(int i11) {
        this.V = i11;
    }

    public void superDefaultLoad(int i11, String str) {
        this.T.removeCallbacks(this.W);
        this.T.removeCallbacks(this.f38825a0);
        this.Q.a(true);
        WindVaneWebView windVaneWebView = this.R;
        if (windVaneWebView != null) {
            windVaneWebView.setVisibility(8);
        }
    }

    protected void x() {
        if (this.N) {
            setMatchParent();
        }
    }

    protected void z() {
        int iG;
        int iF;
        try {
            if (this.R != null) {
                int i11 = getResources().getConfiguration().orientation;
                if (getIsShowingTransparent()) {
                    iG = t0.i(getContext());
                    iF = t0.h(getContext());
                    if (com.mbridge.msdk.foundation.tools.e.a(getContext())) {
                        int iC = t0.c(getContext());
                        if (i11 == 2) {
                            iG += iC;
                        } else {
                            iF += iC;
                        }
                    }
                } else {
                    iG = t0.g(getContext());
                    iF = t0.f(getContext());
                }
                int iB = this.f38844s.getRewardTemplateMode().b();
                if (a(this.f38844s) == 1) {
                    iB = i11;
                }
                getJSNotifyProxy().a(i11, iB, iG, iF);
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(com.mbridge.msdk.foundation.same.a.f35340l, t0.d(getContext()));
                try {
                    if (this.f39786h != null) {
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("name", this.f39786h.c());
                        jSONObject2.put(RewardPlus.AMOUNT, this.f39786h.a());
                        jSONObject2.put("id", this.f39787i);
                        jSONObject.put("userId", this.f39785g);
                        jSONObject.put("reward", jSONObject2);
                        jSONObject.put("playVideoMute", this.f39788j);
                        jSONObject.put("extra", this.J);
                    }
                } catch (JSONException e11) {
                    o0.a(f38824s0, e11.getMessage());
                } catch (Exception e12) {
                    o0.a(f38824s0, e12.getMessage());
                }
                String string = jSONObject.toString();
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a(NativeComponentConstants.KEY_COMPONENT_TYPE, 2);
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000133", this.f38844s, eVar);
                getJSNotifyProxy().a(string);
                com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) this.R, "oncutoutfetched", Base64.encodeToString(this.I.getBytes(), 0));
                getJSCommon().b(true);
                if (com.mbridge.msdk.util.b.a()) {
                    setChinaCallBackStatus(this.R);
                }
                loadModuleDatas();
                this.T.postDelayed(this.W, 2000L);
            }
        } catch (Exception e13) {
            if (MBridgeConstans.DEBUG) {
                e13.printStackTrace();
            }
        }
    }
}
