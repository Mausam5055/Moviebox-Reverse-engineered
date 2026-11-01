package com.iab.omid.library.mmadbridge.walking;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import com.iab.omid.library.mmadbridge.adsession.h;
import com.iab.omid.library.mmadbridge.internal.j;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import oe.f;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class TreeWalker implements ne.a.InterfaceC0849a {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static TreeWalker f33737i = new TreeWalker();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static Handler f33738j = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static Handler f33739k = null;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final Runnable f33740l = new b();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final Runnable f33741m = new c();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f33743b;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f33749h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List f33742a = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f33744c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List f33745d = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.iab.omid.library.mmadbridge.walking.a f33747f = new com.iab.omid.library.mmadbridge.walking.a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ne.b f33746e = new ne.b();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private com.iab.omid.library.mmadbridge.walking.b f33748g = new com.iab.omid.library.mmadbridge.walking.b(new pe.c());

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            TreeWalker.this.f33748g.c();
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
            if (TreeWalker.f33739k != null) {
                TreeWalker.f33739k.post(TreeWalker.f33740l);
                TreeWalker.f33739k.postDelayed(TreeWalker.f33741m, 200L);
            }
        }
    }

    TreeWalker() {
    }

    private void d(long j11) {
        if (this.f33742a.size() > 0) {
            Iterator it = this.f33742a.iterator();
            if (it.hasNext()) {
                android.support.v4.media.session.c.a(it.next());
                TimeUnit.NANOSECONDS.toMillis(j11);
                throw null;
            }
        }
    }

    private void e(View view, ne.a aVar, JSONObject jSONObject, com.iab.omid.library.mmadbridge.walking.c cVar, boolean z10) {
        aVar.a(view, jSONObject, this, cVar == com.iab.omid.library.mmadbridge.walking.c.PARENT_VIEW, z10);
    }

    private void f(String str, View view, JSONObject jSONObject) {
        ne.a aVarB = this.f33746e.b();
        String strH = this.f33747f.h(str);
        if (strH != null) {
            JSONObject jSONObjectA = aVarB.a(view);
            oe.c.h(jSONObjectA, str);
            oe.c.o(jSONObjectA, strH);
            oe.c.j(jSONObject, jSONObjectA);
        }
    }

    private boolean g(View view, JSONObject jSONObject) {
        com.iab.omid.library.mmadbridge.walking.a.C0462a c0462aG = this.f33747f.g(view);
        if (c0462aG == null) {
            return false;
        }
        oe.c.f(jSONObject, c0462aG);
        return true;
    }

    private boolean j(View view, JSONObject jSONObject) {
        String strJ = this.f33747f.j(view);
        if (strJ == null) {
            return false;
        }
        oe.c.h(jSONObject, strJ);
        oe.c.g(jSONObject, Boolean.valueOf(this.f33747f.p(view)));
        oe.c.n(jSONObject, Boolean.valueOf(this.f33747f.l(strJ)));
        this.f33747f.n();
        return true;
    }

    private void l() {
        d(f.b() - this.f33749h);
    }

    private void m() {
        this.f33743b = 0;
        this.f33745d.clear();
        this.f33744c = false;
        Iterator it = com.iab.omid.library.mmadbridge.internal.c.e().a().iterator();
        while (it.hasNext()) {
            if (((h) it.next()).p()) {
                this.f33744c = true;
                break;
            }
        }
        this.f33749h = f.b();
    }

    public static TreeWalker p() {
        return f33737i;
    }

    private void r() {
        if (f33739k == null) {
            Handler handler = new Handler(Looper.getMainLooper());
            f33739k = handler;
            handler.post(f33740l);
            f33739k.postDelayed(f33741m, 200L);
        }
    }

    private void t() {
        Handler handler = f33739k;
        if (handler != null) {
            handler.removeCallbacks(f33741m);
            f33739k = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u() {
        m();
        n();
        l();
        j.f().a();
    }

    @Override // ne.a.InterfaceC0849a
    public void a(View view, ne.a aVar, JSONObject jSONObject, boolean z10) {
        com.iab.omid.library.mmadbridge.walking.c cVarM;
        if (oe.h.f(view) && (cVarM = this.f33747f.m(view)) != com.iab.omid.library.mmadbridge.walking.c.UNDERLYING_VIEW) {
            JSONObject jSONObjectA = aVar.a(view);
            oe.c.j(jSONObject, jSONObjectA);
            if (!j(view, jSONObjectA)) {
                boolean z11 = z10 || g(view, jSONObjectA);
                if (this.f33744c && cVarM == com.iab.omid.library.mmadbridge.walking.c.OBSTRUCTION_VIEW && !z11) {
                    this.f33745d.add(new qe.a(view));
                }
                e(view, aVar, jSONObjectA, cVarM, z11);
            }
            this.f33743b++;
        }
    }

    void n() {
        this.f33747f.o();
        long jB = f.b();
        ne.a aVarA = this.f33746e.a();
        if (this.f33747f.i().size() > 0) {
            for (String str : this.f33747f.i()) {
                JSONObject jSONObjectA = aVarA.a(null);
                f(str, this.f33747f.a(str), jSONObjectA);
                oe.c.m(jSONObjectA);
                HashSet hashSet = new HashSet();
                hashSet.add(str);
                this.f33748g.b(jSONObjectA, hashSet, jB);
            }
        }
        if (this.f33747f.k().size() > 0) {
            JSONObject jSONObjectA2 = aVarA.a(null);
            e(null, aVarA, jSONObjectA2, com.iab.omid.library.mmadbridge.walking.c.PARENT_VIEW, false);
            oe.c.m(jSONObjectA2);
            this.f33748g.d(jSONObjectA2, this.f33747f.k(), jB);
            if (this.f33744c) {
                Iterator it = com.iab.omid.library.mmadbridge.internal.c.e().a().iterator();
                while (it.hasNext()) {
                    ((h) it.next()).j(this.f33745d);
                }
            }
        } else {
            this.f33748g.c();
        }
        this.f33747f.d();
    }

    public void o() {
        t();
    }

    public void q() {
        r();
    }

    public void s() {
        o();
        this.f33742a.clear();
        f33738j.post(new a());
    }
}
