package com.mbridge.msdk.mbbanner.controll;

import android.text.TextUtils;
import android.view.View;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.foundation.same.report.metrics.e;
import com.mbridge.msdk.foundation.tools.b1;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.mbbanner.common.manager.c;
import com.mbridge.msdk.out.BannerAdListener;
import com.mbridge.msdk.out.BannerSize;
import com.mbridge.msdk.out.MBBannerView;
import com.mbridge.msdk.out.MBridgeIds;
import com.mbridge.msdk.setting.h;
import com.mbridge.msdk.setting.j;
import com.mbridge.msdk.setting.l;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static String f36166x = "BannerController";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f36167a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f36168b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f36169c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private MBridgeIds f36170d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f36171e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f36172f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private MBBannerView f36173g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f36174h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f36175i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f36176j;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private BannerAdListener f36178l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private CampaignUnit f36179m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private c f36180n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private l f36181o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private j f36182p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f36183q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f36184r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f36185s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f36186t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f36187u;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f36177k = -1;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private com.mbridge.msdk.mbbanner.common.listener.c f36188v = new C0505a();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private com.mbridge.msdk.mbbanner.common.listener.b f36189w = new b();

    /* JADX INFO: renamed from: com.mbridge.msdk.mbbanner.controll.a$a, reason: collision with other inner class name */
    class C0505a implements com.mbridge.msdk.mbbanner.common.listener.c {
        C0505a() {
        }

        @Override // com.mbridge.msdk.mbbanner.common.listener.c
        public void a() {
            if (a.this.f36178l != null) {
                a.this.f36178l.showFullScreen(a.this.f36170d);
                a.this.f36187u = true;
                com.mbridge.msdk.mbbanner.common.manager.a.b().a(2, a.this.f36168b, a.this.f36167a, null, null);
            }
        }

        @Override // com.mbridge.msdk.mbbanner.common.listener.c
        public void a(CampaignEx campaignEx) {
            a.this.c();
            if (a.this.f36178l != null) {
                a.this.f36178l.onLogImpression(a.this.f36170d);
            }
            try {
                com.mbridge.msdk.foundation.same.report.metrics.c cVarA = com.mbridge.msdk.mbbanner.common.report.a.a(a.this.f36167a, campaignEx.getLocalRequestId());
                cVarA.a(campaignEx);
                cVarA.g(campaignEx.isBidCampaign() ? "1" : "2");
                int i11 = 1;
                cVarA.g(a.this.f36180n != null ? a.this.f36180n.c() : 1);
                if (a.this.f36176j != 0) {
                    i11 = 2;
                }
                cVarA.b(i11);
                cVarA.c(a.this.f36176j);
                com.mbridge.msdk.mbbanner.common.report.a.a("2000128", cVarA, (e) null);
                com.mbridge.msdk.mbbanner.common.report.a.a("2000130", cVarA, (e) null);
            } catch (Exception e11) {
                o0.b(a.f36166x, e11.getMessage());
            }
        }

        @Override // com.mbridge.msdk.mbbanner.common.listener.c
        public void a(com.mbridge.msdk.foundation.error.b bVar) {
            a.this.a(bVar);
        }

        @Override // com.mbridge.msdk.mbbanner.common.listener.c
        public void a(List<CampaignEx> list) {
            o0.b(a.f36166x, "onShowSuccessed:");
            if (a.this.f36178l != null) {
                a.this.f36178l.onLoadSuccessed(a.this.f36170d);
            }
            try {
                com.mbridge.msdk.foundation.same.report.metrics.c cVarA = com.mbridge.msdk.mbbanner.common.report.a.a(a.this.f36167a, list.get(0).getLocalRequestId());
                cVarA.b(list);
                cVarA.g(1);
                cVarA.d(TextUtils.isEmpty(list.get(0).getBannerUrl()) ? 2 : 1);
                com.mbridge.msdk.mbbanner.common.report.a.a("2000048", cVarA, (e) null);
            } catch (Exception e11) {
                o0.b(a.f36166x, e11.getMessage());
            }
        }

        @Override // com.mbridge.msdk.mbbanner.common.listener.c
        public void b() {
            if (a.this.f36178l != null) {
                a.this.f36178l.onCloseBanner(a.this.f36170d);
            }
        }

        @Override // com.mbridge.msdk.mbbanner.common.listener.c
        public void c() {
            if (a.this.f36178l != null) {
                a.this.f36178l.onClick(a.this.f36170d);
            }
        }

        @Override // com.mbridge.msdk.mbbanner.common.listener.c
        public void d() {
            if (a.this.f36178l != null) {
                a.this.f36178l.closeFullScreen(a.this.f36170d);
                a.this.f36187u = false;
                com.mbridge.msdk.mbbanner.common.manager.a.b().a(3, a.this.f36168b, a.this.f36167a, new com.mbridge.msdk.mbbanner.common.data.a(a.this.f36175i + "x" + a.this.f36174h, a.this.f36176j * 1000), a.this.f36189w);
            }
        }

        @Override // com.mbridge.msdk.mbbanner.common.listener.c
        public void onLeaveApp() {
            if (a.this.f36178l != null) {
                a.this.f36178l.onLeaveApp(a.this.f36170d);
            }
        }
    }

    class b implements com.mbridge.msdk.mbbanner.common.listener.b {
        b() {
        }

        @Override // com.mbridge.msdk.mbbanner.common.listener.b
        public void a(com.mbridge.msdk.foundation.error.b bVar) {
            a.this.a(2, bVar);
            a.this.a(bVar.f(), bVar);
            a.this.c();
        }

        @Override // com.mbridge.msdk.mbbanner.common.listener.b
        public void a(String str, int i11, boolean z10) {
            if (a.this.f36173g != null) {
                a.this.f36186t = true;
                a.this.j();
            }
        }

        @Override // com.mbridge.msdk.mbbanner.common.listener.b
        public void a(String str, CampaignUnit campaignUnit, boolean z10) {
            a.this.f36179m = campaignUnit;
            a.this.a(1, (com.mbridge.msdk.foundation.error.b) null);
        }

        @Override // com.mbridge.msdk.mbbanner.common.listener.b
        public void b(com.mbridge.msdk.foundation.error.b bVar) {
            a.this.a(bVar.f(), bVar);
            a.this.c();
        }
    }

    public a(MBBannerView mBBannerView, BannerSize bannerSize, String str, String str2) {
        this.f36173g = mBBannerView;
        if (bannerSize != null) {
            this.f36174h = bannerSize.getHeight();
            this.f36175i = bannerSize.getWidth();
        }
        this.f36167a = str2;
        str = TextUtils.isEmpty(str) ? "" : str;
        this.f36168b = str;
        this.f36170d = new MBridgeIds(str, this.f36167a);
        f();
    }

    private int a(int i11) {
        if (i11 <= 0) {
            return i11;
        }
        int i12 = 10;
        if (i11 >= 10) {
            i12 = 180;
            if (i11 <= 180) {
                return i11;
            }
        }
        return i12;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i11, com.mbridge.msdk.foundation.error.b bVar) {
        try {
            com.mbridge.msdk.foundation.same.report.metrics.c cVarA = com.mbridge.msdk.mbbanner.common.report.a.a(this.f36167a, bVar == null ? this.f36179m.getLocalRequestId() : bVar.f());
            e eVar = new e();
            eVar.a("result", Integer.valueOf(i11));
            CampaignUnit campaignUnit = this.f36179m;
            if (campaignUnit != null && !campaignUnit.getAds().isEmpty()) {
                CampaignEx campaignEx = this.f36179m.getAds().get(0);
                if (campaignEx != null) {
                    cVarA.d(TextUtils.isEmpty(campaignEx.getBannerUrl()) ? 2 : 1);
                }
                cVarA.b(this.f36179m.getAds());
            }
            if (bVar != null) {
                cVarA.a(bVar);
            }
            com.mbridge.msdk.mbbanner.common.report.a.a("2000126", cVarA, eVar);
        } catch (Exception e11) {
            o0.b(f36166x, e11.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.mbridge.msdk.foundation.error.b bVar) {
        a(this.f36169c, bVar);
        c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, com.mbridge.msdk.foundation.error.b bVar) {
        CampaignUnit campaignUnit;
        String strG = "";
        if (bVar != null) {
            try {
                strG = bVar.g();
                if (TextUtils.isEmpty(str)) {
                    str = bVar.f();
                }
            } catch (Throwable th2) {
                o0.b(f36166x, th2.getMessage());
            }
        }
        if (TextUtils.isEmpty(str) && (campaignUnit = this.f36179m) != null) {
            str = campaignUnit.getLocalRequestId();
        }
        com.mbridge.msdk.foundation.same.report.metrics.c cVarA = com.mbridge.msdk.mbbanner.common.report.a.a(this.f36167a, str);
        CampaignUnit campaignUnit2 = this.f36179m;
        cVarA.b(campaignUnit2 != null ? campaignUnit2.getAds() : null);
        cVarA.a(bVar);
        CampaignUnit campaignUnit3 = this.f36179m;
        if (campaignUnit3 != null && !campaignUnit3.getAds().isEmpty()) {
            cVarA.d(TextUtils.isEmpty(this.f36179m.getAds().get(0).getBannerUrl()) ? 1 : 2);
        }
        cVarA.b(true);
        com.mbridge.msdk.mbbanner.common.report.a.a("2000047", cVarA, (e) null);
        BannerAdListener bannerAdListener = this.f36178l;
        if (bannerAdListener != null) {
            bannerAdListener.onLoadFailed(this.f36170d, strG);
        }
    }

    private boolean a(View view) {
        return true;
    }

    private void b(String str, String str2) {
        if (this.f36182p == null) {
            this.f36182p = new j();
        }
        this.f36182p.a(com.mbridge.msdk.foundation.controller.c.m().d(), str, str2, this.f36167a);
    }

    private void f() {
        b(com.mbridge.msdk.foundation.controller.c.m().b(), com.mbridge.msdk.foundation.controller.c.m().c());
        l();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        if (this.f36185s || !this.f36186t) {
            return;
        }
        if (!a(this.f36173g)) {
            a(new com.mbridge.msdk.foundation.error.b(880044));
        } else if (this.f36179m != null) {
            if (this.f36180n == null) {
                this.f36180n = new c(this.f36173g, this.f36188v, this.f36168b, this.f36167a, this.f36171e, this.f36181o);
            }
            this.f36180n.a(this.f36169c);
            this.f36180n.b(this.f36183q);
            this.f36180n.d(this.f36184r);
            this.f36180n.a(this.f36171e, this.f36172f);
            this.f36180n.b(this.f36179m);
        } else {
            a(new com.mbridge.msdk.foundation.error.b(880043));
        }
        this.f36186t = false;
    }

    private void k() {
        MBBannerView mBBannerView = this.f36173g;
        if (mBBannerView != null) {
            if (!this.f36183q || !this.f36184r || this.f36187u || b1.a(mBBannerView, 1)) {
                com.mbridge.msdk.mbbanner.common.manager.a.b().a(2, this.f36168b, this.f36167a, null, null);
            } else {
                com.mbridge.msdk.mbbanner.common.manager.a.b().a(3, this.f36168b, this.f36167a, new com.mbridge.msdk.mbbanner.common.data.a(this.f36175i + "x" + this.f36174h, this.f36176j * 1000), this.f36189w);
            }
            if (this.f36183q) {
                return;
            }
            com.mbridge.msdk.mbbanner.common.manager.a.b().a(4, this.f36168b, this.f36167a, null, null);
            com.mbridge.msdk.mbbanner.common.manager.a.b().b(this.f36167a);
        }
    }

    private void l() {
        l lVarE = h.b().e(com.mbridge.msdk.foundation.controller.c.m().b(), this.f36167a);
        this.f36181o = lVarE;
        if (lVarE == null) {
            this.f36181o = l.i(this.f36167a);
        }
        if (this.f36177k == -1) {
            this.f36176j = a(this.f36181o.D());
        }
        if (this.f36172f == 0) {
            boolean z10 = this.f36181o.g() == 1;
            this.f36171e = z10;
            c cVar = this.f36180n;
            if (cVar != null) {
                cVar.c(z10);
            }
        }
    }

    public void a(int i11, int i12, int i13, int i14) {
        c cVar = this.f36180n;
        if (cVar != null) {
            cVar.a(i11, i12, i13, i14);
        }
    }

    public void a(BannerAdListener bannerAdListener) {
        this.f36178l = bannerAdListener;
    }

    public void a(BannerSize bannerSize) {
        if (bannerSize != null) {
            this.f36174h = bannerSize.getHeight();
            this.f36175i = bannerSize.getWidth();
        }
    }

    public void a(String str, String str2) {
        boolean zB;
        if (this.f36174h < 1 || this.f36175i < 1) {
            a(str2, new com.mbridge.msdk.foundation.error.b(880037));
            return;
        }
        try {
            zB = com.mbridge.msdk.mbsignalcommon.webEnvCheck.a.b(com.mbridge.msdk.foundation.controller.c.m().d());
        } catch (Exception e11) {
            o0.b(f36166x, e11.getMessage());
            zB = false;
        }
        if (!zB) {
            a(str2, new com.mbridge.msdk.foundation.error.b(880029));
            return;
        }
        this.f36169c = str2;
        com.mbridge.msdk.mbbanner.common.data.a aVar = new com.mbridge.msdk.mbbanner.common.data.a(this.f36175i + "x" + this.f36174h, this.f36176j * 1000);
        aVar.a(str);
        aVar.c(this.f36168b);
        aVar.b(str2);
        com.mbridge.msdk.mbbanner.common.manager.a.b().b(this.f36168b, this.f36167a, aVar, this.f36189w);
        com.mbridge.msdk.mbbanner.common.manager.a.b().a(1, this.f36168b, this.f36167a, aVar, this.f36189w);
    }

    public void a(boolean z10) {
        this.f36171e = z10;
        this.f36172f = z10 ? 1 : 2;
    }

    public void b() {
        k();
        c cVar = this.f36180n;
        if (cVar != null) {
            cVar.b(this.f36183q);
            this.f36180n.d(this.f36184r);
        }
    }

    public void b(int i11) {
        int iA = a(i11);
        this.f36177k = iA;
        this.f36176j = iA;
    }

    public void b(boolean z10) {
        this.f36183q = z10;
        b();
        j();
    }

    public void c() {
        if (this.f36185s) {
            return;
        }
        k();
        l();
        com.mbridge.msdk.mbbanner.common.data.a aVar = new com.mbridge.msdk.mbbanner.common.data.a(this.f36175i + "x" + this.f36174h, this.f36176j * 1000);
        aVar.c(this.f36168b);
        aVar.a(true);
        aVar.b(com.mbridge.msdk.mbbanner.common.report.a.b(""));
        com.mbridge.msdk.mbbanner.common.manager.a.b().a(this.f36168b, this.f36167a, aVar, this.f36189w);
    }

    public void c(boolean z10) {
        this.f36184r = z10;
        b();
    }

    public String d() {
        CampaignUnit campaignUnit = this.f36179m;
        return campaignUnit != null ? com.mbridge.msdk.foundation.same.c.b(campaignUnit.getAds()) : "";
    }

    public String e() {
        CampaignUnit campaignUnit = this.f36179m;
        return (campaignUnit == null || campaignUnit.getRequestId() == null) ? "" : this.f36179m.getRequestId();
    }

    public void g() {
        com.mbridge.msdk.mbbanner.common.manager.a.b().a(4, this.f36168b, this.f36167a, new com.mbridge.msdk.mbbanner.common.data.a(this.f36175i + "x" + this.f36174h, this.f36176j * 1000), this.f36189w);
    }

    public void h() {
        com.mbridge.msdk.mbbanner.common.manager.a.b().a(3, this.f36168b, this.f36167a, new com.mbridge.msdk.mbbanner.common.data.a(this.f36175i + "x" + this.f36174h, this.f36176j * 1000), this.f36189w);
    }

    public void i() {
        this.f36185s = true;
        if (this.f36178l != null) {
            this.f36178l = null;
        }
        if (this.f36189w != null) {
            this.f36189w = null;
        }
        if (this.f36188v != null) {
            this.f36188v = null;
        }
        if (this.f36173g != null) {
            this.f36173g = null;
        }
        com.mbridge.msdk.mbbanner.common.manager.a.b().a(4, this.f36168b, this.f36167a, null, null);
        com.mbridge.msdk.mbbanner.common.manager.a.b().b(this.f36167a);
        com.mbridge.msdk.mbbanner.common.manager.a.b().c();
        c cVar = this.f36180n;
        if (cVar != null) {
            cVar.h();
        }
    }
}
