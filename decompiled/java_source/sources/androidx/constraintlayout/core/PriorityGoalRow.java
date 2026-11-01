package androidx.constraintlayout.core;

import java.util.Arrays;
import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
public class PriorityGoalRow extends b {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f6597g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private SolverVariable[] f6598h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private SolverVariable[] f6599i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f6600j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    a f6601k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    c f6602l;

    class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        SolverVariable f6603a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        PriorityGoalRow f6604b;

        public a(PriorityGoalRow priorityGoalRow) {
            this.f6604b = priorityGoalRow;
        }

        public boolean a(SolverVariable solverVariable, float f11) {
            boolean z10 = true;
            if (!this.f6603a.f6607a) {
                for (int i11 = 0; i11 < 9; i11++) {
                    float f12 = solverVariable.f6615i[i11];
                    if (f12 != 0.0f) {
                        float f13 = f12 * f11;
                        if (Math.abs(f13) < 1.0E-4f) {
                            f13 = 0.0f;
                        }
                        this.f6603a.f6615i[i11] = f13;
                    } else {
                        this.f6603a.f6615i[i11] = 0.0f;
                    }
                }
                return true;
            }
            for (int i12 = 0; i12 < 9; i12++) {
                float[] fArr = this.f6603a.f6615i;
                float f14 = fArr[i12] + (solverVariable.f6615i[i12] * f11);
                fArr[i12] = f14;
                if (Math.abs(f14) < 1.0E-4f) {
                    this.f6603a.f6615i[i12] = 0.0f;
                } else {
                    z10 = false;
                }
            }
            if (z10) {
                PriorityGoalRow.this.G(this.f6603a);
            }
            return false;
        }

        public void b(SolverVariable solverVariable) {
            this.f6603a = solverVariable;
        }

        public final boolean c() {
            for (int i11 = 8; i11 >= 0; i11--) {
                float f11 = this.f6603a.f6615i[i11];
                if (f11 > 0.0f) {
                    return false;
                }
                if (f11 < 0.0f) {
                    return true;
                }
            }
            return false;
        }

        public final boolean d(SolverVariable solverVariable) {
            for (int i11 = 8; i11 >= 0; i11--) {
                float f11 = solverVariable.f6615i[i11];
                float f12 = this.f6603a.f6615i[i11];
                if (f12 != f11) {
                    if (f12 < f11) {
                        return true;
                    }
                }
            }
            return false;
        }

        public void e() {
            Arrays.fill(this.f6603a.f6615i, 0.0f);
        }

