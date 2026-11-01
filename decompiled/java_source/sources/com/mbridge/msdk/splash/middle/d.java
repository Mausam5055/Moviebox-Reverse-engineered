package com.mbridge.msdk.splash.middle;

import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.j;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.out.MBSplashShowListener;
import com.mbridge.msdk.out.MBridgeIds;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private MBSplashShowListener f37567a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private CampaignEx f37568b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private c f37569c;

    public d(c cVar, MBSplashShowListener mBSplashShowListener, CampaignEx campaignEx) {
        this.f37569c = cVar;
        this.f37567a = mBSplashShowListener;
        this.f37568b = campaignEx;
    }

    public void a(MBridgeIds mBridgeIds) {
        MBSplashShowListener mBSplashShowListener = this.f37567a;
        if (mBSplashShowListener != null) {
            mBSplashShowListener.onAdClicked(mBridgeIds);
        }
    }

    public void a(MBridgeIds mBridgeIds, int i11) {
        MBSplashShowListener mBSplashShowListener = this.f37567a;
        if (mBSplashShowListener != null) {
            mBSplashShowListener.onDismiss(mBridgeIds, i11);
        }
        c cVar = this.f37569c;
        if (cVar != null) {
            cVar.f37560x = false;
        }
        if (i11 == 6 || i11 == 4 || i11 == 5) {
            com.mbridge.msdk.splash.report.a.a(this.f37568b, mBridgeIds.getUnitId(), i11);
        }
    }

    public void a(MBridgeIds mBridgeIds, int i11, int i12, int i13) {
        MBSplashShowListener mBSplashShowListener = this.f37567a;
        if (mBSplashShowListener != null) {
            mBSplashShowListener.onZoomOutPlayStart(mBridgeIds);
        }
        com.mbridge.msdk.splash.report.a.a(this.f37568b, mBridgeIds.getUnitId(), i11, i12, i13);
    }

    public void a(MBridgeIds mBridgeIds, long j11) {
        MBSplashShowListener mBSplashShowListener = this.f37567a;
        if (mBSplashShowListener != null) {
            mBSplashShowListener.onAdTick(mBridgeIds, j11);
        }
    }

    public void a(MBridgeIds mBridgeIds, String str) {
        c cVar = this.f37569c;
        if (cVar != null) {
            cVar.f37560x = false;
        }
        j.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f37568b, mBridgeIds.getUnitId(), str);
        MBSplashShowListener mBSplashShowListener = this.f37567a;
        if (mBSplashShowListener != null) {
            mBSplashShowListener.onShowFailed(mBridgeIds, str);
        }
    }

    public void b(MBridgeIds mBridgeIds) {
        c cVar = this.f37569c;
        if (cVar != null) {
            cVar.f37560x = true;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("load_to", this.f37569c.e());
            jSONObject.put("allow_skip", this.f37569c.f() ? 1 : 0);
            jSONObject.put("countdown", this.f37569c.d());
        } catch (JSONException e11) {
            o0.b("SplashShowListenerImpl", "e:" + e11.getMessage());
        }
        j.b(com.mbridge.msdk.foundation.controller.c.m().d(), this.f37568b, mBridgeIds.getUnitId(), jSONObject.toString());
        MBSplashShowListener mBSplashShowListener = this.f37567a;
        if (mBSplashShowListener != null) {
            mBSplashShowListener.onShowSuccessed(mBridgeIds);
        }
    }
}
