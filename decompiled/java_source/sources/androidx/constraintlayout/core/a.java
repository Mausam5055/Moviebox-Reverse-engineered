package androidx.constraintlayout.core;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class a implements b.a {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static float f6624l = 0.001f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b f6626b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected final c f6627c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f6625a = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f6628d = 8;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private SolverVariable f6629e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int[] f6630f = new int[8];

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int[] f6631g = new int[8];

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float[] f6632h = new float[8];

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f6633i = -1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f6634j = -1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f6635k = false;

    a(b bVar, c cVar) {
        this.f6626b = bVar;
        this.f6627c = cVar;
    }

    @Override // androidx.constraintlayout.core.b.a
    public boolean a(SolverVariable solverVariable) {
        int i11 = this.f6633i;
        if (i11 == -1) {
            return false;
        }
        for (int i12 = 0; i11 != -1 && i12 < this.f6625a; i12++) {
            if (this.f6630f[i11] == solverVariable.f6609c) {
                return true;
            }
            i11 = this.f6631g[i11];
        }
        return false;
    }

    @Override // androidx.constraintlayout.core.b.a
    public SolverVariable b(int i11) {
        int i12 = this.f6633i;
        for (int i13 = 0; i12 != -1 && i13 < this.f6625a; i13++) {
            if (i13 == i11) {
                return this.f6627c.f6645d[this.f6630f[i12]];
            }
            i12 = this.f6631g[i12];
        }
        return null;
    }

    @Override // androidx.constraintlayout.core.b.a
    public void c(SolverVariable solverVariable, float f11, boolean z10) {
        float f12 = f6624l;
        if (f11 <= (-f12) || f11 >= f12) {
            int i11 = this.f6633i;
            if (i11 == -1) {
                this.f6633i = 0;
                this.f6632h[0] = f11;
                this.f6630f[0] = solverVariable.f6609c;
                this.f6631g[0] = -1;
                solverVariable.f6619m++;
                solverVariable.a(this.f6626b);
                this.f6625a++;
                if (this.f6635k) {
                    return;
                }
                int i12 = this.f6634j + 1;
                this.f6634j = i12;
                int[] iArr = this.f6630f;
                if (i12 >= iArr.length) {
                    this.f6635k = true;
                    this.f6634j = iArr.length - 1;
                    return;
                }
                return;
            }
            int i13 = -1;
            for (int i14 = 0; i11 != -1 && i14 < this.f6625a; i14++) {
                int i15 = this.f6630f[i11];
                int i16 = solverVariable.f6609c;
                if (i15 == i16) {
                    float[] fArr = this.f6632h;
                    float f13 = fArr[i11] + f11;
                    float f14 = f6624l;
                    if (f13 > (-f14) && f13 < f14) {
                        f13 = 0.0f;
                    }
                    fArr[i11] = f13;
                    if (f13 == 0.0f) {
                        if (i11 == this.f6633i) {
                            this.f6633i = this.f6631g[i11];
                        } else {
                            int[] iArr2 = this.f6631g;
                            iArr2[i13] = iArr2[i11];
                        }
                        if (z10) {
                            solverVariable.e(this.f6626b);
                        }
                        if (this.f6635k) {
                            this.f6634j = i11;
                        }
                        solverVariable.f6619m--;
                        this.f6625a--;
                        return;
                    }
                    return;
                }
                if (i15 < i16) {
                    i13 = i11;
                }
                i11 = this.f6631g[i11];
            }
            int length = this.f6634j;
            int i17 = length + 1;
            if (this.f6635k) {
                int[] iArr3 = this.f6630f;
                if (iArr3[length] != -1) {
                    length = iArr3.length;
                }
            } else {
                length = i17;
            }
            int[] iArr4 = this.f6630f;
            if (length >= iArr4.length && this.f6625a < iArr4.length) {
                int i18 = 0;
                while (true) {
                    int[] iArr5 = this.f6630f;
                    if (i18 >= iArr5.length) {
                        break;
                    }
                    if (iArr5[i18] == -1) {
                        length = i18;
                        break;
                    }
                    i18++;
                }
            }
            int[] iArr6 = this.f6630f;
            if (length >= iArr6.length) {
                length = iArr6.length;
                int i19 = this.f6628d * 2;
                this.f6628d = i19;
                this.f6635k = false;
                this.f6634j = length - 1;
                this.f6632h = Arrays.copyOf(this.f6632h, i19);
                this.f6630f = Arrays.copyOf(this.f6630f, this.f6628d);
                this.f6631g = Arrays.copyOf(this.f6631g, this.f6628d);
            }
            this.f6630f[length] = solverVariable.f6609c;
            this.f6632h[length] = f11;
            if (i13 != -1) {
                int[] iArr7 = this.f6631g;
                iArr7[length] = iArr7[i13];
                iArr7[i13] = length;
            } else {
                this.f6631g[length] = this.f6633i;
                this.f6633i = length;
            }
            solverVariable.f6619m++;
            solverVariable.a(this.f6626b);
            this.f6625a++;
            if (!this.f6635k) {
                this.f6634j++;
            }
            int i20 = this.f6634j;
            int[] iArr8 = this.f6630f;
            if (i20 >= iArr8.length) {
                this.f6635k = true;
                this.f6634j = iArr8.length - 1;
            }
        }
    }

    @Override // androidx.constraintlayout.core.b.a
    public final void clear() {
        int i11 = this.f6633i;
        for (int i12 = 0; i11 != -1 && i12 < this.f6625a; i12++) {
            SolverVariable solverVariable = this.f6627c.f6645d[this.f6630f[i11]];
            if (solverVariable != null) {
                solverVariable.e(this.f6626b);
            }
            i11 = this.f6631g[i11];
        }
        this.f6633i = -1;
        this.f6634j = -1;
        this.f6635k = false;
        this.f6625a = 0;
    }

    @Override // androidx.constraintlayout.core.b.a
    public void d() {
        int i11 = this.f6633i;
        for (int i12 = 0; i11 != -1 && i12 < this.f6625a; i12++) {
            float[] fArr = this.f6632h;
            fArr[i11] = fArr[i11] * (-1.0f);
            i11 = this.f6631g[i11];
        }
    }

    @Override // androidx.constraintlayout.core.b.a
    public final float e(SolverVariable solverVariable, boolean z10) {
        if (this.f6629e == solverVariable) {
            this.f6629e = null;
        }
        int i11 = this.f6633i;
        if (i11 == -1) {
            return 0.0f;
        }
        int i12 = 0;
        int i13 = -1;
        while (i11 != -1 && i12 < this.f6625a) {
            if (this.f6630f[i11] == solverVariable.f6609c) {
                if (i11 == this.f6633i) {
                    this.f6633i = this.f6631g[i11];
                } else {
                    int[] iArr = this.f6631g;
                    iArr[i13] = iArr[i11];
                }
                if (z10) {
                    solverVariable.e(this.f6626b);
                }
                solverVariable.f6619m--;
                this.f6625a--;
                this.f6630f[i11] = -1;
                if (this.f6635k) {
                    this.f6634j = i11;
                }
                return this.f6632h[i11];
            }
            i12++;
            i13 = i11;
            i11 = this.f6631g[i11];
        }
        return 0.0f;
    }

    @Override // androidx.constraintlayout.core.b.a
    public float f(b bVar, boolean z10) {
        float fI = i(bVar.f6636a);
        e(bVar.f6636a, z10);
        b.a aVar = bVar.f6640e;
        int currentSize = aVar.getCurrentSize();
        for (int i11 = 0; i11 < currentSize; i11++) {
            SolverVariable solverVariableB = aVar.b(i11);
            c(solverVariableB, aVar.i(solverVariableB) * fI, z10);
        }
        return fI;
    }

    @Override // androidx.constraintlayout.core.b.a
    public final void g(SolverVariable solverVariable, float f11) {
        if (f11 == 0.0f) {
            e(solverVariable, true);
            return;
        }
        int i11 = this.f6633i;
        if (i11 == -1) {
            this.f6633i = 0;
            this.f6632h[0] = f11;
            this.f6630f[0] = solverVariable.f6609c;
            this.f6631g[0] = -1;
            solverVariable.f6619m++;
            solverVariable.a(this.f6626b);
            this.f6625a++;
            if (this.f6635k) {
                return;
            }
            int i12 = this.f6634j + 1;
            this.f6634j = i12;
            int[] iArr = this.f6630f;
            if (i12 >= iArr.length) {
                this.f6635k = true;
                this.f6634j = iArr.length - 1;
                return;
            }
            return;
        }
        int i13 = -1;
        for (int i14 = 0; i11 != -1 && i14 < this.f6625a; i14++) {
            int i15 = this.f6630f[i11];
            int i16 = solverVariable.f6609c;
            if (i15 == i16) {
                this.f6632h[i11] = f11;
                return;
            }
            if (i15 < i16) {
                i13 = i11;
            }
            i11 = this.f6631g[i11];
        }
        int length = this.f6634j;
        int i17 = length + 1;
        if (this.f6635k) {
            int[] iArr2 = this.f6630f;
            if (iArr2[length] != -1) {
                length = iArr2.length;
            }
        } else {
            length = i17;
        }
        int[] iArr3 = this.f6630f;
        if (length >= iArr3.length && this.f6625a < iArr3.length) {
            int i18 = 0;
            while (true) {
                int[] iArr4 = this.f6630f;
                if (i18 >= iArr4.length) {
                    break;
                }
                if (iArr4[i18] == -1) {
                    length = i18;
                    break;
                }
                i18++;
            }
        }
        int[] iArr5 = this.f6630f;
        if (length >= iArr5.length) {
            length = iArr5.length;
            int i19 = this.f6628d * 2;
            this.f6628d = i19;
            this.f6635k = false;
            this.f6634j = length - 1;
            this.f6632h = Arrays.copyOf(this.f6632h, i19);
            this.f6630f = Arrays.copyOf(this.f6630f, this.f6628d);
            this.f6631g = Arrays.copyOf(this.f6631g, this.f6628d);
        }
        this.f6630f[length] = solverVariable.f6609c;
        this.f6632h[length] = f11;
        if (i13 != -1) {
            int[] iArr6 = this.f6631g;
            iArr6[length] = iArr6[i13];
            iArr6[i13] = length;
        } else {
            this.f6631g[length] = this.f6633i;
            this.f6633i = length;
        }
        solverVariable.f6619m++;
        solverVariable.a(this.f6626b);
        int i20 = this.f6625a + 1;
        this.f6625a = i20;
        if (!this.f6635k) {
            this.f6634j++;
        }
        int[] iArr7 = this.f6630f;
        if (i20 >= iArr7.length) {
            this.f6635k = true;
        }
        if (this.f6634j >= iArr7.length) {
            this.f6635k = true;
            this.f6634j = iArr7.length - 1;
        }
    }

    @Override // androidx.constraintlayout.core.b.a
    public int getCurrentSize() {
        return this.f6625a;
    }

    @Override // androidx.constraintlayout.core.b.a
    public float h(int i11) {
        int i12 = this.f6633i;
        for (int i13 = 0; i12 != -1 && i13 < this.f6625a; i13++) {
            if (i13 == i11) {
                return this.f6632h[i12];
            }
            i12 = this.f6631g[i12];
        }
        return 0.0f;
    }

    @Override // androidx.constraintlayout.core.b.a
    public final float i(SolverVariable solverVariable) {
        int i11 = this.f6633i;
        for (int i12 = 0; i11 != -1 && i12 < this.f6625a; i12++) {
            if (this.f6630f[i11] == solverVariable.f6609c) {
                return this.f6632h[i11];
            }
            i11 = this.f6631g[i11];
        }
        return 0.0f;
    }

    @Override // androidx.constraintlayout.core.b.a
    public void j(float f11) {
        int i11 = this.f6633i;
        for (int i12 = 0; i11 != -1 && i12 < this.f6625a; i12++) {
            float[] fArr = this.f6632h;
            fArr[i11] = fArr[i11] / f11;
            i11 = this.f6631g[i11];
        }
    }

    public String toString() {
        int i11 = this.f6633i;
        String str = "";
        for (int i12 = 0; i11 != -1 && i12 < this.f6625a; i12++) {
            str = ((str + " -> ") + this.f6632h[i11] + " : ") + this.f6627c.f6645d[this.f6630f[i11]];
            i11 = this.f6631g[i11];
        }
        return str;
    }
}
