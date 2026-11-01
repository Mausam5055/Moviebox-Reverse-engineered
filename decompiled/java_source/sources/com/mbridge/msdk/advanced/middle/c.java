package com.mbridge.msdk.advanced.middle;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.webkit.WebView;
import com.mbridge.msdk.advanced.view.MBNativeAdvancedView;
import com.mbridge.msdk.advanced.view.MBNativeAdvancedWebview;
import com.mbridge.msdk.advanced.view.MBOutNativeAdvancedViewGroup;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.b1;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.mbsignalcommon.windvane.f;
import com.mbridge.msdk.out.MBridgeIds;
import com.mbridge.msdk.out.NativeAdvancedAdListener;
import com.mbridge.msdk.setting.h;
import com.mbridge.msdk.setting.j;
import com.mbridge.msdk.setting.l;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class c {
    private static String G = "NativeAdvancedProvider";
    private boolean A;
    private boolean B;
    private boolean C;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f34173a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f34174b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private MBridgeIds f34175c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.mbridge.msdk.advanced.manager.b f34176d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.mbridge.msdk.advanced.manager.c f34177e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private b f34178f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private NativeAdvancedAdListener f34179g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private d f34180h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private MBNativeAdvancedView f34181i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private MBNativeAdvancedWebview f34182j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private com.mbridge.msdk.advanced.view.a f34183k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private l f34184l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f34185m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private j f34186n;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private JSONObject f34196x;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private MBOutNativeAdvancedViewGroup f34198z;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f34187o = -1;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f34188p = false;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f34189q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f34190r = false;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f34191s = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f34192t = false;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f34193u = 0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f34194v = 0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private Object f34195w = new Object();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private boolean f34197y = false;
    private boolean D = true;
    public boolean E = false;
    private ViewTreeObserver.OnScrollChangedListener F = new a();

    class a implements ViewTreeObserver.OnScrollChangedListener {

        /* JADX INFO: renamed from: com.mbridge.msdk.advanced.middle.c$a$a, reason: collision with other inner class name */
        class RunnableC0471a implements Runnable {
            RunnableC0471a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                c.this.D = true;
            }
        }

        a() {
        }

        @Override // android.view.ViewTreeObserver.OnScrollChangedListener
        public void onScrollChanged() {
            if (c.this.D) {
                c.this.D = false;
                if (c.this.f34198z != null) {
                    c.this.f34198z.postDelayed(new RunnableC0471a(), 1000L);
                }
                try {
                    c.this.i();
                } catch (Exception e11) {
                    o0.b(c.G, e11.getMessage());
                }
            }
        }
    }

    public c(String str, String str2, Activity activity) {
        this.f34174b = TextUtils.isEmpty(str) ? "" : str;
        this.f34173a = str2;
        this.f34175c = new MBridgeIds(str, str2);
        a(activity);
    }

    private void a(int i11) {
        if (this.f34188p) {
            this.f34187o = i11;
            MBNativeAdvancedWebview mBNativeAdvancedWebview = this.f34182j;
            if (mBNativeAdvancedWebview == null || mBNativeAdvancedWebview.isDestoryed()) {
                return;
            }
            int i12 = this.f34187o;
            if (i12 == 1) {
                this.f34177e.a(true);
                com.mbridge.msdk.advanced.signal.a.a(this.f34182j, "showCloseButton", "", null);
            } else if (i12 == 0) {
                this.f34177e.a(false);
                com.mbridge.msdk.advanced.signal.a.a(this.f34182j, "hideCloseButton", "", null);
            }
        }
    }

    private void a(int i11, int i12) {
        if (i11 <= 0 || i12 <= 0) {
            return;
        }
        this.f34194v = i11;
        this.f34193u = i12;
        this.f34198z.setLayoutParams(new ViewGroup.LayoutParams(i12, i11));
    }

    private void a(Activity activity) {
        com.mbridge.msdk.advanced.view.a aVar;
        Context context;
        if (this.f34177e == null) {
            com.mbridge.msdk.advanced.manager.c cVar = new com.mbridge.msdk.advanced.manager.c(com.mbridge.msdk.foundation.controller.c.m().d(), this.f34174b, this.f34173a);
            this.f34177e = cVar;
            cVar.a(this);
        }
        if (this.f34182j == null) {
            try {
                this.f34182j = new MBNativeAdvancedWebview(com.mbridge.msdk.foundation.controller.c.m().d());
            } catch (Exception e11) {
                o0.b(G, e11.getMessage());
            }
            if (this.f34183k == null) {
                try {
                    this.f34183k = new com.mbridge.msdk.advanced.view.a(this.f34173a, this.f34177e.b(), this);
                } catch (Exception e12) {
                    o0.b(G, e12.getMessage());
                }
            }
            MBNativeAdvancedWebview mBNativeAdvancedWebview = this.f34182j;
            if (mBNativeAdvancedWebview != null && (aVar = this.f34183k) != null) {
                mBNativeAdvancedWebview.setWebViewClient(aVar);
            }
        }
        if (this.f34181i == null) {
            Context contextD = com.mbridge.msdk.foundation.controller.c.m().d();
            if (activity == null) {
                context = activity;
                context = contextD;
            }
            context = activity;
            MBNativeAdvancedView mBNativeAdvancedView = new MBNativeAdvancedView(context);
            this.f34181i = mBNativeAdvancedView;
            mBNativeAdvancedView.setAdvancedNativeWebview(this.f34182j);
            MBNativeAdvancedWebview mBNativeAdvancedWebview2 = this.f34182j;
            if (mBNativeAdvancedWebview2 != null && mBNativeAdvancedWebview2.getParent() == null) {
                this.f34181i.addView(this.f34182j, new ViewGroup.LayoutParams(-1, -1));
            }
        }
        if (this.f34198z == null) {
            this.f34198z = new MBOutNativeAdvancedViewGroup(com.mbridge.msdk.foundation.controller.c.m().d());
            this.f34198z.setLayoutParams((this.f34193u == 0 || this.f34194v == 0) ? new ViewGroup.LayoutParams(-1, -1) : new ViewGroup.LayoutParams(this.f34193u, this.f34194v));
            this.f34198z.setProvider(this);
            this.f34198z.addView(this.f34181i);
            this.f34198z.getViewTreeObserver().addOnScrollChangedListener(this.F);
        }
        if (this.f34186n == null) {
            this.f34186n = new j();
        }
        this.f34186n.a(com.mbridge.msdk.foundation.controller.c.m().d(), com.mbridge.msdk.foundation.controller.c.m().b(), com.mbridge.msdk.foundation.controller.c.m().c(), this.f34173a);
    }

    private void a(CampaignEx campaignEx) {
        if (com.mbridge.msdk.advanced.manager.d.a(this.f34181i, campaignEx, this.f34174b, this.f34173a)) {
            this.f34177e.a(this.f34180h);
            o0.b(G, "start show process");
            this.f34177e.a(campaignEx, this.f34181i, true);
        }
    }

    private void a(String str, int i11) throws Throwable {
        boolean zB;
        this.D = true;
        synchronized (this.f34195w) {
            try {
                if (this.f34185m) {
                    if (this.f34178f != null) {
                        this.f34178f.a(new com.mbridge.msdk.foundation.error.b(880016, "current unit is loading"), i11);
                        this.f34185m = true;
                    }
                    return;
                }
                this.f34185m = true;
                if (this.f34193u == 0 || this.f34194v == 0) {
                    if (this.f34178f != null) {
                        this.f34178f.a(new com.mbridge.msdk.foundation.error.b(880028), i11);
                        return;
                    }
                    return;
                }
                if (this.f34181i == null) {
                    if (this.f34178f != null) {
                        this.f34178f.a(new com.mbridge.msdk.foundation.error.b(880030), i11);
                        return;
                    }
                    return;
                }
                try {
                    zB = com.mbridge.msdk.mbsignalcommon.webEnvCheck.a.b(com.mbridge.msdk.foundation.controller.c.m().d());
                } catch (Exception e11) {
                    o0.b(G, e11.getMessage());
                    zB = false;
                }
                if (!zB) {
                    if (this.f34178f != null) {
                        this.f34178f.a(new com.mbridge.msdk.foundation.error.b(880029), i11);
                        return;
                    }
                    return;
                }
                this.f34181i.clearResStateAndRemoveClose();
                l lVarA = h.b().a(com.mbridge.msdk.foundation.controller.c.m().b(), this.f34173a);
                this.f34184l = lVarA;
                if (lVarA == null) {
                    this.f34184l = l.k(this.f34173a);
                }
                if (this.f34176d == null) {
                    this.f34176d = new com.mbridge.msdk.advanced.manager.b(this.f34174b, this.f34173a, 0L);
                }
                b bVar = this.f34178f;
                if (bVar != null) {
                    bVar.a(str);
                    this.f34176d.a(this.f34178f);
                }
                this.f34181i.resetLoadState();
                this.f34176d.a(this.f34181i);
                this.f34176d.a(this.f34184l);
                this.f34176d.a(this.f34193u, this.f34194v);
                this.f34176d.a(this.f34187o);
                this.f34176d.b(str, i11);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private void a(JSONObject jSONObject) {
        if (this.f34197y) {
            this.f34196x = jSONObject;
            MBNativeAdvancedWebview mBNativeAdvancedWebview = this.f34182j;
            if (mBNativeAdvancedWebview == null || mBNativeAdvancedWebview.isDestoryed()) {
                return;
            }
            com.mbridge.msdk.advanced.signal.a.a(this.f34182j, "setStyleList", "", jSONObject);
        }
    }

    private void c(int i11) {
        if (this.f34190r) {
            this.f34189q = i11;
            MBNativeAdvancedWebview mBNativeAdvancedWebview = this.f34182j;
            if (mBNativeAdvancedWebview == null || mBNativeAdvancedWebview.isDestoryed()) {
                return;
            }
            com.mbridge.msdk.advanced.signal.a.a(this.f34182j, "setVolume", CampaignEx.JSON_NATIVE_VIDEO_MUTE, Integer.valueOf(i11));
        }
    }

    private void e(int i11) {
        MBNativeAdvancedWebview mBNativeAdvancedWebview = this.f34182j;
        if (mBNativeAdvancedWebview == null || mBNativeAdvancedWebview.isDestoryed()) {
            return;
        }
        try {
            if (this.f34182j != null) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("netstat", i11);
                f.a().a((WebView) this.f34182j, "onNetstatChanged", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
            }
        } catch (Throwable th2) {
            o0.a(G, th2.getMessage());
        }
    }

    private void g(int i11) {
        if (this.f34192t) {
            this.f34191s = i11;
            MBNativeAdvancedWebview mBNativeAdvancedWebview = this.f34182j;
            if (mBNativeAdvancedWebview == null || mBNativeAdvancedWebview.isDestoryed()) {
                return;
            }
            com.mbridge.msdk.advanced.signal.a.a(this.f34182j, "setVideoPlayMode", "autoPlay", Integer.valueOf(i11));
        }
    }

    private void h() {
        com.mbridge.msdk.advanced.manager.c cVar = this.f34177e;
        if (cVar != null) {
            cVar.e();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        if (this.A && this.B && this.C) {
            CampaignEx campaignExA = com.mbridge.msdk.advanced.manager.d.a(this.f34181i, this.f34174b, this.f34173a, "", this.f34187o, true, true);
            if (campaignExA != null) {
                campaignExA.getImpReportType();
            }
            if (b1.a(this.f34181i.getAdvancedNativeWebview(), 0) || this.f34198z.getAlpha() < 0.5f || this.f34198z.getVisibility() != 0) {
                return;
            }
            com.mbridge.msdk.advanced.manager.c cVar = this.f34177e;
            if (cVar != null) {
                cVar.f();
            }
            b(campaignExA);
        }
    }

    private void j() {
        a(this.f34187o);
        c(this.f34189q);
        g(this.f34191s);
        a(this.f34196x);
        e(k0.s(com.mbridge.msdk.foundation.controller.c.m().d()));
    }

    public String a(String str) {
        com.mbridge.msdk.advanced.manager.b bVar = this.f34176d;
        return bVar != null ? bVar.a(str) : "";
    }

    void a(CampaignEx campaignEx, boolean z10) {
        j();
        MBOutNativeAdvancedViewGroup mBOutNativeAdvancedViewGroup = this.f34198z;
        if (mBOutNativeAdvancedViewGroup == null || mBOutNativeAdvancedViewGroup.getParent() == null) {
            return;
        }
        if (campaignEx != null && z10) {
            if (this.f34184l == null) {
                this.f34184l = h.b().c(com.mbridge.msdk.foundation.controller.c.m().b(), this.f34173a);
            }
            this.f34180h = new d(this, this.f34179g, campaignEx);
        }
        if (this.f34177e == null) {
            com.mbridge.msdk.advanced.manager.c cVar = new com.mbridge.msdk.advanced.manager.c(com.mbridge.msdk.foundation.controller.c.m().d(), this.f34174b, this.f34173a);
            this.f34177e = cVar;
            cVar.a(this);
        }
        a(campaignEx);
    }

    public void a(NativeAdvancedAdListener nativeAdvancedAdListener) {
        this.f34179g = nativeAdvancedAdListener;
    }

    public void a(boolean z10) {
        this.f34185m = z10;
    }

    public void b() {
        if (this.f34179g != null) {
            this.f34179g = null;
        }
        if (this.f34178f != null) {
            this.f34178f = null;
        }
        if (this.f34180h != null) {
            this.f34180h = null;
        }
        com.mbridge.msdk.advanced.manager.b bVar = this.f34176d;
        if (bVar != null) {
            bVar.a((MBNativeAdvancedView) null);
            this.f34176d.e();
        }
        com.mbridge.msdk.advanced.manager.c cVar = this.f34177e;
        if (cVar != null) {
            cVar.g();
        }
        MBNativeAdvancedView mBNativeAdvancedView = this.f34181i;
        if (mBNativeAdvancedView != null) {
            mBNativeAdvancedView.destroy();
        }
        com.mbridge.msdk.advanced.common.c.b(this.f34174b + this.f34173a + e());
        com.mbridge.msdk.advanced.view.a aVar = this.f34183k;
        if (aVar != null) {
            aVar.b();
        }
        MBOutNativeAdvancedViewGroup mBOutNativeAdvancedViewGroup = this.f34198z;
        if (mBOutNativeAdvancedViewGroup != null) {
            mBOutNativeAdvancedViewGroup.getViewTreeObserver().removeOnScrollChangedListener(this.F);
            this.f34198z.removeAllViews();
            this.f34198z = null;
        }
    }

    public void b(int i11) {
        this.f34188p = true;
        a(i11);
    }

    public void b(int i11, int i12) {
        a(i11, i12);
    }

    public void b(CampaignEx campaignEx) {
        if (campaignEx != null) {
            if (this.f34184l == null) {
                this.f34184l = h.b().c(com.mbridge.msdk.foundation.controller.c.m().b(), this.f34173a);
            }
            this.f34180h = new d(this, this.f34179g, campaignEx);
            o0.a(G, "show start");
            if (this.f34193u != 0 && this.f34194v != 0) {
                a(campaignEx, false);
                return;
            }
            d dVar = this.f34180h;
            if (dVar != null) {
                dVar.a(this.f34175c, "width or height is 0  or width or height is too small");
            }
        }
    }

    public void b(JSONObject jSONObject) {
        this.f34197y = true;
        a(jSONObject);
    }

    public boolean b(String str) {
        return (this.f34198z == null || com.mbridge.msdk.advanced.manager.d.a(this.f34181i, this.f34174b, this.f34173a, str, this.f34187o, false, true) == null) ? false : true;
    }

    public String c() {
        if (this.E) {
            com.mbridge.msdk.advanced.manager.c cVar = this.f34177e;
            return cVar != null ? cVar.a() : "";
        }
        com.mbridge.msdk.advanced.manager.b bVar = this.f34176d;
        return bVar != null ? bVar.c() : "";
    }

    public void c(String str) throws Throwable {
        b bVar = new b(this, this.f34175c);
        this.f34178f = bVar;
        bVar.a(this.f34179g);
        this.f34178f.a(str);
        a(str, 2);
    }

    public MBOutNativeAdvancedViewGroup d() {
        return this.f34198z;
    }

    public void d(int i11) {
        this.f34190r = true;
        c(i11);
    }

    public void d(String str) throws Throwable {
        if (!TextUtils.isEmpty(str)) {
            c(str);
            return;
        }
        NativeAdvancedAdListener nativeAdvancedAdListener = this.f34179g;
        if (nativeAdvancedAdListener != null) {
            nativeAdvancedAdListener.onLoadFailed(this.f34175c, "bid  token is null or empty");
        }
    }

    public String e() {
        if (this.E) {
            com.mbridge.msdk.advanced.manager.c cVar = this.f34177e;
            return cVar != null ? cVar.c() : "";
        }
        com.mbridge.msdk.advanced.manager.b bVar = this.f34176d;
        return bVar != null ? bVar.d() : "";
    }

    public int f() {
        return this.f34187o;
    }

    public void f(int i11) {
        if (i11 == 1) {
            this.A = false;
        } else if (i11 == 2) {
            this.B = false;
        } else if (i11 == 3) {
            this.C = false;
        }
        h();
    }

    public boolean g() {
        return this.f34185m;
    }

    public void h(int i11) {
        this.f34192t = true;
        g(i11);
    }

    public void i(int i11) {
        if (i11 == 1) {
            this.A = true;
        } else if (i11 == 2) {
            this.B = true;
        } else if (i11 == 3) {
            this.C = true;
        }
        try {
            i();
        } catch (Exception e11) {
            o0.b(G, e11.getMessage());
        }
    }
}
