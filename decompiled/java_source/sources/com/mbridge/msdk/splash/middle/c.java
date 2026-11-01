package com.mbridge.msdk.splash.middle;

import android.R;
import android.app.Activity;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.c1;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.out.MBSplashLoadListener;
import com.mbridge.msdk.out.MBSplashShowListener;
import com.mbridge.msdk.out.MBridgeIds;
import com.mbridge.msdk.out.ZoomOutTypeEnum;
import com.mbridge.msdk.setting.h;
import com.mbridge.msdk.setting.j;
import com.mbridge.msdk.setting.l;
import com.mbridge.msdk.splash.manager.e;
import com.mbridge.msdk.splash.manager.f;
import com.mbridge.msdk.splash.view.BaseSplashPopView;
import com.mbridge.msdk.splash.view.MBSplashPopView;
import com.mbridge.msdk.splash.view.MBSplashView;

/* JADX INFO: loaded from: classes5.dex */
public class c {
    private static String D = "SplashProvider";
    private CampaignEx A;
    private MBSplashPopView B;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f37537a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f37538b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private MBridgeIds f37539c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f37541e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private e f37542f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private f f37543g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private b f37544h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private MBSplashShowListener f37545i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private d f37546j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private MBSplashView f37547k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private ViewGroup f37548l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private View f37549m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private l f37550n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f37551o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private ViewGroup f37552p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private j f37553q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f37554r;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private Activity f37561y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private boolean f37562z;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f37540d = 5;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f37555s = 1;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f37556t = k0.n(com.mbridge.msdk.foundation.controller.c.m().d());

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f37557u = k0.m(com.mbridge.msdk.foundation.controller.c.m().d());

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private Object f37558v = new Object();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private Object f37559w = new Object();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f37560x = false;
    private boolean C = false;

    class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ CampaignEx f37563a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f37564b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f37565c;

        a(CampaignEx campaignEx, int i11, boolean z10) {
            this.f37563a = campaignEx;
            this.f37564b = i11;
            this.f37565c = z10;
        }

