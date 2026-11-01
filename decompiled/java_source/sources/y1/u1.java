package y1;

import android.util.Base64;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Random;

/* JADX INFO: loaded from: classes2.dex */
public final class u1 implements c4 {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final com.google.common.base.q f78761i = new com.google.common.base.q() { // from class: y1.t1
        @Override // com.google.common.base.q
        public final Object get() {
            return u1.m();
        }
    };

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final Random f78762j = new Random();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final androidx.media3.common.e0.c f78763a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.media3.common.e0.b f78764b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final HashMap f78765c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.google.common.base.q f78766d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private c4.a f78767e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private androidx.media3.common.e0 f78768f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f78769g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f78770h;

    private final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f78771a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f78772b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private long f78773c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private androidx.media3.exoplayer.source.r.b f78774d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f78775e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f78776f;

        public a(String str, int i11, androidx.media3.exoplayer.source.r.b bVar) {
            this.f78771a = str;
            this.f78772b = i11;
            this.f78773c = bVar == null ? -1L : bVar.f12886d;
            if (bVar == null || !bVar.b()) {
                return;
            }
            this.f78774d = bVar;
        }

        private int l(androidx.media3.common.e0 e0Var, androidx.media3.common.e0 e0Var2, int i11) {
            if (i11 >= e0Var.p()) {
                if (i11 < e0Var2.p()) {
                    return i11;
                }
                return -1;
            }
            e0Var.n(i11, u1.this.f78763a);
            for (int i12 = u1.this.f78763a.f9964n; i12 <= u1.this.f78763a.f9965o; i12++) {
                int iB = e0Var2.b(e0Var.m(i12));
                if (iB != -1) {
                    return e0Var2.f(iB, u1.this.f78764b).f9936c;
                }
            }
            return -1;
        }

        public boolean i(int i11, androidx.media3.exoplayer.source.r.b bVar) {
            if (bVar == null) {
                return i11 == this.f78772b;
            }
            androidx.media3.exoplayer.source.r.b bVar2 = this.f78774d;
            if (bVar2 == null) {
                return !bVar.b() && bVar.f12886d == this.f78773c;
            }
            return bVar.f12886d == bVar2.f12886d && bVar.f12884b == bVar2.f12884b && bVar.f12885c == bVar2.f12885c;
        }

        public boolean j(c.a aVar) {
            androidx.media3.exoplayer.source.r.b bVar = aVar.f78613d;
            if (bVar == null) {
                return this.f78772b != aVar.f78612c;
            }
            long j11 = this.f78773c;
            if (j11 == -1) {
                return false;
            }
            if (bVar.f12886d > j11) {
                return true;
            }
            if (this.f78774d == null) {
                return false;
            }
            int iB = aVar.f78611b.b(bVar.f12883a);
            int iB2 = aVar.f78611b.b(this.f78774d.f12883a);
            androidx.media3.exoplayer.source.r.b bVar2 = aVar.f78613d;
            if (bVar2.f12886d < this.f78774d.f12886d || iB < iB2) {
                return false;
            }
            if (iB > iB2) {
                return true;
            }
            if (!bVar2.b()) {
                int i11 = aVar.f78613d.f12887e;
                return i11 == -1 || i11 > this.f78774d.f12884b;
            }
            androidx.media3.exoplayer.source.r.b bVar3 = aVar.f78613d;
            int i12 = bVar3.f12884b;
            int i13 = bVar3.f12885c;
            androidx.media3.exoplayer.source.r.b bVar4 = this.f78774d;
            int i14 = bVar4.f12884b;
            if (i12 <= i14) {
                return i12 == i14 && i13 > bVar4.f12885c;
            }
            return true;
        }

        public void k(int i11, androidx.media3.exoplayer.source.r.b bVar) {
            if (this.f78773c != -1 || i11 != this.f78772b || bVar == null || bVar.f12886d < u1.this.n()) {
                return;
            }
            this.f78773c = bVar.f12886d;
        }

