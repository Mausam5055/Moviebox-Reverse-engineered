package h10;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import org.mvel2.asm.MethodTooLargeException;

/* JADX INFO: loaded from: classes7.dex */
final class s extends r {

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    private static final int[] f64177c0 = {0, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 1, 1, 1, 2, 2, 1, 1, 1, 0, 0, 1, 2, 1, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, -1, -1, -1, -1, -1, -2, -1, -2, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -3, -4, -3, -4, -3, -3, -3, -3, -1, -2, 1, 1, 1, 2, 2, 2, 0, -1, -2, -1, -2, -1, -2, -1, -2, -1, -2, -1, -2, -1, -2, -1, -2, -1, -2, -1, -2, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -2, -1, -2, -1, -2, 0, 1, 0, 1, -1, -1, 0, 0, 1, 1, -1, 0, -1, 0, 0, 0, -3, -1, -1, -3, -3, -1, -1, -1, -1, -1, -1, -2, -2, -2, -2, -2, -2, -2, -2, 0, 1, 0, -1, -1, -1, -2, -1, -2, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, -1, 0, 0};
    private final int A;
    private b B;
    private b C;
    private int D;
    private b[] E;
    private int F;
    private b[] G;
    private b H;
    private b I;
    private d J;
    private int K;
    private d L;
    private c M;
    private final int N;
    private q O;
    private q P;
    private q Q;
    private int R;
    private int S;
    private int T;
    private int U;
    private int[] V;
    private int[] W;
    private boolean X;
    private boolean Y;
    private int Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    private int f64178a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    private int f64179b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final x f64180c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f64181d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f64182e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f64183f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f64184g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final String f64185h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f64186i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f64187j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final d f64188k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private p f64189l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private p f64190m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f64191n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private d f64192o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f64193p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private d f64194q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f64195r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private d f64196s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f64197t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private d f64198u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private b f64199v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private b f64200w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private c f64201x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final int f64202y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private final int[] f64203z;

    s(x xVar, int i11, String str, String str2, String str3, String[] strArr, int i12) {
        super(458752);
        this.f64188k = new d();
        this.f64180c = xVar;
        this.f64181d = "<init>".equals(str) ? 262144 | i11 : i11;
        this.f64182e = xVar.D(str);
        this.f64183f = str;
        this.f64184g = xVar.D(str2);
        this.f64185h = str2;
        this.A = str3 == null ? 0 : xVar.D(str3);
        if (strArr == null || strArr.length <= 0) {
            this.f64202y = 0;
            this.f64203z = null;
        } else {
            int length = strArr.length;
            this.f64202y = length;
            this.f64203z = new int[length];
            for (int i13 = 0; i13 < this.f64202y; i13++) {
                this.f64203z[i13] = xVar.e(strArr[i13]).f64230a;
            }
        }
        this.N = i12;
        if (i12 != 0) {
            int iC = y.c(str2) >> 2;
            iC = (i11 & 8) != 0 ? iC - 1 : iC;
            this.f64187j = iC;
            this.T = iC;
            q qVar = new q();
            this.O = qVar;
            o(qVar);
        }
    }

    private void G(int i11, q qVar) {
        q qVar2 = this.Q;
        qVar2.f64173l = new k(i11, qVar, qVar2.f64173l);
    }

    private void J() {
        p pVar = this.f64189l;
        while (true) {
            if (pVar == null) {
                break;
            }
            String str = pVar.f64159e;
            int iG = n.g(this.f64180c, str != null ? str : "java/lang/Throwable");
            q qVarE = pVar.f64157c.e();
            qVarE.f64162a = (short) (qVarE.f64162a | 2);
            q qVarE2 = pVar.f64156b.e();
            for (q qVarE3 = pVar.f64155a.e(); qVarE3 != qVarE2; qVarE3 = qVarE3.f64172k) {
                qVarE3.f64173l = new k(iG, qVarE, qVarE3.f64173l);
            }
            pVar = pVar.f64160f;
        }
        n nVar = this.O.f64171j;
        nVar.t(this.f64180c, this.f64181d, this.f64185h, this.f64187j);
        nVar.a(this);
        q qVar = this.O;
        qVar.f64174m = q.f64161n;
        int iMax = 0;
        while (qVar != q.f64161n) {
            q qVar2 = qVar.f64174m;
            qVar.f64174m = null;
            qVar.f64162a = (short) (qVar.f64162a | 8);
            int i11 = qVar.f64171j.i() + qVar.f64169h;
            if (i11 > iMax) {
                iMax = i11;
            }
            for (k kVar = qVar.f64173l; kVar != null; kVar = kVar.f64127c) {
                q qVarE4 = kVar.f64126b.e();
                if (qVar.f64171j.l(this.f64180c, qVarE4.f64171j, kVar.f64125a) && qVarE4.f64174m == null) {
                    qVarE4.f64174m = qVar2;
                    qVar2 = qVarE4;
                }
            }
            qVar = qVar2;
        }
        for (q qVar3 = this.O; qVar3 != null; qVar3 = qVar3.f64172k) {
            if ((qVar3.f64162a & 10) == 10) {
                qVar3.f64171j.a(this);
            }
            if ((qVar3.f64162a & 8) == 0) {
                q qVar4 = qVar3.f64172k;
                int i12 = qVar3.f64165d;
                int i13 = (qVar4 == null ? this.f64188k.f64068b : qVar4.f64165d) - 1;
                if (i13 >= i12) {
                    for (int i14 = i12; i14 < i13; i14++) {
                        this.f64188k.f64067a[i14] = 0;
                    }
                    this.f64188k.f64067a[i13] = -65;
                    this.W[V(i12, 0, 1)] = n.g(this.f64180c, "java/lang/Throwable");
                    U();
                    this.f64189l = p.d(this.f64189l, qVar3, qVar4);
                    iMax = Math.max(iMax, 1);
                }
            }
        }
        this.f64186i = iMax;
    }

