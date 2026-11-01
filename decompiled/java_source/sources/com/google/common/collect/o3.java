package com.google.common.collect;

import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
class o3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    transient Object[] f30832a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    transient int[] f30833b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    transient int f30834c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    transient int f30835d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private transient int[] f30836e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    transient long[] f30837f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private transient float f30838g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private transient int f30839h;

    class a extends Multisets.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Object f30840a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f30841b;

        a(int i11) {
            this.f30840a = o3.this.f30832a[i11];
            this.f30841b = i11;
        }

        void a() {
            int i11 = this.f30841b;
            if (i11 == -1 || i11 >= o3.this.C() || !com.google.common.base.j.a(this.f30840a, o3.this.f30832a[this.f30841b])) {
                this.f30841b = o3.this.m(this.f30840a);
            }
        }

        @Override // com.google.common.collect.l3.a
        public int getCount() {
            a();
            int i11 = this.f30841b;
            if (i11 == -1) {
                return 0;
            }
            return o3.this.f30833b[i11];
        }

        @Override // com.google.common.collect.l3.a
        public Object getElement() {
            return this.f30840a;
        }
    }

    o3() {
        n(3, 1.0f);
    }

    o3(int i11) {
        this(i11, 1.0f);
    }

    o3(int i11, float f11) {
        n(i11, f11);
    }

    o3(o3 o3Var) {
        n(o3Var.C(), 1.0f);
        int iE = o3Var.e();
        while (iE != -1) {
            u(o3Var.i(iE), o3Var.k(iE));
            iE = o3Var.s(iE);
        }
    }

    private void A(int i11) {
        if (this.f30836e.length >= 1073741824) {
            this.f30839h = Integer.MAX_VALUE;
            return;
        }
        int i12 = ((int) (i11 * this.f30838g)) + 1;
        int[] iArrR = r(i11);
        long[] jArr = this.f30837f;
        int length = iArrR.length - 1;
        for (int i13 = 0; i13 < this.f30834c; i13++) {
            int iH = h(jArr[i13]);
            int i14 = iH & length;
            int i15 = iArrR[i14];
            iArrR[i14] = i13;
            jArr[i13] = (((long) iH) << 32) | (((long) i15) & 4294967295L);
        }
        this.f30839h = i12;
        this.f30836e = iArrR;
    }

    private static long D(long j11, int i11) {
        return (j11 & (-4294967296L)) | (4294967295L & ((long) i11));
    }

    static o3 b() {
        return new o3();
    }

    static o3 c(int i11) {
        return new o3(i11);
    }

    private static int h(long j11) {
        return (int) (j11 >>> 32);
    }

    private static int j(long j11) {
        return (int) j11;
    }

    private int l() {
        return this.f30836e.length - 1;
    }

    private static long[] q(int i11) {
        long[] jArr = new long[i11];
        Arrays.fill(jArr, -1L);
        return jArr;
    }

    private static int[] r(int i11) {
        int[] iArr = new int[i11];
        Arrays.fill(iArr, -1);
        return iArr;
    }

    private int w(Object obj, int i11) {
        int iL = l() & i11;
        int i12 = this.f30836e[iL];
        if (i12 == -1) {
            return 0;
        }
        int i13 = -1;
        while (true) {
            if (h(this.f30837f[i12]) == i11 && com.google.common.base.j.a(obj, this.f30832a[i12])) {
                int i14 = this.f30833b[i12];
                if (i13 == -1) {
                    this.f30836e[iL] = j(this.f30837f[i12]);
                } else {
                    long[] jArr = this.f30837f;
                    jArr[i13] = D(jArr[i13], j(jArr[i12]));
                }
                p(i12);
                this.f30834c--;
                this.f30835d++;
                return i14;
            }
            int iJ = j(this.f30837f[i12]);
            if (iJ == -1) {
                return 0;
            }
            i13 = i12;
            i12 = iJ;
        }
    }

    private void z(int i11) {
        int length = this.f30837f.length;
        if (i11 > length) {
            int iMax = Math.max(1, length >>> 1) + length;
            if (iMax < 0) {
                iMax = Integer.MAX_VALUE;
            }
            if (iMax != length) {
                y(iMax);
            }
        }
    }

    void B(int i11, int i12) {
        com.google.common.base.m.m(i11, this.f30834c);
        this.f30833b[i11] = i12;
    }

    int C() {
        return this.f30834c;
    }

    public void a() {
        this.f30835d++;
        Arrays.fill(this.f30832a, 0, this.f30834c, (Object) null);
        Arrays.fill(this.f30833b, 0, this.f30834c, 0);
        Arrays.fill(this.f30836e, -1);
        Arrays.fill(this.f30837f, -1L);
        this.f30834c = 0;
    }

    void d(int i11) {
        if (i11 > this.f30837f.length) {
            y(i11);
        }
        if (i11 >= this.f30839h) {
            A(Math.max(2, Integer.highestOneBit(i11 - 1) << 1));
        }
    }

    int e() {
        return this.f30834c == 0 ? -1 : 0;
    }

    public int f(Object obj) {
        int iM = m(obj);
        if (iM == -1) {
            return 0;
        }
        return this.f30833b[iM];
    }

    l3.a g(int i11) {
        com.google.common.base.m.m(i11, this.f30834c);
        return new a(i11);
    }

    Object i(int i11) {
        com.google.common.base.m.m(i11, this.f30834c);
        return this.f30832a[i11];
    }

    int k(int i11) {
        com.google.common.base.m.m(i11, this.f30834c);
        return this.f30833b[i11];
    }

    int m(Object obj) {
        int iD = v2.d(obj);
        int iJ = this.f30836e[l() & iD];
        while (iJ != -1) {
            long j11 = this.f30837f[iJ];
            if (h(j11) == iD && com.google.common.base.j.a(obj, this.f30832a[iJ])) {
                return iJ;
            }
            iJ = j(j11);
        }
        return -1;
    }

    void n(int i11, float f11) {
        com.google.common.base.m.e(i11 >= 0, "Initial capacity must be non-negative");
        com.google.common.base.m.e(f11 > 0.0f, "Illegal load factor");
        int iA = v2.a(i11, f11);
        this.f30836e = r(iA);
        this.f30838g = f11;
        this.f30832a = new Object[i11];
        this.f30833b = new int[i11];
        this.f30837f = q(i11);
        this.f30839h = Math.max(1, (int) (iA * f11));
    }

    void o(int i11, Object obj, int i12, int i13) {
        this.f30837f[i11] = (((long) i13) << 32) | 4294967295L;
        this.f30832a[i11] = obj;
        this.f30833b[i11] = i12;
    }

    void p(int i11) {
        int iC = C() - 1;
        if (i11 >= iC) {
            this.f30832a[i11] = null;
            this.f30833b[i11] = 0;
            this.f30837f[i11] = -1;
            return;
        }
        Object[] objArr = this.f30832a;
        objArr[i11] = objArr[iC];
        int[] iArr = this.f30833b;
        iArr[i11] = iArr[iC];
        objArr[iC] = null;
        iArr[iC] = 0;
        long[] jArr = this.f30837f;
        long j11 = jArr[iC];
        jArr[i11] = j11;
        jArr[iC] = -1;
        int iH = h(j11) & l();
        int[] iArr2 = this.f30836e;
        int i12 = iArr2[iH];
        if (i12 == iC) {
            iArr2[iH] = i11;
            return;
        }
        while (true) {
            long j12 = this.f30837f[i12];
            int iJ = j(j12);
            if (iJ == iC) {
                this.f30837f[i12] = D(j12, i11);
                return;
            }
            i12 = iJ;
        }
    }

    int s(int i11) {
        int i12 = i11 + 1;
        if (i12 < this.f30834c) {
            return i12;
        }
        return -1;
    }

    int t(int i11, int i12) {
        return i11 - 1;
    }

    public int u(Object obj, int i11) {
        e2.d(i11, "count");
        long[] jArr = this.f30837f;
        Object[] objArr = this.f30832a;
        int[] iArr = this.f30833b;
        int iD = v2.d(obj);
        int iL = l() & iD;
        int i12 = this.f30834c;
        int[] iArr2 = this.f30836e;
        int i13 = iArr2[iL];
        if (i13 == -1) {
            iArr2[iL] = i12;
        } else {
            while (true) {
                long j11 = jArr[i13];
                if (h(j11) == iD && com.google.common.base.j.a(obj, objArr[i13])) {
                    int i14 = iArr[i13];
                    iArr[i13] = i11;
                    return i14;
                }
                int iJ = j(j11);
                if (iJ == -1) {
                    jArr[i13] = D(j11, i12);
                    break;
                }
                i13 = iJ;
            }
        }
        if (i12 == Integer.MAX_VALUE) {
            throw new IllegalStateException("Cannot contain more than Integer.MAX_VALUE elements!");
        }
        int i15 = i12 + 1;
        z(i15);
        o(i12, obj, i11, iD);
        this.f30834c = i15;
        if (i12 >= this.f30839h) {
            A(this.f30836e.length * 2);
        }
        this.f30835d++;
        return 0;
    }

    public int v(Object obj) {
        return w(obj, v2.d(obj));
    }

    int x(int i11) {
        return w(this.f30832a[i11], h(this.f30837f[i11]));
    }

    void y(int i11) {
        this.f30832a = Arrays.copyOf(this.f30832a, i11);
        this.f30833b = Arrays.copyOf(this.f30833b, i11);
        long[] jArr = this.f30837f;
        int length = jArr.length;
        long[] jArrCopyOf = Arrays.copyOf(jArr, i11);
        if (i11 > length) {
            Arrays.fill(jArrCopyOf, length, i11, -1L);
        }
        this.f30837f = jArrCopyOf;
    }
}
