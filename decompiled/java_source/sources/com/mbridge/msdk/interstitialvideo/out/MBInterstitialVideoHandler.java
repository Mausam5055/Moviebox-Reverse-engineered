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
import com.mbridge.msdk.setting.h;

/* JADX INFO: loaded from: classes5.dex */
@Deprecated
public class MBInterstitialVideoHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f35999a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private a f36000b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f36001c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f36002d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f36003e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f36004f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f36005g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private InterstitialVideoListener f36006h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f36007i = 2;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f36008j = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f36009k = false;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f36010l = false;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f36011m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f36012n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f36013o;

    public MBInterstitialVideoHandler(Context context, String str, String str2) {
        if (c.m().d() == null && context != null) {
            c.m().b(context);
        }
        a(str, str2);
    }

    public MBInterstitialVideoHandler(String str, String str2) {
        a(str, str2);
    }

    private void a() {
        a aVar;
        if (this.f36000b == null) {
            b(this.f35999a, this.f36001c);
        }
        if (this.f36008j) {
            this.f36000b.a(new com.mbridge.msdk.interstitialvideo.listener.a(this.f36006h, this.f36001c, false));
            this.f36008j = false;
        }
        if (this.f36009k) {
            this.f36000b.a(this.f36002d, this.f36003e, this.f36004f, this.f36005g);
            this.f36009k = false;
        }
        if (!this.f36010l || (aVar = this.f36000b) == null) {
            return;
        }
        aVar.a(this.f36011m, this.f36013o, this.f36012n);
        this.f36010l = false;
    }

    private void a(String str, String str2) {
        String strE = t0.e(str2);
        if (!TextUtils.isEmpty(strE)) {
            t0.b(str2, strE);
        }
        this.f36001c = str2;
        this.f35999a = str;
        a();
    }

    private void b() {
        a aVar = this.f36000b;
        if (aVar != null) {
            aVar.a(this.f36011m, this.f36013o, this.f36012n);
        }
    }

    private void b(String str, String str2) {
        try {
            if (this.f36000b == null) {
                a aVar = new a();
                this.f36000b = aVar;
                aVar.d(true);
                this.f36000b.c(str, str2);
                h.b().g(str2);
            }
        } catch (Throwable th2) {
            o0.b("MBRewardVideoHandler", th2.getMessage(), th2);
        }
    }

    public void clearVideoCache() {
        try {
            a aVar = this.f36000b;
            if (aVar != null) {
                aVar.e();
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public String getCreativeIdWithUnitId() {
        a aVar = this.f36000b;
        return aVar != null ? aVar.j() : "";
    }

    public String getRequestId() {
        a aVar = this.f36000b;
        return aVar != null ? aVar.m() : "";
    }

    public boolean isReady() {
        a();
        a aVar = this.f36000b;
        if (aVar != null) {
            return aVar.c(true);
        }
        return false;
    }

    public void load() {
        a();
        if (this.f36000b != null) {
            this.f36000b.a(true, d.b().a(0, MBSupportMuteAdType.INTERSTITIAL_VIDEO, this.f36001c, true, 2));
        }
    }

    public void loadFormSelfFilling() {
        a();
        if (this.f36000b != null) {
            this.f36000b.a(false, d.b().a(0, MBSupportMuteAdType.INTERSTITIAL_VIDEO, this.f36001c, true, 1));
        }
    }

    public void playVideoMute(int i11) {
        this.f36007i = i11;
        a aVar = this.f36000b;
        if (aVar != null) {
            aVar.a(i11);
        }
    }

    public void setAlertDialogText(String str, String str2, String str3, String str4) {
        this.f36002d = str;
        this.f36003e = str2;
        this.f36004f = str3;
        this.f36005g = str4;
        this.f36009k = true;
        MBridgeGlobalCommon.setAlertDialogText(this.f36001c, str, str2, str3, str4);
    }

    public void setIVRewardEnable(int i11, double d11) {
        this.f36011m = i11;
        this.f36012n = (int) (d11 * 100.0d);
        this.f36013o = com.mbridge.msdk.foundation.same.a.J;
        this.f36010l = true;
        b();
    }

    public void setIVRewardEnable(int i11, int i12) {
        this.f36011m = i11;
        this.f36012n = i12;
        this.f36013o = com.mbridge.msdk.foundation.same.a.K;
        this.f36010l = true;
        b();
    }

    public void setInterstitialVideoListener(InterstitialVideoListener interstitialVideoListener) {
        this.f36006h = interstitialVideoListener;
        this.f36008j = true;
        a aVar = this.f36000b;
        if (aVar == null || aVar.u()) {
            return;
        }
        this.f36000b.a(new com.mbridge.msdk.interstitialvideo.listener.a(interstitialVideoListener));
        this.f36008j = false;
    }

    @Deprecated
    public void setRewardVideoListener(InterstitialVideoListener interstitialVideoListener) {
        this.f36006h = interstitialVideoListener;
        this.f36008j = true;
        a aVar = this.f36000b;
        if (aVar == null || aVar.u()) {
            return;
        }
        this.f36000b.a(new com.mbridge.msdk.interstitialvideo.listener.a(interstitialVideoListener));
        this.f36008j = false;
    }

    public void show() {
        a();
        if (this.f36000b != null) {
            this.f36000b.a((String) null, (String) null, (String) null, d.b().a(0, MBSupportMuteAdType.INTERSTITIAL_VIDEO, this.f36001c, false, -1));
        }
    }
}