    private void K() {
        for (p pVar = this.f64189l; pVar != null; pVar = pVar.f64160f) {
            q qVar = pVar.f64157c;
            q qVar2 = pVar.f64156b;
            for (q qVar3 = pVar.f64155a; qVar3 != qVar2; qVar3 = qVar3.f64172k) {
                if ((qVar3.f64162a & 16) == 0) {
                    qVar3.f64173l = new k(Integer.MAX_VALUE, qVar, qVar3.f64173l);
                } else {
                    k kVar = qVar3.f64173l.f64127c;
                    kVar.f64127c = new k(Integer.MAX_VALUE, qVar, kVar.f64127c);
                }
            }
        }
        if (this.X) {
            this.O.f((short) 1);
            short s11 = 1;
            for (short s12 = 1; s12 <= s11; s12 = (short) (s12 + 1)) {
                for (q qVar4 = this.O; qVar4 != null; qVar4 = qVar4.f64172k) {
                    if ((qVar4.f64162a & 16) != 0 && qVar4.f64170i == s12) {
                        q qVar5 = qVar4.f64173l.f64127c.f64126b;
                        if (qVar5.f64170i == 0) {
                            s11 = (short) (s11 + 1);
                            qVar5.f(s11);
                        }
                    }
                }
            }
            for (q qVar6 = this.O; qVar6 != null; qVar6 = qVar6.f64172k) {
                if ((qVar6.f64162a & 16) != 0) {
                    qVar6.f64173l.f64127c.f64126b.d(qVar6);
                }
            }
        }
        q qVar7 = this.O;
        qVar7.f64174m = q.f64161n;
        int i11 = this.f64186i;
        while (qVar7 != q.f64161n) {
            q qVar8 = qVar7.f64174m;
            short s13 = qVar7.f64167f;
            int i12 = qVar7.f64169h + s13;
            if (i12 > i11) {
                i11 = i12;
            }
            k kVar2 = qVar7.f64173l;
            if ((qVar7.f64162a & 16) != 0) {
                kVar2 = kVar2.f64127c;
            }
            qVar7 = qVar8;
            while (kVar2 != null) {
                q qVar9 = kVar2.f64126b;
                if (qVar9.f64174m == null) {
                    int i13 = kVar2.f64125a;
                    qVar9.f64167f = (short) (i13 == Integer.MAX_VALUE ? 1 : i13 + s13);
                    qVar9.f64174m = qVar7;
                    qVar7 = qVar9;
                }
                kVar2 = kVar2.f64127c;
            }
        }
        this.f64186i = i11;
    }

    private void M() {
        int i11 = this.N;
        if (i11 != 4) {
            if (i11 == 1) {
                this.Q.f64169h = (short) this.S;
                this.Q = null;
                return;
            }
            return;
        }
        q qVar = new q();
        qVar.f64171j = new n(qVar);
        d dVar = this.f64188k;
        qVar.i(dVar.f64067a, dVar.f64068b);
        this.P.f64172k = qVar;
        this.P = qVar;
        this.Q = null;
    }

    private void P(int i11, int i12) {
        while (i11 < i12) {
            n.r(this.f64180c, this.W[i11], this.f64198u);
            i11++;
        }
    }

    private void Q() {
        char c11;
        int[] iArr = this.W;
        int i11 = iArr[1];
        int i12 = iArr[2];
        if (this.f64180c.R() < 50) {
            this.f64198u.k(this.W[0]).k(i11);
            int i13 = i11 + 3;
            P(3, i13);
            this.f64198u.k(i12);
            P(i13, i12 + i13);
            return;
        }
        int i14 = this.f64197t == 0 ? this.W[0] : (this.W[0] - this.V[0]) - 1;
        int i15 = this.V[1];
        int i16 = i11 - i15;
        if (i12 == 0) {
            switch (i16) {
                case -3:
                case -2:
                case -1:
                    c11 = 248;
                    break;
                case 0:
                    c11 = i14 < 64 ? (char) 0 : (char) 251;
                    break;
                case 1:
                case 2:
                case 3:
                    c11 = 252;
                    break;
                default:
                    c11 = 255;
                    break;
            }
        } else if (i16 == 0 && i12 == 1) {
            c11 = i14 < 63 ? '@' : (char) 247;
        } else {
            c11 = 255;
        }
        if (c11 != 255) {
            int i17 = 3;
            for (int i18 = 0; i18 < i15 && i18 < i11; i18++) {
                if (this.W[i17] != this.V[i17]) {
                    c11 = 255;
                } else {
                    i17++;
                }
            }
        }
        if (c11 == 0) {
            this.f64198u.g(i14);
            return;
        }
        if (c11 == '@') {
            this.f64198u.g(i14 + 64);
            P(i11 + 3, i11 + 4);
            return;
        }
        if (c11 == 247) {
            this.f64198u.g(247).k(i14);
            P(i11 + 3, i11 + 4);
            return;
        }
        if (c11 == 248) {
            this.f64198u.g(i16 + 251).k(i14);
            return;
        }
        if (c11 == 251) {
            this.f64198u.g(251).k(i14);
            return;
        }
        if (c11 == 252) {
            this.f64198u.g(i16 + 251).k(i14);
            P(i15 + 3, i11 + 3);
            return;
        }
        this.f64198u.g(255).k(i14).k(i11);
        int i19 = i11 + 3;
        P(3, i19);
        this.f64198u.k(i12);
        P(i19, i12 + i19);
    }

