package e9;

import android.util.Base64;
import com.google.android.exoplayer2.k3;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Random;

/* JADX INFO: loaded from: classes4.dex */
public final class r1 implements t1 {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final com.google.common.base.q f61741h = new com.google.common.base.q() { // from class: e9.q1
        @Override // com.google.common.base.q
        public final Object get() {
            return r1.k();
        }
    };

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final Random f61742i = new Random();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final k3.d f61743a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final k3.b f61744b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final HashMap f61745c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.google.common.base.q f61746d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private t1.a f61747e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private k3 f61748f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f61749g;

    private final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f61750a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f61751b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private long f61752c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private com.google.android.exoplayer2.source.o.b f61753d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f61754e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f61755f;

        public a(String str, int i11, com.google.android.exoplayer2.source.o.b bVar) {
            this.f61750a = str;
            this.f61751b = i11;
            this.f61752c = bVar == null ? -1L : bVar.f76117d;
            if (bVar == null || !bVar.b()) {
                return;
            }
            this.f61753d = bVar;
        }

        private int l(k3 k3Var, k3 k3Var2, int i11) {
            if (i11 >= k3Var.t()) {
                if (i11 < k3Var2.t()) {
                    return i11;
                }
                return -1;
            }
            k3Var.r(i11, r1.this.f61743a);
            for (int i12 = r1.this.f61743a.f25183o; i12 <= r1.this.f61743a.f25184p; i12++) {
                int iF = k3Var2.f(k3Var.q(i12));
                if (iF != -1) {
                    return k3Var2.j(iF, r1.this.f61744b).f25156c;
                }
            }
            return -1;
        }

        public boolean i(int i11, com.google.android.exoplayer2.source.o.b bVar) {
            if (bVar == null) {
                return i11 == this.f61751b;
            }
            com.google.android.exoplayer2.source.o.b bVar2 = this.f61753d;
            if (bVar2 == null) {
                return !bVar.b() && bVar.f76117d == this.f61752c;
            }
            return bVar.f76117d == bVar2.f76117d && bVar.f76115b == bVar2.f76115b && bVar.f76116c == bVar2.f76116c;
        }

        public boolean j(c.a aVar) {
            long j11 = this.f61752c;
            if (j11 == -1) {
                return false;
            }
            com.google.android.exoplayer2.source.o.b bVar = aVar.f61618d;
            if (bVar == null) {
                return this.f61751b != aVar.f61617c;
            }
            if (bVar.f76117d > j11) {
                return true;
            }
            if (this.f61753d == null) {
                return false;
            }
            int iF = aVar.f61616b.f(bVar.f76114a);
            int iF2 = aVar.f61616b.f(this.f61753d.f76114a);
            com.google.android.exoplayer2.source.o.b bVar2 = aVar.f61618d;
            if (bVar2.f76117d < this.f61753d.f76117d || iF < iF2) {
                return false;
            }
            if (iF > iF2) {
                return true;
            }
            if (!bVar2.b()) {
                int i11 = aVar.f61618d.f76118e;
                return i11 == -1 || i11 > this.f61753d.f76115b;
            }
            com.google.android.exoplayer2.source.o.b bVar3 = aVar.f61618d;
            int i12 = bVar3.f76115b;
            int i13 = bVar3.f76116c;
            com.google.android.exoplayer2.source.o.b bVar4 = this.f61753d;
            int i14 = bVar4.f76115b;
            return i12 > i14 || (i12 == i14 && i13 > bVar4.f76116c);
        }

        public void k(int i11, com.google.android.exoplayer2.source.o.b bVar) {
            if (this.f61752c == -1 && i11 == this.f61751b && bVar != null) {
                this.f61752c = bVar.f76117d;
            }
        }

