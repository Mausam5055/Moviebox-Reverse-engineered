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
import com.mbridge.msdk.setting.h;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class MBNewInterstitialHandler implements BaseExtraInterfaceForHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f36753a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f36754b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f36755c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f36756d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f36757e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private a f36758f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f36759g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private NewInterstitialListener f36760h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f36761i = 2;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f36762j = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f36763k = false;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f36764l = false;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f36765m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f36766n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f36767o;

    public MBNewInterstitialHandler(Context context, String str, String str2) {
        if (c.m().d() == null && context != null) {
            c.m().b(context);
        }
        a(str, str2);
    }

    public MBNewInterstitialHandler(String str, String str2) {
        a(str, str2);
    }

    private void a() {
        a aVar;
        if (this.f36758f == null) {
            b(this.f36753a, this.f36759g);
        }
        if (this.f36762j) {
            a aVar2 = this.f36758f;
            if (aVar2 != null) {
                aVar2.a(new com.mbridge.msdk.newinterstitial.listener.a(this.f36760h, this.f36759g, false));
            }
            this.f36762j = false;
        }
        if (this.f36763k) {
            a aVar3 = this.f36758f;
            if (aVar3 != null) {
                aVar3.a(this.f36754b, this.f36755c, this.f36756d, this.f36757e);
            }
            this.f36763k = false;
        }
        if (!this.f36764l || (aVar = this.f36758f) == null) {
            return;
        }
        aVar.a(this.f36765m, this.f36767o, this.f36766n);
        this.f36764l = false;
    }

    private void a(String str, String str2) {
        String strE = t0.e(str2);
        if (!TextUtils.isEmpty(strE)) {
            t0.b(str2, strE);
        }
        this.f36753a = str;
        this.f36759g = str2;
        a();
    }

    private void b() {
        a aVar = this.f36758f;
        if (aVar != null) {
            aVar.a(this.f36765m, this.f36767o, this.f36766n);
        }
    }

    private void b(String str, String str2) {
        try {
            if (this.f36758f == null) {
                a aVar = new a();
                this.f36758f = aVar;
                aVar.d(true);
                this.f36758f.c(str, str2);
                h.b().g(str2);
            }
        } catch (Throwable th2) {
            o0.b("MBRewardVideoHandler", th2.getMessage(), th2);
        }
    }

    public void clearVideoCache() {
        try {
            a aVar = this.f36758f;
            if (aVar != null) {
                aVar.e();
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public String getCreativeIdWithUnitId() {
        a aVar = this.f36758f;
        return aVar != null ? aVar.j() : "";
    }

    public String getRequestId() {
        a aVar = this.f36758f;
        return aVar != null ? aVar.m() : "";
    }

    public boolean isReady() {
        a();
        a aVar = this.f36758f;
        if (aVar != null) {
            return aVar.c(true);
        }
        return false;
    }

    public void load() {
        a();
        if (this.f36758f != null) {
            this.f36758f.a(true, d.b().a(0, MBSupportMuteAdType.INTERSTITIAL_VIDEO, this.f36759g, true, 2));
        }
    }

    public void loadFormSelfFilling() {
        a();
        if (this.f36758f != null) {
            this.f36758f.a(false, d.b().a(0, MBSupportMuteAdType.INTERSTITIAL_VIDEO, this.f36759g, true, 1));
        }
    }

    public void playVideoMute(int i11) {
        this.f36761i = i11;
        a aVar = this.f36758f;
        if (aVar != null) {
            aVar.a(i11);
        }
    }

    public void setAlertDialogText(String str, String str2, String str3, String str4) {
        this.f36754b = str;
        this.f36755c = str2;
        this.f36756d = str3;
        this.f36757e = str4;
        this.f36763k = true;
        MBridgeGlobalCommon.setAlertDialogText(this.f36759g, str, str2, str3, str4);
    }

    @Override // com.mbridge.msdk.out.BaseExtraInterfaceForHandler
    public void setExtraInfo(JSONObject jSONObject) {
        c.m().a(this.f36759g, jSONObject);
    }

    public void setIVRewardEnable(int i11, double d11) {
        this.f36765m = i11;
        this.f36766n = (int) (d11 * 100.0d);
        this.f36767o = com.mbridge.msdk.foundation.same.a.J;
        this.f36764l = true;
        b();
    }

    public void setIVRewardEnable(int i11, int i12) {
        this.f36765m = i11;
        this.f36766n = i12;
        this.f36767o = com.mbridge.msdk.foundation.same.a.K;
        this.f36764l = true;
        b();
    }

    public void setInterstitialVideoListener(NewInterstitialListener newInterstitialListener) {
        this.f36760h = newInterstitialListener;
        this.f36762j = true;
        a aVar = this.f36758f;
        if (aVar == null || aVar.u()) {
            return;
        }
        this.f36758f.a(new com.mbridge.msdk.newinterstitial.listener.a(newInterstitialListener, this.f36759g, false));
        this.f36762j = false;
    }

    @Deprecated
    public void setRewardVideoListener(NewInterstitialListener newInterstitialListener) {
        this.f36760h = newInterstitialListener;
        this.f36762j = true;
        a aVar = this.f36758f;
        if (aVar == null || aVar.u()) {
            return;
        }
        this.f36758f.a(new com.mbridge.msdk.newinterstitial.listener.a(newInterstitialListener, this.f36759g, false));
        this.f36762j = false;
    }

    public void show() {
        a();
        if (this.f36758f != null) {
            this.f36758f.a((String) null, (String) null, (String) null, d.b().a(0, MBSupportMuteAdType.INTERSTITIAL_VIDEO, this.f36759g, false, -1));
        }
    }
}
