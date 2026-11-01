package com.mbridge.msdk.video.signal.impl;

import android.content.res.Configuration;
import android.util.Base64;
import android.webkit.WebView;
import com.cloud.tmc.integration.params.TmcStartParams;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class i extends b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private WebView f39833a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f39834b = 0;

    public i(WebView webView) {
        this.f39833a = webView;
    }

    @Override // com.mbridge.msdk.video.signal.impl.b, com.mbridge.msdk.video.signal.b
    public int a() {
        return this.f39834b;
    }

    @Override // com.mbridge.msdk.video.signal.impl.b, com.mbridge.msdk.video.signal.b
    public void a(int i11) {
        super.a(i11);
        this.f39834b = i11;
    }

    @Override // com.mbridge.msdk.video.signal.impl.b, com.mbridge.msdk.video.signal.b
    public void a(Configuration configuration) {
        super.a(configuration);
        try {
            JSONObject jSONObject = new JSONObject();
            if (configuration.orientation == 2) {
                jSONObject.put("orientation", TmcStartParams.KEY_LANDSCAPE);
            } else {
                jSONObject.put("orientation", "portrait");
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a(this.f39833a, "orientation", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    @Override // com.mbridge.msdk.video.signal.impl.b, com.mbridge.msdk.video.signal.b
    public void b() {
        super.b();
        com.mbridge.msdk.mbsignalcommon.windvane.f.a().a(this.f39833a, "onSystemDestory", "");
    }

    @Override // com.mbridge.msdk.video.signal.impl.b, com.mbridge.msdk.video.signal.b
    public void d() {
        super.d();
        this.f39834b = 0;
        com.mbridge.msdk.mbsignalcommon.windvane.f.a().a(this.f39833a, "onSystemResume", "");
    }

    @Override // com.mbridge.msdk.video.signal.impl.b, com.mbridge.msdk.video.signal.b
    public void e() {
        super.e();
        com.mbridge.msdk.mbsignalcommon.windvane.f.a().a(this.f39833a, "onSystemBackPressed", "");
    }

    @Override // com.mbridge.msdk.video.signal.impl.b, com.mbridge.msdk.video.signal.b
    public void g() {
        super.g();
        this.f39834b = 1;
        com.mbridge.msdk.mbsignalcommon.windvane.f.a().a(this.f39833a, "onSystemPause", "");
    }
}
