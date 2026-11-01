package androidx.compose.ui.input.pointer;

/* JADX INFO: loaded from: classes.dex */
public class m {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f5015b = androidx.compose.runtime.collection.b.f3680d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final androidx.compose.runtime.collection.b f5016a = new androidx.compose.runtime.collection.b(new l[16], 0);

    public boolean a(androidx.collection.x xVar, androidx.compose.ui.layout.l lVar, g gVar, boolean z10) {
        androidx.compose.runtime.collection.b bVar = this.f5016a;
        int iN = bVar.n();
        if (iN <= 0) {
            return false;
        }
        Object[] objArrM = bVar.m();
        int i11 = 0;
        boolean z11 = false;
        do {
            z11 = ((l) objArrM[i11]).a(xVar, lVar, gVar, z10) || z11;
            i11++;
        } while (i11 < iN);
        return z11;
    }

    public void b(g gVar) {
        int iN = this.f5016a.n();
        while (true) {
            iN--;
            if (-1 >= iN) {
                return;
            }
            if (((l) this.f5016a.m()[iN]).l().g()) {
                this.f5016a.v(iN);
            }
        }
    }

    public final void c() {
        this.f5016a.h();
    }

    public void d() {
        androidx.compose.runtime.collection.b bVar = this.f5016a;
        int iN = bVar.n();
        if (iN > 0) {
            Object[] objArrM = bVar.m();
            int i11 = 0;
            do {
                ((l) objArrM[i11]).d();
                i11++;
            } while (i11 < iN);
        }
    }

    public boolean e(g gVar) {
        androidx.compose.runtime.collection.b bVar = this.f5016a;
        int iN = bVar.n();
        boolean z10 = false;
        if (iN > 0) {
            Object[] objArrM = bVar.m();
            int i11 = 0;
            boolean z11 = false;
            do {
                z11 = ((l) objArrM[i11]).e(gVar) || z11;
                i11++;
            } while (i11 < iN);
            z10 = z11;
        }
        b(gVar);
        return z10;
    }

    public boolean f(androidx.collection.x xVar, androidx.compose.ui.layout.l lVar, g gVar, boolean z10) {
        androidx.compose.runtime.collection.b bVar = this.f5016a;
        int iN = bVar.n();
        if (iN <= 0) {
            return false;
        }
        Object[] objArrM = bVar.m();
        int i11 = 0;
        boolean z11 = false;
        do {
            z11 = ((l) objArrM[i11]).f(xVar, lVar, gVar, z10) || z11;
            i11++;
        } while (i11 < iN);
        return z11;
    }

    public final androidx.compose.runtime.collection.b g() {
        return this.f5016a;
    }

    public final void h() {
        int i11 = 0;
        while (i11 < this.f5016a.n()) {
            l lVar = (l) this.f5016a.m()[i11];
            if (lVar.k().k1()) {
                i11++;
                lVar.h();
            } else {
                lVar.d();
                this.f5016a.v(i11);
            }
        }
    }

    public void i(long j11, androidx.collection.l0 l0Var) {
        androidx.compose.runtime.collection.b bVar = this.f5016a;
        int iN = bVar.n();
        if (iN > 0) {
            Object[] objArrM = bVar.m();
            int i11 = 0;
            do {
                ((l) objArrM[i11]).i(j11, l0Var);
                i11++;
            } while (i11 < iN);
        }
    }
}