    private void R(Object obj) {
        if (obj instanceof Integer) {
            this.f64198u.g(((Integer) obj).intValue());
        } else if (obj instanceof String) {
            this.f64198u.g(7).k(this.f64180c.e((String) obj).f64230a);
        } else {
            this.f64198u.g(8).k(((q) obj).f64165d);
        }
    }

    private void W(q qVar, q[] qVarArr) {
        q qVar2 = this.Q;
        if (qVar2 != null) {
            int i11 = this.N;
            if (i11 == 4) {
                qVar2.f64171j.d(171, 0, null, null);
                G(0, qVar);
                q qVarE = qVar.e();
                qVarE.f64162a = (short) (qVarE.f64162a | 2);
                for (q qVar3 : qVarArr) {
                    G(0, qVar3);
                    q qVarE2 = qVar3.e();
                    qVarE2.f64162a = (short) (qVarE2.f64162a | 2);
                }
            } else if (i11 == 1) {
                int i12 = this.R - 1;
                this.R = i12;
                G(i12, qVar);
                for (q qVar4 : qVarArr) {
                    G(this.R, qVar4);
                }
            }
            M();
        }
    }

    @Override // h10.r
    public void A(int i11, int i12, q qVar, q... qVarArr) {
        d dVar = this.f64188k;
        this.Z = dVar.f64068b;
        dVar.g(170).h(null, 0, (4 - (this.f64188k.f64068b % 4)) % 4);
        qVar.h(this.f64188k, this.Z, true);
        this.f64188k.i(i11).i(i12);
        for (q qVar2 : qVarArr) {
            qVar2.h(this.f64188k, this.Z, true);
        }
        W(qVar, qVarArr);
    }

    @Override // h10.r
    public a B(int i11, z zVar, String str, boolean z10) {
        d dVar = new d();
        a0.a(i11, dVar);
        z.d(zVar, dVar);
        dVar.k(this.f64180c.D(str)).k(0);
        if (z10) {
            b bVar = new b(this.f64180c, dVar, this.f64199v);
            this.f64199v = bVar;
            return bVar;
        }
        b bVar2 = new b(this.f64180c, dVar, this.f64200w);
        this.f64200w = bVar2;
        return bVar2;
    }

    @Override // h10.r
    public void C(q qVar, q qVar2, q qVar3, String str) {
        p pVar = new p(qVar, qVar2, qVar3, str != null ? this.f64180c.e(str).f64230a : 0, str);
        if (this.f64189l == null) {
            this.f64189l = pVar;
        } else {
            this.f64190m.f64160f = pVar;
        }
        this.f64190m = pVar;
    }

    @Override // h10.r
    public a D(int i11, z zVar, String str, boolean z10) {
        d dVar = new d();
        a0.a(i11, dVar);
        z.d(zVar, dVar);
        dVar.k(this.f64180c.D(str)).k(0);
        if (z10) {
            b bVar = new b(this.f64180c, dVar, this.H);
            this.H = bVar;
            return bVar;
        }
        b bVar2 = new b(this.f64180c, dVar, this.I);
        this.I = bVar2;
        return bVar2;
    }

    @Override // h10.r
    public void E(int i11, String str) {
        this.Z = this.f64188k.f64068b;
        w wVarE = this.f64180c.e(str);
        this.f64188k.e(i11, wVarE.f64230a);
        q qVar = this.Q;
        if (qVar != null) {
            int i12 = this.N;
            if (i12 == 4 || i12 == 3) {
                qVar.f64171j.d(i11, this.Z, wVarE, this.f64180c);
            } else if (i11 == 187) {
                int i13 = this.R + 1;
                if (i13 > this.S) {
                    this.S = i13;
                }
                this.R = i13;
            }
        }
    }

    @Override // h10.r
    public void F(int i11, int i12) {
        d dVar = this.f64188k;
        this.Z = dVar.f64068b;
        if (i12 < 4 && i11 != 169) {
            dVar.g((i11 < 54 ? ((i11 - 21) << 2) + 26 : ((i11 - 54) << 2) + 59) + i12);
        } else if (i12 >= 256) {
            dVar.g(196).e(i11, i12);
        } else {
            dVar.c(i11, i12);
        }
        q qVar = this.Q;
        if (qVar != null) {
            int i13 = this.N;
            if (i13 == 4 || i13 == 3) {
                qVar.f64171j.d(i11, i12, null, null);
            } else if (i11 == 169) {
                qVar.f64162a = (short) (qVar.f64162a | 64);
                qVar.f64168g = (short) this.R;
                M();
            } else {
                int i14 = this.R + f64177c0[i11];
                if (i14 > this.S) {
                    this.S = i14;
                }
                this.R = i14;
            }
        }
        int i15 = this.N;
        if (i15 != 0) {
            int i16 = (i11 == 22 || i11 == 24 || i11 == 55 || i11 == 57) ? i12 + 2 : i12 + 1;
            if (i16 > this.f64187j) {
                this.f64187j = i16;
            }
        }
        if (i11 < 54 || i15 != 4 || this.f64189l == null) {
            return;
        }
        o(new q());
    }

