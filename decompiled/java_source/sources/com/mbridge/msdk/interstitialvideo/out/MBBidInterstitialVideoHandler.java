package com.mbridge.msdk.interstitialvideo.out;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.same.report.metrics.d;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.newreward.function.common.MBridgeGlobalCommon;
import com.mbridge.msdk.out.MBSupportMuteAdType;
import com.mbridge.msdk.reward.controller.a;

/* JADX INFO: loaded from: classes5.dex */
@Deprecated
public class MBBidInterstitialVideoHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private a f35983a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f35984b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f35985c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f35986d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f35987e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f35988f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f35989g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private InterstitialVideoListener f35990h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f35991i = 2;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f35992j = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f35993k = false;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f35994l = false;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f35995m = false;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f35996n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f35997o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f35998p;

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
        a aVar;
        if (this.f35983a == null) {
            b(this.f35985c, this.f35984b);
        }
        if (this.f35992j) {
            a aVar2 = this.f35983a;
            if (aVar2 != null) {
                aVar2.a(new com.mbridge.msdk.interstitialvideo.listener.a(this.f35990h, this.f35984b, true));
            }
            this.f35992j = false;
        }
        if (this.f35993k) {
            a aVar3 = this.f35983a;
            if (aVar3 != null) {
                aVar3.a(this.f35986d, this.f35987e, this.f35988f, this.f35989g);
            }
            this.f35993k = false;
        }
        if (!this.f35995m || (aVar = this.f35983a) == null) {
            return;
        }
        aVar.a(this.f35996n, this.f35998p, this.f35997o);
        this.f35995m = false;
    }

    private void a(String str, String str2) {
        String strE = t0.e(str2);
        if (!TextUtils.isEmpty(strE)) {
            t0.b(str2, strE);
        }
        this.f35984b = str2;
        this.f35985c = str;
        a();
    }

    private void b() {
        a aVar = this.f35983a;
        if (aVar != null) {
            aVar.a(this.f35996n, this.f35998p, this.f35997o);
        }
    }

    private void b(String str, String str2) {
        try {
            if (this.f35983a == null) {
                a aVar = new a();
                this.f35983a = aVar;
                aVar.d(true);
                this.f35983a.e(true);
                this.f35983a.c(str, str2);
            }
        } catch (Throwable th2) {
            o0.b("MBBidRewardVideoHandler", th2.getMessage(), th2);
        }
    }

    public void clearVideoCache() {
        try {
            a aVar = this.f35983a;
            if (aVar != null) {
                aVar.e();
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public String getCreativeIdWithUnitId() {
        a aVar = this.f35983a;
        return aVar != null ? aVar.j() : "";
    }

    public String getRequestId() {
        a aVar = this.f35983a;
        return aVar != null ? aVar.m() : "";
    }

    public boolean isBidReady() {
        a();
        a aVar = this.f35983a;
        if (aVar != null) {
            return aVar.c(true);
        }
        return false;
    }

    public void loadFormSelfFilling() {
        a();
        if (this.f35983a != null) {
            this.f35983a.a(false, d.b().a(1, MBSupportMuteAdType.INTERSTITIAL_VIDEO, this.f35984b, true, 1));
        }
    }

    public void loadFromBid(String str) {
        a();
        if (this.f35983a != null) {
            this.f35983a.a(true, str, d.b().a(1, MBSupportMuteAdType.INTERSTITIAL_VIDEO, this.f35984b, true, 2));
        }
    }

    public void playVideoMute(int i11) {
        this.f35991i = i11;
        a aVar = this.f35983a;
        if (aVar != null) {
            aVar.a(i11);
        }
    }

    public void setAlertDialogText(String str, String str2, String str3, String str4) {
        this.f35986d = str;
        this.f35987e = str2;
        this.f35988f = str3;
        this.f35989g = str4;
        this.f35993k = true;
        this.f35994l = true;
        MBridgeGlobalCommon.setAlertDialogText(this.f35984b, str, str2, str3, str4);
    }

    public void setIVRewardEnable(int i11, double d11) {
        this.f35996n = i11;
        this.f35997o = (int) (d11 * 100.0d);
        this.f35998p = com.mbridge.msdk.foundation.same.a.J;
        this.f35995m = true;
        b();
    }

    public void setIVRewardEnable(int i11, int i12) {
        this.f35996n = i11;
        this.f35997o = i12;
        this.f35998p = com.mbridge.msdk.foundation.same.a.K;
        this.f35995m = true;
        b();
    }

    public void setInterstitialVideoListener(InterstitialVideoListener interstitialVideoListener) {
        this.f35990h = interstitialVideoListener;
        this.f35992j = true;
        a aVar = this.f35983a;
        if (aVar == null || aVar.u()) {
            return;
        }
        this.f35983a.a(new com.mbridge.msdk.interstitialvideo.listener.a(interstitialVideoListener, this.f35984b, true));
        this.f35992j = false;
    }

    @Deprecated
    public void setRewardVideoListener(InterstitialVideoListener interstitialVideoListener) {
        this.f35990h = interstitialVideoListener;
        this.f35992j = true;
        a aVar = this.f35983a;
        if (aVar == null || aVar.u()) {
            return;
        }
        this.f35983a.a(new com.mbridge.msdk.interstitialvideo.listener.a(interstitialVideoListener, this.f35984b, true));
        this.f35992j = false;
    }

    public void showFromBid() {
        a();
        if (this.f35983a != null) {
            this.f35983a.a((String) null, (String) null, (String) null, d.b().a(1, MBSupportMuteAdType.INTERSTITIAL_VIDEO, this.f35984b, false, -1));
        }
    }
}