        public String toString() {
            String str = "[ ";
            if (this.f6603a != null) {
                for (int i11 = 0; i11 < 9; i11++) {
                    str = str + this.f6603a.f6615i[i11] + " ";
                }
            }
            return str + "] " + this.f6603a;
        }
    }

    public PriorityGoalRow(c cVar) {
        super(cVar);
        this.f6597g = 128;
        this.f6598h = new SolverVariable[128];
        this.f6599i = new SolverVariable[128];
        this.f6600j = 0;
        this.f6601k = new a(this);
        this.f6602l = cVar;
    }

    private final void F(SolverVariable solverVariable) {
        int i11;
        int i12 = this.f6600j + 1;
        SolverVariable[] solverVariableArr = this.f6598h;
        if (i12 > solverVariableArr.length) {
            SolverVariable[] solverVariableArr2 = (SolverVariable[]) Arrays.copyOf(solverVariableArr, solverVariableArr.length * 2);
            this.f6598h = solverVariableArr2;
            this.f6599i = (SolverVariable[]) Arrays.copyOf(solverVariableArr2, solverVariableArr2.length * 2);
        }
        SolverVariable[] solverVariableArr3 = this.f6598h;
        int i13 = this.f6600j;
        solverVariableArr3[i13] = solverVariable;
        int i14 = i13 + 1;
        this.f6600j = i14;
        if (i14 > 1 && solverVariableArr3[i13].f6609c > solverVariable.f6609c) {
            int i15 = 0;
            while (true) {
                i11 = this.f6600j;
                if (i15 >= i11) {
                    break;
                }
                this.f6599i[i15] = this.f6598h[i15];
                i15++;
            }
            Arrays.sort(this.f6599i, 0, i11, new Comparator<SolverVariable>() { // from class: androidx.constraintlayout.core.PriorityGoalRow.1
                @Override // java.util.Comparator
                public int compare(SolverVariable solverVariable2, SolverVariable solverVariable3) {
                    return solverVariable2.f6609c - solverVariable3.f6609c;
                }
            });
            for (int i16 = 0; i16 < this.f6600j; i16++) {
                this.f6598h[i16] = this.f6599i[i16];
            }
        }
        solverVariable.f6607a = true;
        solverVariable.a(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void G(SolverVariable solverVariable) {
        int i11 = 0;
        while (i11 < this.f6600j) {
            if (this.f6598h[i11] == solverVariable) {
                while (true) {
                    int i12 = this.f6600j;
                    if (i11 >= i12 - 1) {
                        this.f6600j = i12 - 1;
                        solverVariable.f6607a = false;
                        return;
                    } else {
                        SolverVariable[] solverVariableArr = this.f6598h;
                        int i13 = i11 + 1;
                        solverVariableArr[i11] = solverVariableArr[i13];
                        i11 = i13;
                    }
                }
            } else {
                i11++;
            }
        }
    }

    @Override // androidx.constraintlayout.core.b
    public void B(d dVar, b bVar, boolean z10) {
        SolverVariable solverVariable = bVar.f6636a;
        if (solverVariable == null) {
            return;
        }
        b.a aVar = bVar.f6640e;
        int currentSize = aVar.getCurrentSize();
        for (int i11 = 0; i11 < currentSize; i11++) {
            SolverVariable solverVariableB = aVar.b(i11);
            float fH = aVar.h(i11);
            this.f6601k.b(solverVariableB);
            if (this.f6601k.a(solverVariable, fH)) {
                F(solverVariableB);
            }
            this.f6637b += bVar.f6637b * fH;
        }
        G(solverVariable);
    }

    /* JADX WARN: Code duplicated, block: B:15:0x002e  */
    @Override // androidx.constraintlayout.core.b, androidx.constraintlayout.core.d.a
    public SolverVariable b(d dVar, boolean[] zArr) {
        int i11 = -1;
        for (int i12 = 0; i12 < this.f6600j; i12++) {
            SolverVariable solverVariable = this.f6598h[i12];
            if (!zArr[solverVariable.f6609c]) {
                this.f6601k.b(solverVariable);
                if (i11 == -1) {
                    if (this.f6601k.c()) {
                        i11 = i12;
                    }
                } else if (this.f6601k.d(this.f6598h[i11])) {
                    i11 = i12;
                }
            }
        }
        if (i11 == -1) {
            return null;
        }
        return this.f6598h[i11];
    }

    @Override // androidx.constraintlayout.core.b, androidx.constraintlayout.core.d.a
    public void c(SolverVariable solverVariable) {
        this.f6601k.b(solverVariable);
        this.f6601k.e();
        solverVariable.f6615i[solverVariable.f6611e] = 1.0f;
        F(solverVariable);
    }

    @Override // androidx.constraintlayout.core.b, androidx.constraintlayout.core.d.a
    public void clear() {
        this.f6600j = 0;
        this.f6637b = 0.0f;
    }

    @Override // androidx.constraintlayout.core.b, androidx.constraintlayout.core.d.a
    public boolean isEmpty() {
        return this.f6600j == 0;
    }

    @Override // androidx.constraintlayout.core.b
    public String toString() {
        String str = " goal -> (" + this.f6637b + ") : ";
        for (int i11 = 0; i11 < this.f6600j; i11++) {
            this.f6601k.b(this.f6598h[i11]);
            str = str + this.f6601k + " ";
        }
        return str;
    }
}
