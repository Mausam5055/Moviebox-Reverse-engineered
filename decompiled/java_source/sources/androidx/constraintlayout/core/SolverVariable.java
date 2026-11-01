package androidx.constraintlayout.core;

import java.util.Arrays;
import java.util.HashSet;

/* JADX INFO: loaded from: classes.dex */
public class SolverVariable implements Comparable {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static int f6606r = 1;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f6607a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f6608b;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float f6612f;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    Type f6616j;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f6609c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f6610d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f6611e = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f6613g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    float[] f6614h = new float[9];

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    float[] f6615i = new float[9];

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    b[] f6617k = new b[16];

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    int f6618l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f6619m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    boolean f6620n = false;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    int f6621o = -1;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    float f6622p = 0.0f;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    HashSet f6623q = null;

    public enum Type {
        UNRESTRICTED,
        CONSTANT,
        SLACK,
        ERROR,
        UNKNOWN
    }

    public SolverVariable(Type type, String str) {
        this.f6616j = type;
    }

    static void d() {
        f6606r++;
    }

    public final void a(b bVar) {
        int i11 = 0;
        while (true) {
            int i12 = this.f6618l;
            if (i11 >= i12) {
                b[] bVarArr = this.f6617k;
                if (i12 >= bVarArr.length) {
                    this.f6617k = (b[]) Arrays.copyOf(bVarArr, bVarArr.length * 2);
                }
                b[] bVarArr2 = this.f6617k;
                int i13 = this.f6618l;
                bVarArr2[i13] = bVar;
                this.f6618l = i13 + 1;
                return;
            }
            if (this.f6617k[i11] == bVar) {
                return;
            } else {
                i11++;
            }
        }
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public int compareTo(SolverVariable solverVariable) {
        return this.f6609c - solverVariable.f6609c;
    }

    public final void e(b bVar) {
        int i11 = this.f6618l;
        int i12 = 0;
        while (i12 < i11) {
            if (this.f6617k[i12] == bVar) {
                while (i12 < i11 - 1) {
                    b[] bVarArr = this.f6617k;
                    int i13 = i12 + 1;
                    bVarArr[i12] = bVarArr[i13];
                    i12 = i13;
                }
                this.f6618l--;
                return;
            }
            i12++;
        }
    }

    public void f() {
        this.f6608b = null;
        this.f6616j = Type.UNKNOWN;
        this.f6611e = 0;
        this.f6609c = -1;
        this.f6610d = -1;
        this.f6612f = 0.0f;
        this.f6613g = false;
        this.f6620n = false;
        this.f6621o = -1;
        this.f6622p = 0.0f;
        int i11 = this.f6618l;
        for (int i12 = 0; i12 < i11; i12++) {
            this.f6617k[i12] = null;
        }
        this.f6618l = 0;
        this.f6619m = 0;
        this.f6607a = false;
        Arrays.fill(this.f6615i, 0.0f);
    }

    public void g(d dVar, float f11) {
        this.f6612f = f11;
        this.f6613g = true;
        this.f6620n = false;
        this.f6621o = -1;
        this.f6622p = 0.0f;
        int i11 = this.f6618l;
        this.f6610d = -1;
        for (int i12 = 0; i12 < i11; i12++) {
            this.f6617k[i12].A(dVar, this, false);
        }
        this.f6618l = 0;
    }

    public void h(Type type, String str) {
        this.f6616j = type;
    }

    public final void i(d dVar, b bVar) {
        int i11 = this.f6618l;
        for (int i12 = 0; i12 < i11; i12++) {
            this.f6617k[i12].B(dVar, bVar, false);
        }
        this.f6618l = 0;
    }

    public String toString() {
        if (this.f6608b != null) {
            return "" + this.f6608b;
        }
        return "" + this.f6609c;
    }
}
