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
public class MBBidNewInterstitialHandler implements BaseExtraInterfaceForHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f36738a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f36739b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f36740c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f36741d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f36742e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private a f36743f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f36744g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private NewInterstitialListener f36745h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f36746i = 2;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f36747j = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f36748k = false;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f36749l = false;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f36750m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f36751n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f36752o;

    public MBBidNewInterstitialHandler(Context context, String str, String str2) {
        if (c.m().d() == null && context != null) {
            c.m().b(context);
        }
        a(str, str2);
    }

    public MBBidNewInterstitialHandler(String str, String str2) {
        a(str, str2);
    }

    private void a() {
        a aVar;
        if (this.f36743f == null) {
            b(this.f36738a, this.f36744g);
        }
        if (this.f36747j) {
            a aVar2 = this.f36743f;
            if (aVar2 != null) {
                aVar2.a(new com.mbridge.msdk.newinterstitial.listener.a(this.f36745h, this.f36744g, true));
            }
            this.f36747j = false;
        }
        if (this.f36748k) {
            a aVar3 = this.f36743f;
            if (aVar3 != null) {
                aVar3.a(this.f36740c, this.f36739b, this.f36741d, this.f36742e);
            }
            this.f36748k = false;
        }
        if (!this.f36749l || (aVar = this.f36743f) == null) {
            return;
        }
        aVar.a(this.f36750m, this.f36752o, this.f36751n);
        this.f36749l = false;
    }

    private void a(String str, String str2) {
        String strE = t0.e(str2);
        if (!TextUtils.isEmpty(strE)) {
            t0.b(str2, strE);
        }
        this.f36738a = str;
        this.f36744g = str2;
        a();
    }

    private void b() {
        a aVar = this.f36743f;
        if (aVar != null) {
            aVar.a(this.f36750m, this.f36752o, this.f36751n);
        }
    }

    private void b(String str, String str2) {
        try {
            if (this.f36743f == null) {
                a aVar = new a();
                this.f36743f = aVar;
                aVar.d(true);
                this.f36743f.e(true);
                this.f36743f.c(str, str2);
            }
        } catch (Throwable th2) {
            o0.b("MBBidNewInterstitialHandler", th2.getMessage(), th2);
        }
    }

    public void clearVideoCache() {
        try {
            a aVar = this.f36743f;
            if (aVar != null) {
                aVar.e();
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public String getCreativeIdWithUnitId() {
        a aVar = this.f36743f;
        return aVar != null ? aVar.j() : "";
    }

    public String getRequestId() {
        a aVar = this.f36743f;
        return aVar != null ? aVar.m() : "";
    }

    public boolean isBidReady() {
        a();
        a aVar = this.f36743f;
        if (aVar != null) {
            return aVar.c(true);
        }
        return false;
    }

    public void loadFormSelfFilling() {
        a();
        if (this.f36743f != null) {
            this.f36743f.a(false, d.b().a(1, MBSupportMuteAdType.INTERSTITIAL_VIDEO, this.f36744g, true, 1));
        }
    }

    public void loadFromBid(String str) {
        a();
        if (this.f36743f != null) {
            this.f36743f.a(true, str, d.b().a(1, MBSupportMuteAdType.INTERSTITIAL_VIDEO, this.f36744g, true, 2));
        }
    }

    public void playVideoMute(int i11) {
        this.f36746i = i11;
        a aVar = this.f36743f;
        if (aVar != null) {
            aVar.a(i11);
        }
    }

    public void setAlertDialogText(String str, String str2, String str3, String str4) {
        this.f36740c = str;
        this.f36739b = str2;
        this.f36741d = str3;
        this.f36742e = str4;
        this.f36748k = true;
        MBridgeGlobalCommon.setAlertDialogText(this.f36744g, str, str2, str3, str4);
    }

    @Override // com.mbridge.msdk.out.BaseExtraInterfaceForHandler
    public void setExtraInfo(JSONObject jSONObject) {
        c.m().a(this.f36744g, jSONObject);
    }

    public void setIVRewardEnable(int i11, double d11) {
        this.f36750m = i11;
        this.f36751n = (int) (d11 * 100.0d);
        this.f36752o = com.mbridge.msdk.foundation.same.a.J;
        this.f36749l = true;
        b();
    }

    public void setIVRewardEnable(int i11, int i12) {
        this.f36750m = i11;
        this.f36751n = i12;
        this.f36752o = com.mbridge.msdk.foundation.same.a.K;
        this.f36749l = true;
        b();
    }

    public void setInterstitialVideoListener(NewInterstitialListener newInterstitialListener) {
        this.f36745h = newInterstitialListener;
        this.f36747j = true;
        a aVar = this.f36743f;
        if (aVar == null || aVar.u()) {
            return;
        }
        this.f36743f.a(new com.mbridge.msdk.newinterstitial.listener.a(newInterstitialListener, this.f36744g, true));
        this.f36747j = false;
    }

    @Deprecated
    public void setRewardVideoListener(NewInterstitialListener newInterstitialListener) {
        this.f36745h = newInterstitialListener;
        this.f36747j = true;
        a aVar = this.f36743f;
        if (aVar == null || aVar.u()) {
            return;
        }
        this.f36743f.a(new com.mbridge.msdk.newinterstitial.listener.a(newInterstitialListener, this.f36744g, true));
        this.f36747j = false;
    }

    public void showFromBid() {
        a();
        if (this.f36743f != null) {
            this.f36743f.a((String) null, (String) null, (String) null, d.b().a(1, MBSupportMuteAdType.INTERSTITIAL_VIDEO, this.f36744g, false, -1));
        }
    }
}
