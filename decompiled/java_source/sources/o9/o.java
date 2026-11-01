package o9;

import com.google.android.exoplayer2.o1;

/* JADX INFO: loaded from: classes4.dex */
public final class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f70876a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f70877b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f70878c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f70879d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f70880e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final o1 f70881f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f70882g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long[] f70883h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final long[] f70884i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f70885j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final p[] f70886k;

    public o(int i11, int i12, long j11, long j12, long j13, o1 o1Var, int i13, p[] pVarArr, int i14, long[] jArr, long[] jArr2) {
        this.f70876a = i11;
        this.f70877b = i12;
        this.f70878c = j11;
        this.f70879d = j12;
        this.f70880e = j13;
        this.f70881f = o1Var;
        this.f70882g = i13;
        this.f70886k = pVarArr;
        this.f70885j = i14;
        this.f70883h = jArr;
        this.f70884i = jArr2;
    }

    public p a(int i11) {
        p[] pVarArr = this.f70886k;
        if (pVarArr == null) {
            return null;
        }
        return pVarArr[i11];
    }
}
