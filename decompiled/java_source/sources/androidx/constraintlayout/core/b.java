package androidx.constraintlayout.core;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class b implements d.a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public a f6640e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    SolverVariable f6636a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    float f6637b = 0.0f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    boolean f6638c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    ArrayList f6639d = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    boolean f6641f = false;

    public interface a {
        boolean a(SolverVariable solverVariable);

        SolverVariable b(int i11);

        void c(SolverVariable solverVariable, float f11, boolean z10);

        void clear();

        void d();

        float e(SolverVariable solverVariable, boolean z10);

        float f(b bVar, boolean z10);

        void g(SolverVariable solverVariable, float f11);

        int getCurrentSize();

        float h(int i11);

        float i(SolverVariable solverVariable);

        void j(float f11);
    }

    public b() {
    }

    public b(c cVar) {
        this.f6640e = new androidx.constraintlayout.core.a(this, cVar);
    }

    private boolean u(SolverVariable solverVariable, d dVar) {
        return solverVariable.f6619m <= 1;
    }

    private SolverVariable w(boolean[] zArr, SolverVariable solverVariable) {
        SolverVariable.Type type;
        int currentSize = this.f6640e.getCurrentSize();
        SolverVariable solverVariable2 = null;
        float f11 = 0.0f;
        for (int i11 = 0; i11 < currentSize; i11++) {
            float fH = this.f6640e.h(i11);
            if (fH < 0.0f) {
                SolverVariable solverVariableB = this.f6640e.b(i11);
                if ((zArr == null || !zArr[solverVariableB.f6609c]) && solverVariableB != solverVariable && (((type = solverVariableB.f6616j) == SolverVariable.Type.SLACK || type == SolverVariable.Type.ERROR) && fH < f11)) {
                    f11 = fH;
                    solverVariable2 = solverVariableB;
                }
            }
        }
        return solverVariable2;
    }

    public void A(d dVar, SolverVariable solverVariable, boolean z10) {
        if (solverVariable == null || !solverVariable.f6613g) {
            return;
        }
        this.f6637b += solverVariable.f6612f * this.f6640e.i(solverVariable);
        this.f6640e.e(solverVariable, z10);
        if (z10) {
            solverVariable.e(this);
        }
        if (d.f6648t && this.f6640e.getCurrentSize() == 0) {
            this.f6641f = true;
            dVar.f6655a = true;
        }
    }

    public void B(d dVar, b bVar, boolean z10) {
        this.f6637b += bVar.f6637b * this.f6640e.f(bVar, z10);
        if (z10) {
            bVar.f6636a.e(this);
        }
        if (d.f6648t && this.f6636a != null && this.f6640e.getCurrentSize() == 0) {
            this.f6641f = true;
            dVar.f6655a = true;
        }
    }

    public void C(d dVar, SolverVariable solverVariable, boolean z10) {
        if (solverVariable == null || !solverVariable.f6620n) {
            return;
        }
        float fI = this.f6640e.i(solverVariable);
        this.f6637b += solverVariable.f6622p * fI;
        this.f6640e.e(solverVariable, z10);
        if (z10) {
            solverVariable.e(this);
        }
        this.f6640e.c(dVar.f6668n.f6645d[solverVariable.f6621o], fI, z10);
        if (d.f6648t && this.f6640e.getCurrentSize() == 0) {
            this.f6641f = true;
            dVar.f6655a = true;
        }
    }

    public void D(d dVar) {
        if (dVar.f6661g.length == 0) {
            return;
        }
        boolean z10 = false;
        while (!z10) {
            int currentSize = this.f6640e.getCurrentSize();
            for (int i11 = 0; i11 < currentSize; i11++) {
                SolverVariable solverVariableB = this.f6640e.b(i11);
                if (solverVariableB.f6610d != -1 || solverVariableB.f6613g || solverVariableB.f6620n) {
                    this.f6639d.add(solverVariableB);
                }
            }
            int size = this.f6639d.size();
            if (size > 0) {
                for (int i12 = 0; i12 < size; i12++) {
                    SolverVariable solverVariable = (SolverVariable) this.f6639d.get(i12);
                    if (solverVariable.f6613g) {
                        A(dVar, solverVariable, true);
                    } else if (solverVariable.f6620n) {
                        C(dVar, solverVariable, true);
                    } else {
                        B(dVar, dVar.f6661g[solverVariable.f6610d], true);
                    }
                }
                this.f6639d.clear();
            } else {
                z10 = true;
            }
        }
        if (d.f6648t && this.f6636a != null && this.f6640e.getCurrentSize() == 0) {
            this.f6641f = true;
            dVar.f6655a = true;
        }
    }

    @Override // androidx.constraintlayout.core.d.a
    public void a(d.a aVar) {
        if (aVar instanceof b) {
            b bVar = (b) aVar;
            this.f6636a = null;
            this.f6640e.clear();
            for (int i11 = 0; i11 < bVar.f6640e.getCurrentSize(); i11++) {
                this.f6640e.c(bVar.f6640e.b(i11), bVar.f6640e.h(i11), true);
            }
        }
    }

    @Override // androidx.constraintlayout.core.d.a
    public SolverVariable b(d dVar, boolean[] zArr) {
        return w(zArr, null);
    }

    @Override // androidx.constraintlayout.core.d.a
    public void c(SolverVariable solverVariable) {
        int i11 = solverVariable.f6611e;
        float f11 = 1.0f;
        if (i11 != 1) {
            if (i11 == 2) {
                f11 = 1000.0f;
            } else if (i11 == 3) {
                f11 = 1000000.0f;
            } else if (i11 == 4) {
                f11 = 1.0E9f;
            } else if (i11 == 5) {
                f11 = 1.0E12f;
            }
        }
        this.f6640e.g(solverVariable, f11);
    }

    @Override // androidx.constraintlayout.core.d.a
    public void clear() {
        this.f6640e.clear();
        this.f6636a = null;
        this.f6637b = 0.0f;
    }

    public b d(d dVar, int i11) {
        this.f6640e.g(dVar.o(i11, "ep"), 1.0f);
        this.f6640e.g(dVar.o(i11, "em"), -1.0f);
        return this;
    }

    b e(SolverVariable solverVariable, int i11) {
        this.f6640e.g(solverVariable, i11);
        return this;
    }

    boolean f(d dVar) {
        boolean z10;
        SolverVariable solverVariableG = g(dVar);
        if (solverVariableG == null) {
            z10 = true;
        } else {
            x(solverVariableG);
            z10 = false;
        }
        if (this.f6640e.getCurrentSize() == 0) {
            this.f6641f = true;
        }
        return z10;
    }

    SolverVariable g(d dVar) {
        int currentSize = this.f6640e.getCurrentSize();
        SolverVariable solverVariable = null;
        float f11 = 0.0f;
        float f12 = 0.0f;
        boolean z10 = false;
        boolean z11 = false;
        SolverVariable solverVariable2 = null;
        for (int i11 = 0; i11 < currentSize; i11++) {
            float fH = this.f6640e.h(i11);
            SolverVariable solverVariableB = this.f6640e.b(i11);
            if (solverVariableB.f6616j == SolverVariable.Type.UNRESTRICTED) {
                if (solverVariable == null || f11 > fH) {
                    boolean zU = u(solverVariableB, dVar);
                    z10 = zU;
                    f11 = fH;
                    solverVariable = solverVariableB;
                } else if (!z10 && u(solverVariableB, dVar)) {
                    f11 = fH;
                    solverVariable = solverVariableB;
                    z10 = true;
                }
            } else if (solverVariable == null && fH < 0.0f) {
                if (solverVariable2 == null || f12 > fH) {
                    boolean zU2 = u(solverVariableB, dVar);
                    z11 = zU2;
                    f12 = fH;
                    solverVariable2 = solverVariableB;
                } else if (!z11 && u(solverVariableB, dVar)) {
                    f12 = fH;
                    solverVariable2 = solverVariableB;
                    z11 = true;
                }
            }
        }
        return solverVariable != null ? solverVariable : solverVariable2;
    }

    @Override // androidx.constraintlayout.core.d.a
    public SolverVariable getKey() {
        return this.f6636a;
    }

    b h(SolverVariable solverVariable, SolverVariable solverVariable2, int i11, float f11, SolverVariable solverVariable3, SolverVariable solverVariable4, int i12) {
        if (solverVariable2 == solverVariable3) {
            this.f6640e.g(solverVariable, 1.0f);
            this.f6640e.g(solverVariable4, 1.0f);
            this.f6640e.g(solverVariable2, -2.0f);
            return this;
        }
        if (f11 == 0.5f) {
            this.f6640e.g(solverVariable, 1.0f);
            this.f6640e.g(solverVariable2, -1.0f);
            this.f6640e.g(solverVariable3, -1.0f);
            this.f6640e.g(solverVariable4, 1.0f);
            if (i11 > 0 || i12 > 0) {
                this.f6637b = (-i11) + i12;
            }
        } else if (f11 <= 0.0f) {
            this.f6640e.g(solverVariable, -1.0f);
            this.f6640e.g(solverVariable2, 1.0f);
            this.f6637b = i11;
        } else if (f11 >= 1.0f) {
            this.f6640e.g(solverVariable4, -1.0f);
            this.f6640e.g(solverVariable3, 1.0f);
            this.f6637b = -i12;
        } else {
            float f12 = 1.0f - f11;
            this.f6640e.g(solverVariable, f12 * 1.0f);
            this.f6640e.g(solverVariable2, f12 * (-1.0f));
            this.f6640e.g(solverVariable3, (-1.0f) * f11);
            this.f6640e.g(solverVariable4, 1.0f * f11);
            if (i11 > 0 || i12 > 0) {
                this.f6637b = ((-i11) * f12) + (i12 * f11);
            }
        }
        return this;
    }

    b i(SolverVariable solverVariable, int i11) {
        this.f6636a = solverVariable;
        float f11 = i11;
        solverVariable.f6612f = f11;
        this.f6637b = f11;
        this.f6641f = true;
        return this;
    }

    @Override // androidx.constraintlayout.core.d.a
    public boolean isEmpty() {
        return this.f6636a == null && this.f6637b == 0.0f && this.f6640e.getCurrentSize() == 0;
    }

    b j(SolverVariable solverVariable, SolverVariable solverVariable2, float f11) {
        this.f6640e.g(solverVariable, -1.0f);
        this.f6640e.g(solverVariable2, f11);
        return this;
    }

    public b k(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, SolverVariable solverVariable4, float f11) {
        this.f6640e.g(solverVariable, -1.0f);
        this.f6640e.g(solverVariable2, 1.0f);
        this.f6640e.g(solverVariable3, f11);
        this.f6640e.g(solverVariable4, -f11);
        return this;
    }

    public b l(float f11, float f12, float f13, SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, SolverVariable solverVariable4) {
        this.f6637b = 0.0f;
        if (f12 == 0.0f || f11 == f13) {
            this.f6640e.g(solverVariable, 1.0f);
            this.f6640e.g(solverVariable2, -1.0f);
            this.f6640e.g(solverVariable4, 1.0f);
            this.f6640e.g(solverVariable3, -1.0f);
        } else if (f11 == 0.0f) {
            this.f6640e.g(solverVariable, 1.0f);
            this.f6640e.g(solverVariable2, -1.0f);
        } else if (f13 == 0.0f) {
            this.f6640e.g(solverVariable3, 1.0f);
            this.f6640e.g(solverVariable4, -1.0f);
        } else {
            float f14 = (f11 / f12) / (f13 / f12);
            this.f6640e.g(solverVariable, 1.0f);
            this.f6640e.g(solverVariable2, -1.0f);
            this.f6640e.g(solverVariable4, f14);
            this.f6640e.g(solverVariable3, -f14);
        }
        return this;
    }

    public b m(SolverVariable solverVariable, int i11) {
        if (i11 < 0) {
            this.f6637b = i11 * (-1);
            this.f6640e.g(solverVariable, 1.0f);
        } else {
            this.f6637b = i11;
            this.f6640e.g(solverVariable, -1.0f);
        }
        return this;
    }

    public b n(SolverVariable solverVariable, SolverVariable solverVariable2, int i11) {
        boolean z10 = false;
        if (i11 != 0) {
            if (i11 < 0) {
                i11 *= -1;
                z10 = true;
            }
            this.f6637b = i11;
        }
        if (z10) {
            this.f6640e.g(solverVariable, 1.0f);
            this.f6640e.g(solverVariable2, -1.0f);
        } else {
            this.f6640e.g(solverVariable, -1.0f);
            this.f6640e.g(solverVariable2, 1.0f);
        }
        return this;
    }

    public b o(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, int i11) {
        boolean z10 = false;
        if (i11 != 0) {
            if (i11 < 0) {
                i11 *= -1;
                z10 = true;
            }
            this.f6637b = i11;
        }
        if (z10) {
            this.f6640e.g(solverVariable, 1.0f);
            this.f6640e.g(solverVariable2, -1.0f);
            this.f6640e.g(solverVariable3, -1.0f);
        } else {
            this.f6640e.g(solverVariable, -1.0f);
            this.f6640e.g(solverVariable2, 1.0f);
            this.f6640e.g(solverVariable3, 1.0f);
        }
        return this;
    }

    public b p(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, int i11) {
        boolean z10 = false;
        if (i11 != 0) {
            if (i11 < 0) {
                i11 *= -1;
                z10 = true;
            }
            this.f6637b = i11;
        }
        if (z10) {
            this.f6640e.g(solverVariable, 1.0f);
            this.f6640e.g(solverVariable2, -1.0f);
            this.f6640e.g(solverVariable3, 1.0f);
        } else {
            this.f6640e.g(solverVariable, -1.0f);
            this.f6640e.g(solverVariable2, 1.0f);
            this.f6640e.g(solverVariable3, -1.0f);
        }
        return this;
    }

    public b q(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, SolverVariable solverVariable4, float f11) {
        this.f6640e.g(solverVariable3, 0.5f);
        this.f6640e.g(solverVariable4, 0.5f);
        this.f6640e.g(solverVariable, -0.5f);
        this.f6640e.g(solverVariable2, -0.5f);
        this.f6637b = -f11;
        return this;
    }

    void r() {
        float f11 = this.f6637b;
        if (f11 < 0.0f) {
            this.f6637b = f11 * (-1.0f);
            this.f6640e.d();
        }
    }

    boolean s() {
        SolverVariable solverVariable = this.f6636a;
        return solverVariable != null && (solverVariable.f6616j == SolverVariable.Type.UNRESTRICTED || this.f6637b >= 0.0f);
    }

    boolean t(SolverVariable solverVariable) {
        return this.f6640e.a(solverVariable);
    }

    public String toString() {
        return z();
    }

    public SolverVariable v(SolverVariable solverVariable) {
        return w(null, solverVariable);
    }

    void x(SolverVariable solverVariable) {
        SolverVariable solverVariable2 = this.f6636a;
        if (solverVariable2 != null) {
            this.f6640e.g(solverVariable2, -1.0f);
            this.f6636a.f6610d = -1;
            this.f6636a = null;
        }
        float fE = this.f6640e.e(solverVariable, true) * (-1.0f);
        this.f6636a = solverVariable;
        if (fE == 1.0f) {
            return;
        }
        this.f6637b /= fE;
        this.f6640e.j(fE);
    }

    public void y() {
        this.f6636a = null;
        this.f6640e.clear();
        this.f6637b = 0.0f;
        this.f6641f = false;
    }

    String z() {
        boolean z10;
        String str = (this.f6636a == null ? "0" : "" + this.f6636a) + " = ";
        if (this.f6637b != 0.0f) {
            str = str + this.f6637b;
            z10 = true;
        } else {
            z10 = false;
        }
        int currentSize = this.f6640e.getCurrentSize();
        for (int i11 = 0; i11 < currentSize; i11++) {
            SolverVariable solverVariableB = this.f6640e.b(i11);
            if (solverVariableB != null) {
                float fH = this.f6640e.h(i11);
                if (fH != 0.0f) {
                    String string = solverVariableB.toString();
                    if (z10) {
                        if (fH > 0.0f) {
                            str = str + " + ";
                        } else {
                            str = str + " - ";
                            fH *= -1.0f;
                        }
                    } else if (fH < 0.0f) {
                        str = str + "- ";
                        fH *= -1.0f;
                    }
                    str = fH == 1.0f ? str + string : str + fH + " " + string;
                    z10 = true;
                }
            }
        }
        if (z10) {
            return str;
        }
        return str + "0.0";
    }
}