        public boolean m(androidx.media3.common.e0 e0Var, androidx.media3.common.e0 e0Var2) {
            int iL = l(e0Var, e0Var2, this.f78772b);
            this.f78772b = iL;
            if (iL == -1) {
                return false;
            }
            androidx.media3.exoplayer.source.r.b bVar = this.f78774d;
            return bVar == null || e0Var2.b(bVar.f12883a) != -1;
        }
    }

    public u1() {
        this(f78761i);
    }

    public u1(com.google.common.base.q qVar) {
        this.f78766d = qVar;
        this.f78763a = new androidx.media3.common.e0.c();
        this.f78764b = new androidx.media3.common.e0.b();
        this.f78765c = new HashMap();
        this.f78768f = androidx.media3.common.e0.f9925a;
        this.f78770h = -1L;
    }

    private void l(a aVar) {
        if (aVar.f78773c != -1) {
            this.f78770h = aVar.f78773c;
        }
        this.f78769g = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String m() {
        byte[] bArr = new byte[12];
        f78762j.nextBytes(bArr);
        return Base64.encodeToString(bArr, 10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long n() {
        a aVar = (a) this.f78765c.get(this.f78769g);
        return (aVar == null || aVar.f78773c == -1) ? this.f78770h + 1 : aVar.f78773c;
    }

    private a o(int i11, androidx.media3.exoplayer.source.r.b bVar) {
        a aVar = null;
        long j11 = Long.MAX_VALUE;
        for (a aVar2 : this.f78765c.values()) {
            aVar2.k(i11, bVar);
            if (aVar2.i(i11, bVar)) {
                long j12 = aVar2.f78773c;
                if (j12 == -1 || j12 < j11) {
                    aVar = aVar2;
                    j11 = j12;
                } else if (j12 == j11 && ((a) androidx.media3.common.util.a1.i(aVar)).f78774d != null && aVar2.f78774d != null) {
                    aVar = aVar2;
                }
            }
        }
        if (aVar != null) {
            return aVar;
        }
        String str = (String) this.f78766d.get();
        a aVar3 = new a(str, i11, bVar);
        this.f78765c.put(str, aVar3);
        return aVar3;
    }

    private void p(c.a aVar) {
        if (aVar.f78611b.q()) {
            String str = this.f78769g;
            if (str != null) {
                l((a) androidx.media3.common.util.a.e((a) this.f78765c.get(str)));
                return;
            }
            return;
        }
        a aVar2 = (a) this.f78765c.get(this.f78769g);
        a aVarO = o(aVar.f78612c, aVar.f78613d);
        this.f78769g = aVarO.f78771a;
        c(aVar);
        androidx.media3.exoplayer.source.r.b bVar = aVar.f78613d;
        if (bVar == null || !bVar.b()) {
            return;
        }
        if (aVar2 != null && aVar2.f78773c == aVar.f78613d.f12886d && aVar2.f78774d != null && aVar2.f78774d.f12884b == aVar.f78613d.f12884b && aVar2.f78774d.f12885c == aVar.f78613d.f12885c) {
            return;
        }
        androidx.media3.exoplayer.source.r.b bVar2 = aVar.f78613d;
        this.f78767e.H(aVar, o(aVar.f78612c, new androidx.media3.exoplayer.source.r.b(bVar2.f12883a, bVar2.f12886d)).f78771a, aVarO.f78771a);
    }

    @Override // y1.c4
    public synchronized String a() {
        return this.f78769g;
    }

    @Override // y1.c4
    public synchronized String b(androidx.media3.common.e0 e0Var, androidx.media3.exoplayer.source.r.b bVar) {
        return o(e0Var.h(bVar.f12883a, this.f78764b).f9936c, bVar).f78771a;
    }

    /* JADX WARN: Code duplicated, block: B:35:0x00d6  */
    @Override // y1.c4
    public synchronized void c(c.a aVar) {
        c.a aVar2;
        a aVar3;
        androidx.media3.common.util.a.e(this.f78767e);
        if (aVar.f78611b.q()) {
            return;
        }
        androidx.media3.exoplayer.source.r.b bVar = aVar.f78613d;
        if (bVar != null) {
            if (bVar.f12886d < n()) {
                return;
            }
            a aVar4 = (a) this.f78765c.get(this.f78769g);
            if (aVar4 != null && aVar4.f78773c == -1 && aVar4.f78772b != aVar.f78612c) {
                return;
            }
        }
        a aVarO = o(aVar.f78612c, aVar.f78613d);
        if (this.f78769g == null) {
            this.f78769g = aVarO.f78771a;
        }
        androidx.media3.exoplayer.source.r.b bVar2 = aVar.f78613d;
        if (bVar2 != null && bVar2.b()) {
            androidx.media3.exoplayer.source.r.b bVar3 = aVar.f78613d;
            androidx.media3.exoplayer.source.r.b bVar4 = new androidx.media3.exoplayer.source.r.b(bVar3.f12883a, bVar3.f12886d, bVar3.f12884b);
            a aVarO2 = o(aVar.f78612c, bVar4);
            if (!aVarO2.f78775e) {
                aVarO2.f78775e = true;
                aVar.f78611b.h(aVar.f78613d.f12883a, this.f78764b);
                this.f78767e.C(new c.a(aVar.f78610a, aVar.f78611b, aVar.f78612c, bVar4, Math.max(0L, androidx.media3.common.util.a1.y1(this.f78764b.f(aVar.f78613d.f12884b)) + this.f78764b.n()), aVar.f78615f, aVar.f78616g, aVar.f78617h, aVar.f78618i, aVar.f78619j), aVarO2.f78771a);
            }
        }
        if (aVarO.f78775e) {
            aVar2 = aVar;
            aVar3 = aVarO;
        } else {
            aVar3 = aVarO;
            aVar3.f78775e = true;
            aVar2 = aVar;
            this.f78767e.C(aVar2, aVar3.f78771a);
        }
        if (aVar3.f78771a.equals(this.f78769g) && !aVar3.f78776f) {
            aVar3.f78776f = true;
            this.f78767e.e(aVar2, aVar3.f78771a);
        }
    }

    @Override // y1.c4
    public synchronized void d(c.a aVar, int i11) {
        try {
            androidx.media3.common.util.a.e(this.f78767e);
            boolean z10 = i11 == 0;
            Iterator it = this.f78765c.values().iterator();
            while (it.hasNext()) {
                a aVar2 = (a) it.next();
                if (aVar2.j(aVar)) {
                    it.remove();
                    if (aVar2.f78775e) {
                        boolean zEquals = aVar2.f78771a.equals(this.f78769g);
                        boolean z11 = z10 && zEquals && aVar2.f78776f;
                        if (zEquals) {
                            l(aVar2);
                        }
                        this.f78767e.l(aVar, aVar2.f78771a, z11);
                    }
                }
            }
            p(aVar);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // y1.c4
    public synchronized void e(c.a aVar) {
        c4.a aVar2;
        try {
            String str = this.f78769g;
            if (str != null) {
                l((a) androidx.media3.common.util.a.e((a) this.f78765c.get(str)));
            }
            Iterator it = this.f78765c.values().iterator();
            while (it.hasNext()) {
                a aVar3 = (a) it.next();
                it.remove();
                if (aVar3.f78775e && (aVar2 = this.f78767e) != null) {
                    aVar2.l(aVar, aVar3.f78771a, false);
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // y1.c4
    public synchronized void f(c.a aVar) {
        try {
            androidx.media3.common.util.a.e(this.f78767e);
            androidx.media3.common.e0 e0Var = this.f78768f;
            this.f78768f = aVar.f78611b;
            Iterator it = this.f78765c.values().iterator();
            while (it.hasNext()) {
                a aVar2 = (a) it.next();
                if (!aVar2.m(e0Var, this.f78768f) || aVar2.j(aVar)) {
                    it.remove();
                    if (aVar2.f78775e) {
                        if (aVar2.f78771a.equals(this.f78769g)) {
                            l(aVar2);
                        }
                        this.f78767e.l(aVar, aVar2.f78771a, false);
                    }
                }
            }
            p(aVar);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // y1.c4
    public void g(c4.a aVar) {
        this.f78767e = aVar;
    }
}
