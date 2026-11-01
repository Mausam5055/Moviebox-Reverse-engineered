package com.mbridge.msdk.newinterstitial.out;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.same.report.metrics.d;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.newreward.function.common.MBridgeGlobalCommon;
import com.mbridge.msdk.out.BaseExtraInterfaceForHandler;
import com.mbridge.msdk.out.MBSupportMuteAdType;
import com.mbridge.msdk.reward.controller.a;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
@Deprecated
public class MBBidInterstitialVideoHandler implements BaseExtraInterfaceForHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f36724a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f36725b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f36726c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f36727d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f36728e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private a f36729f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private NewInterstitialListener f36730g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f36731h = 2;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f36732i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f36733j = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f36734k = false;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f36735l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f36736m;
    public String mUnitId;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f36737n;

    public MBBidInterstitialVideoHandler(Context context, String str, String str2) {
        if (c.m().d() == null && context != null) {
            c.m().b(context);
        }
        a(str, str2);
    }

    public MBBidInterstitialVideoHandler(String str, String str2) {
        a(str, str2);
    }

    private void a() {
        if (this.f36729f == null) {
            b(this.f36724a, this.mUnitId);
        }
        b();
    }

    private void a(String str, String str2) {
        String strE = t0.e(str2);
        if (!TextUtils.isEmpty(strE)) {
            t0.b(str2, strE);
        }
        this.mUnitId = str2;
        this.f36724a = str;
        a();
    }

    private void b() {
        a aVar;
        if (this.f36732i) {
            a aVar2 = this.f36729f;
            if (aVar2 != null) {
                aVar2.a(new com.mbridge.msdk.newinterstitial.listener.a(this.f36730g));
            }
            this.f36732i = false;
        }
        if (this.f36733j) {
            a aVar3 = this.f36729f;
            if (aVar3 != null) {
                aVar3.a(this.f36726c, this.f36725b, this.f36727d, this.f36728e);
            }
            this.f36733j = false;
        }
        if (!this.f36734k || (aVar = this.f36729f) == null) {
            return;
        }
        aVar.a(this.f36735l, this.f36737n, this.f36736m);
        this.f36734k = false;
    }

    private void b(String str, String str2) {
        try {
            if (this.f36729f == null) {
                a aVar = new a();
                this.f36729f = aVar;
                aVar.d(true);
                this.f36729f.e(true);
                this.f36729f.c(str, str2);
            }
        } catch (Throwable th2) {
            o0.b("MBBidInterstitialVideoHandler", th2.getMessage(), th2);
        }
    }

    private void c() {
        a aVar = this.f36729f;
        if (aVar != null) {
            aVar.a(this.f36735l, this.f36737n, this.f36736m);
        }
    }

    public void clearVideoCache() {
        try {
            a aVar = this.f36729f;
            if (aVar != null) {
                aVar.e();
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public String getCreativeIdWithUnitId() {
        a aVar = this.f36729f;
        return aVar != null ? aVar.j() : "";
    }

    public String getRequestId() {
        a aVar = this.f36729f;
        return aVar != null ? aVar.m() : "";
    }

    public boolean isBidReady() {
        a();
        a aVar = this.f36729f;
        if (aVar != null) {
            return aVar.c(true);
        }
        return false;
    }

    public void loadFormSelfFilling() {
        a();
        if (this.f36729f != null) {
            this.f36729f.a(false, d.b().a(1, MBSupportMuteAdType.INTERSTITIAL_VIDEO, this.mUnitId, true, 1));
        }
    }

    public void loadFromBid(String str) {
        a();
        if (this.f36729f != null) {
            this.f36729f.a(true, str, d.b().a(1, MBSupportMuteAdType.INTERSTITIAL_VIDEO, this.mUnitId, true, 2));
        }
    }

    public void playVideoMute(int i11) {
        this.f36731h = i11;
        a aVar = this.f36729f;
        if (aVar != null) {
            aVar.a(i11);
        }
    }

    public void setAlertDialogText(String str, String str2, String str3, String str4) {
        this.f36726c = str;
        this.f36725b = str2;
        this.f36727d = str3;
        this.f36728e = str4;
        this.f36733j = true;
        MBridgeGlobalCommon.setAlertDialogText(this.mUnitId, str, str2, str3, str4);
    }

    @Override // com.mbridge.msdk.out.BaseExtraInterfaceForHandler
    public void setExtraInfo(JSONObject jSONObject) {
        c.m().a(this.mUnitId, jSONObject);
    }

    public void setIVRewardEnable(int i11, double d11) {
        this.f36735l = i11;
        this.f36736m = (int) (d11 * 100.0d);
        this.f36737n = com.mbridge.msdk.foundation.same.a.J;
        this.f36734k = true;
        c();
    }

    public void setIVRewardEnable(int i11, int i12) {
        this.f36735l = i11;
        this.f36736m = i12;
        this.f36737n = com.mbridge.msdk.foundation.same.a.K;
        this.f36734k = true;
        c();
    }

    public void setInterstitialVideoListener(NewInterstitialListener newInterstitialListener) {
        this.f36730g = newInterstitialListener;
        this.f36732i = true;
        a aVar = this.f36729f;
        if (aVar == null || aVar.u()) {
            return;
        }
        this.f36729f.a(new com.mbridge.msdk.newinterstitial.listener.a(newInterstitialListener));
        this.f36732i = false;
    }

    @Deprecated
    public void setRewardVideoListener(NewInterstitialListener newInterstitialListener) {
        this.f36730g = newInterstitialListener;
        this.f36732i = true;
        a aVar = this.f36729f;
        if (aVar == null || aVar.u()) {
            return;
        }
        this.f36729f.a(new com.mbridge.msdk.newinterstitial.listener.a(newInterstitialListener));
        this.f36732i = false;
    }

    public void showFromBid() {
        a();
        if (this.f36729f != null) {
            this.f36729f.a((String) null, (String) null, (String) null, d.b().a(1, MBSupportMuteAdType.INTERSTITIAL_VIDEO, this.mUnitId, false, -1));
        }
    }
}