        public boolean m(k3 k3Var, k3 k3Var2) {
            int iL = l(k3Var, k3Var2, this.f61751b);
            this.f61751b = iL;
            if (iL == -1) {
                return false;
            }
            com.google.android.exoplayer2.source.o.b bVar = this.f61753d;
            return bVar == null || k3Var2.f(bVar.f76114a) != -1;
        }
    }

    public r1() {
        this(f61741h);
    }

    public r1(com.google.common.base.q qVar) {
        this.f61746d = qVar;
        this.f61743a = new k3.d();
        this.f61744b = new k3.b();
        this.f61745c = new HashMap();
        this.f61748f = k3.f25151a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String k() {
        byte[] bArr = new byte[12];
        f61742i.nextBytes(bArr);
        return Base64.encodeToString(bArr, 10);
    }

    private a l(int i11, com.google.android.exoplayer2.source.o.b bVar) {
        a aVar = null;
        long j11 = Long.MAX_VALUE;
        for (a aVar2 : this.f61745c.values()) {
            aVar2.k(i11, bVar);
            if (aVar2.i(i11, bVar)) {
                long j12 = aVar2.f61752c;
                if (j12 == -1 || j12 < j11) {
                    aVar = aVar2;
                    j11 = j12;
                } else if (j12 == j11 && ((a) com.google.android.exoplayer2.util.p0.j(aVar)).f61753d != null && aVar2.f61753d != null) {
                    aVar = aVar2;
                }
            }
        }
        if (aVar != null) {
            return aVar;
        }
        String str = (String) this.f61746d.get();
        a aVar3 = new a(str, i11, bVar);
        this.f61745c.put(str, aVar3);
        return aVar3;
    }

    private void m(c.a aVar) {
        if (aVar.f61616b.u()) {
            this.f61749g = null;
            return;
        }
        a aVar2 = (a) this.f61745c.get(this.f61749g);
        a aVarL = l(aVar.f61617c, aVar.f61618d);
        this.f61749g = aVarL.f61750a;
        b(aVar);
        com.google.android.exoplayer2.source.o.b bVar = aVar.f61618d;
        if (bVar == null || !bVar.b()) {
            return;
        }
        if (aVar2 != null && aVar2.f61752c == aVar.f61618d.f76117d && aVar2.f61753d != null && aVar2.f61753d.f76115b == aVar.f61618d.f76115b && aVar2.f61753d.f76116c == aVar.f61618d.f76116c) {
            return;
        }
        com.google.android.exoplayer2.source.o.b bVar2 = aVar.f61618d;
        this.f61747e.q(aVar, l(aVar.f61617c, new com.google.android.exoplayer2.source.o.b(bVar2.f76114a, bVar2.f76117d)).f61750a, aVarL.f61750a);
    }

    @Override // e9.t1
    public synchronized String a() {
        return this.f61749g;
    }

    /* JADX WARN: Code duplicated, block: B:33:0x00d7  */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0044, code lost:
    
        if (r25.f61618d.f76117d < r2.f61752c) goto L21;
     */
    @Override // e9.t1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public synchronized void b(c.a aVar) {
        c.a aVar2;
        a aVar3;
        try {
            com.google.android.exoplayer2.util.a.e(this.f61747e);
            if (aVar.f61616b.u()) {
                return;
            }
            a aVar4 = (a) this.f61745c.get(this.f61749g);
            if (aVar.f61618d != null && aVar4 != null) {
                if (aVar4.f61752c == -1) {
                    if (aVar4.f61751b != aVar.f61617c) {
                        return;
                    }
                }
            }
            a aVarL = l(aVar.f61617c, aVar.f61618d);
            if (this.f61749g == null) {
                this.f61749g = aVarL.f61750a;
            }
            com.google.android.exoplayer2.source.o.b bVar = aVar.f61618d;
            if (bVar != null && bVar.b()) {
                com.google.android.exoplayer2.source.o.b bVar2 = aVar.f61618d;
                com.google.android.exoplayer2.source.o.b bVar3 = new com.google.android.exoplayer2.source.o.b(bVar2.f76114a, bVar2.f76117d, bVar2.f76115b);
                a aVarL2 = l(aVar.f61617c, bVar3);
                if (!aVarL2.f61754e) {
                    aVarL2.f61754e = true;
                    aVar.f61616b.l(aVar.f61618d.f76114a, this.f61744b);
                    this.f61747e.x(new c.a(aVar.f61615a, aVar.f61616b, aVar.f61617c, bVar3, Math.max(0L, com.google.android.exoplayer2.util.p0.e1(this.f61744b.i(aVar.f61618d.f76115b)) + this.f61744b.p()), aVar.f61620f, aVar.f61621g, aVar.f61622h, aVar.f61623i, aVar.f61624j), aVarL2.f61750a);
                }
            }
            if (aVarL.f61754e) {
                aVar2 = aVar;
                aVar3 = aVarL;
            } else {
                aVar3 = aVarL;
                aVar3.f61754e = true;
                aVar2 = aVar;
                this.f61747e.x(aVar2, aVar3.f61750a);
            }
            if (aVar3.f61750a.equals(this.f61749g) && !aVar3.f61755f) {
                aVar3.f61755f = true;
                this.f61747e.S(aVar2, aVar3.f61750a);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // e9.t1
    public synchronized void c(c.a aVar, int i11) {
        try {
            com.google.android.exoplayer2.util.a.e(this.f61747e);
            boolean z10 = i11 == 0;
            Iterator it = this.f61745c.values().iterator();
            while (it.hasNext()) {
                a aVar2 = (a) it.next();
                if (aVar2.j(aVar)) {
                    it.remove();
                    if (aVar2.f61754e) {
                        boolean zEquals = aVar2.f61750a.equals(this.f61749g);
                        boolean z11 = z10 && zEquals && aVar2.f61755f;
                        if (zEquals) {
                            this.f61749g = null;
                        }
                        this.f61747e.Q(aVar, aVar2.f61750a, z11);
                    }
                }
            }
            m(aVar);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // e9.t1
    public synchronized void d(c.a aVar) {
        try {
            com.google.android.exoplayer2.util.a.e(this.f61747e);
            k3 k3Var = this.f61748f;
            this.f61748f = aVar.f61616b;
            Iterator it = this.f61745c.values().iterator();
            while (it.hasNext()) {
                a aVar2 = (a) it.next();
                if (!aVar2.m(k3Var, this.f61748f) || aVar2.j(aVar)) {
                    it.remove();
                    if (aVar2.f61754e) {
                        if (aVar2.f61750a.equals(this.f61749g)) {
                            this.f61749g = null;
                        }
                        this.f61747e.Q(aVar, aVar2.f61750a, false);
                    }
                }
            }
            m(aVar);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // e9.t1
    public synchronized void e(c.a aVar) {
        t1.a aVar2;
        this.f61749g = null;
        Iterator it = this.f61745c.values().iterator();
        while (it.hasNext()) {
            a aVar3 = (a) it.next();
            it.remove();
            if (aVar3.f61754e && (aVar2 = this.f61747e) != null) {
                aVar2.Q(aVar, aVar3.f61750a, false);
            }
        }
    }

    @Override // e9.t1
    public synchronized String f(k3 k3Var, com.google.android.exoplayer2.source.o.b bVar) {
        return l(k3Var.l(bVar.f76114a, this.f61744b).f25156c, bVar).f61750a;
    }

    @Override // e9.t1
    public void g(t1.a aVar) {
        this.f61747e = aVar;
    }
}
