package com.mbridge.msdk.video.signal.impl;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class l extends d {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f39850s = true;

    private com.mbridge.msdk.click.a q() {
        if (this.f39823l == null) {
            this.f39823l = new com.mbridge.msdk.click.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f39821j);
        }
        return this.f39823l;
    }

    public void a(CampaignEx campaignEx, Context context) {
        String queryParameter;
        try {
            queryParameter = Uri.parse(campaignEx.getNoticeUrl()).getQueryParameter(com.mbridge.msdk.foundation.same.a.f35341m);
        } catch (Throwable unused) {
        }
        this.f39824m.a((!TextUtils.isEmpty(queryParameter) ? Integer.parseInt(queryParameter) : 0) == 2);
        q().a(this.f39824m);
        q().a(campaignEx);
        com.mbridge.msdk.video.module.report.b.a(com.mbridge.msdk.foundation.controller.c.m().d(), campaignEx);
    }

    public void a(JSONObject jSONObject) {
        try {
            jSONObject.put("device", new com.mbridge.msdk.foundation.tools.r(com.mbridge.msdk.foundation.controller.c.m().d()).a());
        } catch (JSONException e11) {
            throw new RuntimeException(e11);
        }
    }

    public void b(JSONObject jSONObject) {
    }
}
