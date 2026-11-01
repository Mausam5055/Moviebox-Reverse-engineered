package androidx.constraintlayout.core;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class h implements b.a {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static float f6701n = 0.001f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f6702a = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f6703b = 16;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f6704c = 16;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int[] f6705d = new int[16];

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int[] f6706e = new int[16];

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int[] f6707f = new int[16];

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    float[] f6708g = new float[16];

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    int[] f6709h = new int[16];

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    int[] f6710i = new int[16];

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    int f6711j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    int f6712k = -1;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final b f6713l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    protected final c f6714m;

    h(b bVar, c cVar) {
        this.f6713l = bVar;
        this.f6714m = cVar;
        clear();
    }

    private void k(SolverVariable solverVariable, int i11) {
        int[] iArr;
        int i12 = solverVariable.f6609c % this.f6704c;
        int[] iArr2 = this.f6705d;
        int i13 = iArr2[i12];
        if (i13 == -1) {
            iArr2[i12] = i11;
        } else {
            while (true) {
                iArr = this.f6706e;
                int i14 = iArr[i13];
                if (i14 == -1) {
                    break;
                } else {
                    i13 = i14;
                }
            }
            iArr[i13] = i11;
        }
        this.f6706e[i11] = -1;
    }

    private void l(int i11, SolverVariable solverVariable, float f11) {
        this.f6707f[i11] = solverVariable.f6609c;
        this.f6708g[i11] = f11;
        this.f6709h[i11] = -1;
        this.f6710i[i11] = -1;
        solverVariable.a(this.f6713l);
        solverVariable.f6619m++;
        this.f6711j++;
    }

    private int m() {
        for (int i11 = 0; i11 < this.f6703b; i11++) {
            if (this.f6707f[i11] == -1) {
                return i11;
            }
        }
        return -1;
    }

    private void n() {
        int i11 = this.f6703b * 2;
        this.f6707f = Arrays.copyOf(this.f6707f, i11);
        this.f6708g = Arrays.copyOf(this.f6708g, i11);
        this.f6709h = Arrays.copyOf(this.f6709h, i11);
        this.f6710i = Arrays.copyOf(this.f6710i, i11);
        this.f6706e = Arrays.copyOf(this.f6706e, i11);
        for (int i12 = this.f6703b; i12 < i11; i12++) {
            this.f6707f[i12] = -1;
            this.f6706e[i12] = -1;
        }
        this.f6703b = i11;
    }

    private void p(int i11, SolverVariable solverVariable, float f11) {
        int iM = m();
        l(iM, solverVariable, f11);
        if (i11 != -1) {
            this.f6709h[iM] = i11;
            int[] iArr = this.f6710i;
            iArr[iM] = iArr[i11];
            iArr[i11] = iM;
        } else {
            this.f6709h[iM] = -1;
            if (this.f6711j > 0) {
                this.f6710i[iM] = this.f6712k;
                this.f6712k = iM;
            } else {
                this.f6710i[iM] = -1;
            }
        }
        int i12 = this.f6710i[iM];
        if (i12 != -1) {
            this.f6709h[i12] = iM;
        }
        k(solverVariable, iM);
    }

    private void q(SolverVariable solverVariable) {
        int[] iArr;
        int i11;
        int i12 = solverVariable.f6609c;
        int i13 = i12 % this.f6704c;
        int[] iArr2 = this.f6705d;
        int i14 = iArr2[i13];
        if (i14 == -1) {
            return;
        }
        if (this.f6707f[i14] == i12) {
            int[] iArr3 = this.f6706e;
            iArr2[i13] = iArr3[i14];
            iArr3[i14] = -1;
            return;
        }
        while (true) {
            iArr = this.f6706e;
            i11 = iArr[i14];
            if (i11 == -1 || this.f6707f[i11] == i12) {
                break;
            } else {
                i14 = i11;
            }
        }
        if (i11 == -1 || this.f6707f[i11] != i12) {
            return;
        }
        iArr[i14] = iArr[i11];
        iArr[i11] = -1;
    }

    @Override // androidx.constraintlayout.core.b.a
    public boolean a(SolverVariable solverVariable) {
        return o(solverVariable) != -1;
    }

    @Override // androidx.constraintlayout.core.b.a
    public SolverVariable b(int i11) {
        int i12 = this.f6711j;
        if (i12 == 0) {
            return null;
        }
        int i13 = this.f6712k;
        for (int i14 = 0; i14 < i12; i14++) {
            if (i14 == i11 && i13 != -1) {
                return this.f6714m.f6645d[this.f6707f[i13]];
            }
            i13 = this.f6710i[i13];
            if (i13 == -1) {
                break;
            }
        }
        return null;
    }

    @Override // androidx.constraintlayout.core.b.a
    public void c(SolverVariable solverVariable, float f11, boolean z10) {
        float f12 = f6701n;
        if (f11 <= (-f12) || f11 >= f12) {
            int iO = o(solverVariable);
            if (iO == -1) {
                g(solverVariable, f11);
                return;
            }
            float[] fArr = this.f6708g;
            float f13 = fArr[iO] + f11;
            fArr[iO] = f13;
            float f14 = f6701n;
            if (f13 <= (-f14) || f13 >= f14) {
                return;
            }
            fArr[iO] = 0.0f;
            e(solverVariable, z10);
        }
    }

    @Override // androidx.constraintlayout.core.b.a
    public void clear() {
        int i11 = this.f6711j;
        for (int i12 = 0; i12 < i11; i12++) {
            SolverVariable solverVariableB = b(i12);
            if (solverVariableB != null) {
                solverVariableB.e(this.f6713l);
            }
        }
        for (int i13 = 0; i13 < this.f6703b; i13++) {
            this.f6707f[i13] = -1;
            this.f6706e[i13] = -1;
        }
        for (int i14 = 0; i14 < this.f6704c; i14++) {
            this.f6705d[i14] = -1;
        }
        this.f6711j = 0;
        this.f6712k = -1;
    }

    @Override // androidx.constraintlayout.core.b.a
    public void d() {
        int i11 = this.f6711j;
        int i12 = this.f6712k;
        for (int i13 = 0; i13 < i11; i13++) {
            float[] fArr = this.f6708g;
            fArr[i12] = fArr[i12] * (-1.0f);
            i12 = this.f6710i[i12];
            if (i12 == -1) {
                return;
            }
        }
    }

    @Override // androidx.constraintlayout.core.b.a
    public float e(SolverVariable solverVariable, boolean z10) {
        int iO = o(solverVariable);
        if (iO == -1) {
            return 0.0f;
        }
        q(solverVariable);
        float f11 = this.f6708g[iO];
        if (this.f6712k == iO) {
            this.f6712k = this.f6710i[iO];
        }
        this.f6707f[iO] = -1;
        int[] iArr = this.f6709h;
        int i11 = iArr[iO];
        if (i11 != -1) {
            int[] iArr2 = this.f6710i;
            iArr2[i11] = iArr2[iO];
        }
        int i12 = this.f6710i[iO];
        if (i12 != -1) {
            iArr[i12] = iArr[iO];
        }
        this.f6711j--;
        solverVariable.f6619m--;
        if (z10) {
            solverVariable.e(this.f6713l);
        }
        return f11;
    }

    @Override // androidx.constraintlayout.core.b.a
    public float f(b bVar, boolean z10) {
        float fI = i(bVar.f6636a);
        e(bVar.f6636a, z10);
        h hVar = (h) bVar.f6640e;
        int currentSize = hVar.getCurrentSize();
        int i11 = 0;
        int i12 = 0;
        while (i11 < currentSize) {
            int i13 = hVar.f6707f[i12];
            if (i13 != -1) {
                c(this.f6714m.f6645d[i13], hVar.f6708g[i12] * fI, z10);
                i11++;
            }
            i12++;
        }
        return fI;
    }

    @Override // androidx.constraintlayout.core.b.a
    public void g(SolverVariable solverVariable, float f11) {
        float f12 = f6701n;
        if (f11 > (-f12) && f11 < f12) {
            e(solverVariable, true);
            return;
        }
        if (this.f6711j == 0) {
            l(0, solverVariable, f11);
            k(solverVariable, 0);
            this.f6712k = 0;
            return;
        }
        int iO = o(solverVariable);
        if (iO != -1) {
            this.f6708g[iO] = f11;
            return;
        }
        if (this.f6711j + 1 >= this.f6703b) {
            n();
        }
        int i11 = this.f6711j;
        int i12 = this.f6712k;
        int i13 = -1;
        for (int i14 = 0; i14 < i11; i14++) {
            int i15 = this.f6707f[i12];
            int i16 = solverVariable.f6609c;
            if (i15 == i16) {
                this.f6708g[i12] = f11;
                return;
            }
            if (i15 < i16) {
                i13 = i12;
            }
            i12 = this.f6710i[i12];
            if (i12 == -1) {
                break;
            }
        }
        p(i13, solverVariable, f11);
    }

    @Override // androidx.constraintlayout.core.b.a
    public int getCurrentSize() {
        return this.f6711j;
    }

    @Override // androidx.constraintlayout.core.b.a
    public float h(int i11) {
        int i12 = this.f6711j;
        int i13 = this.f6712k;
        for (int i14 = 0; i14 < i12; i14++) {
            if (i14 == i11) {
                return this.f6708g[i13];
            }
            i13 = this.f6710i[i13];
            if (i13 == -1) {
                return 0.0f;
            }
        }
        return 0.0f;
    }

    @Override // androidx.constraintlayout.core.b.a
    public float i(SolverVariable solverVariable) {
        int iO = o(solverVariable);
        if (iO != -1) {
            return this.f6708g[iO];
        }
        return 0.0f;
    }

    @Override // androidx.constraintlayout.core.b.a
    public void j(float f11) {
        int i11 = this.f6711j;
        int i12 = this.f6712k;
        for (int i13 = 0; i13 < i11; i13++) {
            float[] fArr = this.f6708g;
            fArr[i12] = fArr[i12] / f11;
            i12 = this.f6710i[i12];
            if (i12 == -1) {
                return;
            }
        }
    }

    public int o(SolverVariable solverVariable) {
        if (this.f6711j != 0 && solverVariable != null) {
            int i11 = solverVariable.f6609c;
            int i12 = this.f6705d[i11 % this.f6704c];
            if (i12 == -1) {
                return -1;
            }
            if (this.f6707f[i12] == i11) {
                return i12;
            }
            do {
                i12 = this.f6706e[i12];
                if (i12 == -1) {
                    break;
                }
            } while (this.f6707f[i12] != i11);
            if (i12 != -1 && this.f6707f[i12] == i11) {
                return i12;
            }
        }
        return -1;
    }

    public String toString() {
        String str = hashCode() + " { ";
        int i11 = this.f6711j;
        for (int i12 = 0; i12 < i11; i12++) {
            SolverVariable solverVariableB = b(i12);
            if (solverVariableB != null) {
                String str2 = str + solverVariableB + " = " + h(i12) + " ";
                int iO = o(solverVariableB);
                String str3 = str2 + "[p: ";
                String str4 = (this.f6709h[iO] != -1 ? str3 + this.f6714m.f6645d[this.f6707f[this.f6709h[iO]]] : str3 + "none") + ", n: ";
                str = (this.f6710i[iO] != -1 ? str4 + this.f6714m.f6645d[this.f6707f[this.f6710i[iO]]] : str4 + "none") + "]";
            }
        }
        return str + " }";
    }
}
