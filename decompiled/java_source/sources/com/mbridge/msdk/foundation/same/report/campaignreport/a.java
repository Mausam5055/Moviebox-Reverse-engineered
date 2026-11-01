package com.mbridge.msdk.foundation.same.report.campaignreport;

import android.content.Context;
import android.text.TextUtils;
import com.cloud.tmc.integration.event.EventConstants;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.h;
import com.mbridge.msdk.foundation.same.report.metrics.d;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.tracker.e;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected Context f35522a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected h f35523b;

    public a(h hVar) {
        this.f35523b = hVar;
        Context contextD = c.m().d();
        this.f35522a = contextD;
        if (this.f35523b == null || contextD == null) {
            return;
        }
        int iS = k0.s(contextD);
        this.f35523b.c(iS);
        this.f35523b.a(k0.a(this.f35522a, iS));
    }

    public void a() {
        if (this.f35523b != null) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(EventConstants.KEY_TIME, this.f35523b.f());
                jSONObject.put(CampaignEx.JSON_KEY_HB, this.f35523b.i());
                jSONObject.put("fb", this.f35523b.b());
                jSONObject.put("num", this.f35523b.e());
                jSONObject.put(CampaignEx.JSON_KEY_AD_SOURCE_ID, this.f35523b.a());
                jSONObject.put("timeout", this.f35523b.g());
                jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, this.f35523b.h());
                if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
                    jSONObject.put("network_type", this.f35523b.d());
                    jSONObject.put("network_str", this.f35523b.c());
                }
                e eVar = new e("2000006");
                eVar.a(0);
                eVar.b(0);
                eVar.a(jSONObject);
                eVar.a(com.mbridge.msdk.foundation.same.report.c.d());
                d.b().d().d(eVar);
            } catch (Throwable unused) {
            }
        }
    }

    public void a(int i11) {
        h hVar = this.f35523b;
        if (hVar != null) {
            hVar.d(i11);
        }
    }

    public void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f35523b.b(str);
    }

    public void b(int i11) {
        h hVar = this.f35523b;
        if (hVar != null) {
            hVar.a(i11);
        }
    }

    public void b(String str) {
        h hVar = this.f35523b;
        if (hVar != null) {
            hVar.c(str);
        }
    }

    public void c(int i11) {
        h hVar = this.f35523b;
        if (hVar != null) {
            hVar.b(i11);
        }
    }
}