        @Override // java.lang.Runnable
        public void run() {
            c.this.a(this.f37563a, this.f37564b - 1, this.f37565c);
        }
    }

    public c(Activity activity, String str, String str2) {
        this.f37538b = TextUtils.isEmpty(str) ? "" : str;
        this.f37537a = str2;
        this.f37539c = new MBridgeIds(str, str2);
        this.f37561y = activity;
        b(activity);
    }

    private ViewGroup a(Activity activity) {
        Throwable th2;
        ViewGroup viewGroup;
        if (activity != null && activity.isFinishing()) {
            activity = null;
        }
        if (activity == null) {
            o0.d(D, "splash can't show because, activity is null or activity is finishing");
            return null;
        }
        try {
            viewGroup = (ViewGroup) activity.getWindow().getDecorView().findViewById(R.id.content);
            try {
                try {
                    return (ViewGroup) viewGroup.getChildAt(0);
                } catch (Exception e11) {
                    e11.printStackTrace();
                    return viewGroup;
                }
            } catch (Throwable th3) {
                th2 = th3;
                th2.printStackTrace();
                return viewGroup;
            }
        } catch (Throwable th4) {
            th2 = th4;
            viewGroup = null;
        }
    }

    private void a(int i11, int i12) {
        int iN = k0.n(com.mbridge.msdk.foundation.controller.c.m().d());
        int iM = k0.m(com.mbridge.msdk.foundation.controller.c.m().d());
        int i13 = this.f37555s;
        if (i13 == 1) {
            if (iM >= i12 * 4) {
                this.f37557u = iM - i12;
                this.f37556t = iN;
                return;
            } else {
                this.f37557u = 0;
                this.f37556t = 0;
                return;
            }
        }
        if (i13 == 2) {
            if (iN >= i11 * 4) {
                this.f37556t = iN - i11;
                this.f37557u = iM;
            } else {
                this.f37557u = 0;
                this.f37556t = 0;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(CampaignEx campaignEx, int i11, boolean z10) {
        if (!com.mbridge.msdk.splash.manager.d.a(this.f37547k, campaignEx)) {
            if (i11 > 0) {
                this.f37543g.f37439y.postDelayed(new a(campaignEx, i11, z10), 1L);
                return;
            }
            d dVar = this.f37546j;
            if (dVar != null) {
                dVar.a(this.f37539c, "campaignEx is not ready");
                return;
            }
            return;
        }
        a(true);
        ViewGroup.LayoutParams layoutParams = this.f37548l.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new ViewGroup.LayoutParams(-1, -1);
        } else {
            layoutParams.height = -1;
            layoutParams.width = -1;
        }
        this.f37548l.setLayoutParams(layoutParams);
        this.f37548l.removeAllViews();
        this.f37543g.c(this.f37540d);
        this.f37543g.a(this.f37552p);
        this.f37543g.a(this.f37546j);
        o0.b(D, "start show process");
        ViewGroup viewGroup = this.f37548l;
        if (viewGroup != null) {
            viewGroup.removeAllViews();
            c1.a(this.f37547k);
            this.f37548l.addView(this.f37547k);
        }
        this.f37543g.a(this.f37554r);
        this.f37543g.a(campaignEx, this.f37547k);
    }

    private void a(String str, int i11) {
        boolean zB;
        synchronized (this.f37558v) {
            try {
                if (this.f37551o) {
                    if (this.f37544h != null) {
                        this.f37544h.a(new com.mbridge.msdk.foundation.error.b(880016, "current unit is loading"), i11);
                        this.f37551o = true;
                    }
                    return;
                }
                this.f37551o = true;
                int i12 = this.f37540d;
                if (i12 < 2 || i12 > 10) {
                    if (this.f37544h != null) {
                        com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880037);
                        bVar.c("countDownTime must in 2 - 10");
                        this.f37544h.a(bVar, i11);
                        return;
                    }
                    return;
                }
                if (this.f37556t == 0 || this.f37557u == 0) {
                    if (this.f37544h != null) {
                        this.f37544h.a(new com.mbridge.msdk.foundation.error.b(880028), i11);
                        return;
                    }
                    return;
                }
                try {
                    zB = com.mbridge.msdk.mbsignalcommon.webEnvCheck.a.b(com.mbridge.msdk.foundation.controller.c.m().d());
                } catch (Exception unused) {
                    zB = false;
                }
                if (!zB) {
                    if (this.f37544h != null) {
                        this.f37544h.a(new com.mbridge.msdk.foundation.error.b(880029), i11);
                        return;
                    }
                    return;
                }
                this.f37547k.clearResState();
                this.f37550n = h.b().d(com.mbridge.msdk.foundation.controller.c.m().b(), this.f37537a);
                if (this.f37542f == null) {
                    this.f37542f = new e(this.f37538b, this.f37537a, this.f37541e * 1000);
                }
                b bVar2 = this.f37544h;
                if (bVar2 != null) {
                    bVar2.a(str);
                    this.f37542f.a(this.f37544h);
                }
                this.f37547k.resetLoadState();
                this.f37542f.a(this.f37540d);
                this.f37542f.a(this.f37547k);
                this.f37542f.a(this.f37550n);
                this.f37542f.a(this.f37556t, this.f37557u);
                this.f37542f.a(this.f37554r);
                this.f37542f.b(this.f37555s);
                this.f37542f.a(str, i11);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private void b(Activity activity) {
        if (this.f37543g == null) {
            if (activity != null) {
                this.f37543g = new f(activity, this.f37538b, this.f37537a);
            } else {
                this.f37543g = new f(com.mbridge.msdk.foundation.controller.c.m().d(), this.f37538b, this.f37537a);
            }
        }
        if (this.f37547k == null) {
            if (activity != null) {
                this.f37547k = new MBSplashView(activity);
            } else {
                this.f37547k = new MBSplashView(com.mbridge.msdk.foundation.controller.c.m().d());
            }
        }
        if (this.f37553q == null) {
            this.f37553q = new j();
        }
        this.f37553q.a(com.mbridge.msdk.foundation.controller.c.m().d(), com.mbridge.msdk.foundation.controller.c.m().b(), com.mbridge.msdk.foundation.controller.c.m().c(), this.f37537a);
    }

    public ViewGroup a(ZoomOutTypeEnum zoomOutTypeEnum) {
        MBSplashPopView mBSplashPopView = new MBSplashPopView(com.mbridge.msdk.foundation.controller.c.m().d(), new BaseSplashPopView.i(this.f37538b, this.f37537a, zoomOutTypeEnum.getIndex(), this.A), this.f37546j);
        this.B = mBSplashPopView;
        return mBSplashPopView;
    }

    public void a() {
        this.A = null;
        if (this.f37545i != null) {
            this.f37545i = null;
        }
        if (this.f37544h != null) {
            this.f37544h = null;
        }
        if (this.f37546j != null) {
            this.f37546j = null;
        }
        e eVar = this.f37542f;
        if (eVar != null) {
            eVar.e();
        }
        f fVar = this.f37543g;
        if (fVar != null) {
            fVar.h();
        }
        if (this.f37561y != null) {
            this.f37561y = null;
        }
    }

    public void a(int i11) {
        this.f37555s = i11;
    }

    public void a(int i11, int i12, int i13, int i14) {
        try {
            MBSplashView mBSplashView = this.f37547k;
            if (mBSplashView != null) {
                mBSplashView.setNotchPadding(i11, i12, i13, i14);
            }
        } catch (Throwable th2) {
            o0.b(D, th2.getMessage());
        }
    }

    public void a(long j11) {
        this.f37541e = j11;
    }

    public void a(View view, RelativeLayout.LayoutParams layoutParams) {
        this.f37549m = view;
        if (view != null) {
            a(layoutParams.width, layoutParams.height);
            MBSplashView mBSplashView = this.f37547k;
            if (mBSplashView != null) {
                mBSplashView.setIconVg(view, layoutParams);
            }
        }
    }

    public void a(ViewGroup viewGroup) {
        this.f37552p = viewGroup;
    }

    public void a(MBSplashLoadListener mBSplashLoadListener) {
        if (this.f37544h == null) {
            this.f37544h = new b(this, this.f37539c);
        }
        this.f37544h.a(mBSplashLoadListener);
    }

    public void a(MBSplashShowListener mBSplashShowListener) {
        this.f37545i = mBSplashShowListener;
    }

    public void a(String str, Activity activity) {
        ViewGroup viewGroupA = a(activity);
        if (viewGroupA != null) {
            a(str, viewGroupA);
        } else if (this.f37544h != null) {
            this.f37544h.a(new com.mbridge.msdk.foundation.error.b(880036), 1);
        }
    }

    public void a(String str, ViewGroup viewGroup) {
        this.f37548l = viewGroup;
        MBSplashView mBSplashView = this.f37547k;
        if (mBSplashView != null) {
            mBSplashView.setDevContainer(viewGroup);
        }
        a(str, 2);
    }

    public void a(boolean z10) {
        MBSplashView mBSplashView = this.f37547k;
        if (mBSplashView != null) {
            mBSplashView.setAllowClickSplash(z10);
        }
    }

    public boolean a(String str) {
        return com.mbridge.msdk.splash.manager.d.a(this.f37547k, this.f37538b, this.f37537a, str, this.f37554r, this.f37540d, false, true) != null;
    }

    public String b() {
        if (this.f37560x) {
            f fVar = this.f37543g;
            return fVar != null ? fVar.c() : "";
        }
        e eVar = this.f37542f;
        return eVar != null ? eVar.c() : "";
    }

    public void b(int i11) {
        this.f37540d = i11;
    }

    public void b(int i11, int i12) {
        a(i12, i11);
    }

    void b(CampaignEx campaignEx, int i11, boolean z10) {
        if (campaignEx != null && z10) {
            if (this.f37550n == null) {
                this.f37550n = h.b().d(com.mbridge.msdk.foundation.controller.c.m().b(), this.f37537a);
            }
            this.f37546j = new d(this, this.f37545i, campaignEx);
        }
        ViewGroup viewGroup = this.f37548l;
        if (viewGroup == null) {
            d dVar = this.f37546j;
            if (dVar != null) {
                dVar.a(this.f37539c, "container is null");
                return;
            }
            return;
        }
        if (this.f37543g == null) {
            this.f37543g = new f(viewGroup.getContext(), this.f37538b, this.f37537a);
        }
        this.A = campaignEx;
        a(campaignEx, i11, z10);
    }

    public void b(String str) {
        a(str, 1);
    }

    public void b(String str, Activity activity) {
        ViewGroup viewGroupA = a(activity);
        if (viewGroupA != null) {
            b(str, viewGroupA);
        } else if (this.f37544h != null) {
            this.f37544h.a(new com.mbridge.msdk.foundation.error.b(880036), 1);
        }
    }

    public void b(String str, ViewGroup viewGroup) {
        if (!TextUtils.isEmpty(str)) {
            a(str, viewGroup);
        } else if (this.f37544h != null) {
            this.f37544h.a(new com.mbridge.msdk.foundation.error.b(880035), 1);
        }
    }

    public void b(boolean z10) {
        this.f37551o = z10;
    }

    public String c() {
        if (this.f37560x) {
            f fVar = this.f37543g;
            return fVar != null ? fVar.d() : "";
        }
        e eVar = this.f37542f;
        return eVar != null ? eVar.d() : "";
    }

    public void c(String str) {
        if (!TextUtils.isEmpty(str)) {
            b(str);
        } else if (this.f37544h != null) {
            this.f37544h.a(new com.mbridge.msdk.foundation.error.b(880035), 1);
        }
    }

    public void c(String str, Activity activity) {
        ViewGroup viewGroupA = a(activity);
        if (viewGroupA != null) {
            c(str, viewGroupA);
            return;
        }
        MBSplashShowListener mBSplashShowListener = this.f37545i;
        if (mBSplashShowListener != null) {
            mBSplashShowListener.onShowFailed(this.f37539c, "activity is except,please check it");
        }
    }

    public void c(String str, ViewGroup viewGroup) {
        this.f37548l = viewGroup;
        MBSplashView mBSplashView = this.f37547k;
        if (mBSplashView != null) {
            mBSplashView.setDevContainer(viewGroup);
        }
        CampaignEx campaignExA = com.mbridge.msdk.splash.manager.d.a(this.f37547k, this.f37538b, this.f37537a, str, this.f37554r, this.f37540d, true, false);
        if (campaignExA == null) {
            MBSplashShowListener mBSplashShowListener = this.f37545i;
            if (mBSplashShowListener != null) {
                mBSplashShowListener.onShowFailed(this.f37539c, "campaignEx is vali");
                return;
            }
            return;
        }
        if (this.f37550n == null) {
            this.f37550n = h.b().d(com.mbridge.msdk.foundation.controller.c.m().b(), this.f37537a);
        }
        d dVar = new d(this, this.f37545i, campaignExA);
        this.f37546j = dVar;
        if (this.f37556t == 0 || this.f37557u == 0) {
            dVar.a(this.f37539c, "width or height is 0  or width or height is too small");
            return;
        }
        int i11 = this.f37540d;
        if (i11 >= 2 && i11 <= 10) {
            b(campaignExA, this.f37550n.E(), false);
            return;
        }
        dVar.a(this.f37539c, "countDownTime must in 2 - 10 ,but now is " + this.f37540d);
    }

    public void c(boolean z10) {
        this.f37554r = z10;
    }

    public int d() {
        return this.f37540d;
    }

    public void d(String str, Activity activity) {
        ViewGroup viewGroupA = a(activity);
        if (viewGroupA != null) {
            d(str, viewGroupA);
            return;
        }
        MBSplashShowListener mBSplashShowListener = this.f37545i;
        if (mBSplashShowListener != null) {
            mBSplashShowListener.onShowFailed(this.f37539c, "activity is except,please check it");
        }
    }

    public void d(String str, ViewGroup viewGroup) {
        if (!TextUtils.isEmpty(str)) {
            c(str, viewGroup);
            return;
        }
        MBSplashShowListener mBSplashShowListener = this.f37545i;
        if (mBSplashShowListener != null) {
            mBSplashShowListener.onShowFailed(this.f37539c, "token is null or empty");
        }
    }

    public void d(boolean z10) {
        this.f37562z = z10;
    }

    public long e() {
        return this.f37541e;
    }

    public boolean f() {
        return this.f37554r;
    }

    public boolean g() {
        return this.f37551o;
    }

    public void h() {
        f fVar = this.f37543g;
        if (fVar != null) {
            fVar.f();
        }
        MBSplashPopView mBSplashPopView = this.B;
        if (mBSplashPopView == null || !this.C) {
            return;
        }
        mBSplashPopView.pauseCountDown();
    }

    public void i() {
        f fVar = this.f37543g;
        if (fVar != null) {
            fVar.g();
        }
        MBSplashPopView mBSplashPopView = this.B;
        if (mBSplashPopView == null || !this.C) {
            return;
        }
        mBSplashPopView.reStartCountDown();
    }

    public void j() {
        this.C = true;
        MBSplashPopView mBSplashPopView = this.B;
        if (mBSplashPopView != null) {
            mBSplashPopView.startCountDown();
        }
    }

    public void k() {
        this.C = false;
        MBSplashShowListener mBSplashShowListener = this.f37545i;
        if (mBSplashShowListener != null) {
            mBSplashShowListener.onZoomOutPlayFinish(new MBridgeIds(this.f37538b, this.f37537a));
        }
        MBSplashPopView mBSplashPopView = this.B;
        if (mBSplashPopView != null) {
            mBSplashPopView.release();
        }
    }
}
