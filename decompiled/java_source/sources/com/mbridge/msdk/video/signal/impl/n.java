package com.mbridge.msdk.video.signal.impl;

import android.util.Base64;
import android.webkit.WebView;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.video.module.MBridgeVideoView;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class n extends f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private WebView f39852a;

    public n(WebView webView) {
        this.f39852a = webView;
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

    @Override // com.mbridge.msdk.video.signal.impl.f, com.mbridge.msdk.video.signal.g
    public void a(int i11) {
        super.a(i11);
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(NotificationCompat.CATEGORY_STATUS, i11);
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a(this.f39852a, "onVideoStatusNotify", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    @Override // com.mbridge.msdk.video.signal.impl.f, com.mbridge.msdk.video.signal.g
    public void a(int i11, int i12, int i13, int i14) {
        super.a(i11, i12, i13, i14);
        try {
            JSONObject jSONObject = new JSONObject();
            JSONObject jSONObject2 = new JSONObject();
            String str = TmcStartParams.KEY_LANDSCAPE;
            if (i11 != 2 ? i12 != 2 : i12 == 1) {
                str = "portrait";
            }
            jSONObject2.put("orientation", str);
            jSONObject2.put("screen_width", i13);
            jSONObject2.put("screen_height", i14);
            jSONObject.put("data", jSONObject2);
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a(this.f39852a, "showDataInfo", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                e11.printStackTrace();
            }
        }
    }

    @Override // com.mbridge.msdk.video.signal.impl.f, com.mbridge.msdk.video.signal.g
    public void a(int i11, String str) {
        super.a(i11, str);
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(NativeComponentConstants.KEY_COMPONENT_TYPE, i11);
            jSONObject.put("pt", str);
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a(this.f39852a, "onJSClick", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    @Override // com.mbridge.msdk.video.signal.impl.f, com.mbridge.msdk.video.signal.g
    public void a(MBridgeVideoView.v vVar) {
        super.a(vVar);
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(NotificationCompat.CATEGORY_PROGRESS, a(vVar.f39428a, vVar.f39429b));
            jSONObject.put(EventConstants.KEY_TIME, String.valueOf(vVar.f39428a));
            jSONObject.put("duration", String.valueOf(vVar.f39429b));
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a(this.f39852a, "onVideoProgressNotify", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    @Override // com.mbridge.msdk.video.signal.impl.f, com.mbridge.msdk.video.signal.g
    public void a(Object obj) {
        super.a(obj);
        com.mbridge.msdk.mbsignalcommon.windvane.f.a().a(this.f39852a, "webviewshow", (obj == null || !(obj instanceof String)) ? "" : Base64.encodeToString(obj.toString().getBytes(), 2));
    }
}
