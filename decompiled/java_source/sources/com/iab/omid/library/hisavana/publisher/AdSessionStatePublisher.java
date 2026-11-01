package com.iab.omid.library.hisavana.publisher;

import android.webkit.WebView;
import com.iab.omid.library.hisavana.adsession.c;
import com.iab.omid.library.hisavana.adsession.d;
import com.iab.omid.library.hisavana.internal.g;
import com.iab.omid.library.hisavana.internal.h;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import ie.f;
import java.util.Date;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public abstract class AdSessionStatePublisher {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f33601a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ke.b f33602b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.iab.omid.library.hisavana.adsession.a f33603c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private a f33604d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f33605e;

    enum a {
        AD_STATE_IDLE,
        AD_STATE_VISIBLE,
        AD_STATE_NOTVISIBLE
    }

    public AdSessionStatePublisher(String str) {
        a();
        this.f33601a = str;
        this.f33602b = new ke.b(null);
    }

    public void a() {
        this.f33605e = f.b();
        this.f33604d = a.AD_STATE_IDLE;
    }

    public void b(float f11) {
        h.a().c(s(), this.f33601a, f11);
    }

    void c(WebView webView) {
        this.f33602b = new ke.b(webView);
    }

    public void d(com.iab.omid.library.hisavana.adsession.a aVar) {
        this.f33603c = aVar;
    }

    public void e(c cVar) {
        h.a().e(s(), this.f33601a, cVar.c());
    }

    public void f(com.iab.omid.library.hisavana.adsession.h hVar, d dVar) {
        g(hVar, dVar, null);
    }

    protected void g(com.iab.omid.library.hisavana.adsession.h hVar, d dVar, JSONObject jSONObject) {
        String strK = hVar.k();
        JSONObject jSONObject2 = new JSONObject();
        ie.c.i(jSONObject2, "environment", "app");
        ie.c.i(jSONObject2, "adSessionType", dVar.b());
        ie.c.i(jSONObject2, "deviceInfo", ie.b.d());
        ie.c.i(jSONObject2, "deviceCategory", ie.a.a().toString());
        JSONArray jSONArray = new JSONArray();
        jSONArray.put("clid");
        jSONArray.put("vlid");
        ie.c.i(jSONObject2, "supports", jSONArray);
        JSONObject jSONObject3 = new JSONObject();
        ie.c.i(jSONObject3, "partnerName", dVar.g().b());
        ie.c.i(jSONObject3, "partnerVersion", dVar.g().c());
        ie.c.i(jSONObject2, "omidNativeInfo", jSONObject3);
        JSONObject jSONObject4 = new JSONObject();
        ie.c.i(jSONObject4, "libraryVersion", "1.5.4-Hisavana");
        ie.c.i(jSONObject4, "appId", g.c().a().getApplicationContext().getPackageName());
        ie.c.i(jSONObject2, "app", jSONObject4);
        if (dVar.c() != null) {
            ie.c.i(jSONObject2, "contentUrl", dVar.c());
        }
        if (dVar.d() != null) {
            ie.c.i(jSONObject2, "customReferenceData", dVar.d());
        }
        JSONObject jSONObject5 = new JSONObject();
        for (com.iab.omid.library.hisavana.adsession.g gVar : dVar.h()) {
            ie.c.i(jSONObject5, gVar.d(), gVar.e());
        }
        h.a().f(s(), strK, jSONObject2, jSONObject5, jSONObject);
    }

    public void h(String str, long j11) {
        if (j11 >= this.f33605e) {
            a aVar = this.f33604d;
            a aVar2 = a.AD_STATE_NOTVISIBLE;
            if (aVar != aVar2) {
                this.f33604d = aVar2;
                h.a().l(s(), this.f33601a, str);
            }
        }
    }

    public void i(Date date) {
        if (date == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        ie.c.i(jSONObject, CampaignEx.JSON_KEY_TIMESTAMP, Long.valueOf(date.getTime()));
        h.a().i(s(), jSONObject);
    }

    public void j(JSONObject jSONObject) {
        h.a().m(s(), this.f33601a, jSONObject);
    }

    public void k(boolean z10) {
        if (p()) {
            h.a().n(s(), this.f33601a, z10 ? "foregrounded" : "backgrounded");
        }
    }

    public void l() {
        this.f33602b.clear();
    }

    public void m(String str, long j11) {
        if (j11 >= this.f33605e) {
            this.f33604d = a.AD_STATE_VISIBLE;
            h.a().l(s(), this.f33601a, str);
        }
    }

    public void n(boolean z10) {
        if (p()) {
            h.a().d(s(), this.f33601a, z10 ? "locked" : "unlocked");
        }
    }

    public com.iab.omid.library.hisavana.adsession.a o() {
        return this.f33603c;
    }

    public boolean p() {
        return this.f33602b.get() != 0;
    }

    public void q() {
        h.a().b(s(), this.f33601a);
    }

    public void r() {
        h.a().k(s(), this.f33601a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public WebView s() {
        return (WebView) this.f33602b.get();
    }

    public void t() {
        j(null);
    }

    public void u() {
    }
}
