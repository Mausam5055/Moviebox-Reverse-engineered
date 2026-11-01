package com.transsion.ad.web;

import android.webkit.JavascriptInterface;
import androidx.core.app.NotificationCompat;
import com.github.lzyzsd.jsbridge.BridgeWebView;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class e extends BridgeWebView.BaseJavascriptInterface {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a f42461c = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final BridgeWebView f42462a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private d f42463b;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public static final class b implements com.transsion.ad.web.b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f42465b;

        b(String str) {
            this.f42465b = str;
        }

        @Override // com.transsion.ad.web.b
        public void onAdStateCallback(String stateEnum, String str) throws JSONException {
            Intrinsics.h(stateEnum, "stateEnum");
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("state", stateEnum);
            jSONObject.put(NotificationCompat.CATEGORY_MESSAGE, str);
            e.this.f42462a.sendResponse(jSONObject.toString(), this.f42465b);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(BridgeWebView customWebView) {
        super(customWebView.getCallbacks());
        Intrinsics.h(customWebView, "customWebView");
        this.f42462a = customWebView;
    }

    public final void b(d dVar) {
        this.f42463b = dVar;
    }

    @JavascriptInterface
    public void onAdClick() {
        d dVar = this.f42463b;
        if (dVar != null) {
            dVar.h();
        }
    }

    @JavascriptInterface
    public void onAdError() {
        d dVar = this.f42463b;
        if (dVar != null) {
            dVar.n();
        }
    }

    @JavascriptInterface
    public void onAdShown(String data) {
        Intrinsics.h(data, "data");
        d dVar = this.f42463b;
        if (dVar != null) {
            dVar.f();
        }
    }

    @JavascriptInterface
    public void openMbAd(String str, String callbackId) {
        Intrinsics.h(callbackId, "callbackId");
        c.f42457a.a(str, new b(callbackId));
    }

    @Override // com.github.lzyzsd.jsbridge.BridgeWebView.BaseJavascriptInterface
    public String send(String str) {
        return "send";
    }
}
