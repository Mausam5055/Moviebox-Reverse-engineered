package com.iab.omid.library.bytedance2.publisher;

import android.webkit.WebView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.iab.omid.library.bytedance2.adsession.AdEvents;
import com.iab.omid.library.bytedance2.adsession.AdSessionConfiguration;
import com.iab.omid.library.bytedance2.adsession.AdSessionContext;
import com.iab.omid.library.bytedance2.adsession.ErrorType;
import com.iab.omid.library.bytedance2.adsession.VerificationScriptResource;
import com.iab.omid.library.bytedance2.adsession.media.MediaEvents;
import com.iab.omid.library.bytedance2.internal.g;
import com.iab.omid.library.bytedance2.internal.h;
import com.iab.omid.library.bytedance2.utils.c;
import com.iab.omid.library.bytedance2.utils.f;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.Date;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public abstract class AdSessionStatePublisher {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f33470a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.iab.omid.library.bytedance2.weakreference.b f33471b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private AdEvents f33472c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private MediaEvents f33473d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private a f33474e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f33475f;

    enum a {
        AD_STATE_IDLE,
        AD_STATE_VISIBLE,
        AD_STATE_NOTVISIBLE
    }

    public AdSessionStatePublisher(String str) {
        a();
        this.f33470a = str;
        this.f33471b = new com.iab.omid.library.bytedance2.weakreference.b(null);
    }

    public void a() {
        this.f33475f = f.b();
        this.f33474e = a.AD_STATE_IDLE;
    }

    public void a(float f11) {
        h.a().a(getWebView(), this.f33470a, f11);
    }

    void a(WebView webView) {
        this.f33471b = new com.iab.omid.library.bytedance2.weakreference.b(webView);
    }

    public void a(AdEvents adEvents) {
        this.f33472c = adEvents;
    }

    public void a(AdSessionConfiguration adSessionConfiguration) {
        h.a().a(getWebView(), this.f33470a, adSessionConfiguration.toJsonObject());
    }

    public void a(ErrorType errorType, String str) {
        h.a().a(getWebView(), this.f33470a, errorType, str);
    }

    public void a(com.iab.omid.library.bytedance2.adsession.a aVar, AdSessionContext adSessionContext) {
        a(aVar, adSessionContext, null);
    }

    protected void a(com.iab.omid.library.bytedance2.adsession.a aVar, AdSessionContext adSessionContext, JSONObject jSONObject) {
        String adSessionId = aVar.getAdSessionId();
        JSONObject jSONObject2 = new JSONObject();
        c.a(jSONObject2, "environment", "app");
        c.a(jSONObject2, "adSessionType", adSessionContext.getAdSessionContextType());
        c.a(jSONObject2, "deviceInfo", com.iab.omid.library.bytedance2.utils.b.d());
        c.a(jSONObject2, "deviceCategory", com.iab.omid.library.bytedance2.utils.a.a().toString());
        JSONArray jSONArray = new JSONArray();
        jSONArray.put("clid");
        jSONArray.put("vlid");
        c.a(jSONObject2, "supports", jSONArray);
        JSONObject jSONObject3 = new JSONObject();
        c.a(jSONObject3, "partnerName", adSessionContext.getPartner().getName());
        c.a(jSONObject3, "partnerVersion", adSessionContext.getPartner().getVersion());
        c.a(jSONObject2, "omidNativeInfo", jSONObject3);
        JSONObject jSONObject4 = new JSONObject();
        c.a(jSONObject4, "libraryVersion", "1.4.12-Bytedance2");
        c.a(jSONObject4, "appId", g.b().a().getApplicationContext().getPackageName());
        c.a(jSONObject2, "app", jSONObject4);
        if (adSessionContext.getContentUrl() != null) {
            c.a(jSONObject2, "contentUrl", adSessionContext.getContentUrl());
        }
        if (adSessionContext.getCustomReferenceData() != null) {
            c.a(jSONObject2, "customReferenceData", adSessionContext.getCustomReferenceData());
        }
        JSONObject jSONObject5 = new JSONObject();
        for (VerificationScriptResource verificationScriptResource : adSessionContext.getVerificationScriptResources()) {
            c.a(jSONObject5, verificationScriptResource.getVendorKey(), verificationScriptResource.getVerificationParameters());
        }
        h.a().a(getWebView(), adSessionId, jSONObject2, jSONObject5, jSONObject);
    }

    public void a(MediaEvents mediaEvents) {
        this.f33473d = mediaEvents;
    }

    public void a(String str) {
        a(str, (JSONObject) null);
    }

    public void a(String str, long j11) {
        if (j11 >= this.f33475f) {
            a aVar = this.f33474e;
            a aVar2 = a.AD_STATE_NOTVISIBLE;
            if (aVar != aVar2) {
                this.f33474e = aVar2;
                h.a().a(getWebView(), this.f33470a, str);
            }
        }
    }

    public void a(String str, @Nullable JSONObject jSONObject) {
        h.a().a(getWebView(), this.f33470a, str, jSONObject);
    }

    public void a(@NonNull Date date) {
        if (date == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        c.a(jSONObject, CampaignEx.JSON_KEY_TIMESTAMP, Long.valueOf(date.getTime()));
        h.a().a(getWebView(), jSONObject);
    }

    public void a(@Nullable JSONObject jSONObject) {
        h.a().b(getWebView(), this.f33470a, jSONObject);
    }

    public void a(boolean z10) {
        if (e()) {
            h.a().b(getWebView(), this.f33470a, z10 ? "foregrounded" : "backgrounded");
        }
    }

    public void b() {
        this.f33471b.clear();
    }

    public void b(String str, long j11) {
        if (j11 >= this.f33475f) {
            this.f33474e = a.AD_STATE_VISIBLE;
            h.a().a(getWebView(), this.f33470a, str);
        }
    }

    public AdEvents c() {
        return this.f33472c;
    }

    public MediaEvents d() {
        return this.f33473d;
    }

    public boolean e() {
        return this.f33471b.get() != null;
    }

    public void f() {
        h.a().a(getWebView(), this.f33470a);
    }

    public void g() {
        h.a().b(getWebView(), this.f33470a);
    }

    public WebView getWebView() {
        return this.f33471b.get();
    }

    public void h() {
        a((JSONObject) null);
    }

    public void i() {
    }
}
