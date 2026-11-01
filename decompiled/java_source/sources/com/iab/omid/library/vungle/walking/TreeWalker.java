package com.iab.omid.library.vungle.walking;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import com.iab.omid.library.vungle.adsession.h;
import com.iab.omid.library.vungle.internal.j;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
import ue.f;

/* JADX INFO: loaded from: classes4.dex */
public class TreeWalker implements te.a.InterfaceC0923a {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static TreeWalker f33847i = new TreeWalker();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static Handler f33848j = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static Handler f33849k = null;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final Runnable f33850l = new b();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final Runnable f33851m = new c();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f33853b;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f33859h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List f33852a = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f33854c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List f33855d = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.iab.omid.library.vungle.walking.a f33857f = new com.iab.omid.library.vungle.walking.a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private te.b f33856e = new te.b();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private com.iab.omid.library.vungle.walking.b f33858g = new com.iab.omid.library.vungle.walking.b(new ve.c());

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            TreeWalker.this.f33858g.c();
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            TreeWalker.p().u();
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (TreeWalker.f33849k != null) {
                TreeWalker.f33849k.post(TreeWalker.f33850l);
                TreeWalker.f33849k.postDelayed(TreeWalker.f33851m, 200L);
            }
        }
    }

    TreeWalker() {
    }

    private void d(long j11) {
        if (this.f33852a.size() > 0) {
            Iterator it = this.f33852a.iterator();
            if (it.hasNext()) {
                android.support.v4.media.session.c.a(it.next());
                TimeUnit.NANOSECONDS.toMillis(j11);
                throw null;
            }
        }
    }

    private void e(View view, te.a aVar, JSONObject jSONObject, com.iab.omid.library.vungle.walking.c cVar, boolean z10) {
        aVar.a(view, jSONObject, this, cVar == com.iab.omid.library.vungle.walking.c.PARENT_VIEW, z10);
    }

    private void f(String str, View view, JSONObject jSONObject) {
        te.a aVarB = this.f33856e.b();
        String strH = this.f33857f.h(str);
        if (strH != null) {
            JSONObject jSONObjectA = aVarB.a(view);
            ue.c.h(jSONObjectA, str);
            ue.c.o(jSONObjectA, strH);
            ue.c.j(jSONObject, jSONObjectA);
        }
    }

    private boolean g(View view, JSONObject jSONObject) {
        this.f33857f.g(view);
        return false;
    }

    private boolean j(View view, JSONObject jSONObject) {
        String strJ = this.f33857f.j(view);
        if (strJ == null) {
            return false;
        }
        ue.c.h(jSONObject, strJ);
        ue.c.g(jSONObject, Boolean.valueOf(this.f33857f.p(view)));
        ue.c.n(jSONObject, Boolean.valueOf(this.f33857f.l(strJ)));
        this.f33857f.n();
        return true;
    }

    private void l() {
        d(f.b() - this.f33859h);
    }

    private void m() {
        this.f33853b = 0;
        this.f33855d.clear();
        this.f33854c = false;
        Iterator it = com.iab.omid.library.vungle.internal.c.e().a().iterator();
        while (it.hasNext()) {
            if (((h) it.next()).n()) {
                this.f33854c = true;
                break;
            }
        }
        this.f33859h = f.b();
    }

    public static TreeWalker p() {
        return f33847i;
    }

    private void r() {
        if (f33849k == null) {
            Handler handler = new Handler(Looper.getMainLooper());
            f33849k = handler;
            handler.post(f33850l);
            f33849k.postDelayed(f33851m, 200L);
        }
    }

    private void t() {
        Handler handler = f33849k;
        if (handler != null) {
            handler.removeCallbacks(f33851m);
            f33849k = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u() {
        m();
        n();
        l();
        j.f().a();
    }

    @Override // te.a.InterfaceC0923a
    public void a(View view, te.a aVar, JSONObject jSONObject, boolean z10) {
        com.iab.omid.library.vungle.walking.c cVarM;
        if (ue.h.f(view) && (cVarM = this.f33857f.m(view)) != com.iab.omid.library.vungle.walking.c.UNDERLYING_VIEW) {
            JSONObject jSONObjectA = aVar.a(view);
            ue.c.j(jSONObject, jSONObjectA);
            if (!j(view, jSONObjectA)) {
                boolean z11 = z10 || g(view, jSONObjectA);
                if (this.f33854c && cVarM == com.iab.omid.library.vungle.walking.c.OBSTRUCTION_VIEW && !z11) {
                    this.f33855d.add(new we.a(view));
                }
                e(view, aVar, jSONObjectA, cVarM, z11);
            }
            this.f33853b++;
        }
    }

    void n() {
        this.f33857f.o();
        long jB = f.b();
        te.a aVarA = this.f33856e.a();
        if (this.f33857f.i().size() > 0) {
            for (String str : this.f33857f.i()) {
                JSONObject jSONObjectA = aVarA.a(null);
                f(str, this.f33857f.a(str), jSONObjectA);
                ue.c.m(jSONObjectA);
                HashSet hashSet = new HashSet();
                hashSet.add(str);
                this.f33858g.b(jSONObjectA, hashSet, jB);
            }
        }
        if (this.f33857f.k().size() > 0) {
            JSONObject jSONObjectA2 = aVarA.a(null);
            e(null, aVarA, jSONObjectA2, com.iab.omid.library.vungle.walking.c.PARENT_VIEW, false);
            ue.c.m(jSONObjectA2);
            this.f33858g.d(jSONObjectA2, this.f33857f.k(), jB);
            if (this.f33854c) {
                Iterator it = com.iab.omid.library.vungle.internal.c.e().a().iterator();
                while (it.hasNext()) {
                    ((h) it.next()).g(this.f33855d);
                }
            }
        } else {
            this.f33858g.c();
        }
        this.f33857f.d();
    }

    public void o() {
        t();
    }

    public void q() {
        r();
    }

    public void s() {
        o();
        this.f33852a.clear();
        f33848j.post(new a());
    }
}
