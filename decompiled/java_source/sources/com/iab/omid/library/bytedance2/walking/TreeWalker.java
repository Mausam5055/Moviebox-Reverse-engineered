package com.iab.omid.library.bytedance2.walking;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import com.iab.omid.library.bytedance2.utils.f;
import com.iab.omid.library.bytedance2.utils.h;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class TreeWalker implements com.iab.omid.library.bytedance2.processor.a.InterfaceC0455a {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static TreeWalker f33495i = new TreeWalker();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static Handler f33496j = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static Handler f33497k = null;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final Runnable f33498l = new b();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final Runnable f33499m = new c();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f33501b;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f33507h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List<TreeWalkerTimeLogger> f33500a = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f33502c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List<com.iab.omid.library.bytedance2.weakreference.a> f33503d = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.iab.omid.library.bytedance2.walking.a f33505f = new com.iab.omid.library.bytedance2.walking.a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.iab.omid.library.bytedance2.processor.b f33504e = new com.iab.omid.library.bytedance2.processor.b();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private com.iab.omid.library.bytedance2.walking.b f33506g = new com.iab.omid.library.bytedance2.walking.b(new com.iab.omid.library.bytedance2.walking.async.c());

    public interface TreeWalkerNanoTimeLogger extends TreeWalkerTimeLogger {
        void onTreeProcessedNano(int i11, long j11);
    }

    public interface TreeWalkerTimeLogger {
        void onTreeProcessed(int i11, long j11);
    }

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            TreeWalker.this.f33506g.b();
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            TreeWalker.getInstance().l();
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (TreeWalker.f33497k != null) {
                TreeWalker.f33497k.post(TreeWalker.f33498l);
                TreeWalker.f33497k.postDelayed(TreeWalker.f33499m, 200L);
            }
        }
    }

    TreeWalker() {
    }

    private void a(long j11) {
        if (this.f33500a.size() > 0) {
            for (TreeWalkerTimeLogger treeWalkerTimeLogger : this.f33500a) {
                treeWalkerTimeLogger.onTreeProcessed(this.f33501b, TimeUnit.NANOSECONDS.toMillis(j11));
                if (treeWalkerTimeLogger instanceof TreeWalkerNanoTimeLogger) {
                    ((TreeWalkerNanoTimeLogger) treeWalkerTimeLogger).onTreeProcessedNano(this.f33501b, j11);
                }
            }
        }
    }

    private void a(View view, com.iab.omid.library.bytedance2.processor.a aVar, JSONObject jSONObject, com.iab.omid.library.bytedance2.walking.c cVar, boolean z10) {
        aVar.a(view, jSONObject, this, cVar == com.iab.omid.library.bytedance2.walking.c.PARENT_VIEW, z10);
    }

    private void a(String str, View view, JSONObject jSONObject) {
        com.iab.omid.library.bytedance2.processor.a aVarB = this.f33504e.b();
        String strB = this.f33505f.b(str);
        if (strB != null) {
            JSONObject jSONObjectA = aVarB.a(view);
            com.iab.omid.library.bytedance2.utils.c.a(jSONObjectA, str);
            com.iab.omid.library.bytedance2.utils.c.b(jSONObjectA, strB);
            com.iab.omid.library.bytedance2.utils.c.a(jSONObject, jSONObjectA);
        }
    }

    private boolean a(View view, JSONObject jSONObject) {
        com.iab.omid.library.bytedance2.walking.a.C0457a c0457aC = this.f33505f.c(view);
        if (c0457aC == null) {
            return false;
        }
        com.iab.omid.library.bytedance2.utils.c.a(jSONObject, c0457aC);
        return true;
    }

    private boolean b(View view, JSONObject jSONObject) {
        String strD = this.f33505f.d(view);
        if (strD == null) {
            return false;
        }
        com.iab.omid.library.bytedance2.utils.c.a(jSONObject, strD);
        com.iab.omid.library.bytedance2.utils.c.a(jSONObject, Boolean.valueOf(this.f33505f.f(view)));
        this.f33505f.d();
        return true;
    }

    private void d() {
        a(f.b() - this.f33507h);
    }

    private void e() {
        this.f33501b = 0;
        this.f33503d.clear();
        this.f33502c = false;
        Iterator<com.iab.omid.library.bytedance2.adsession.a> it = com.iab.omid.library.bytedance2.internal.c.c().a().iterator();
        while (it.hasNext()) {
            if (it.next().e()) {
                this.f33502c = true;
                break;
            }
        }
        this.f33507h = f.b();
    }

    public static TreeWalker getInstance() {
        return f33495i;
    }

    private void i() {
        if (f33497k == null) {
            Handler handler = new Handler(Looper.getMainLooper());
            f33497k = handler;
            handler.post(f33498l);
            f33497k.postDelayed(f33499m, 200L);
        }
    }

    private void k() {
        Handler handler = f33497k;
        if (handler != null) {
            handler.removeCallbacks(f33499m);
            f33497k = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        e();
        f();
        d();
    }

    @Override // com.iab.omid.library.bytedance2.processor.a.InterfaceC0455a
    public void a(View view, com.iab.omid.library.bytedance2.processor.a aVar, JSONObject jSONObject, boolean z10) {
        com.iab.omid.library.bytedance2.walking.c cVarE;
        if (h.d(view) && (cVarE = this.f33505f.e(view)) != com.iab.omid.library.bytedance2.walking.c.UNDERLYING_VIEW) {
            JSONObject jSONObjectA = aVar.a(view);
            com.iab.omid.library.bytedance2.utils.c.a(jSONObject, jSONObjectA);
            if (!b(view, jSONObjectA)) {
                boolean z11 = z10 || a(view, jSONObjectA);
                if (this.f33502c && cVarE == com.iab.omid.library.bytedance2.walking.c.OBSTRUCTION_VIEW && !z11) {
                    this.f33503d.add(new com.iab.omid.library.bytedance2.weakreference.a(view));
                }
                a(view, aVar, jSONObjectA, cVarE, z11);
            }
            this.f33501b++;
        }
    }

    public void addTimeLogger(TreeWalkerTimeLogger treeWalkerTimeLogger) {
        if (this.f33500a.contains(treeWalkerTimeLogger)) {
            return;
        }
        this.f33500a.add(treeWalkerTimeLogger);
    }

    void f() {
        this.f33505f.e();
        long jB = f.b();
        com.iab.omid.library.bytedance2.processor.a aVarA = this.f33504e.a();
        if (this.f33505f.b().size() > 0) {
            for (String str : this.f33505f.b()) {
                JSONObject jSONObjectA = aVarA.a(null);
                a(str, this.f33505f.a(str), jSONObjectA);
                com.iab.omid.library.bytedance2.utils.c.b(jSONObjectA);
                HashSet<String> hashSet = new HashSet<>();
                hashSet.add(str);
                this.f33506g.a(jSONObjectA, hashSet, jB);
            }
        }
        if (this.f33505f.c().size() > 0) {
            JSONObject jSONObjectA2 = aVarA.a(null);
            a(null, aVarA, jSONObjectA2, com.iab.omid.library.bytedance2.walking.c.PARENT_VIEW, false);
            com.iab.omid.library.bytedance2.utils.c.b(jSONObjectA2);
            this.f33506g.b(jSONObjectA2, this.f33505f.c(), jB);
            if (this.f33502c) {
                Iterator<com.iab.omid.library.bytedance2.adsession.a> it = com.iab.omid.library.bytedance2.internal.c.c().a().iterator();
                while (it.hasNext()) {
                    it.next().a(this.f33503d);
                }
            }
        } else {
            this.f33506g.b();
        }
        this.f33505f.a();
    }

    public void g() {
        k();
    }

    public void h() {
        i();
    }

    public void j() {
        g();
        this.f33500a.clear();
        f33496j.post(new a());
    }

    public void removeTimeLogger(TreeWalkerTimeLogger treeWalkerTimeLogger) {
        if (this.f33500a.contains(treeWalkerTimeLogger)) {
            this.f33500a.remove(treeWalkerTimeLogger);
        }
    }
}
