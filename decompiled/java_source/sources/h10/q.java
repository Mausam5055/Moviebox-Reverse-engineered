package h10;

import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes7.dex */
public class q {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    static final q f64161n = new q();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    short f64162a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private short f64163b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int[] f64164c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f64165d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int[] f64166e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    short f64167f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    short f64168g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    short f64169h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    short f64170i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    n f64171j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    q f64172k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    k f64173l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    q f64174m;

    private void b(int i11, int i12, int i13) {
        if (this.f64166e == null) {
            this.f64166e = new int[6];
        }
        int[] iArr = this.f64166e;
        int i14 = iArr[0];
        if (i14 + 2 >= iArr.length) {
            int[] iArr2 = new int[iArr.length + 6];
            System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
            this.f64166e = iArr2;
        }
        int[] iArr3 = this.f64166e;
        iArr3[i14 + 1] = i11;
        int i15 = i14 + 2;
        iArr3[i15] = i12 | i13;
        iArr3[0] = i15;
    }

    private q g(q qVar) {
        for (k kVar = this.f64173l; kVar != null; kVar = kVar.f64127c) {
            if ((this.f64162a & 16) == 0 || kVar != this.f64173l.f64127c) {
                q qVar2 = kVar.f64126b;
                if (qVar2.f64174m == null) {
                    qVar2.f64174m = qVar;
                    qVar = qVar2;
                }
            }
        }
        return qVar;
    }

    final void a(r rVar, boolean z10) {
        short s11;
        rVar.o(this);
        if (!z10 || (s11 = this.f64163b) == 0) {
            return;
        }
        rVar.q(s11 & 65535, this);
        if (this.f64164c == null) {
            return;
        }
        int i11 = 1;
        while (true) {
            int[] iArr = this.f64164c;
            if (i11 > iArr[0]) {
                return;
            }
            rVar.q(iArr[i11], this);
            i11++;
        }
    }

    final void c(int i11) {
        if (this.f64163b == 0) {
            this.f64163b = (short) i11;
            return;
        }
        if (this.f64164c == null) {
            this.f64164c = new int[4];
        }
        int[] iArr = this.f64164c;
        int i12 = iArr[0] + 1;
        iArr[0] = i12;
        if (i12 >= iArr.length) {
            int[] iArr2 = new int[iArr.length + 4];
            System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
            this.f64164c = iArr2;
        }
        this.f64164c[i12] = i11;
    }

    final void d(q qVar) {
        q qVar2 = f64161n;
        this.f64174m = qVar2;
        q qVar3 = qVar2;
        q qVarG = this;
        while (qVarG != f64161n) {
            q qVar4 = qVarG.f64174m;
            qVarG.f64174m = qVar3;
            if ((qVarG.f64162a & 64) != 0 && qVarG.f64170i != qVar.f64170i) {
                qVarG.f64173l = new k(qVarG.f64168g, qVar.f64173l.f64126b, qVarG.f64173l);
            }
            qVar3 = qVarG;
            qVarG = qVarG.g(qVar4);
        }
        while (qVar3 != f64161n) {
            q qVar5 = qVar3.f64174m;
            qVar3.f64174m = null;
            qVar3 = qVar5;
        }
    }

    final q e() {
        n nVar = this.f64171j;
        return nVar == null ? this : nVar.f64141a;
    }

    final void f(short s11) {
        this.f64174m = f64161n;
        q qVarG = this;
        while (qVarG != f64161n) {
            q qVar = qVarG.f64174m;
            qVarG.f64174m = null;
            if (qVarG.f64170i == 0) {
                qVarG.f64170i = s11;
                qVarG = qVarG.g(qVar);
            } else {
                qVarG = qVar;
            }
        }
    }

    final void h(d dVar, int i11, boolean z10) {
        if ((this.f64162a & 4) != 0) {
            if (z10) {
                dVar.i(this.f64165d - i11);
                return;
            } else {
                dVar.k(this.f64165d - i11);
                return;
            }
        }
        if (z10) {
            b(i11, ASTNode.DISCARD, dVar.f64068b);
            dVar.i(-1);
        } else {
            b(i11, ASTNode.DEOP, dVar.f64068b);
            dVar.k(-1);
        }
    }

    final boolean i(byte[] bArr, int i11) {
        this.f64162a = (short) (this.f64162a | 4);
        this.f64165d = i11;
        int[] iArr = this.f64166e;
        boolean z10 = false;
        if (iArr == null) {
            return false;
        }
        for (int i12 = iArr[0]; i12 > 0; i12 -= 2) {
            int[] iArr2 = this.f64166e;
            int i13 = iArr2[i12 - 1];
            int i14 = iArr2[i12];
            int i15 = i11 - i13;
            int i16 = 268435455 & i14;
            if ((i14 & (-268435456)) == 268435456) {
                if (i15 < -32768 || i15 > 32767) {
                    int i17 = bArr[i13] & 255;
                    if (i17 < 198) {
                        bArr[i13] = (byte) (i17 + 49);
                    } else {
                        bArr[i13] = (byte) (i17 + 20);
                    }
                    z10 = true;
                }
                bArr[i16] = (byte) (i15 >>> 8);
                bArr[i16 + 1] = (byte) i15;
            } else {
                bArr[i16] = (byte) (i15 >>> 24);
                bArr[i16 + 1] = (byte) (i15 >>> 16);
                bArr[i16 + 2] = (byte) (i15 >>> 8);
                bArr[i16 + 3] = (byte) i15;
            }
        }
        return z10;
    }

    public String toString() {
        return "L" + System.identityHashCode(this);
    }
}
