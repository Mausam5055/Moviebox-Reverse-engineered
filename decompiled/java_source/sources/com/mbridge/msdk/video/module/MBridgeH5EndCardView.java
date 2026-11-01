package com.mbridge.msdk.video.module;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.download.H5DownLoadManager;
import com.mbridge.msdk.foundation.download.download.HTMLResourceManager;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.m;
import com.mbridge.msdk.foundation.tools.g0;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.s0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.foundation.tools.y0;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import com.mbridge.msdk.out.Campaign;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.io.File;
import java.util.HashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class MBridgeH5EndCardView extends MBridgeH5EndCardViewDiff {
    private int A;
    private long B;
    private boolean C;
    private boolean D;
    private boolean E;
    private boolean F;
    private boolean G;
    private boolean H;
    private boolean I;
    private boolean J;
    private String K;
    Handler L;
    private boolean M;
    private boolean N;
    boolean O;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    protected View f39273m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    protected RelativeLayout f39274n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    protected ImageView f39275o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    protected WindVaneWebView f39276p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f39277q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    protected Handler f39278r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    protected String f39279s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    protected boolean f39280t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    protected boolean f39281u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f39282v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f39283w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private int f39284x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private boolean f39285y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private boolean f39286z;

    class a extends Handler {
        a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            if (message.what != 100) {
                return;
            }
            if (MBridgeH5EndCardView.this.C) {
                MBridgeH5EndCardView.this.notifyListener.a(Sdk$SDKError.Reason.INVALID_ADS_ENDPOINT_VALUE, "");
            }
            MBridgeH5EndCardView.this.notifyListener.a(103, "");
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MBridgeH5EndCardView.this.onCloseViewClick();
        }
    }

    class c extends com.mbridge.msdk.mbsignalcommon.listener.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ boolean f39289a;

        c(boolean z10) {
            this.f39289a = z10;
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView) {
            super.a(webView);
            MBridgeH5EndCardView.this.setCloseVisible(0);
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, int i11) {
            super.a(webView, i11);
            o0.c("WindVaneWebView", "h5EncardView readyStatus:" + i11 + "- isError" + MBridgeH5EndCardView.this.f39281u);
            MBridgeH5EndCardView.this.A = i11;
            if (!MBridgeH5EndCardView.this.f39281u) {
                MBridgeH5EndCardView.this.a(System.currentTimeMillis() - MBridgeH5EndCardView.this.B, false);
            }
            if (this.f39289a) {
                try {
                    com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                    eVar.a(NativeComponentConstants.KEY_COMPONENT_TYPE, 3);
                    eVar.a("result", Integer.valueOf(i11));
                    com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000155", MBridgeH5EndCardView.this.f39226b, eVar);
                } catch (Throwable th2) {
                    o0.b("WindVaneWebView", th2.getMessage());
                }
            }
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, int i11, String str, String str2) {
            super.a(webView, i11, str, str2);
            MBridgeH5EndCardView mBridgeH5EndCardView = MBridgeH5EndCardView.this;
            if (mBridgeH5EndCardView.f39281u) {
                return;
            }
            mBridgeH5EndCardView.notifyListener.a(Sdk$SDKError.Reason.PROTOBUF_SERIALIZATION_ERROR_VALUE, "onReceivedError " + i11 + str);
            MBridgeH5EndCardView.this.reportRenderResult(str, 3);
            MBridgeH5EndCardView.this.notifyListener.a(127, "");
            MBridgeH5EndCardView.this.notifyListener.a(129, "");
            MBridgeH5EndCardView.this.f39281u = true;
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, String str) {
            super.a(webView, str);
            MBridgeH5EndCardView mBridgeH5EndCardView = MBridgeH5EndCardView.this;
            if (mBridgeH5EndCardView.f39281u) {
                return;
            }
            mBridgeH5EndCardView.f39280t = true;
            mBridgeH5EndCardView.notifyListener.a(100, "");
            if (MBridgeH5EndCardView.this.f39226b != null) {
                m mVar = new m();
                mVar.n(MBridgeH5EndCardView.this.f39226b.getRequestId());
                mVar.o(MBridgeH5EndCardView.this.f39226b.getRequestIdNotice());
                mVar.b(MBridgeH5EndCardView.this.f39226b.getId());
                mVar.d(1);
                mVar.e(String.valueOf(System.currentTimeMillis() - MBridgeH5EndCardView.this.B));
                mVar.m("onPageFinished");
                String str2 = "2";
                if (MBridgeH5EndCardView.this.f39226b.getAdType() == 287) {
                    mVar.a("3");
                } else if (MBridgeH5EndCardView.this.f39226b.getAdType() == 94) {
                    mVar.a("1");
                } else if (MBridgeH5EndCardView.this.f39226b.getAdType() == 42) {
                    mVar.a("2");
                }
                if (MBridgeH5EndCardView.this.f39226b.isMraid()) {
                    mVar.b(m.N);
                } else {
                    mVar.g(MBridgeH5EndCardView.this.f39226b.getendcard_url());
                    if (y0.b(MBridgeH5EndCardView.this.f39226b.getendcard_url()) && MBridgeH5EndCardView.this.f39226b.getendcard_url().contains(".zip")) {
                        str2 = "1";
                    }
                    mVar.f(str2);
                    mVar.b(m.O);
                }
                MBridgeH5EndCardView mBridgeH5EndCardView2 = MBridgeH5EndCardView.this;
                com.mbridge.msdk.foundation.same.report.g.b(mVar, mBridgeH5EndCardView2.unitId, mBridgeH5EndCardView2.f39226b);
            }
            MBridgeH5EndCardView.this.notifyListener.a(120, "");
            if (this.f39289a) {
                return;
            }
            try {
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a(NativeComponentConstants.KEY_COMPONENT_TYPE, 3);
                eVar.a("result", 1);
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000155", MBridgeH5EndCardView.this.f39226b, eVar);
            } catch (Throwable th2) {
                o0.b("WindVaneWebView", th2.getMessage());
            }
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void b(WebView webView, int i11) {
            super.b(webView, i11);
            MBridgeH5EndCardView.this.A = i11;
            if (MBridgeH5EndCardView.this.f39286z) {
                return;
            }
            MBridgeH5EndCardView.this.f39286z = true;
            if (i11 == 1) {
                MBridgeH5EndCardView.this.reportRenderResult(NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS, 4);
            } else {
                MBridgeH5EndCardView.this.notifyListener.a(127, "");
                MBridgeH5EndCardView.this.reportRenderResult("failed", 6);
            }
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            String string;
            try {
                o0.a(MBridgeBaseView.TAG, "webviewshow");
                try {
                    int[] iArr = new int[2];
                    MBridgeH5EndCardView.this.f39276p.getLocationOnScreen(iArr);
                    o0.b(MBridgeBaseView.TAG, "coordinate:" + iArr[0] + "--" + iArr[1]);
                    JSONObject jSONObject = new JSONObject();
                    Context contextD = com.mbridge.msdk.foundation.controller.c.m().d();
                    if (contextD != null) {
                        jSONObject.put("startX", t0.b(contextD, iArr[0]));
                        jSONObject.put("startY", t0.b(contextD, iArr[1]));
                        jSONObject.put(com.mbridge.msdk.foundation.same.a.f35340l, t0.d(contextD));
                    }
                    string = jSONObject.toString();
                } catch (Throwable th2) {
                    o0.b(MBridgeBaseView.TAG, th2.getMessage(), th2);
                    string = "";
                }
                com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) MBridgeH5EndCardView.this.f39276p, "webviewshow", Base64.encodeToString(string.toString().getBytes(), 2));
                MBridgeH5EndCardView.this.notifyListener.a(109, "");
                MBridgeH5EndCardView.this.i();
                MBridgeH5EndCardView.this.startCounterEndCardShowTimer();
                com.mbridge.msdk.mbsignalcommon.windvane.f fVarA = com.mbridge.msdk.mbsignalcommon.windvane.f.a();
                MBridgeH5EndCardView mBridgeH5EndCardView = MBridgeH5EndCardView.this;
                fVarA.a((WebView) mBridgeH5EndCardView.f39276p, "oncutoutfetched", Base64.encodeToString(mBridgeH5EndCardView.K.getBytes(), 0));
                MBridgeH5EndCardView.this.e();
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
    }

    class e implements com.mbridge.msdk.foundation.feedback.a {
        e() {
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a() {
            String string;
            try {
                JSONObject jSONObject = new JSONObject();
                if (com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                    jSONObject.put(NotificationCompat.CATEGORY_STATUS, 1);
                }
                string = jSONObject.toString();
            } catch (Throwable th2) {
                o0.b(MBridgeBaseView.TAG, th2.getMessage(), th2);
                string = "";
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) MBridgeH5EndCardView.this.f39276p, "onFeedbackAlertStatusNotify", Base64.encodeToString(string.getBytes(), 2));
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a(String str) {
            String string;
            try {
                JSONObject jSONObject = new JSONObject();
                if (com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                    jSONObject.put(NotificationCompat.CATEGORY_STATUS, 2);
                }
                string = jSONObject.toString();
            } catch (Throwable th2) {
                o0.b(MBridgeBaseView.TAG, th2.getMessage(), th2);
                string = "";
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) MBridgeH5EndCardView.this.f39276p, "onFeedbackAlertStatusNotify", Base64.encodeToString(string.getBytes(), 2));
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void close() {
            String string;
            try {
                JSONObject jSONObject = new JSONObject();
                if (com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                    jSONObject.put(NotificationCompat.CATEGORY_STATUS, 2);
                }
                string = jSONObject.toString();
            } catch (Throwable th2) {
                o0.b(MBridgeBaseView.TAG, th2.getMessage(), th2);
                string = "";
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) MBridgeH5EndCardView.this.f39276p, "onFeedbackAlertStatusNotify", Base64.encodeToString(string.getBytes(), 2));
        }
    }

    private class f implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private MBridgeH5EndCardView f39293a;

        public f(MBridgeH5EndCardView mBridgeH5EndCardView) {
            this.f39293a = mBridgeH5EndCardView;
        }

        @Override // java.lang.Runnable
        public void run() {
            Handler handler;
            try {
                Thread.sleep(300L);
            } catch (InterruptedException e11) {
                o0.b("CloseRunnable", e11.getMessage());
            }
            MBridgeH5EndCardView mBridgeH5EndCardView = this.f39293a;
            if (mBridgeH5EndCardView == null || (handler = mBridgeH5EndCardView.L) == null) {
                return;
            }
            handler.sendEmptyMessage(100);
        }
    }

    private class g implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private MBridgeH5EndCardView f39295a;

        public g(MBridgeH5EndCardView mBridgeH5EndCardView) {
            this.f39295a = mBridgeH5EndCardView;
        }

        @Override // java.lang.Runnable
        public void run() {
            MBridgeH5EndCardView mBridgeH5EndCardView = this.f39295a;
            if (mBridgeH5EndCardView == null || mBridgeH5EndCardView.f39286z) {
                return;
            }
            this.f39295a.f39286z = true;
            this.f39295a.f39280t = false;
            MBridgeH5EndCardView.this.reportRenderResult("timeout", 5);
            this.f39295a.notifyListener.a(127, "");
            o0.a(MBridgeBaseView.TAG, "notify TYPE_NOTIFY_SHOW_NATIVE_ENDCARD");
        }
    }

    private static class h implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private MBridgeH5EndCardView f39297a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f39298b;

        public h(MBridgeH5EndCardView mBridgeH5EndCardView, int i11) {
            this.f39297a = mBridgeH5EndCardView;
            this.f39298b = i11;
        }

        @Override // java.lang.Runnable
        public void run() {
            MBridgeH5EndCardView mBridgeH5EndCardView = this.f39297a;
            if (mBridgeH5EndCardView == null || mBridgeH5EndCardView.f39226b == null) {
                return;
            }
            try {
                if (mBridgeH5EndCardView.f39285y) {
                    o0.c(MBridgeBaseView.TAG, "insertEndCardReadyState hasInsertLoadEndCardReport true return");
                    return;
                }
                this.f39297a.f39285y = true;
                m mVar = new m("m_download_end", 12, (this.f39298b * 1000) + "", this.f39297a.f39226b.getendcard_url(), this.f39297a.f39226b.getId(), this.f39297a.unitId, "ready timeout", (y0.b(this.f39297a.f39226b.getendcard_url()) && this.f39297a.f39226b.getendcard_url().contains(".zip")) ? "1" : "2");
                try {
                    if (this.f39297a.f39226b.getAdType() == 287) {
                        mVar.a("3");
                    } else if (this.f39297a.f39226b.getAdType() == 94) {
                        mVar.a("1");
                    } else if (this.f39297a.f39226b.getAdType() == 42) {
                        mVar.a("2");
                    }
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
                mVar.n(this.f39297a.f39226b.getRequestId());
                mVar.k(this.f39297a.f39226b.getCurrentLocalRid());
                mVar.o(this.f39297a.f39226b.getRequestIdNotice());
                mVar.a(this.f39297a.f39226b.getAdSpaceT());
                this.f39297a.isLoadSuccess();
            } catch (Throwable th2) {
                o0.b(MBridgeBaseView.TAG, th2.getMessage(), th2);
            }
        }
    }

    private class i implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private MBridgeH5EndCardView f39299a;

        public i(MBridgeH5EndCardView mBridgeH5EndCardView) {
            this.f39299a = mBridgeH5EndCardView;
        }

        @Override // java.lang.Runnable
        public void run() {
            MBridgeH5EndCardView mBridgeH5EndCardView = this.f39299a;
            if (mBridgeH5EndCardView != null) {
                mBridgeH5EndCardView.G = true;
            }
        }
    }

    private class j implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private MBridgeH5EndCardView f39301a;

        public j(MBridgeH5EndCardView mBridgeH5EndCardView) {
            this.f39301a = mBridgeH5EndCardView;
        }

        @Override // java.lang.Runnable
        public void run() {
            MBridgeH5EndCardView mBridgeH5EndCardView = this.f39301a;
            if (mBridgeH5EndCardView != null) {
                mBridgeH5EndCardView.H = true;
            }
        }
    }

    private class k implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private MBridgeH5EndCardView f39303a;

        public k(MBridgeH5EndCardView mBridgeH5EndCardView) {
            this.f39303a = mBridgeH5EndCardView;
        }

        @Override // java.lang.Runnable
        public void run() {
            MBridgeH5EndCardView mBridgeH5EndCardView = this.f39303a;
            if (mBridgeH5EndCardView != null) {
                if (!mBridgeH5EndCardView.I) {
                    MBridgeH5EndCardView.this.setCloseVisible(0);
                }
                this.f39303a.D = true;
            }
        }
    }

    public MBridgeH5EndCardView(Context context) {
        super(context);
        this.f39277q = false;
        this.f39278r = new Handler();
        this.f39280t = false;
        this.f39281u = false;
        this.f39282v = false;
        this.f39283w = 1;
        this.f39284x = 1;
        this.f39285y = false;
        this.f39286z = false;
        this.A = 1;
        this.B = 0L;
        this.C = false;
        this.D = false;
        this.E = false;
        this.F = false;
        this.G = false;
        this.H = false;
        this.I = false;
        this.J = false;
        this.K = "";
        this.L = new a(Looper.getMainLooper());
        this.M = false;
        this.N = false;
        this.O = false;
    }

    public MBridgeH5EndCardView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f39277q = false;
        this.f39278r = new Handler();
        this.f39280t = false;
        this.f39281u = false;
        this.f39282v = false;
        this.f39283w = 1;
        this.f39284x = 1;
        this.f39285y = false;
        this.f39286z = false;
        this.A = 1;
        this.B = 0L;
        this.C = false;
        this.D = false;
        this.E = false;
        this.F = false;
        this.G = false;
        this.H = false;
        this.I = false;
        this.J = false;
        this.K = "";
        this.L = new a(Looper.getMainLooper());
        this.M = false;
        this.N = false;
        this.O = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:26:0x0088 A[Catch: all -> 0x002a, NullPointerException -> 0x008e, TryCatch #0 {NullPointerException -> 0x008e, blocks: (B:24:0x007e, B:26:0x0088, B:29:0x0090, B:31:0x009a, B:32:0x009e, B:34:0x00a8), top: B:50:0x007e, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:29:0x0090 A[Catch: all -> 0x002a, NullPointerException -> 0x008e, TryCatch #0 {NullPointerException -> 0x008e, blocks: (B:24:0x007e, B:26:0x0088, B:29:0x0090, B:31:0x009a, B:32:0x009e, B:34:0x00a8), top: B:50:0x007e, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:31:0x009a A[Catch: all -> 0x002a, NullPointerException -> 0x008e, TryCatch #0 {NullPointerException -> 0x008e, blocks: (B:24:0x007e, B:26:0x0088, B:29:0x0090, B:31:0x009a, B:32:0x009e, B:34:0x00a8), top: B:50:0x007e, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:32:0x009e A[Catch: all -> 0x002a, NullPointerException -> 0x008e, TryCatch #0 {NullPointerException -> 0x008e, blocks: (B:24:0x007e, B:26:0x0088, B:29:0x0090, B:31:0x009a, B:32:0x009e, B:34:0x00a8), top: B:50:0x007e, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:34:0x00a8 A[Catch: all -> 0x002a, NullPointerException -> 0x008e, TRY_LEAVE, TryCatch #0 {NullPointerException -> 0x008e, blocks: (B:24:0x007e, B:26:0x0088, B:29:0x0090, B:31:0x009a, B:32:0x009e, B:34:0x00a8), top: B:50:0x007e, outer: #1 }] */
    public void a(long j11, boolean z10) {
        String str;
        int i11;
        int i12;
        String str2;
        int i13;
        m mVar;
        try {
            if (this.f39285y) {
                return;
            }
            this.f39285y = true;
            String str3 = (y0.b(this.f39226b.getendcard_url()) && this.f39226b.getendcard_url().contains(".zip")) ? "1" : "2";
            int i14 = 2;
            try {
                if (!z10) {
                    if (this.A == 2) {
                        str2 = "ready no";
                        i14 = 3;
                        i13 = 11;
                    } else {
                        str = "ready yes";
                        i11 = 1;
                        i12 = 10;
                    }
                    String str4 = str;
                    String str5 = str;
                    int i15 = i11;
                    mVar = new m("m_download_end", i12, j11 + "", this.f39226b.getendcard_url(), this.f39226b.getId(), this.unitId, str4, str3);
                    if (this.f39226b.getAdType() == 287) {
                        mVar.a("3");
                    } else if (this.f39226b.getAdType() == 94) {
                        mVar.a("1");
                    } else if (this.f39226b.getAdType() == 42) {
                        mVar.a("2");
                    }
                    mVar.n(this.f39226b.getRequestId());
                    mVar.k(this.f39226b.getCurrentLocalRid());
                    mVar.o(this.f39226b.getRequestIdNotice());
                    mVar.a(this.f39226b.getAdSpaceT());
                    a(mVar, this.f39226b);
                    if (isLoadSuccess() && i15 == 1) {
                        mVar.d(i15);
                        mVar.e(String.valueOf(j11));
                        mVar.b(this.f39226b.getId());
                        mVar.m(str5);
                        if (this.f39226b.isMraid()) {
                            mVar.b(m.N);
                        } else {
                            mVar.g(this.f39226b.getendcard_url());
                            mVar.f(str3);
                            mVar.b(m.O);
                        }
                        com.mbridge.msdk.foundation.same.report.g.b(mVar, this.unitId, this.f39226b);
                        return;
                    }
                }
                str2 = "ready timeout";
                i13 = 12;
                if (this.f39226b.getAdType() == 287) {
                    mVar.a("3");
                } else if (this.f39226b.getAdType() == 94) {
                    mVar.a("1");
                } else if (this.f39226b.getAdType() == 42) {
                    mVar.a("2");
                }
            } catch (NullPointerException e11) {
                e11.printStackTrace();
            }
            str = str2;
            i11 = i14;
            i12 = i13;
            String str6 = str;
            String str7 = str;
            int i16 = i11;
            mVar = new m("m_download_end", i12, j11 + "", this.f39226b.getendcard_url(), this.f39226b.getId(), this.unitId, str6, str3);
            mVar.n(this.f39226b.getRequestId());
            mVar.k(this.f39226b.getCurrentLocalRid());
            mVar.o(this.f39226b.getRequestIdNotice());
            mVar.a(this.f39226b.getAdSpaceT());
            a(mVar, this.f39226b);
            if (isLoadSuccess()) {
            }
        } catch (Throwable th2) {
            o0.b(MBridgeBaseView.TAG, th2.getMessage(), th2);
        }
    }

    private static void a(m mVar, CampaignEx campaignEx) {
        try {
            com.mbridge.msdk.videocommon.setting.c cVarC = com.mbridge.msdk.videocommon.setting.b.b().c(com.mbridge.msdk.foundation.controller.c.m().b(), campaignEx.getCampaignUnitId());
            if (cVarC != null) {
                mVar.s(cVarC.x());
            }
            com.mbridge.msdk.videocommon.setting.a aVarC = com.mbridge.msdk.videocommon.setting.b.b().c();
            if (aVarC != null) {
                mVar.r(aVarC.f());
            }
        } catch (Exception e11) {
            o0.b(MBridgeBaseView.TAG, e11.getMessage());
        }
    }

    private boolean a(View view) {
        this.f39275o = (ImageView) view.findViewById(findID("mbridge_windwv_close"));
        this.f39274n = (RelativeLayout) view.findViewById(findID("mbridge_windwv_content_rl"));
        WindVaneWebView windVaneWebView = new WindVaneWebView(getContext());
        this.f39276p = windVaneWebView;
        CampaignEx campaignEx = this.f39226b;
        if (campaignEx != null) {
            windVaneWebView.setLocalRequestId(campaignEx.getCurrentLocalRid());
        }
        this.f39276p.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        this.f39274n.addView(this.f39276p);
        return isNotNULL(this.f39275o, this.f39276p);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        try {
            CampaignEx campaignEx = this.f39226b;
            if (campaignEx != null) {
                campaignEx.setCampaignUnitId(this.unitId);
                com.mbridge.msdk.foundation.feedback.b.b().d(this.unitId + "_1");
                com.mbridge.msdk.foundation.feedback.b.b().a(this.unitId + "_2", this.f39226b);
            }
            CampaignEx campaignEx2 = this.f39226b;
            if (campaignEx2 == null || !campaignEx2.isMraid()) {
                return;
            }
            ImageView imageView = new ImageView(com.mbridge.msdk.foundation.controller.c.m().d());
            imageView.setBackgroundResource(g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_notice", "drawable"));
            ImageView imageView2 = this.f39275o;
            RelativeLayout.LayoutParams layoutParams = imageView2 != null ? (RelativeLayout.LayoutParams) imageView2.getLayoutParams() : null;
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 12.0f), t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 12.0f));
            layoutParams2.addRule(9);
            layoutParams2.addRule(10);
            if (layoutParams != null) {
                layoutParams2.leftMargin = layoutParams.rightMargin;
                layoutParams2.topMargin = layoutParams.topMargin;
                layoutParams2.width = layoutParams.width;
                layoutParams2.height = layoutParams.height;
            } else {
                layoutParams2.leftMargin = t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 12.0f);
                layoutParams2.topMargin = t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 12.0f);
            }
            addView(imageView, layoutParams2);
            t0.a(4, imageView, this.f39226b, com.mbridge.msdk.foundation.controller.c.m().d(), false, new e());
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    private void f() {
        if (this.M || this.E) {
            return;
        }
        this.M = true;
        int i11 = this.f39283w;
        if (i11 == 0) {
            this.G = true;
            return;
        }
        this.G = false;
        if (i11 > -1) {
            this.f39278r.postDelayed(new i(this), this.f39283w * 1000);
        }
    }

    private void g() {
        if (this.N || this.E) {
            return;
        }
        this.N = true;
        int i11 = this.f39284x;
        if (i11 == 0) {
            this.H = true;
            return;
        }
        this.H = false;
        if (i11 > -1) {
            this.f39278r.postDelayed(new j(this), this.f39284x * 1000);
        }
    }

    /* JADX WARN: Code duplicated, block: B:37:0x008d A[EDGE_INSN: B:37:0x008d->B:38:0x008e BREAK  A[LOOP:0: B:22:0x0052->B:32:0x007d]] */
    private void h() {
        int iV;
        try {
            this.B = System.currentTimeMillis();
            String str = this.f39226b.getendcard_url();
            com.mbridge.msdk.videocommon.setting.c cVarC = com.mbridge.msdk.videocommon.setting.b.b().c(com.mbridge.msdk.foundation.controller.c.m().b(), this.unitId);
            if (this.f39282v && y0.b(str)) {
                if (!str.contains("wfr=1") && (cVarC == null || cVarC.v() <= 0)) {
                    return;
                }
                if (str.contains("wfr=1")) {
                    String[] strArrSplit = str.split(UrlUtils.AND_MARK);
                    if (strArrSplit != null && strArrSplit.length > 0) {
                        int length = strArrSplit.length;
                        int i11 = 0;
                        while (true) {
                            if (i11 >= length) {
                                iV = 20;
                                break;
                            }
                            String str2 = strArrSplit[i11];
                            if (y0.b(str2) && str2.contains("to") && str2.split(UrlUtils.EQUAL_MARK) != null && str2.split(UrlUtils.EQUAL_MARK).length > 0) {
                                iV = t0.a((Object) str2.split(UrlUtils.EQUAL_MARK)[1]);
                                break;
                            }
                            i11++;
                        }
                    } else {
                        iV = 20;
                        break;
                    }
                } else {
                    if (cVarC == null || cVarC.v() <= 0) {
                        iV = 20;
                        break;
                    }
                    iV = cVarC.v();
                }
                if (iV >= 0) {
                    excuteEndCardShowTask(iV);
                } else {
                    excuteEndCardShowTask(20);
                }
            }
        } catch (Throwable th2) {
            o0.b(MBridgeBaseView.TAG, th2.getMessage(), th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        CampaignEx campaignEx = this.f39226b;
        if (campaignEx == null || !campaignEx.isMraid()) {
            return;
        }
        int i11 = getResources().getConfiguration().orientation;
        String str = "undefined";
        if (i11 != 0) {
            if (i11 == 1) {
                str = "portrait";
            } else if (i11 == 2) {
                str = TmcStartParams.KEY_LANDSCAPE;
            }
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("orientation", str);
            jSONObject.put("locked", "true");
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        HashMap map = new HashMap();
        map.put("placementType", "Interstitial");
        map.put("state", "default");
        map.put("viewable", "true");
        map.put("currentAppOrientation", jSONObject);
        if (getContext() instanceof Activity) {
            float fN = k0.n(getContext());
            float fM = k0.m(getContext());
            DisplayMetrics displayMetrics = new DisplayMetrics();
            ((Activity) getContext()).getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
            float f11 = displayMetrics.widthPixels;
            float f12 = displayMetrics.heightPixels;
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().b(this.f39276p, fN, fM);
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(this.f39276p, f11, f12);
        }
        com.mbridge.msdk.mbsignalcommon.mraid.a aVarA = com.mbridge.msdk.mbsignalcommon.mraid.a.a();
        WindVaneWebView windVaneWebView = this.f39276p;
        aVarA.b(windVaneWebView, windVaneWebView.getLeft(), this.f39276p.getTop(), this.f39276p.getWidth(), this.f39276p.getHeight());
        com.mbridge.msdk.mbsignalcommon.mraid.a aVarA2 = com.mbridge.msdk.mbsignalcommon.mraid.a.a();
        WindVaneWebView windVaneWebView2 = this.f39276p;
        aVarA2.a(windVaneWebView2, windVaneWebView2.getLeft(), this.f39276p.getTop(), this.f39276p.getWidth(), this.f39276p.getHeight());
        com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(this.f39276p, map);
        com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(this.f39276p, com.mbridge.msdk.mbsignalcommon.mraid.d.f36508f);
        com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(this.f39276p);
    }

    public boolean canBackPress() {
        ImageView imageView = this.f39275o;
        return imageView != null && imageView.getVisibility() == 0;
    }

    @Override // com.mbridge.msdk.video.module.MBridgeH5EndCardViewDiff, com.mbridge.msdk.mbsignalcommon.mraid.b
    public void close() {
        try {
            onCloseViewClick();
        } catch (Exception e11) {
            o0.b(MBridgeBaseView.TAG, e11.getMessage());
        }
    }

    @Override // com.mbridge.msdk.video.module.MBridgeBaseView
    protected void d() {
        super.d();
        if (this.f39229e) {
            this.f39275o.setOnClickListener(new b());
        }
    }

    @Override // com.mbridge.msdk.video.module.MBridgeBaseView
    public void defaultShow() {
        super.defaultShow();
    }

    public void excuteEndCardShowTask(int i11) {
        this.f39278r.postDelayed(new h(this, i11), i11 * 1000);
    }

    public void excuteTask() {
        if (this.f39282v || this.f39283w <= -1) {
            return;
        }
        this.f39278r.postDelayed(new k(this), this.f39283w * 1000);
    }

    public void executeEndCardShow(int i11) {
        this.f39278r.postDelayed(new g(this), i11 * 1000);
    }

    @Override // com.mbridge.msdk.video.module.MBridgeH5EndCardViewDiff, com.mbridge.msdk.mbsignalcommon.mraid.b
    public void expand(String str, boolean z10) {
    }

    protected RelativeLayout.LayoutParams getContentLayoutParams() {
        return new RelativeLayout.LayoutParams(-1, -1);
    }

    @Override // com.mbridge.msdk.video.module.MBridgeH5EndCardViewDiff, com.mbridge.msdk.mbsignalcommon.mraid.b
    public CampaignEx getMraidCampaign() {
        return this.f39226b;
    }

    protected String getURL() {
        CampaignEx campaignEx = this.f39226b;
        if (campaignEx == null) {
            this.C = false;
            return null;
        }
        this.C = true;
        if (campaignEx.isMraid()) {
            this.f39282v = false;
            String mraid = this.f39226b.getMraid();
            if (TextUtils.isEmpty(mraid)) {
                return this.f39226b.getEndScreenUrl();
            }
            File file = new File(mraid);
            try {
                if (file.exists() && file.isFile() && file.canRead()) {
                    mraid = "file:////" + mraid;
                } else {
                    mraid = this.f39226b.getEndScreenUrl();
                }
                return mraid;
            } catch (Throwable th2) {
                if (!MBridgeConstans.DEBUG) {
                    return mraid;
                }
                th2.printStackTrace();
                return mraid;
            }
        }
        String str = this.f39226b.getendcard_url();
        if (y0.a(str)) {
            this.f39282v = false;
            return this.f39226b.getEndScreenUrl();
        }
        this.f39282v = true;
        String h5ResAddress = H5DownLoadManager.getInstance().getH5ResAddress(str);
        if (!TextUtils.isEmpty(h5ResAddress)) {
            return h5ResAddress + "&native_adtype=" + this.f39226b.getAdType();
        }
        try {
            String path = Uri.parse(str).getPath();
            if (!TextUtils.isEmpty(path) && path.toLowerCase().endsWith(".zip")) {
                String endScreenUrl = this.f39226b.getEndScreenUrl();
                if (TextUtils.isEmpty(endScreenUrl)) {
                    return null;
                }
                this.f39282v = false;
                excuteTask();
                return endScreenUrl;
            }
        } catch (Throwable th3) {
            o0.b(MBridgeBaseView.TAG, th3.getMessage());
        }
        return str + "&native_adtype=" + this.f39226b.getAdType();
    }

    @Override // com.mbridge.msdk.video.module.MBridgeH5EndCardViewDiff
    public void handlerPlayableException(String str) {
        if (this.f39281u) {
            return;
        }
        this.f39281u = true;
        this.f39280t = false;
        if (this.f39226b != null) {
            m mVar = new m();
            mVar.n(this.f39226b.getRequestId());
            mVar.o(this.f39226b.getRequestIdNotice());
            mVar.b(this.f39226b.getId());
            mVar.m(str);
            com.mbridge.msdk.foundation.same.report.g.a(mVar, this.f39225a.getApplicationContext(), this.unitId);
        }
    }

    @Override // com.mbridge.msdk.video.module.MBridgeBaseView
    public void init(Context context) {
        int iFindLayout = findLayout("mbridge_reward_endcard_h5");
        if (g0.a(iFindLayout)) {
            View viewInflate = this.f39227c.inflate(iFindLayout, (ViewGroup) null);
            this.f39273m = viewInflate;
            try {
                this.f39229e = a(viewInflate);
            } catch (Exception unused) {
                this.f39229e = false;
            }
            addView(this.f39273m, getContentLayoutParams());
            d();
            j();
        }
    }

    @Override // com.mbridge.msdk.video.module.MBridgeH5EndCardViewDiff
    public void install(CampaignEx campaignEx) {
    }

    public boolean isLoadSuccess() {
        return this.f39280t;
    }

    public boolean isPlayable() {
        return this.f39282v;
    }

    protected void j() {
        if (this.f39229e) {
            setMatchParent();
        }
    }

    @Override // com.mbridge.msdk.video.module.MBridgeH5EndCardViewDiff, com.mbridge.msdk.video.signal.h
    public void notifyCloseBtn(int i11) {
        if (i11 == 0) {
            this.E = true;
        } else {
            if (i11 != 1) {
                return;
            }
            this.F = true;
        }
    }

    public void onBackPress() {
        boolean z10;
        if (this.D || (((z10 = this.E) && this.F) || (!(z10 || !this.G || this.O) || (!z10 && this.H && this.O)))) {
            onCloseViewClick();
        }
    }

    public void onCloseViewClick() {
        try {
            if (this.f39276p != null) {
                com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) this.f39276p, "onSystemDestory", "");
                new Thread(new f(this)).start();
            } else {
                this.notifyListener.a(103, "");
                this.notifyListener.a(Sdk$SDKError.Reason.JSON_ENCODE_ERROR_VALUE, "webview is null when closing webview");
            }
        } catch (Exception e11) {
            this.notifyListener.a(103, "");
            this.notifyListener.a(Sdk$SDKError.Reason.JSON_ENCODE_ERROR_VALUE, "close webview exception" + e11.getMessage());
            o0.a(MBridgeBaseView.TAG, e11.getMessage());
        }
        try {
            com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
            eVar.a(NativeComponentConstants.KEY_COMPONENT_TYPE, 2);
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000152", eVar);
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000134", this.f39226b);
        } catch (Throwable th2) {
            if (MBridgeConstans.DEBUG) {
                th2.printStackTrace();
            }
        }
    }

    @Override // com.mbridge.msdk.out.BaseTrackingListener
    public void onFinishRedirection(Campaign campaign, String str) {
        if (campaign == null) {
            return;
        }
        s0.a(campaign, this);
    }

    @Override // com.mbridge.msdk.out.BaseTrackingListener
    public void onRedirectionFailed(Campaign campaign, String str) {
        if (campaign == null) {
            return;
        }
        s0.a(campaign, this);
    }

    @Override // com.mbridge.msdk.video.module.MBridgeBaseView
    public void onSelfConfigurationChanged(Configuration configuration) {
        super.onSelfConfigurationChanged(configuration);
        orientation(configuration);
    }

    @Override // com.mbridge.msdk.out.BaseTrackingListener
    public void onStartRedirection(Campaign campaign, String str) {
        s0.b(campaign, this);
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i11) {
        super.onVisibilityChanged(view, i11);
        if (i11 != 0 || this.J) {
            return;
        }
        this.J = true;
        setFocusableInTouchMode(true);
        requestFocus();
        requestFocusFromTouch();
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
        CampaignEx campaignEx = this.f39226b;
        if (campaignEx == null || !campaignEx.isMraid()) {
            return;
        }
        if (z10) {
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().c(this.f39276p, "true");
        } else {
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().c(this.f39276p, "false");
        }
    }

    @Override // com.mbridge.msdk.video.module.MBridgeH5EndCardViewDiff, com.mbridge.msdk.mbsignalcommon.mraid.b
    public void open(String str) {
        super.open(str);
    }

    @Override // com.mbridge.msdk.video.module.MBridgeH5EndCardViewDiff
    public void orientation(Configuration configuration) {
        try {
            JSONObject jSONObject = new JSONObject();
            if (configuration.orientation == 2) {
                jSONObject.put("orientation", TmcStartParams.KEY_LANDSCAPE);
            } else {
                jSONObject.put("orientation", "portrait");
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) this.f39276p, "orientation", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    @Override // com.mbridge.msdk.video.module.MBridgeH5EndCardViewDiff
    public void preLoadData(com.mbridge.msdk.video.signal.factory.b bVar) {
        String url = getURL();
        if (!this.f39229e || this.f39226b == null || TextUtils.isEmpty(url) || this.f39276p == null) {
            reportRenderResult("PL URL IS NULL", 3);
            this.notifyListener.a(127, "");
            this.notifyListener.a(129, "");
        } else {
            this.B = System.currentTimeMillis();
            try {
                reportRenderResult("start", 0);
            } catch (Exception unused) {
            }
            com.mbridge.msdk.foundation.same.webview.a aVar = new com.mbridge.msdk.foundation.same.webview.a(this.f39226b);
            aVar.a(this.f39226b.getAppName());
            this.f39276p.setDownloadListener(aVar);
            this.f39276p.setCampaignId(this.f39226b.getId());
            this.f39276p.setTempTypeForMetrics(3);
            CampaignEx campaignEx = this.f39226b;
            if (campaignEx != null) {
                this.f39276p.setCampaignEx(campaignEx);
            }
            setCloseVisible(8);
            this.f39276p.setApiManagerJSFactory(bVar);
            if (this.f39226b.isMraid()) {
                this.f39276p.setMraidObject(this);
            }
            this.f39276p.setWebViewListener(new c(url.contains("wfr=1") || url.contains("wfl=1")));
            if (TextUtils.isEmpty(this.f39226b.getMraid())) {
                h();
            }
            setHtmlSource(HTMLResourceManager.getInstance().getHtmlContentFromUrl(url));
            if (TextUtils.isEmpty(this.f39279s)) {
                this.f39276p.loadUrl(url);
            } else {
                this.f39276p.loadDataWithBaseURL(url, this.f39279s, "text/html", "UTF-8", null);
            }
        }
        this.O = false;
    }

    @Override // com.mbridge.msdk.video.module.MBridgeH5EndCardViewDiff
    public void readyStatus(int i11) {
    }

    public void release() {
        Handler handler = this.f39278r;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.f39278r = null;
        }
        Handler handler2 = this.L;
        if (handler2 != null) {
            handler2.removeCallbacksAndMessages(null);
            this.L = null;
        }
        this.f39274n.removeAllViews();
        this.f39276p.release();
        this.f39276p = null;
    }

    @Override // com.mbridge.msdk.video.module.MBridgeH5EndCardViewDiff
    public void reportOpen(String str) {
        CampaignEx mraidCampaign = getMraidCampaign();
        if (mraidCampaign != null) {
            new com.mbridge.msdk.foundation.same.report.h(getContext()).a(mraidCampaign.getRequestId(), mraidCampaign.getRequestIdNotice(), mraidCampaign.getId(), this.unitId, str, this.f39226b.isBidCampaign());
        }
    }

    public void reportRenderResult(String str, int i11) {
        if (this.f39226b == null || this.f39281u) {
            return;
        }
        m mVar = new m();
        mVar.n(this.f39226b.getRequestId());
        mVar.o(this.f39226b.getRequestIdNotice());
        mVar.b(this.f39226b.getId());
        mVar.d(i11);
        mVar.e(String.valueOf(System.currentTimeMillis() - this.B));
        mVar.m(str);
        String str2 = "2";
        if (this.f39226b.getAdType() == 287) {
            mVar.a("3");
        } else if (this.f39226b.getAdType() == 94) {
            mVar.a("1");
        } else if (this.f39226b.getAdType() == 42) {
            mVar.a("2");
        }
        if (this.f39226b.isMraid()) {
            mVar.b(m.N);
        } else {
            mVar.g(this.f39226b.getendcard_url());
            if (y0.b(this.f39226b.getendcard_url()) && this.f39226b.getendcard_url().contains(".zip")) {
                str2 = "1";
            }
            mVar.f(str2);
            mVar.b(m.O);
        }
        com.mbridge.msdk.foundation.same.report.g.b(mVar, this.unitId, this.f39226b);
    }

    public void setCloseDelayShowTime(int i11) {
        this.f39283w = i11;
    }

    public void setCloseVisible(int i11) {
        if (this.f39229e) {
            this.f39275o.setVisibility(i11);
        }
    }

    public void setCloseVisibleForMraid(int i11) {
        if (this.f39229e) {
            this.I = true;
            if (i11 == 4) {
                this.f39275o.setImageDrawable(new ColorDrawable(16711680));
            } else {
                this.f39275o.setImageResource(findDrawable("mbridge_reward_close"));
            }
            this.f39275o.setVisibility(0);
        }
    }

    public void setError(boolean z10) {
        this.f39281u = z10;
    }

    public void setHtmlSource(String str) {
        this.f39279s = str;
    }

    public void setLoadPlayable(boolean z10) {
        this.O = z10;
    }

    public void setNotchValue(String str, int i11, int i12, int i13, int i14) {
        if (!TextUtils.isEmpty(str)) {
            this.K = str;
        }
        CampaignEx campaignEx = this.f39226b;
        if (campaignEx == null || campaignEx.getAdSpaceT() == 2) {
            return;
        }
        o0.b(MBridgeBaseView.TAG, "NOTCH H5ENDCARD " + String.format("%1s-%2s-%3s-%4s", Integer.valueOf(i11), Integer.valueOf(i12), Integer.valueOf(i13), Integer.valueOf(i14)));
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f39275o.getLayoutParams();
        int iA = t0.a(getContext(), 20.0f);
        layoutParams.setMargins(i11 + iA, i13 + iA, i12 + iA, i14 + iA);
        this.f39275o.setLayoutParams(layoutParams);
    }

    public void setPlayCloseBtnTm(int i11) {
        this.f39284x = i11;
    }

    public void setUnitId(String str) {
        this.unitId = str;
    }

    public void startCounterEndCardShowTimer() {
        try {
            String str = this.f39226b.getendcard_url();
            if (y0.b(str) && str.contains("wfl=1")) {
                String[] strArrSplit = str.split(UrlUtils.AND_MARK);
                int iA = 15;
                if (strArrSplit != null && strArrSplit.length > 0) {
                    for (String str2 : strArrSplit) {
                        if (y0.b(str2) && str2.contains("timeout") && str2.split(UrlUtils.EQUAL_MARK) != null && str2.split(UrlUtils.EQUAL_MARK).length > 0) {
                            iA = t0.a((Object) str2.split(UrlUtils.EQUAL_MARK)[1]);
                        }
                    }
                }
                executeEndCardShow(iA);
            }
        } catch (Throwable th2) {
            o0.a(MBridgeBaseView.TAG, th2.getMessage());
        }
    }

    @Override // com.mbridge.msdk.video.module.MBridgeH5EndCardViewDiff, com.mbridge.msdk.video.signal.h
    public void toggleCloseBtn(int i11) {
        int visibility = this.f39275o.getVisibility();
        if (i11 == 1) {
            this.D = true;
            visibility = 0;
        } else if (i11 == 2) {
            this.D = false;
            if (this.O) {
                g();
            } else {
                f();
            }
            visibility = 8;
        }
        setCloseVisible(visibility);
    }

    @Override // com.mbridge.msdk.video.module.MBridgeH5EndCardViewDiff, com.mbridge.msdk.mbsignalcommon.mraid.b
    public void unload() {
        close();
    }

    @Override // com.mbridge.msdk.video.module.MBridgeH5EndCardViewDiff, com.mbridge.msdk.mbsignalcommon.mraid.b
    public void useCustomClose(boolean z10) {
        try {
            setCloseVisibleForMraid(z10 ? 4 : 0);
        } catch (Exception e11) {
            o0.b(MBridgeBaseView.TAG, e11.getMessage());
        }
    }

    public void volumeChange(double d11) {
        com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(this.f39276p, d11);
    }

    @Override // com.mbridge.msdk.video.module.MBridgeH5EndCardViewDiff
    public void webviewshow() {
        WindVaneWebView windVaneWebView = this.f39276p;
        if (windVaneWebView != null) {
            windVaneWebView.post(new d());
        }
    }
}
