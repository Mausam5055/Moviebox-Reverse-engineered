package com.cloud.hisavana.sdk.api.adx;

import a7.c;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;
import com.cloud.hisavana.sdk.G;
import com.cloud.hisavana.sdk.api.listener.g;
import com.cloud.hisavana.sdk.e4;
import com.cloud.hisavana.sdk.i1;
import com.cloud.hisavana.sdk.q3;

/* JADX INFO: loaded from: classes3.dex */
public class TSplashView extends ViewApi {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private RelativeLayout f21581m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private View f21582n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private g f21583o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private Context f21584p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private String f21585q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f21586r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f21587s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private Float f21588t;

    private static class a extends ViewApi.a {
        a(TSplashView tSplashView) {
            super(tSplashView);
        }

        @Override // com.cloud.hisavana.sdk.api.listener.AdCallback
        public g f() {
            ViewApi viewApi = this.f21601a;
            if (viewApi instanceof TSplashView) {
                return ((TSplashView) viewApi).f21583o;
            }
            return null;
        }
    }

    public TSplashView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TSplashView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f21586r = false;
        this.f21587s = false;
        this.f21584p = context;
    }

    public TSplashView(Context context, String str) {
        super(context, str);
        this.f21586r = false;
        this.f21587s = false;
        this.f21584p = context;
    }

    private void d() {
        try {
            RelativeLayout relativeLayout = this.f21581m;
            if (relativeLayout != null) {
                removeView(relativeLayout);
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.cloud.hisavana.sdk.api.adx.ViewApi
    public void destroy() {
        d();
        super.destroy();
        this.f21582n = null;
        this.f21581m = null;
    }

    public void loadAd() {
        if (this.f21586r) {
            c.s(this.f21584p, this.f21585q, this.f21587s);
        }
        if (b()) {
            i1 i1Var = new i1(new q3.b().i(4).e(this.f21590b).r(this.f21591c).l(this.f21592d).j(this.f21593e).c(this.f21598j).o(this.f21595g).v(this.f21596h).b(this.f21597i).g());
            i1Var.g(new a(this));
            i1Var.E();
        }
    }

    public TSplashView setLiteInit(String str, boolean z10) {
        this.f21586r = true;
        this.f21585q = str;
        this.f21587s = z10;
        return this;
    }

    public void setLogoLayout(View view) {
        this.f21582n = view;
    }

    public void setLogoLayoutHeightRatio(Float f11) {
        this.f21588t = f11;
    }

    public void setSkipListener(g gVar) {
        this.f21583o = gVar;
    }

    public void show() {
        G g11 = this.f21589a;
        if (g11 == null || !(g11 instanceof i1)) {
            return;
        }
        try {
            d();
            RelativeLayout relativeLayout = new RelativeLayout(getContext());
            this.f21581m = relativeLayout;
            addView(relativeLayout, -1, -1);
            ((i1) this.f21589a).l0(this.f21581m);
            ((i1) this.f21589a).g0(this.f21588t);
            ((i1) this.f21589a).k0(this.f21582n);
            this.f21599k.add(this.f21589a);
        } catch (Throwable th2) {
            e4.b().w("ssp", "TSplashView show error: " + th2.getMessage());
        }
        ((i1) this.f21589a).j0(this.f21584p);
    }
}
