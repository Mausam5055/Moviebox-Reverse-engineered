package com.tencent.tinker.android.dex;

import androidx.core.view.InputDeviceCompat;
import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public final class v {
    public int A;
    public int B;
    public int C;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final a f40654a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final a f40655b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final a f40656c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final a f40657d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final a f40658e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final a f40659f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final a f40660g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final a f40661h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final a f40662i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final a f40663j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final a f40664k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final a f40665l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final a f40666m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final a f40667n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final a f40668o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final a f40669p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final a f40670q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final a f40671r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final a f40672s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final a f40673t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final a[] f40674u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f40675v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f40676w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public byte[] f40677x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f40678y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f40679z;

    public static class a implements Comparable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final short f40680a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f40681b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f40682c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f40683d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f40684e;

        /* JADX INFO: renamed from: com.tencent.tinker.android.dex.v$a$a, reason: collision with other inner class name */
        public static abstract class AbstractC0583a implements Comparable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public int f40685a;

            public AbstractC0583a(int i11) {
                this.f40685a = i11;
            }

            public boolean equals(Object obj) {
                return compareTo(obj) == 0;
            }

            public int hashCode() {
                return super.hashCode();
            }
        }

        public a(int i11, boolean z10) {
            this.f40682c = 0;
            this.f40683d = -1;
            this.f40684e = 0;
            this.f40680a = (short) i11;
            this.f40681b = z10;
            if (i11 == 0) {
                this.f40683d = 0;
                this.f40682c = 1;
                this.f40684e = 112;
            } else if (i11 == 4096) {
                this.f40682c = 1;
            }
        }

        private int d(int i11) {
            switch (i11) {
                case 0:
                    return 0;
                case 1:
                    return 1;
                case 2:
                    return 2;
                case 3:
                    return 3;
                case 4:
                    return 4;
                case 5:
                    return 5;
                case 6:
                    return 7;
                case 7:
                    return 18;
                case 8:
                    return 6;
                default:
                    switch (i11) {
                        case 4096:
                            return 19;
                        case 4097:
                            return 9;
                        case InputDeviceCompat.SOURCE_TOUCHSCREEN /* 4098 */:
                            return 12;
                        case 4099:
                            return 11;
                        default:
                            switch (i11) {
                                case 8192:
                                    return 16;
                                case 8193:
                                    return 15;
                                case InputDeviceCompat.SOURCE_MOUSE /* 8194 */:
                                    return 8;
                                case 8195:
                                    return 14;
                                case 8196:
                                    return 10;
                                case 8197:
                                    return 17;
                                case 8198:
                                    return 13;
                                default:
                                    throw new IllegalArgumentException("unknown section type: " + i11);
                            }
                    }
            }
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(a aVar) {
            int i11 = this.f40683d;
            int i12 = aVar.f40683d;
            if (i11 != i12) {
                return i11 < i12 ? -1 : 1;
            }
            int iD = d(this.f40680a);
            int iD2 = d(aVar.f40680a);
            if (iD != iD2) {
                return iD < iD2 ? -1 : 1;
            }
            return 0;
        }

        public boolean b() {
            return this.f40682c > 0;
        }

        public String toString() {
            return String.format("Section[type=%#x,off=%#x,size=%#x,byteCount=%#x]", Short.valueOf(this.f40680a), Integer.valueOf(this.f40683d), Integer.valueOf(this.f40682c), Integer.valueOf(this.f40684e));
        }
    }

    public v() {
        a aVar = new a(0, true);
        this.f40654a = aVar;
        a aVar2 = new a(1, true);
        this.f40655b = aVar2;
        a aVar3 = new a(2, true);
        this.f40656c = aVar3;
        a aVar4 = new a(3, true);
        this.f40657d = aVar4;
        a aVar5 = new a(4, true);
        this.f40658e = aVar5;
        a aVar6 = new a(5, true);
        this.f40659f = aVar6;
        a aVar7 = new a(6, true);
        this.f40660g = aVar7;
        a aVar8 = new a(7, true);
        this.f40661h = aVar8;
        a aVar9 = new a(8, true);
        this.f40662i = aVar9;
        a aVar10 = new a(4096, true);
        this.f40663j = aVar10;
        a aVar11 = new a(4097, true);
        this.f40664k = aVar11;
        a aVar12 = new a(InputDeviceCompat.SOURCE_TOUCHSCREEN, true);
        this.f40665l = aVar12;
        a aVar13 = new a(4099, true);
        this.f40666m = aVar13;
        a aVar14 = new a(8192, false);
        this.f40667n = aVar14;
        a aVar15 = new a(8193, true);
        this.f40668o = aVar15;
        a aVar16 = new a(InputDeviceCompat.SOURCE_MOUSE, false);
        this.f40669p = aVar16;
        a aVar17 = new a(8195, false);
        this.f40670q = aVar17;
        a aVar18 = new a(8196, false);
        this.f40671r = aVar18;
        a aVar19 = new a(8197, false);
        this.f40672s = aVar19;
        a aVar20 = new a(8198, true);
        this.f40673t = aVar20;
        this.f40674u = new a[]{aVar, aVar2, aVar3, aVar4, aVar5, aVar6, aVar7, aVar10, aVar8, aVar9, aVar11, aVar12, aVar13, aVar14, aVar15, aVar16, aVar17, aVar18, aVar19, aVar20};
        this.f40675v = 13;
        this.f40677x = new byte[20];
    }

    private a b(short s11) {
        for (a aVar : this.f40674u) {
            if (aVar.f40680a == s11) {
                return aVar;
            }
        }
        throw new IllegalArgumentException("No such map item: " + ((int) s11));
    }

    private void d(j.h hVar) {
        byte[] bArrL = hVar.l(8);
        int iB = k.b(bArrL);
        this.f40675v = iB;
        if (iB == -1) {
            throw new DexException("Unexpected magic: " + Arrays.toString(bArrL));
        }
        this.f40676w = hVar.w();
        this.f40677x = hVar.l(20);
        this.f40678y = hVar.w();
        int iW = hVar.w();
        if (iW != 112) {
            throw new DexException("Unexpected header: 0x" + Integer.toHexString(iW));
        }
        int iW2 = hVar.w();
        if (iW2 != 305419896) {
            throw new DexException("Unexpected endian tag: 0x" + Integer.toHexString(iW2));
        }
        this.f40679z = hVar.w();
        this.A = hVar.w();
        this.f40663j.f40683d = hVar.w();
        if (this.f40663j.f40683d == 0) {
            throw new DexException("Cannot merge dex files that do not contain a map");
        }
        this.f40655b.f40682c = hVar.w();
        this.f40655b.f40683d = hVar.w();
        this.f40656c.f40682c = hVar.w();
        this.f40656c.f40683d = hVar.w();
        this.f40657d.f40682c = hVar.w();
        this.f40657d.f40683d = hVar.w();
        this.f40658e.f40682c = hVar.w();
        this.f40658e.f40683d = hVar.w();
        this.f40659f.f40682c = hVar.w();
        this.f40659f.f40683d = hVar.w();
        this.f40660g.f40682c = hVar.w();
        this.f40660g.f40683d = hVar.w();
        this.B = hVar.w();
        this.C = hVar.w();
    }

    private void e(j.h hVar) {
        int i11;
        int iW = hVar.w();
        a aVar = null;
        int i12 = 0;
        while (i12 < iW) {
            short sB = hVar.B();
            hVar.B();
            a aVarB = b(sB);
            int iW2 = hVar.w();
            int iW3 = hVar.w();
            int i13 = aVarB.f40682c;
            if ((i13 != 0 && i13 != iW2) || ((i11 = aVarB.f40683d) != -1 && i11 != iW3)) {
                throw new DexException("Unexpected map value for 0x" + Integer.toHexString(sB));
            }
            aVarB.f40682c = iW2;
            aVarB.f40683d = iW3;
            if (aVar != null && aVar.f40683d > iW3) {
                throw new DexException("Map is unsorted at " + aVar + ", " + aVarB);
            }
            i12++;
            aVar = aVarB;
        }
        this.f40654a.f40683d = 0;
        Arrays.sort(this.f40674u);
        int i14 = 1;
        while (true) {
            a[] aVarArr = this.f40674u;
            if (i14 >= aVarArr.length) {
                return;
            }
            a aVar2 = aVarArr[i14];
            if (aVar2.f40683d == -1) {
                aVar2.f40683d = aVarArr[i14 - 1].f40683d;
            }
            i14++;
        }
    }

    public void a() {
        int i11 = this.f40678y;
        for (int length = this.f40674u.length - 1; length >= 0; length--) {
            a aVar = this.f40674u[length];
            int i12 = aVar.f40683d;
            if (i12 != -1) {
                if (i12 > i11) {
                    throw new DexException("Map is unsorted at " + aVar);
                }
                aVar.f40684e = i11 - i12;
                i11 = i12;
            }
        }
        int i13 = this.f40654a.f40684e + this.f40655b.f40684e + this.f40656c.f40684e + this.f40657d.f40684e + this.f40658e.f40684e + this.f40659f.f40684e + this.f40660g.f40684e;
        this.C = i13;
        this.B = this.f40678y - i13;
    }

    public void c(j jVar) {
        d(jVar.m(this.f40654a));
        e(jVar.l(this.f40663j.f40683d));
        a();
    }

    public void f(j.h hVar) {
        hVar.M(k.a(this.f40675v).getBytes("UTF-8"));
        hVar.c0(this.f40676w);
        hVar.M(this.f40677x);
        hVar.c0(this.f40678y);
        hVar.c0(112);
        hVar.c0(305419896);
        hVar.c0(this.f40679z);
        hVar.c0(this.A);
        hVar.c0(this.f40663j.f40683d);
        hVar.c0(this.f40655b.f40682c);
        hVar.c0(this.f40655b.b() ? this.f40655b.f40683d : 0);
        hVar.c0(this.f40656c.f40682c);
        hVar.c0(this.f40656c.b() ? this.f40656c.f40683d : 0);
        hVar.c0(this.f40657d.f40682c);
        hVar.c0(this.f40657d.b() ? this.f40657d.f40683d : 0);
        hVar.c0(this.f40658e.f40682c);
        hVar.c0(this.f40658e.b() ? this.f40658e.f40683d : 0);
        hVar.c0(this.f40659f.f40682c);
        hVar.c0(this.f40659f.b() ? this.f40659f.f40683d : 0);
        hVar.c0(this.f40660g.f40682c);
        hVar.c0(this.f40660g.b() ? this.f40660g.f40683d : 0);
        hVar.c0(this.B);
        hVar.c0(this.C);
    }

    public void g(j.h hVar) {
        int i11 = 0;
        for (a aVar : this.f40674u) {
            if (aVar.b()) {
                i11++;
            }
        }
        hVar.c0(i11);
        for (a aVar2 : this.f40674u) {
            if (aVar2.b()) {
                hVar.h0(aVar2.f40680a);
                hVar.h0((short) 0);
                hVar.c0(aVar2.f40682c);
                hVar.c0(aVar2.f40683d);
            }
        }
    }
}