    boolean H(e eVar, int i11, int i12, boolean z10, boolean z11, int i13, int i14, int i15) {
        if (eVar == this.f64180c.S() && i13 == this.f64184g && i14 == this.A) {
            if (z11 == ((this.f64181d & 131072) != 0)) {
                if (z10 != (this.f64180c.R() < 49 && (this.f64181d & 4096) != 0)) {
                    return false;
                }
                if (i15 == 0) {
                    if (this.f64202y != 0) {
                        return false;
                    }
                } else if (eVar.H(i15) == this.f64202y) {
                    int i16 = i15 + 2;
                    for (int i17 = 0; i17 < this.f64202y; i17++) {
                        if (eVar.H(i16) != this.f64203z[i17]) {
                            return false;
                        }
                        i16 += 2;
                    }
                }
                this.f64178a0 = i11 + 6;
                this.f64179b0 = i12 - 6;
                return true;
            }
        }
        return false;
    }

    final void I(c.a aVar) {
        aVar.b(this.M);
        aVar.b(this.f64201x);
    }

    int L() {
        int iF;
        if (this.f64178a0 != 0) {
            return this.f64179b0 + 6;
        }
        int i11 = this.f64188k.f64068b;
        if (i11 <= 0) {
            iF = 8;
        } else {
            if (i11 > 65535) {
                throw new MethodTooLargeException(this.f64180c.O(), this.f64183f, this.f64185h, this.f64188k.f64068b);
            }
            this.f64180c.D("Code");
            iF = this.f64188k.f64068b + 16 + p.b(this.f64189l) + 8;
            if (this.f64198u != null) {
                this.f64180c.D(this.f64180c.R() >= 50 ? "StackMapTable" : "StackMap");
                iF += this.f64198u.f64068b + 8;
            }
            if (this.f64192o != null) {
                this.f64180c.D("LineNumberTable");
                iF += this.f64192o.f64068b + 8;
            }
            if (this.f64194q != null) {
                this.f64180c.D("LocalVariableTable");
                iF += this.f64194q.f64068b + 8;
            }
            if (this.f64196s != null) {
                this.f64180c.D("LocalVariableTypeTable");
                iF += this.f64196s.f64068b + 8;
            }
            b bVar = this.f64199v;
            if (bVar != null) {
                iF += bVar.f("RuntimeVisibleTypeAnnotations");
            }
            b bVar2 = this.f64200w;
            if (bVar2 != null) {
                iF += bVar2.f("RuntimeInvisibleTypeAnnotations");
            }
            c cVar = this.f64201x;
            if (cVar != null) {
                x xVar = this.f64180c;
                d dVar = this.f64188k;
                iF += cVar.b(xVar, dVar.f64067a, dVar.f64068b, this.f64186i, this.f64187j);
            }
        }
        if (this.f64202y > 0) {
            this.f64180c.D("Exceptions");
            iF += (this.f64202y * 2) + 8;
        }
        boolean z10 = this.f64180c.R() < 49;
        if ((this.f64181d & 4096) != 0 && z10) {
            this.f64180c.D("Synthetic");
            iF += 6;
        }
        if (this.A != 0) {
            this.f64180c.D(RequestParameters.SIGNATURE);
            iF += 8;
        }
        if ((this.f64181d & 131072) != 0) {
            this.f64180c.D("Deprecated");
            iF += 6;
        }
        b bVar3 = this.B;
        if (bVar3 != null) {
            iF += bVar3.f("RuntimeVisibleAnnotations");
        }
        b bVar4 = this.C;
        if (bVar4 != null) {
            iF += bVar4.f("RuntimeInvisibleAnnotations");
        }
        b[] bVarArr = this.E;
        if (bVarArr != null) {
            int length = this.D;
            if (length == 0) {
                length = bVarArr.length;
            }
            iF += b.g("RuntimeVisibleParameterAnnotations", bVarArr, length);
        }
        b[] bVarArr2 = this.G;
        if (bVarArr2 != null) {
            int length2 = this.F;
            if (length2 == 0) {
                length2 = bVarArr2.length;
            }
            iF += b.g("RuntimeInvisibleParameterAnnotations", bVarArr2, length2);
        }
        b bVar5 = this.H;
        if (bVar5 != null) {
            iF += bVar5.f("RuntimeVisibleTypeAnnotations");
        }
        b bVar6 = this.I;
        if (bVar6 != null) {
            iF += bVar6.f("RuntimeInvisibleTypeAnnotations");
        }
        if (this.J != null) {
            this.f64180c.D("AnnotationDefault");
            iF += this.J.f64068b + 6;
        }
        if (this.L != null) {
            this.f64180c.D("MethodParameters");
            iF += this.L.f64068b + 7;
        }
        c cVar2 = this.M;
        return cVar2 != null ? iF + cVar2.a(this.f64180c) : iF;
    }

    boolean N() {
        return this.Y;
    }

    boolean O() {
        return this.f64197t > 0;
    }

