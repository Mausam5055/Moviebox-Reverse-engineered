package lf;

import com.tencent.tinker.android.dex.j;
import com.tencent.tinker.android.dex.v;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Arrays;
import mf.d;
import mf.e;
import mf.f;
import mf.g;
import mf.h;
import mf.i;
import mf.k;
import mf.l;
import mf.m;
import mf.n;
import mf.o;
import mf.p;
import mf.q;
import mf.r;
import of.c;
import pf.b;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final j f68818a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final j f68819b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final nf.a f68820c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final c f68821d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private mf.j f68822e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private mf.j f68823f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private mf.j f68824g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private mf.j f68825h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private mf.j f68826i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private mf.j f68827j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private mf.j f68828k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private mf.j f68829l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private mf.j f68830m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private mf.j f68831n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private mf.j f68832o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private mf.j f68833p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private mf.j f68834q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private mf.j f68835r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private mf.j f68836s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private mf.j f68837t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private mf.j f68838u;

    public a(j jVar, nf.a aVar) {
        this.f68818a = jVar;
        this.f68820c = aVar;
        this.f68819b = new j(aVar.n());
        this.f68821d = new c();
    }

    public a(InputStream inputStream, InputStream inputStream2) {
        this(new j(inputStream), new nf.a(inputStream2));
    }

    public void a(File file) throws Throwable {
        BufferedOutputStream bufferedOutputStream = null;
        try {
            BufferedOutputStream bufferedOutputStream2 = new BufferedOutputStream(new FileOutputStream(file));
            try {
                b(bufferedOutputStream2);
                b.a(bufferedOutputStream2);
            } catch (Throwable th2) {
                th = th2;
                bufferedOutputStream = bufferedOutputStream2;
                b.a(bufferedOutputStream);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public void b(OutputStream outputStream) throws IOException {
        int i11;
        int iB;
        nf.a aVar = this.f68820c;
        if (aVar == null) {
            throw new IllegalArgumentException("patch file is null.");
        }
        if (aVar.y() > 2 && (i11 = this.f68818a.h().f40675v) != (iB = this.f68820c.b())) {
            throw new IOException("old dex version mismatch! expetced: " + iB + ", actual: " + i11);
        }
        byte[] bArrF = this.f68818a.f(false);
        if (bArrF == null) {
            throw new IOException("failed to compute old dex's signature.");
        }
        byte[] bArrC = this.f68820c.c();
        if (gf.c.d(bArrF, bArrC) != 0) {
            throw new IOException(String.format("old dex signature mismatch! expected: %s, actual: %s", Arrays.toString(bArrF), Arrays.toString(bArrC)));
        }
        v vVarH = this.f68819b.h();
        vVarH.f40675v = this.f68820c.m();
        v.a aVar2 = vVarH.f40654a;
        aVar2.f40683d = 0;
        aVar2.f40682c = 1;
        vVarH.f40663j.f40682c = 1;
        vVarH.f40655b.f40683d = this.f68820c.v();
        vVarH.f40656c.f40683d = this.f68820c.w();
        vVarH.f40664k.f40683d = this.f68820c.x();
        vVarH.f40657d.f40683d = this.f68820c.t();
        vVarH.f40658e.f40683d = this.f68820c.p();
        vVarH.f40659f.f40683d = this.f68820c.s();
        if (this.f68820c.y() > 2) {
            vVarH.f40661h.f40683d = this.f68820c.h();
            vVarH.f40662i.f40683d = this.f68820c.r();
        }
        vVarH.f40660g.f40683d = this.f68820c.j();
        vVarH.f40663j.f40683d = this.f68820c.q();
        vVarH.f40669p.f40683d = this.f68820c.u();
        vVarH.f40671r.f40683d = this.f68820c.d();
        vVarH.f40666m.f40683d = this.f68820c.f();
        vVarH.f40665l.f40683d = this.f68820c.e();
        vVarH.f40673t.f40683d = this.f68820c.g();
        vVarH.f40672s.f40683d = this.f68820c.o();
        vVarH.f40670q.f40683d = this.f68820c.l();
        vVarH.f40668o.f40683d = this.f68820c.k();
        vVarH.f40667n.f40683d = this.f68820c.i();
        vVarH.f40678y = this.f68820c.n();
        Arrays.sort(vVarH.f40674u);
        vVarH.a();
        this.f68822e = new p(this.f68820c, this.f68818a, this.f68819b, this.f68821d);
        this.f68823f = new q(this.f68820c, this.f68818a, this.f68819b, this.f68821d);
        this.f68824g = new n(this.f68820c, this.f68818a, this.f68819b, this.f68821d);
        this.f68825h = new k(this.f68820c, this.f68818a, this.f68819b, this.f68821d);
        this.f68826i = new m(this.f68820c, this.f68818a, this.f68819b, this.f68821d);
        if (this.f68820c.y() > 2) {
            this.f68827j = new e(this.f68820c, this.f68818a, this.f68819b, this.f68821d);
            this.f68828k = new l(this.f68820c, this.f68818a, this.f68819b, this.f68821d);
        }
        this.f68829l = new g(this.f68820c, this.f68818a, this.f68819b, this.f68821d);
        this.f68830m = new r(this.f68820c, this.f68818a, this.f68819b, this.f68821d);
        this.f68831n = new mf.b(this.f68820c, this.f68818a, this.f68819b, this.f68821d);
        this.f68832o = new mf.c(this.f68820c, this.f68818a, this.f68819b, this.f68821d);
        this.f68833p = new f(this.f68820c, this.f68818a, this.f68819b, this.f68821d);
        this.f68834q = new h(this.f68820c, this.f68818a, this.f68819b, this.f68821d);
        this.f68835r = new i(this.f68820c, this.f68818a, this.f68819b, this.f68821d);
        this.f68836s = new mf.a(this.f68820c, this.f68818a, this.f68819b, this.f68821d);
        this.f68837t = new o(this.f68820c, this.f68818a, this.f68819b, this.f68821d);
        this.f68838u = new d(this.f68820c, this.f68818a, this.f68819b, this.f68821d);
        this.f68822e.c();
        this.f68823f.c();
        this.f68830m.c();
        this.f68824g.c();
        this.f68825h.c();
        this.f68826i.c();
        if (this.f68820c.y() > 2) {
            this.f68828k.c();
        }
        this.f68836s.c();
        this.f68832o.c();
        this.f68831n.c();
        this.f68838u.c();
        this.f68835r.c();
        this.f68834q.c();
        this.f68833p.c();
        this.f68837t.c();
        if (this.f68820c.y() > 2) {
            this.f68827j.c();
        }
        this.f68829l.c();
        vVarH.f(this.f68819b.l(vVarH.f40654a.f40683d));
        vVarH.g(this.f68819b.l(vVarH.f40663j.f40683d));
        this.f68819b.n();
        this.f68819b.o(outputStream);
    }
}
