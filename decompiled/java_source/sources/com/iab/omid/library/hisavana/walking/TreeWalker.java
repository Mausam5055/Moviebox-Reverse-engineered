package com.iab.omid.library.hisavana.walking;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import com.iab.omid.library.hisavana.adsession.h;
import com.iab.omid.library.hisavana.internal.j;
import ie.f;
import ie.i;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class TreeWalker implements he.a.InterfaceC0777a {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static TreeWalker f33617i = new TreeWalker();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static Handler f33618j = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static Handler f33619k = null;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final Runnable f33620l = new b();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final Runnable f33621m = new c();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f33623b;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f33629h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List f33622a = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f33624c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List f33625d = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.iab.omid.library.hisavana.walking.a f33627f = new com.iab.omid.library.hisavana.walking.a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private he.b f33626e = new he.b();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private com.iab.omid.library.hisavana.walking.b f33628g = new com.iab.omid.library.hisavana.walking.b(new je.c());

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            TreeWalker.this.f33628g.c();
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
            if (TreeWalker.f33619k != null) {
                TreeWalker.f33619k.post(TreeWalker.f33620l);
                TreeWalker.f33619k.postDelayed(TreeWalker.f33621m, 200L);
            }
        }
    }

    TreeWalker() {
    }

    private void d(long j11) {
        if (this.f33622a.size() > 0) {
            Iterator it = this.f33622a.iterator();
            if (it.hasNext()) {
                android.support.v4.media.session.c.a(it.next());
                TimeUnit.NANOSECONDS.toMillis(j11);
                throw null;
            }
        }
    }

    private void e(View view, he.a aVar, JSONObject jSONObject, com.iab.omid.library.hisavana.walking.c cVar, boolean z10) {
        aVar.a(view, jSONObject, this, cVar == com.iab.omid.library.hisavana.walking.c.PARENT_VIEW, z10);
    }

    private void f(String str, View view, JSONObject jSONObject) {
        he.a aVarB = this.f33626e.b();
        String strH = this.f33627f.h(str);
        if (strH != null) {
            JSONObject jSONObjectA = aVarB.a(view);
            ie.c.h(jSONObjectA, str);
            ie.c.o(jSONObjectA, strH);
            ie.c.j(jSONObject, jSONObjectA);
        }
    }

    private boolean g(View view, JSONObject jSONObject) {
        com.iab.omid.library.hisavana.walking.a.C0460a c0460aG = this.f33627f.g(view);
        if (c0460aG == null) {
            return false;
        }
        ie.c.f(jSONObject, c0460aG);
        return true;
    }

    private boolean j(View view, JSONObject jSONObject) {
        String strJ = this.f33627f.j(view);
        if (strJ == null) {
            return false;
        }
        ie.c.h(jSONObject, strJ);
        ie.c.g(jSONObject, Boolean.valueOf(this.f33627f.p(view)));
        ie.c.n(jSONObject, Boolean.valueOf(this.f33627f.l(strJ)));
        this.f33627f.n();
        return true;
    }

    private void l() {
        d(f.b() - this.f33629h);
    }

    private void m() {
        this.f33623b = 0;
        this.f33625d.clear();
        this.f33624c = false;
        Iterator it = com.iab.omid.library.hisavana.internal.c.e().a().iterator();
        while (it.hasNext()) {
            if (((h) it.next()).o()) {
                this.f33624c = true;
                break;
            }
        }
        this.f33629h = f.b();
    }

    public static TreeWalker p() {
        return f33617i;
    }

    private void r() {
        if (f33619k == null) {
            Handler handler = new Handler(Looper.getMainLooper());
            f33619k = handler;
            handler.post(f33620l);
            f33619k.postDelayed(f33621m, 200L);
        }
    }

    private void t() {
        Handler handler = f33619k;
        if (handler != null) {
            handler.removeCallbacks(f33621m);
            f33619k = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u() {
        m();
        n();
        l();
        j.f().a();
    }

    @Override // he.a.InterfaceC0777a
    public void a(View view, he.a aVar, JSONObject jSONObject, boolean z10) {
        com.iab.omid.library.hisavana.walking.c cVarM;
        if (i.f(view) && (cVarM = this.f33627f.m(view)) != com.iab.omid.library.hisavana.walking.c.UNDERLYING_VIEW) {
            JSONObject jSONObjectA = aVar.a(view);
            ie.c.j(jSONObject, jSONObjectA);
            if (!j(view, jSONObjectA)) {
                boolean z11 = z10 || g(view, jSONObjectA);
                if (this.f33624c && cVarM == com.iab.omid.library.hisavana.walking.c.OBSTRUCTION_VIEW && !z11) {
                    this.f33625d.add(new ke.a(view));
                }
                e(view, aVar, jSONObjectA, cVarM, z11);
            }
            this.f33623b++;
        }
    }

    void n() {
        this.f33627f.o();
        long jB = f.b();
        he.a aVarA = this.f33626e.a();
        if (this.f33627f.i().size() > 0) {
            for (String str : this.f33627f.i()) {
                JSONObject jSONObjectA = aVarA.a(null);
                f(str, this.f33627f.a(str), jSONObjectA);
                ie.c.m(jSONObjectA);
                HashSet hashSet = new HashSet();
                hashSet.add(str);
                this.f33628g.b(jSONObjectA, hashSet, jB);
            }
        }
        if (this.f33627f.k().size() > 0) {
            JSONObject jSONObjectA2 = aVarA.a(null);
            e(null, aVarA, jSONObjectA2, com.iab.omid.library.hisavana.walking.c.PARENT_VIEW, false);
            ie.c.m(jSONObjectA2);
            this.f33628g.d(jSONObjectA2, this.f33627f.k(), jB);
            if (this.f33624c) {
                Iterator it = com.iab.omid.library.hisavana.internal.c.e().a().iterator();
                while (it.hasNext()) {
                    ((h) it.next()).h(this.f33625d);
                }
            }
        } else {
            this.f33628g.c();
        }
        this.f33627f.d();
    }

    public void o() {
        t();
    }

    public void q() {
        r();
    }

    public void s() {
        o();
        this.f33622a.clear();
        f33618j.post(new a());
    }
}