    /* JADX WARN: Failed to calculate best type for var: r1v61 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r1v61 ??, new type: h10.d
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.calculateFromBounds(FixTypesVisitor.java:159)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.setBestType(FixTypesVisitor.java:136)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:241)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:224)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r1v61 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r1v61 ??, new type: h10.d
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$1(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(Unknown Source)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r1v68 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r1v68 ??, new type: h10.d
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.calculateFromBounds(FixTypesVisitor.java:159)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.setBestType(FixTypesVisitor.java:136)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:241)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:224)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r1v68 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r1v68 ??, new type: h10.d
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$1(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(Unknown Source)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r23v0 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r23v0 ??, new type: h10.d
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$1(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(Unknown Source)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r2v47 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r2v47 ??, new type: int
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.calculateFromBounds(FixTypesVisitor.java:159)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.setBestType(FixTypesVisitor.java:136)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:241)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:224)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r2v47 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r2v47 ??, new type: int
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$1(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(Unknown Source)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r2v48 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r2v48 ??, new type: int
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$1(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(Unknown Source)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r2v49 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r2v49 ??, new type: int
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$1(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(Unknown Source)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to set immutable type for var: r23v0 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r23v0 ??, new type: h10.d
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.applyWithWiderIgnSame(TypeUpdate.java:73)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setImmutableType(TypeInferenceVisitor.java:111)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$0(TypeInferenceVisitor.java:102)
    	at java.base/java.util.ArrayList.forEach(Unknown Source)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:102)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
     */
    /*  JADX ERROR: Types fix failed
        jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r2v47 ??, new type: int
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryPossibleTypes(FixTypesVisitor.java:186)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:245)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:224)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
        Caused by: java.lang.NullPointerException
        */
    void S(h10.d r23) {
        /*
            Method dump skipped, instruction units count: 870
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: h10.s.S(h10.d):void");
    }

    void T(int i11, int i12) {
        this.W[i11] = i12;
    }

    void U() {
        if (this.V != null) {
            if (this.f64198u == null) {
                this.f64198u = new d();
            }
            Q();
            this.f64197t++;
        }
        this.V = this.W;
        this.W = null;
    }

    int V(int i11, int i12, int i13) {
        int i14 = i12 + 3 + i13;
        int[] iArr = this.W;
        if (iArr == null || iArr.length < i14) {
            this.W = new int[i14];
        }
        int[] iArr2 = this.W;
        iArr2[0] = i11;
        iArr2[1] = i12;
        iArr2[2] = i13;
        return 3;
    }

    @Override // h10.r
    public void a(int i11, boolean z10) {
        if (z10) {
            this.D = i11;
        } else {
            this.F = i11;
        }
    }

    @Override // h10.r
    public a b(String str, boolean z10) {
        d dVar = new d();
        dVar.k(this.f64180c.D(str)).k(0);
        if (z10) {
            b bVar = new b(this.f64180c, dVar, this.B);
            this.B = bVar;
            return bVar;
        }
        b bVar2 = new b(this.f64180c, dVar, this.C);
        this.C = bVar2;
        return bVar2;
    }

    @Override // h10.r
    public a c() {
        d dVar = new d();
        this.J = dVar;
        return new b(this.f64180c, false, dVar, null);
    }

    @Override // h10.r
    public void d(c cVar) {
        if (cVar.d()) {
            cVar.f64064c = this.f64201x;
            this.f64201x = cVar;
        } else {
            cVar.f64064c = this.M;
            this.M = cVar;
        }
    }

    @Override // h10.r
    public void e() {
    }

    @Override // h10.r
    public void f() {
    }

    @Override // h10.r
    public void g(int i11, String str, String str2, String str3) {
        int i12;
        int i13;
        this.Z = this.f64188k.f64068b;
        w wVarJ = this.f64180c.j(str, str2, str3);
        this.f64188k.e(i11, wVarJ.f64230a);
        q qVar = this.Q;
        if (qVar != null) {
            int i14 = this.N;
            if (i14 == 4 || i14 == 3) {
                qVar.f64171j.d(i11, 0, wVarJ, this.f64180c);
                return;
            }
            char cCharAt = str3.charAt(0);
            int i15 = -2;
            switch (i11) {
                case 178:
                    i12 = this.R + ((cCharAt == 'D' || cCharAt == 'J') ? 2 : 1);
                    break;
                case 179:
                    i13 = this.R;
                    if (cCharAt != 'D' && cCharAt != 'J') {
                        i15 = -1;
                    }
                    i12 = i13 + i15;
                    break;
                case 180:
                    i12 = this.R + ((cCharAt == 'D' || cCharAt == 'J') ? 1 : 0);
                    break;
                default:
                    i13 = this.R;
                    if (cCharAt == 'D' || cCharAt == 'J') {
                        i15 = -3;
                    }
                    i12 = i13 + i15;
                    break;
            }
            if (i12 > this.S) {
                this.S = i12;
            }
            this.R = i12;
        }
    }

    @Override // h10.r
    public void h(int i11, int i12, Object[] objArr, int i13, Object[] objArr2) {
        int i14;
        int i15 = this.N;
        if (i15 == 4) {
            return;
        }
        if (i15 == 3) {
            q qVar = this.Q;
            n nVar = qVar.f64171j;
            if (nVar == null) {
                qVar.f64171j = new j(qVar);
                this.Q.f64171j.t(this.f64180c, this.f64181d, this.f64185h, i12);
                this.Q.f64171j.a(this);
            } else {
                if (i11 == -1) {
                    nVar.s(this.f64180c, i12, objArr, i13, objArr2);
                }
                this.Q.f64171j.a(this);
            }
        } else if (i11 == -1) {
            if (this.V == null) {
                int iC = y.c(this.f64185h) >> 2;
                n nVar2 = new n(new q());
                nVar2.t(this.f64180c, this.f64181d, this.f64185h, iC);
                nVar2.a(this);
            }
            this.T = i12;
            int iV = V(this.f64188k.f64068b, i12, i13);
            int i16 = 0;
            while (i16 < i12) {
                this.W[iV] = n.e(this.f64180c, objArr[i16]);
                i16++;
                iV++;
            }
            int i17 = 0;
            while (i17 < i13) {
                this.W[iV] = n.e(this.f64180c, objArr2[i17]);
                i17++;
                iV++;
            }
            U();
        } else {
            if (this.f64198u == null) {
                this.f64198u = new d();
                i14 = this.f64188k.f64068b;
            } else {
                i14 = (this.f64188k.f64068b - this.U) - 1;
                if (i14 < 0) {
                    if (i11 != 3) {
                        throw new IllegalStateException();
                    }
                    return;
                }
            }
            if (i11 == 0) {
                this.T = i12;
                this.f64198u.g(255).k(i14).k(i12);
                for (int i18 = 0; i18 < i12; i18++) {
                    R(objArr[i18]);
                }
                this.f64198u.k(i13);
                for (int i19 = 0; i19 < i13; i19++) {
                    R(objArr2[i19]);
                }
            } else if (i11 == 1) {
                this.T += i12;
                this.f64198u.g(i12 + 251).k(i14);
                for (int i20 = 0; i20 < i12; i20++) {
                    R(objArr[i20]);
                }
            } else if (i11 == 2) {
                this.T -= i12;
                this.f64198u.g(251 - i12).k(i14);
            } else if (i11 != 3) {
                if (i11 != 4) {
                    throw new IllegalArgumentException();
                }
                if (i14 < 64) {
                    this.f64198u.g(i14 + 64);
                } else {
                    this.f64198u.g(247).k(i14);
                }
                R(objArr2[0]);
            } else if (i14 < 64) {
                this.f64198u.g(i14);
            } else {
                this.f64198u.g(251).k(i14);
            }
            this.U = this.f64188k.f64068b;
            this.f64197t++;
        }
        if (this.N == 2) {
            this.R = i13;
            for (int i21 = 0; i21 < i13; i21++) {
                Object obj = objArr2[i21];
                if (obj == v.f64227e || obj == v.f64226d) {
                    this.R++;
                }
            }
            int i22 = this.R;
            if (i22 > this.S) {
                this.S = i22;
            }
        }
        this.f64186i = Math.max(this.f64186i, i13);
        this.f64187j = Math.max(this.f64187j, this.T);
    }

    @Override // h10.r
    public void i(int i11, int i12) {
        int i13;
        int i14;
        d dVar = this.f64188k;
        this.Z = dVar.f64068b;
        if (i11 > 255 || i12 > 127 || i12 < -128) {
            dVar.g(196).e(Sdk$SDKError.Reason.OMSDK_DOWNLOAD_JS_ERROR_VALUE, i11).k(i12);
        } else {
            dVar.g(Sdk$SDKError.Reason.OMSDK_DOWNLOAD_JS_ERROR_VALUE).c(i11, i12);
        }
        q qVar = this.Q;
        if (qVar != null && ((i14 = this.N) == 4 || i14 == 3)) {
            qVar.f64171j.d(Sdk$SDKError.Reason.OMSDK_DOWNLOAD_JS_ERROR_VALUE, i11, null, null);
        }
        if (this.N == 0 || (i13 = i11 + 1) <= this.f64187j) {
            return;
        }
        this.f64187j = i13;
    }

    @Override // h10.r
    public void j(int i11) {
        d dVar = this.f64188k;
        this.Z = dVar.f64068b;
        dVar.g(i11);
        q qVar = this.Q;
        if (qVar != null) {
            int i12 = this.N;
            if (i12 == 4 || i12 == 3) {
                qVar.f64171j.d(i11, 0, null, null);
            } else {
                int i13 = this.R + f64177c0[i11];
                if (i13 > this.S) {
                    this.S = i13;
                }
                this.R = i13;
            }
            if ((i11 < 172 || i11 > 177) && i11 != 191) {
                return;
            }
            M();
        }
    }

    @Override // h10.r
    public a k(int i11, z zVar, String str, boolean z10) {
        d dVar = new d();
        a0.a((i11 & (-16776961)) | (this.Z << 8), dVar);
        z.d(zVar, dVar);
        dVar.k(this.f64180c.D(str)).k(0);
        if (z10) {
            b bVar = new b(this.f64180c, dVar, this.f64199v);
            this.f64199v = bVar;
            return bVar;
        }
        b bVar2 = new b(this.f64180c, dVar, this.f64200w);
        this.f64200w = bVar2;
        return bVar2;
    }

    @Override // h10.r
    public void l(int i11, int i12) {
        d dVar = this.f64188k;
        this.Z = dVar.f64068b;
        if (i11 == 17) {
            dVar.e(i11, i12);
        } else {
            dVar.c(i11, i12);
        }
        q qVar = this.Q;
        if (qVar != null) {
            int i13 = this.N;
            if (i13 == 4 || i13 == 3) {
                qVar.f64171j.d(i11, i12, null, null);
            } else if (i11 != 188) {
                int i14 = this.R + 1;
                if (i14 > this.S) {
                    this.S = i14;
                }
                this.R = i14;
            }
        }
    }

    @Override // h10.r
    public void m(String str, String str2, o oVar, Object... objArr) {
        this.Z = this.f64188k.f64068b;
        w wVarO = this.f64180c.o(str, str2, oVar, objArr);
        this.f64188k.e(186, wVarO.f64230a);
        this.f64188k.k(0);
        q qVar = this.Q;
        if (qVar != null) {
            int i11 = this.N;
            if (i11 == 4 || i11 == 3) {
                qVar.f64171j.d(186, 0, wVarO, this.f64180c);
                return;
            }
            int iA = wVarO.a();
            int i12 = this.R + ((iA & 3) - (iA >> 2)) + 1;
            if (i12 > this.S) {
                this.S = i12;
            }
            this.R = i12;
        }
    }

    @Override // h10.r
    public void n(int i11, q qVar) {
        boolean z10;
        d dVar = this.f64188k;
        int i12 = dVar.f64068b;
        this.Z = i12;
        int i13 = i11 >= 200 ? i11 - 33 : i11;
        if ((qVar.f64162a & 4) == 0 || qVar.f64165d - i12 >= -32768) {
            if (i13 != i11) {
                dVar.g(i11);
                d dVar2 = this.f64188k;
                qVar.h(dVar2, dVar2.f64068b - 1, true);
            } else {
                dVar.g(i13);
                d dVar3 = this.f64188k;
                qVar.h(dVar3, dVar3.f64068b - 1, false);
            }
            z10 = false;
        } else {
            if (i13 == 167) {
                dVar.g(200);
            } else {
                if (i13 == 168) {
                    dVar.g(201);
                } else {
                    dVar.g(i13 >= 198 ? i13 ^ 1 : ((i13 + 1) ^ 1) - 1);
                    this.f64188k.k(8);
                    this.f64188k.g(Sdk$SDKError.Reason.AD_RESPONSE_RETRY_AFTER_VALUE);
                    this.Y = true;
                    z10 = true;
                }
                d dVar4 = this.f64188k;
                qVar.h(dVar4, dVar4.f64068b - 1, true);
            }
            z10 = false;
            d dVar5 = this.f64188k;
            qVar.h(dVar5, dVar5.f64068b - 1, true);
        }
        q qVar2 = this.Q;
        if (qVar2 != null) {
            int i14 = this.N;
            q qVar3 = null;
            if (i14 == 4) {
                qVar2.f64171j.d(i13, 0, null, null);
                q qVarE = qVar.e();
                qVarE.f64162a = (short) (qVarE.f64162a | 2);
                G(0, qVar);
                if (i13 != 167) {
                    qVar3 = new q();
                }
            } else if (i14 == 3) {
                qVar2.f64171j.d(i13, 0, null, null);
            } else if (i14 == 2) {
                this.R += f64177c0[i13];
            } else if (i13 == 168) {
                short s11 = qVar.f64162a;
                if ((s11 & 32) == 0) {
                    qVar.f64162a = (short) (s11 | 32);
                    this.X = true;
                }
                qVar2.f64162a = (short) (qVar2.f64162a | 16);
                G(this.R + 1, qVar);
                qVar3 = new q();
            } else {
                int i15 = this.R + f64177c0[i13];
                this.R = i15;
                G(i15, qVar);
            }
            if (qVar3 != null) {
                if (z10) {
                    qVar3.f64162a = (short) (qVar3.f64162a | 2);
                }
                o(qVar3);
            }
            if (i13 == 167) {
                M();
            }
        }
    }

    @Override // h10.r
    public void o(q qVar) {
        boolean z10 = this.Y;
        d dVar = this.f64188k;
        this.Y = z10 | qVar.i(dVar.f64067a, dVar.f64068b);
        short s11 = qVar.f64162a;
        if ((s11 & 1) != 0) {
            return;
        }
        int i11 = this.N;
        if (i11 == 4) {
            q qVar2 = this.Q;
            if (qVar2 != null) {
                if (qVar.f64165d == qVar2.f64165d) {
                    qVar2.f64162a = (short) ((s11 & 2) | qVar2.f64162a);
                    qVar.f64171j = qVar2.f64171j;
                    return;
                }
                G(0, qVar);
            }
            q qVar3 = this.P;
            if (qVar3 != null) {
                if (qVar.f64165d == qVar3.f64165d) {
                    qVar3.f64162a = (short) (qVar3.f64162a | (qVar.f64162a & 2));
                    qVar.f64171j = qVar3.f64171j;
                    this.Q = qVar3;
                    return;
                }
                qVar3.f64172k = qVar;
            }
            this.P = qVar;
            this.Q = qVar;
            qVar.f64171j = new n(qVar);
            return;
        }
        if (i11 == 3) {
            q qVar4 = this.Q;
            if (qVar4 == null) {
                this.Q = qVar;
                return;
            } else {
                qVar4.f64171j.f64141a = qVar;
                return;
            }
        }
        if (i11 != 1) {
            if (i11 == 2 && this.Q == null) {
                this.Q = qVar;
                return;
            }
            return;
        }
        q qVar5 = this.Q;
        if (qVar5 != null) {
            qVar5.f64169h = (short) this.S;
            G(this.R, qVar);
        }
        this.Q = qVar;
        this.R = 0;
        this.S = 0;
        q qVar6 = this.P;
        if (qVar6 != null) {
            qVar6.f64172k = qVar;
        }
        this.P = qVar;
    }

    @Override // h10.r
    public void p(Object obj) {
        char cCharAt;
        this.Z = this.f64188k.f64068b;
        w wVarD = this.f64180c.d(obj);
        int i11 = wVarD.f64230a;
        int i12 = wVarD.f64231b;
        boolean z10 = i12 == 5 || i12 == 6 || (i12 == 17 && ((cCharAt = wVarD.f64234e.charAt(0)) == 'J' || cCharAt == 'D'));
        if (z10) {
            this.f64188k.e(20, i11);
        } else if (i11 >= 256) {
            this.f64188k.e(19, i11);
        } else {
            this.f64188k.c(18, i11);
        }
        q qVar = this.Q;
        if (qVar != null) {
            int i13 = this.N;
            if (i13 == 4 || i13 == 3) {
                qVar.f64171j.d(18, 0, wVarD, this.f64180c);
                return;
            }
            int i14 = this.R + (z10 ? 2 : 1);
            if (i14 > this.S) {
                this.S = i14;
            }
            this.R = i14;
        }
    }

    @Override // h10.r
    public void q(int i11, q qVar) {
        if (this.f64192o == null) {
            this.f64192o = new d();
        }
        this.f64191n++;
        this.f64192o.k(qVar.f64165d);
        this.f64192o.k(i11);
    }

    @Override // h10.r
    public void r(String str, String str2, String str3, q qVar, q qVar2, int i11) {
        if (str3 != null) {
            if (this.f64196s == null) {
                this.f64196s = new d();
            }
            this.f64195r++;
            this.f64196s.k(qVar.f64165d).k(qVar2.f64165d - qVar.f64165d).k(this.f64180c.D(str)).k(this.f64180c.D(str3)).k(i11);
        }
        if (this.f64194q == null) {
            this.f64194q = new d();
        }
        this.f64193p++;
        this.f64194q.k(qVar.f64165d).k(qVar2.f64165d - qVar.f64165d).k(this.f64180c.D(str)).k(this.f64180c.D(str2)).k(i11);
        if (this.N != 0) {
            char cCharAt = str2.charAt(0);
            int i12 = i11 + ((cCharAt == 'J' || cCharAt == 'D') ? 2 : 1);
            if (i12 > this.f64187j) {
                this.f64187j = i12;
            }
        }
    }

    @Override // h10.r
    public a s(int i11, z zVar, q[] qVarArr, q[] qVarArr2, int[] iArr, String str, boolean z10) {
        d dVar = new d();
        dVar.g(i11 >>> 24).k(qVarArr.length);
        for (int i12 = 0; i12 < qVarArr.length; i12++) {
            dVar.k(qVarArr[i12].f64165d).k(qVarArr2[i12].f64165d - qVarArr[i12].f64165d).k(iArr[i12]);
        }
        z.d(zVar, dVar);
        dVar.k(this.f64180c.D(str)).k(0);
        if (z10) {
            b bVar = new b(this.f64180c, dVar, this.f64199v);
            this.f64199v = bVar;
            return bVar;
        }
        b bVar2 = new b(this.f64180c, dVar, this.f64200w);
        this.f64200w = bVar2;
        return bVar2;
    }

    @Override // h10.r
    public void t(q qVar, int[] iArr, q[] qVarArr) {
        d dVar = this.f64188k;
        this.Z = dVar.f64068b;
        dVar.g(171).h(null, 0, (4 - (this.f64188k.f64068b % 4)) % 4);
        qVar.h(this.f64188k, this.Z, true);
        this.f64188k.i(qVarArr.length);
        for (int i11 = 0; i11 < qVarArr.length; i11++) {
            this.f64188k.i(iArr[i11]);
            qVarArr[i11].h(this.f64188k, this.Z, true);
        }
        W(qVar, qVarArr);
    }

    @Override // h10.r
    public void u(int i11, int i12) {
        int i13 = this.N;
        if (i13 == 4) {
            J();
            return;
        }
        if (i13 == 1) {
            K();
        } else if (i13 == 2) {
            this.f64186i = this.S;
        } else {
            this.f64186i = i11;
            this.f64187j = i12;
        }
    }

    @Override // h10.r
    public void w(int i11, String str, String str2, String str3, boolean z10) {
        this.Z = this.f64188k.f64068b;
        w wVarX = this.f64180c.x(str, str2, str3, z10);
        if (i11 == 185) {
            this.f64188k.e(185, wVarX.f64230a).c(wVarX.a() >> 2, 0);
        } else {
            this.f64188k.e(i11, wVarX.f64230a);
        }
        q qVar = this.Q;
        if (qVar != null) {
            int i12 = this.N;
            if (i12 == 4 || i12 == 3) {
                qVar.f64171j.d(i11, 0, wVarX, this.f64180c);
                return;
            }
            int iA = wVarX.a();
            int i13 = (iA & 3) - (iA >> 2);
            int i14 = i11 == 184 ? this.R + i13 + 1 : this.R + i13;
            if (i14 > this.S) {
                this.S = i14;
            }
            this.R = i14;
        }
    }

    @Override // h10.r
    public void x(String str, int i11) {
        this.Z = this.f64188k.f64068b;
        w wVarE = this.f64180c.e(str);
        this.f64188k.e(197, wVarE.f64230a).g(i11);
        q qVar = this.Q;
        if (qVar != null) {
            int i12 = this.N;
            if (i12 == 4 || i12 == 3) {
                qVar.f64171j.d(197, i11, wVarE, this.f64180c);
            } else {
                this.R += 1 - i11;
            }
        }
    }

    @Override // h10.r
    public void y(String str, int i11) {
        if (this.L == null) {
            this.L = new d();
        }
        this.K++;
        this.L.k(str == null ? 0 : this.f64180c.D(str)).k(i11);
    }

    @Override // h10.r
    public a z(int i11, String str, boolean z10) {
        d dVar = new d();
        dVar.k(this.f64180c.D(str)).k(0);
        if (z10) {
            if (this.E == null) {
                this.E = new b[y.b(this.f64185h).length];
            }
            b[] bVarArr = this.E;
            b bVar = new b(this.f64180c, dVar, bVarArr[i11]);
            bVarArr[i11] = bVar;
            return bVar;
        }
        if (this.G == null) {
            this.G = new b[y.b(this.f64185h).length];
        }
        b[] bVarArr2 = this.G;
        b bVar2 = new b(this.f64180c, dVar, bVarArr2[i11]);
        bVarArr2[i11] = bVar2;
        return bVar2;
    }
}
