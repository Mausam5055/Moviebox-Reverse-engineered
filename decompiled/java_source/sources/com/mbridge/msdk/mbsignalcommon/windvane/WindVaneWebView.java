package com.mbridge.msdk.mbsignalcommon.windvane;

import android.content.Context;
import android.content.IntentFilter;
import android.os.Handler;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.mbsignalcommon.base.BaseWebView;

/* JADX INFO: loaded from: classes5.dex */
public class WindVaneWebView extends BaseWebView {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected j f36525d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected b f36526e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected e f36527f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Object f36528g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Object f36529h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f36530i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private c f36531j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private String f36532k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private String f36533l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private CampaignEx f36534m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f36535n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f36536o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private float f36537p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private float f36538q;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            WindVaneWebView.this.f36536o = true;
            WindVaneWebView.this.destroy();
        }
    }

    public WindVaneWebView(Context context) {
        super(context);
        this.f36536o = false;
        this.f36537p = 0.0f;
        this.f36538q = 0.0f;
    }

    public WindVaneWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f36536o = false;
        this.f36537p = 0.0f;
        this.f36538q = 0.0f;
    }

    public WindVaneWebView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f36536o = false;
        this.f36537p = 0.0f;
        this.f36538q = 0.0f;
    }

    @Override // com.mbridge.msdk.mbsignalcommon.base.BaseWebView
    protected void a() {
        super.a();
        getSettings().setSavePassword(false);
        getSettings().setUserAgentString(getSettings().getUserAgentString() + " WindVane/3.0.2");
        if (this.f36525d == null) {
            this.f36525d = new j(this);
        }
        setWebViewChromeClient(this.f36525d);
        k kVar = new k();
        this.mWebViewClient = kVar;
        setWebViewClient(kVar);
        if (this.f36526e == null) {
            b hVar = new h(this.f36425a);
            this.f36526e = hVar;
            setSignalCommunication(hVar);
        }
        this.f36527f = new e(this.f36425a, this);
    }

    public void clearWebView() {
        if (this.f36536o) {
            return;
        }
        loadUrl(TmcConstants.LOAD_BASE_DATA_URL);
    }

    public CampaignEx getCampaignEx() {
        return this.f36534m;
    }

    public String getCampaignId() {
        return this.f36530i;
    }

    public Object getJsObject(String str) {
        e eVar = this.f36527f;
        if (eVar == null) {
            return null;
        }
        return eVar.a(str);
    }

    public String getLocalRequestId() {
        return this.f36533l;
    }

    public Object getMraidObject() {
        return this.f36529h;
    }

    public Object getObject() {
        return this.f36528g;
    }

    public String getRid() {
        return this.f36532k;
    }

    public b getSignalCommunication() {
        return this.f36526e;
    }

    public c getWebViewListener() {
        return this.f36531j;
    }

    public boolean isDestoryed() {
        return this.f36536o;
    }

    @Override // android.webkit.WebView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        com.mbridge.msdk.mbsignalcommon.base.b bVar = this.mWebViewClient;
        if (bVar != null && (bVar.a() instanceof IntentFilter)) {
            String url = getUrl();
            if (!TextUtils.isEmpty(url) && url.contains("https://play.google.com")) {
                if (motionEvent.getAction() == 0) {
                    this.f36537p = motionEvent.getRawX();
                    this.f36538q = motionEvent.getRawY();
                } else {
                    float rawX = motionEvent.getRawX() - this.f36537p;
                    float y10 = motionEvent.getY() - this.f36538q;
                    if ((rawX >= 0.0f || rawX * (-1.0f) <= 48) && ((rawX <= 0.0f || rawX <= 48) && ((y10 >= 0.0f || (-1.0f) * y10 <= 48) && (y10 <= 0.0f || y10 <= 48)))) {
                        setClickable(false);
                        return true;
                    }
                }
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    public void registerWindVanePlugin(Class cls) {
        e eVar = this.f36527f;
        if (eVar == null) {
            return;
        }
        eVar.a(cls.getSimpleName(), cls);
    }

    public void release() {
        try {
            if (!this.f36536o) {
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a(NativeComponentConstants.KEY_COMPONENT_TYPE, Integer.valueOf(this.f36535n));
                if (this.f36534m != null) {
                    com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000135", this.f36534m, eVar);
                }
            }
        } catch (Exception unused) {
        }
        try {
            setVisibility(8);
            removeAllViews();
            setDownloadListener(null);
            this.f36528g = null;
            int iB = t0.b(getContext());
            if (iB == 0) {
                this.f36536o = true;
                destroy();
            } else {
                new Handler().postDelayed(new a(), iB * 1000);
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    public void setApiManagerContext(Context context) {
        e eVar = this.f36527f;
        if (eVar != null) {
            eVar.a(context);
        }
    }

    public void setApiManagerJSFactory(Object obj) {
        e eVar = this.f36527f;
        if (eVar != null) {
            eVar.a(obj);
        }
    }

    public void setCampaignEx(CampaignEx campaignEx) {
        this.f36534m = campaignEx;
    }

    public void setCampaignId(String str) {
        this.f36530i = str;
    }

    public void setLocalRequestId(String str) {
        this.f36533l = str;
    }

    public void setMraidObject(Object obj) {
        this.f36529h = obj;
    }

    public void setObject(Object obj) {
        this.f36528g = obj;
    }

    public void setRid(String str) {
        this.f36532k = str;
    }

    public void setSignalCommunication(b bVar) {
        this.f36526e = bVar;
        bVar.a(this);
    }

    public void setTempTypeForMetrics(int i11) {
        this.f36535n = i11;
    }

    public void setWebViewChromeClient(j jVar) {
        this.f36525d = jVar;
        setWebChromeClient(jVar);
    }

    public void setWebViewListener(c cVar) {
        this.f36531j = cVar;
        j jVar = this.f36525d;
        if (jVar != null) {
            jVar.a(cVar);
        }
        com.mbridge.msdk.mbsignalcommon.base.b bVar = this.mWebViewClient;
        if (bVar != null) {
            bVar.a(cVar);
        }
    }

    public void setWebViewTransparent() {
        super.setTransparent();
    }
}
