package h10;

/* JADX INFO: loaded from: classes7.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f64062a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private byte[] f64063b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    c f64064c;

    static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f64065a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private c[] f64066b = new c[6];

        a() {
        }

        private void a(c cVar) {
            int i11 = this.f64065a;
            c[] cVarArr = this.f64066b;
            if (i11 >= cVarArr.length) {
                c[] cVarArr2 = new c[cVarArr.length + 6];
                System.arraycopy(cVarArr, 0, cVarArr2, 0, i11);
                this.f64066b = cVarArr2;
            }
            c[] cVarArr3 = this.f64066b;
            int i12 = this.f64065a;
            this.f64065a = i12 + 1;
            cVarArr3[i12] = cVar;
        }

        private boolean c(c cVar) {
            for (int i11 = 0; i11 < this.f64065a; i11++) {
                if (this.f64066b[i11].f64062a.equals(cVar.f64062a)) {
                    return true;
                }
            }
            return false;
        }

        void b(c cVar) {
            while (cVar != null) {
                if (!c(cVar)) {
                    a(cVar);
                }
                cVar = cVar.f64064c;
            }
        }

        c[] d() {
            int i11 = this.f64065a;
            c[] cVarArr = new c[i11];
            System.arraycopy(this.f64066b, 0, cVarArr, 0, i11);
            return cVarArr;
        }
    }

    protected c(String str) {
        this.f64062a = str;
    }

    final int a(x xVar) {
        return b(xVar, null, 0, -1, -1);
    }

    final int b(x xVar, byte[] bArr, int i11, int i12, int i13) {
        g gVar = xVar.f64237a;
        int i14 = 0;
        for (c cVar = this; cVar != null; cVar = cVar.f64064c) {
            xVar.D(cVar.f64062a);
            i14 += cVar.h(gVar, bArr, i11, i12, i13).f64068b + 6;
        }
        return i14;
    }

    final int c() {
        int i11 = 0;
        for (c cVar = this; cVar != null; cVar = cVar.f64064c) {
            i11++;
        }
        return i11;
    }

    public boolean d() {
        return false;
    }

    final void e(x xVar, d dVar) {
        f(xVar, null, 0, -1, -1, dVar);
    }

    final void f(x xVar, byte[] bArr, int i11, int i12, int i13, d dVar) {
        g gVar = xVar.f64237a;
        for (c cVar = this; cVar != null; cVar = cVar.f64064c) {
            d dVarH = cVar.h(gVar, bArr, i11, i12, i13);
            dVar.k(xVar.D(cVar.f64062a)).i(dVarH.f64068b);
            dVar.h(dVarH.f64067a, 0, dVarH.f64068b);
        }
    }

    protected c g(e eVar, int i11, int i12, char[] cArr, int i13, q[] qVarArr) {
        c cVar = new c(this.f64062a);
        byte[] bArr = new byte[i12];
        cVar.f64063b = bArr;
        System.arraycopy(eVar.f64069a, i11, bArr, 0, i12);
        return cVar;
    }

    protected d h(g gVar, byte[] bArr, int i11, int i12, int i13) {
        return new d(this.f64063b);
    }
}
