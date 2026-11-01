package androidx.media3.container;

import androidx.media3.common.r;
import androidx.media3.common.util.u;
import androidx.media3.common.y;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.lang.reflect.Array;
import java.math.RoundingMode;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public abstract class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final byte[] f10593a = {0, 0, 0, 1};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final float[] f10594b = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 2.1818182f, 1.8181819f, 2.909091f, 2.4242425f, 1.6363636f, 1.3636364f, 1.939394f, 1.6161616f, 1.3333334f, 1.5f, 2.0f};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Object f10595c = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int[] f10596d = new int[10];

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f10597a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f10598b;

        public a(int i11, int i12) {
            this.f10597a = i11;
            this.f10598b = i12;
        }
    }

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f10599a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f10600b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f10601c;

        public b(int i11, int i12, int i13) {
            this.f10599a = i11;
            this.f10600b = i12;
            this.f10601c = i13;
        }
    }

    public static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f10602a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f10603b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f10604c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f10605d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int[] f10606e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f10607f;

        public c(int i11, boolean z10, int i12, int i13, int[] iArr, int i14) {
            this.f10602a = i11;
            this.f10603b = z10;
            this.f10604c = i12;
            this.f10605d = i13;
            this.f10606e = iArr;
            this.f10607f = i14;
        }
    }

    public static final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ImmutableList f10608a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int[] f10609b;

        public d(List list, int[] iArr) {
            this.f10608a = ImmutableList.copyOf((Collection) list);
            this.f10609b = iArr;
        }
    }

    public static final class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f10610a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f10611b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f10612c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f10613d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f10614e;

        public e(int i11, int i12, int i13, int i14, int i15) {
            this.f10610a = i11;
            this.f10611b = i12;
            this.f10612c = i13;
            this.f10613d = i14;
            this.f10614e = i15;
        }
    }

    public static final class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ImmutableList f10615a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int[] f10616b;

        public f(List list, int[] iArr) {
            this.f10615a = ImmutableList.copyOf((Collection) list);
            this.f10616b = iArr;
        }
    }

    /* JADX INFO: renamed from: androidx.media3.container.g$g, reason: collision with other inner class name */
    public static final class C0090g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f10617a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f10618b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f10619c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f10620d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f10621e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f10622f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final int f10623g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int f10624h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final int f10625i;

        public C0090g(int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19) {
            this.f10617a = i11;
            this.f10618b = i12;
            this.f10619c = i13;
            this.f10620d = i14;
            this.f10621e = i15;
            this.f10622f = i16;
            this.f10623g = i17;
            this.f10624h = i18;
            this.f10625i = i19;
        }
    }

    public static final class h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final b f10626a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f10627b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final c f10628c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f10629d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f10630e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f10631f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final int f10632g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int f10633h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final int f10634i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final float f10635j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final int f10636k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public final int f10637l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public final int f10638m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public final int f10639n;

        public h(b bVar, int i11, c cVar, int i12, int i13, int i14, int i15, int i16, int i17, float f11, int i18, int i19, int i20, int i21) {
            this.f10626a = bVar;
            this.f10627b = i11;
            this.f10628c = cVar;
            this.f10629d = i12;
            this.f10630e = i13;
            this.f10631f = i14;
            this.f10632g = i15;
            this.f10633h = i16;
            this.f10634i = i17;
            this.f10635j = f11;
            this.f10636k = i18;
            this.f10637l = i19;
            this.f10638m = i20;
            this.f10639n = i21;
        }
    }

    public static final class i {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f10640a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f10641b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f10642c;

        public i(int i11, int i12, int i13) {
            this.f10640a = i11;
            this.f10641b = i12;
            this.f10642c = i13;
        }
    }

    public static final class j {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ImmutableList f10643a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int[] f10644b;

        public j(List list, int[] iArr) {
            this.f10643a = ImmutableList.copyOf((Collection) list);
            this.f10644b = iArr;
        }
    }

    public static final class k {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final b f10645a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ImmutableList f10646b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final d f10647c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final f f10648d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final j f10649e;

        public k(b bVar, List list, d dVar, f fVar, j jVar) {
            this.f10645a = bVar;
            this.f10646b = list != null ? ImmutableList.copyOf((Collection) list) : ImmutableList.of();
            this.f10647c = dVar;
            this.f10648d = fVar;
            this.f10649e = jVar;
        }
    }

    public static final class l {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f10650a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f10651b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f10652c;

        public l(int i11, int i12, boolean z10) {
            this.f10650a = i11;
            this.f10651b = i12;
            this.f10652c = z10;
        }
    }

    public static final class m {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f10653a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f10654b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f10655c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f10656d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f10657e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f10658f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final int f10659g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final float f10660h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final int f10661i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final int f10662j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final boolean f10663k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public final boolean f10664l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public final int f10665m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public final int f10666n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public final int f10667o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public final boolean f10668p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public final int f10669q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public final int f10670r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        public final int f10671s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public final int f10672t;

        public m(int i11, int i12, int i13, int i14, int i15, int i16, int i17, float f11, int i18, int i19, boolean z10, boolean z11, int i20, int i21, int i22, boolean z12, int i23, int i24, int i25, int i26) {
            this.f10653a = i11;
            this.f10654b = i12;
            this.f10655c = i13;
            this.f10656d = i14;
            this.f10657e = i15;
            this.f10658f = i16;
            this.f10659g = i17;
            this.f10660h = f11;
            this.f10661i = i18;
            this.f10662j = i19;
            this.f10663k = z10;
            this.f10664l = z11;
            this.f10665m = i20;
            this.f10666n = i21;
            this.f10667o = i22;
            this.f10668p = z12;
            this.f10669q = i23;
            this.f10670r = i24;
            this.f10671s = i25;
            this.f10672t = i26;
        }
    }

    public static l A(byte[] bArr, int i11, int i12) {
        return B(bArr, i11 + 1, i12);
    }

    public static l B(byte[] bArr, int i11, int i12) {
        androidx.media3.container.h hVar = new androidx.media3.container.h(bArr, i11, i12);
        int i13 = hVar.i();
        int i14 = hVar.i();
        hVar.l();
        return new l(i13, i14, hVar.e());
    }

    public static m C(byte[] bArr, int i11, int i12) {
        return D(bArr, i11 + 1, i12);
    }

    /* JADX WARN: Code duplicated, block: B:102:0x01b0  */
    /* JADX WARN: Code duplicated, block: B:105:0x01b7  */
    /* JADX WARN: Code duplicated, block: B:106:0x01cd  */
    /* JADX WARN: Code duplicated, block: B:107:0x01d0  */
    /* JADX WARN: Code duplicated, block: B:110:0x01d9  */
    /* JADX WARN: Code duplicated, block: B:113:0x01e5  */
    /* JADX WARN: Code duplicated, block: B:116:0x01f0  */
    /* JADX WARN: Code duplicated, block: B:119:0x01f9  */
    /* JADX WARN: Code duplicated, block: B:122:0x0200  */
    /* JADX WARN: Code duplicated, block: B:125:0x020c  */
    /* JADX WARN: Code duplicated, block: B:127:0x022b  */
    /* JADX WARN: Code duplicated, block: B:51:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:54:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:56:0x010d  */
    /* JADX WARN: Code duplicated, block: B:57:0x0112 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:58:0x0114  */
    /* JADX WARN: Code duplicated, block: B:59:0x0117  */
    /* JADX WARN: Code duplicated, block: B:61:0x011b  */
    /* JADX WARN: Code duplicated, block: B:62:0x011d  */
    /* JADX WARN: Code duplicated, block: B:82:0x0158  */
    /* JADX WARN: Code duplicated, block: B:84:0x015e  */
    /* JADX WARN: Code duplicated, block: B:86:0x0168  */
    /* JADX WARN: Code duplicated, block: B:90:0x0179  */
    /* JADX WARN: Code duplicated, block: B:92:0x017e  */
    /* JADX WARN: Code duplicated, block: B:93:0x0181  */
    /* JADX WARN: Code duplicated, block: B:96:0x019d  */
    /* JADX WARN: Code duplicated, block: B:99:0x01a6  */
    /* JADX WARN: Instruction removed from duplicated block: B:93:0x0181, please report this as an issue */
    public static m D(byte[] bArr, int i11, int i12) {
        int i13;
        boolean zE;
        int i14;
        int i15;
        int i16;
        boolean z10;
        boolean zE2;
        int i17;
        int i18;
        int i19;
        int iJ;
        float f11;
        int i20;
        int i21;
        float f12;
        int i22;
        int iK;
        int i23;
        boolean zE3;
        boolean zE4;
        int iF;
        float[] fArr;
        int iF2;
        int iF3;
        int i24;
        int i25;
        int i26;
        androidx.media3.container.h hVar = new androidx.media3.container.h(bArr, i11, i12);
        int iF4 = hVar.f(8);
        int iF5 = hVar.f(8);
        int iF6 = hVar.f(8);
        int i27 = hVar.i();
        if (iF4 == 100 || iF4 == 110 || iF4 == 122 || iF4 == 244 || iF4 == 44 || iF4 == 83 || iF4 == 86 || iF4 == 118 || iF4 == 128 || iF4 == 138) {
            i13 = hVar.i();
            zE = i13 == 3 ? hVar.e() : false;
            i14 = hVar.i();
            i15 = hVar.i();
            hVar.l();
            if (hVar.e()) {
                int i28 = i13 == 3 ? 12 : 8;
                int i29 = 0;
                while (i29 < i28) {
                    if (hVar.e()) {
                        J(hVar, i29 < 6 ? 16 : 64);
                    }
                    i29++;
                }
            }
        } else {
            i13 = 1;
            zE = false;
            i14 = 0;
            i15 = 0;
        }
        int i30 = hVar.i() + 4;
        int i31 = hVar.i();
        if (i31 != 0) {
            if (i31 == 1) {
                boolean zE5 = hVar.e();
                hVar.h();
                hVar.h();
                iF4 = iF4;
                long jI = hVar.i();
                for (int i32 = 0; i32 < jI; i32++) {
                    hVar.i();
                }
                z10 = zE5;
                i16 = 0;
            } else {
                i16 = 0;
            }
            int i33 = hVar.i();
            hVar.l();
            int i34 = hVar.i() + 1;
            int i35 = hVar.i() + 1;
            zE2 = hVar.e();
            int i36 = (2 - (zE2 ? 1 : 0)) * i35;
            if (!zE2) {
                hVar.l();
            }
            hVar.l();
            i17 = i34 * 16;
            i18 = i36 * 16;
            if (hVar.e()) {
                int i37 = hVar.i();
                int i38 = hVar.i();
                int i39 = hVar.i();
                int i40 = hVar.i();
                if (i13 == 0) {
                    i26 = 2 - (zE2 ? 1 : 0);
                    i24 = 1;
                } else {
                    if (i13 == 3) {
                        i24 = 1;
                    } else {
                        i24 = 2;
                    }
                    if (i13 == 1) {
                        i25 = 2;
                    } else {
                        i25 = 1;
                    }
                    i26 = i25 * (2 - (zE2 ? 1 : 0));
                }
                i17 -= (i37 + i38) * i24;
                i18 -= (i39 + i40) * i26;
            }
            int i41 = i18;
            int i42 = iF4;
            int i43 = i17;
            i19 = ((i42 != 44 || i42 == 86 || i42 == 100 || i42 == 110 || i42 == 122 || i42 == 244) && (iF5 & 16) != 0) ? 0 : 16;
            iJ = -1;
            f11 = 1.0f;
            if (hVar.e()) {
                if (hVar.e()) {
                    iF = hVar.f(8);
                    if (iF == 255) {
                        iF2 = hVar.f(16);
                        iF3 = hVar.f(16);
                        if (iF2 != 0 && iF3 != 0) {
                            f11 = iF2 / iF3;
                        }
                    } else {
                        fArr = f10594b;
                        if (iF < fArr.length) {
                            f11 = fArr[iF];
                        } else {
                            u.h("NalUnitUtil", "Unexpected aspect_ratio_idc value: " + iF);
                        }
                    }
                }
                if (hVar.e()) {
                    hVar.l();
                }
                if (hVar.e()) {
                    hVar.m(3);
                    i23 = hVar.e() ? 1 : 2;
                    if (hVar.e()) {
                        int iF7 = hVar.f(8);
                        int iF8 = hVar.f(8);
                        hVar.m(8);
                        iJ = androidx.media3.common.i.j(iF7);
                        iK = androidx.media3.common.i.k(iF8);
                    } else {
                        iK = -1;
                    }
                } else {
                    iK = -1;
                    i23 = -1;
                }
                if (hVar.e()) {
                    hVar.i();
                    hVar.i();
                }
                if (hVar.e()) {
                    hVar.m(65);
                }
                zE3 = hVar.e();
                if (zE3) {
                    I(hVar);
                }
                zE4 = hVar.e();
                if (zE4) {
                    I(hVar);
                }
                if (zE3 || zE4) {
                    hVar.l();
                }
                hVar.l();
                if (hVar.e()) {
                    hVar.l();
                    hVar.i();
                    hVar.i();
                    hVar.i();
                    hVar.i();
                    i19 = hVar.i();
                    hVar.i();
                }
                i20 = i19;
                i21 = iK;
                f12 = f11;
                i22 = i23;
            } else {
                i20 = i19;
                i21 = -1;
                f12 = 1.0f;
                i22 = -1;
            }
            return new m(i42, iF5, iF6, i27, i33, i43, i41, f12, i14, i15, zE, zE2, i30, i31, i16, z10, iJ, i22, i21, i20);
        }
        i16 = hVar.i() + 4;
        z10 = false;
        int i310 = hVar.i();
        hVar.l();
        int i311 = hVar.i() + 1;
        int i312 = hVar.i() + 1;
        zE2 = hVar.e();
        int i313 = (2 - (zE2 ? 1 : 0)) * i312;
        if (!zE2) {
            hVar.l();
        }
        hVar.l();
        i17 = i311 * 16;
        i18 = i313 * 16;
        if (hVar.e()) {
            int i314 = hVar.i();
            int i315 = hVar.i();
            int i316 = hVar.i();
            int i44 = hVar.i();
            if (i13 == 0) {
                i26 = 2 - (zE2 ? 1 : 0);
                i24 = 1;
            } else {
                if (i13 == 3) {
                    i24 = 1;
                } else {
                    i24 = 2;
                }
                if (i13 == 1) {
                    i25 = 2;
                } else {
                    i25 = 1;
                }
                i26 = i25 * (2 - (zE2 ? 1 : 0));
            }
            i17 -= (i314 + i315) * i24;
            i18 -= (i316 + i44) * i26;
        }
        int i45 = i18;
        int i46 = iF4;
        int i47 = i17;
        if (i46 != 44) {
        }
        iJ = -1;
        f11 = 1.0f;
        if (hVar.e()) {
            if (hVar.e()) {
                iF = hVar.f(8);
                if (iF == 255) {
                    iF2 = hVar.f(16);
                    iF3 = hVar.f(16);
                    if (iF2 != 0) {
                        f11 = iF2 / iF3;
                    }
                } else {
                    fArr = f10594b;
                    if (iF < fArr.length) {
                        f11 = fArr[iF];
                    } else {
                        u.h("NalUnitUtil", "Unexpected aspect_ratio_idc value: " + iF);
                    }
                }
            }
            if (hVar.e()) {
                hVar.l();
            }
            if (hVar.e()) {
                hVar.m(3);
                if (hVar.e()) {
                }
                if (hVar.e()) {
                    int iF9 = hVar.f(8);
                    int iF10 = hVar.f(8);
                    hVar.m(8);
                    iJ = androidx.media3.common.i.j(iF9);
                    iK = androidx.media3.common.i.k(iF10);
                } else {
                    iK = -1;
                }
            } else {
                iK = -1;
                i23 = -1;
            }
            if (hVar.e()) {
                hVar.i();
                hVar.i();
            }
            if (hVar.e()) {
                hVar.m(65);
            }
            zE3 = hVar.e();
            if (zE3) {
                I(hVar);
            }
            zE4 = hVar.e();
            if (zE4) {
                I(hVar);
            }
            if (zE3) {
                hVar.l();
            } else {
                hVar.l();
            }
            hVar.l();
            if (hVar.e()) {
                hVar.l();
                hVar.i();
                hVar.i();
                hVar.i();
                hVar.i();
                i19 = hVar.i();
                hVar.i();
            }
            i20 = i19;
            i21 = iK;
            f12 = f11;
            i22 = i23;
        } else {
            i20 = i19;
            i21 = -1;
            f12 = 1.0f;
            i22 = -1;
        }
        return new m(i46, iF5, iF6, i27, i310, i47, i45, f12, i14, i15, zE, zE2, i30, i31, i16, z10, iJ, i22, i21, i20);
    }

    private static void E(androidx.media3.container.h hVar, int i11, int[] iArr, int[] iArr2, boolean[][] zArr) {
        for (int i12 = 1; i12 < i11; i12++) {
            boolean zE = hVar.e();
            int i13 = 0;
            while (i13 < iArr[i12]) {
                if ((i13 <= 0 || !zE) ? i13 == 0 : hVar.e()) {
                    for (int i14 = 0; i14 < iArr2[i12]; i14++) {
                        if (zArr[i12][i14]) {
                            hVar.i();
                        }
                    }
                    hVar.i();
                    hVar.i();
                }
                i13++;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [int] */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2, types: [int] */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v5 */
    private static void F(androidx.media3.container.h hVar, boolean z10, int i11) {
        ?? r11;
        ?? r12;
        boolean zE;
        boolean zE2;
        if (z10) {
            boolean zE3 = hVar.e();
            boolean zE4 = hVar.e();
            if (zE3 || zE4) {
                zE = hVar.e();
                if (zE) {
                    hVar.m(19);
                }
                hVar.m(8);
                if (zE) {
                    hVar.m(4);
                }
                hVar.m(15);
                r12 = zE4;
                r11 = zE3;
            } else {
                zE = false;
                r12 = zE4;
                r11 = zE3;
            }
        } else {
            r11 = 0;
            r12 = 0;
            zE = false;
        }
        for (int i12 = 0; i12 <= i11; i12++) {
            boolean zE5 = hVar.e();
            if (!zE5) {
                zE5 = hVar.e();
            }
            if (zE5) {
                hVar.i();
                zE2 = false;
            } else {
                zE2 = hVar.e();
            }
            int i13 = !zE2 ? hVar.i() : 0;
            int i14 = r11 + r12;
            for (int i15 = 0; i15 < i14; i15++) {
                for (int i16 = 0; i16 <= i13; i16++) {
                    hVar.i();
                    hVar.i();
                    if (zE) {
                        hVar.i();
                        hVar.i();
                    }
                    hVar.l();
                }
            }
        }
    }

    private static void G(androidx.media3.container.h hVar) {
        for (int i11 = 0; i11 < 4; i11++) {
            int i12 = 0;
            while (i12 < 6) {
                int i13 = 1;
                if (hVar.e()) {
                    int iMin = Math.min(64, 1 << ((i11 << 1) + 4));
                    if (i11 > 1) {
                        hVar.h();
                    }
                    for (int i14 = 0; i14 < iMin; i14++) {
                        hVar.h();
                    }
                } else {
                    hVar.i();
                }
                if (i11 == 3) {
                    i13 = 3;
                }
                i12 += i13;
            }
        }
    }

    private static void H(androidx.media3.container.h hVar) {
        int i11 = hVar.i();
        int[] iArr = new int[0];
        int[] iArrCopyOf = new int[0];
        int i12 = -1;
        int i13 = -1;
        for (int i14 = 0; i14 < i11; i14++) {
            if (i14 == 0 || !hVar.e()) {
                int i15 = hVar.i();
                int i16 = hVar.i();
                int[] iArr2 = new int[i15];
                int i17 = 0;
                while (i17 < i15) {
                    iArr2[i17] = (i17 > 0 ? iArr2[i17 - 1] : 0) - (hVar.i() + 1);
                    hVar.l();
                    i17++;
                }
                int[] iArr3 = new int[i16];
                int i18 = 0;
                while (i18 < i16) {
                    iArr3[i18] = (i18 > 0 ? iArr3[i18 - 1] : 0) + hVar.i() + 1;
                    hVar.l();
                    i18++;
                }
                i12 = i15;
                iArr = iArr2;
                i13 = i16;
                iArrCopyOf = iArr3;
            } else {
                int i19 = i12 + i13;
                int i20 = (1 - ((hVar.e() ? 1 : 0) * 2)) * (hVar.i() + 1);
                int i21 = i19 + 1;
                boolean[] zArr = new boolean[i21];
                for (int i22 = 0; i22 <= i19; i22++) {
                    if (hVar.e()) {
                        zArr[i22] = true;
                    } else {
                        zArr[i22] = hVar.e();
                    }
                }
                int[] iArr4 = new int[i21];
                int[] iArr5 = new int[i21];
                int i23 = 0;
                for (int i24 = i13 - 1; i24 >= 0; i24--) {
                    int i25 = iArrCopyOf[i24] + i20;
                    if (i25 < 0 && zArr[i12 + i24]) {
                        iArr4[i23] = i25;
                        i23++;
                    }
                }
                if (i20 < 0 && zArr[i19]) {
                    iArr4[i23] = i20;
                    i23++;
                }
                for (int i26 = 0; i26 < i12; i26++) {
                    int i27 = iArr[i26] + i20;
                    if (i27 < 0 && zArr[i26]) {
                        iArr4[i23] = i27;
                        i23++;
                    }
                }
                int[] iArrCopyOf2 = Arrays.copyOf(iArr4, i23);
                int i28 = 0;
                for (int i29 = i12 - 1; i29 >= 0; i29--) {
                    int i30 = iArr[i29] + i20;
                    if (i30 > 0 && zArr[i29]) {
                        iArr5[i28] = i30;
                        i28++;
                    }
                }
                if (i20 > 0 && zArr[i19]) {
                    iArr5[i28] = i20;
                    i28++;
                }
                for (int i31 = 0; i31 < i13; i31++) {
                    int i32 = iArrCopyOf[i31] + i20;
                    if (i32 > 0 && zArr[i12 + i31]) {
                        iArr5[i28] = i32;
                        i28++;
                    }
                }
                iArrCopyOf = Arrays.copyOf(iArr5, i28);
                iArr = iArrCopyOf2;
                i12 = i23;
                i13 = i28;
            }
        }
    }

    private static void I(androidx.media3.container.h hVar) {
        int i11 = hVar.i() + 1;
        hVar.m(8);
        for (int i12 = 0; i12 < i11; i12++) {
            hVar.i();
            hVar.i();
            hVar.l();
        }
        hVar.m(20);
    }

    private static void J(androidx.media3.container.h hVar, int i11) {
        int iH = 8;
        int i12 = 8;
        for (int i13 = 0; i13 < i11; i13++) {
            if (iH != 0) {
                iH = ((hVar.h() + i12) + 256) % 256;
            }
            if (iH != 0) {
                i12 = iH;
            }
        }
    }

    private static void K(androidx.media3.container.h hVar, int i11, boolean[][] zArr) {
        int i12 = hVar.i() + 2;
        if (hVar.e()) {
            hVar.m(i12);
        } else {
            for (int i13 = 1; i13 < i11; i13++) {
                for (int i14 = 0; i14 < i13; i14++) {
                    if (zArr[i13][i14]) {
                        hVar.m(i12);
                    }
                }
            }
        }
        int i15 = hVar.i();
        for (int i16 = 1; i16 <= i15; i16++) {
            hVar.m(8);
        }
    }

    public static int L(byte[] bArr, int i11) {
        int i12;
        synchronized (f10595c) {
            int iG = 0;
            int i13 = 0;
            while (iG < i11) {
                try {
                    iG = g(bArr, iG, i11);
                    if (iG < i11) {
                        int[] iArr = f10596d;
                        if (iArr.length <= i13) {
                            f10596d = Arrays.copyOf(iArr, iArr.length * 2);
                        }
                        f10596d[i13] = iG;
                        iG += 3;
                        i13++;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            i12 = i11 - i13;
            int i14 = 0;
            int i15 = 0;
            for (int i16 = 0; i16 < i13; i16++) {
                int i17 = f10596d[i16] - i15;
                System.arraycopy(bArr, i15, bArr, i14, i17);
                int i18 = i14 + i17;
                int i19 = i18 + 1;
                bArr[i18] = 0;
                i14 = i18 + 2;
                bArr[i19] = 0;
                i15 += i17 + 3;
            }
            System.arraycopy(bArr, i15, bArr, i14, i12 - i14);
        }
        return i12;
    }

    private static int a(int i11, int i12, int i13, int i14) {
        return i11 - ((i12 == 1 ? 2 : 1) * (i13 + i14));
    }

    private static int b(int i11, int i12, int i13, int i14) {
        int i15 = 2;
        if (i12 != 1 && i12 != 2) {
            i15 = 1;
        }
        return i11 - (i15 * (i13 + i14));
    }

    public static void c(boolean[] zArr) {
        zArr[0] = false;
        zArr[1] = false;
        zArr[2] = false;
    }

    private static String d(androidx.media3.container.h hVar) {
        hVar.m(4);
        int iF = hVar.f(3);
        hVar.l();
        c cVarQ = q(hVar, true, iF, null);
        return androidx.media3.common.util.j.f(cVarQ.f10602a, cVarQ.f10603b, cVarQ.f10604c, cVarQ.f10605d, cVarQ.f10606e, cVarQ.f10607f);
    }

    public static int e(byte[] bArr, int i11, int i12, boolean[] zArr) {
        int i13 = i12 - i11;
        androidx.media3.common.util.a.g(i13 >= 0);
        if (i13 == 0) {
            return i12;
        }
        if (zArr[0]) {
            c(zArr);
            return i11 - 3;
        }
        if (i13 > 1 && zArr[1] && bArr[i11] == 1) {
            c(zArr);
            return i11 - 2;
        }
        if (i13 > 2 && zArr[2] && bArr[i11] == 0 && bArr[i11 + 1] == 1) {
            c(zArr);
            return i11 - 1;
        }
        int i14 = i12 - 1;
        int i15 = i11 + 2;
        while (i15 < i14) {
            byte b11 = bArr[i15];
            if ((b11 & 254) == 0) {
                int i16 = i15 - 2;
                if (bArr[i16] == 0 && bArr[i15 - 1] == 0 && b11 == 1) {
                    c(zArr);
                    return i16;
                }
                i15 -= 2;
            }
            i15 += 3;
        }
        zArr[0] = i13 <= 2 ? !(i13 != 2 ? !(zArr[1] && bArr[i14] == 1) : !(zArr[2] && bArr[i12 + (-2)] == 0 && bArr[i14] == 1)) : bArr[i12 + (-3)] == 0 && bArr[i12 + (-2)] == 0 && bArr[i14] == 1;
        zArr[1] = i13 <= 1 ? zArr[2] && bArr[i14] == 0 : bArr[i12 + (-2)] == 0 && bArr[i14] == 0;
        zArr[2] = bArr[i14] == 0;
        return i12;
    }

    private static ImmutableList f(byte[] bArr) {
        boolean[] zArr = new boolean[3];
        ImmutableList.a aVarBuilder = ImmutableList.builder();
        int i11 = 0;
        while (i11 < bArr.length) {
            int iE = e(bArr, i11, bArr.length, zArr);
            if (iE != bArr.length) {
                aVarBuilder.a(Integer.valueOf(iE));
            }
            i11 = iE + 3;
        }
        return aVarBuilder.e();
    }

    private static int g(byte[] bArr, int i11, int i12) {
        while (i11 < i12 - 2) {
            if (bArr[i11] == 0 && bArr[i11 + 1] == 0 && bArr[i11 + 2] == 3) {
                return i11;
            }
            i11++;
        }
        return i12;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static String h(List list) {
        for (int i11 = 0; i11 < list.size(); i11++) {
            byte[] bArr = (byte[]) list.get(i11);
            int length = bArr.length;
            if (length > 3) {
                ImmutableList immutableListF = f(bArr);
                for (int i12 = 0; i12 < immutableListF.size(); i12++) {
                    if (((Integer) immutableListF.get(i12)).intValue() + 3 < length) {
                        androidx.media3.container.h hVar = new androidx.media3.container.h(bArr, ((Integer) immutableListF.get(i12)).intValue() + 3, length);
                        b bVarP = p(hVar);
                        if (bVarP.f10599a == 33 && bVarP.f10600b == 0) {
                            return d(hVar);
                        }
                    }
                }
            }
        }
        return null;
    }

    public static int i(byte[] bArr, int i11) {
        return (bArr[i11 + 3] & 126) >> 1;
    }

    public static int j(byte[] bArr, int i11) {
        return bArr[i11 + 3] & 31;
    }

    public static boolean k(byte[] bArr, int i11, int i12, r rVar) {
        if (Objects.equals(rVar.f10161o, MimeTypes.VIDEO_H264)) {
            return l(bArr[i11]);
        }
        if (Objects.equals(rVar.f10161o, MimeTypes.VIDEO_H265)) {
            return m(bArr, i11, i12, rVar);
        }
        return true;
    }

    public static boolean l(byte b11) {
        if (((b11 & 96) >> 5) != 0) {
            return true;
        }
        int i11 = b11 & 31;
        return (i11 == 1 || i11 == 9 || i11 == 14) ? false : true;
    }

    private static boolean m(byte[] bArr, int i11, int i12, r rVar) {
        b bVarP = p(new androidx.media3.container.h(bArr, i11, i12 + i11));
        int i13 = bVarP.f10599a;
        if (i13 == 35) {
            return false;
        }
        return (i13 <= 14 && i13 % 2 == 0 && bVarP.f10601c == rVar.D - 1) ? false : true;
    }

    public static boolean n(r rVar, byte b11) {
        if ((Objects.equals(rVar.f10161o, MimeTypes.VIDEO_H264) || y.b(rVar.f10157k, MimeTypes.VIDEO_H264)) && (b11 & 31) == 6) {
            return true;
        }
        return (Objects.equals(rVar.f10161o, MimeTypes.VIDEO_H265) || y.b(rVar.f10157k, MimeTypes.VIDEO_H265)) && ((b11 & 126) >> 1) == 39;
    }

    public static int o(r rVar) {
        if (Objects.equals(rVar.f10161o, MimeTypes.VIDEO_H264)) {
            return 1;
        }
        return (Objects.equals(rVar.f10161o, MimeTypes.VIDEO_H265) || y.b(rVar.f10157k, MimeTypes.VIDEO_H265)) ? 2 : 0;
    }

    private static b p(androidx.media3.container.h hVar) {
        hVar.l();
        return new b(hVar.f(6), hVar.f(6), hVar.f(3) - 1);
    }

    /* JADX WARN: Code duplicated, block: B:21:0x005e  */
    /* JADX WARN: Code duplicated, block: B:23:0x0064  */
    /* JADX WARN: Code duplicated, block: B:26:0x006c  */
    /* JADX WARN: Code duplicated, block: B:30:0x0076  */
    /* JADX WARN: Code duplicated, block: B:39:0x006e A[SYNTHETIC] */
    private static c q(androidx.media3.container.h hVar, boolean z10, int i11, c cVar) {
        int[] iArr;
        int i12;
        boolean z11;
        int i13;
        int i14;
        boolean zE;
        int iF;
        int i15;
        int i16;
        int[] iArr2 = new int[6];
        if (!z10) {
            if (cVar != null) {
                int i17 = cVar.f10602a;
                zE = cVar.f10603b;
                iF = cVar.f10604c;
                i15 = cVar.f10605d;
                iArr2 = cVar.f10606e;
                i12 = i17;
            } else {
                iArr = iArr2;
                i12 = 0;
                z11 = false;
                i13 = 0;
                i14 = 0;
            }
            int iF2 = hVar.f(8);
            i16 = 0;
            for (int i18 = 0; i18 < i11; i18++) {
                if (hVar.e()) {
                    i16 += 88;
                }
                if (hVar.e()) {
                    i16 += 8;
                }
            }
            hVar.m(i16);
            if (i11 > 0) {
                hVar.m((8 - i11) * 2);
            }
            return new c(i12, z11, i13, i14, iArr, iF2);
        }
        int iF3 = hVar.f(2);
        zE = hVar.e();
        iF = hVar.f(5);
        i15 = 0;
        for (int i19 = 0; i19 < 32; i19++) {
            if (hVar.e()) {
                i15 |= 1 << i19;
            }
        }
        for (int i20 = 0; i20 < 6; i20++) {
            iArr2[i20] = hVar.f(8);
        }
        i12 = iF3;
        iArr = iArr2;
        z11 = zE;
        i13 = iF;
        i14 = i15;
        int iF4 = hVar.f(8);
        i16 = 0;
        while (i18 < i11) {
            if (hVar.e()) {
                i16 += 88;
            }
            if (hVar.e()) {
                i16 += 8;
            }
        }
        hVar.m(i16);
        if (i11 > 0) {
            hVar.m((8 - i11) * 2);
        }
        return new c(i12, z11, i13, i14, iArr, iF4);
    }

    private static e r(androidx.media3.container.h hVar) {
        int i11;
        int i12;
        int iF;
        int iF2 = hVar.f(16);
        int iF3 = hVar.f(16);
        if (hVar.e()) {
            int iF4 = hVar.f(2);
            if (iF4 == 3) {
                hVar.l();
            }
            int iF5 = hVar.f(4);
            iF = hVar.f(4);
            i12 = iF5;
            i11 = iF4;
        } else {
            i11 = 0;
            i12 = 0;
            iF = 0;
        }
        if (hVar.e()) {
            int i13 = hVar.i();
            int i14 = hVar.i();
            int i15 = hVar.i();
            int i16 = hVar.i();
            iF2 = b(iF2, i11, i13, i14);
            iF3 = a(iF3, i11, i15, i16);
        }
        return new e(i11, i12, iF, iF2, iF3);
    }

    private static f s(androidx.media3.container.h hVar, int i11) {
        int i12 = hVar.i();
        int i13 = i12 + 1;
        ImmutableList.a aVarBuilderWithExpectedSize = ImmutableList.builderWithExpectedSize(i13);
        int[] iArr = new int[i11];
        for (int i14 = 0; i14 < i13; i14++) {
            aVarBuilderWithExpectedSize.a(r(hVar));
        }
        int i15 = 1;
        if (i13 <= 1 || !hVar.e()) {
            while (i15 < i11) {
                iArr[i15] = Math.min(i15, i12);
                i15++;
            }
        } else {
            int iD = com.google.common.math.b.d(i13, RoundingMode.CEILING);
            while (i15 < i11) {
                iArr[i15] = hVar.f(iD);
                i15++;
            }
        }
        return new f(aVarBuilderWithExpectedSize.e(), iArr);
    }

    public static C0090g t(byte[] bArr, int i11, int i12) {
        byte b11;
        int i13 = i11 + 2;
        do {
            i12--;
            b11 = bArr[i12];
            if (b11 != 0) {
                break;
            }
        } while (i12 > i13);
        if (b11 != 0 && i12 > i13) {
            androidx.media3.container.h hVar = new androidx.media3.container.h(bArr, i13, i12 + 1);
            while (hVar.c(16)) {
                int iF = hVar.f(8);
                int i14 = 0;
                while (iF == 255) {
                    i14 += 255;
                    iF = hVar.f(8);
                }
                int i15 = i14 + iF;
                int iF2 = hVar.f(8);
                int i16 = 0;
                while (iF2 == 255) {
                    i16 += 255;
                    iF2 = hVar.f(8);
                }
                int i17 = i16 + iF2;
                if (i17 == 0 || !hVar.c(i17)) {
                    break;
                }
                if (i15 == 176) {
                    int i18 = hVar.i();
                    boolean zE = hVar.e();
                    int i19 = zE ? hVar.i() : 0;
                    int i20 = hVar.i();
                    int i21 = -1;
                    int i22 = -1;
                    int iF3 = -1;
                    int iF4 = -1;
                    int iF5 = -1;
                    int iF6 = -1;
                    for (int i23 = 0; i23 <= i20; i23++) {
                        i21 = hVar.i();
                        i22 = hVar.i();
                        iF3 = hVar.f(6);
                        if (iF3 == 63) {
                            return null;
                        }
                        iF4 = hVar.f(iF3 == 0 ? Math.max(0, i18 - 30) : Math.max(0, (iF3 + i18) - 31));
                        if (zE) {
                            iF5 = hVar.f(6);
                            if (iF5 == 63) {
                                return null;
                            }
                            iF6 = hVar.f(iF5 == 0 ? Math.max(0, i19 - 30) : Math.max(0, (iF5 + i19) - 31));
                        }
                        if (hVar.e()) {
                            hVar.m(10);
                        }
                    }
                    return new C0090g(i18, i19, i20 + 1, i21, i22, iF3, iF4, iF5, iF6);
                }
            }
        }
        return null;
    }

    public static h u(byte[] bArr, int i11, int i12, k kVar) {
        return v(bArr, i11 + 2, i12, p(new androidx.media3.container.h(bArr, i11, i12)), kVar);
    }

    /* JADX WARN: Code duplicated, block: B:35:0x00ac  */
    /* JADX WARN: Multi-variable type inference failed */
    public static h v(byte[] bArr, int i11, int i12, b bVar, k kVar) {
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int iMax;
        float f11;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        j jVar;
        int i23;
        int iJ;
        int iK;
        f fVar;
        androidx.media3.container.h hVar = new androidx.media3.container.h(bArr, i11, i12);
        hVar.m(4);
        int iF = hVar.f(3);
        boolean z10 = bVar.f10600b != 0 && iF == 7;
        int i24 = (kVar == null || kVar.f10646b.isEmpty()) ? 0 : ((a) kVar.f10646b.get(Math.min(bVar.f10600b, kVar.f10646b.size() - 1))).f10597a;
        c cVarQ = null;
        if (!z10) {
            hVar.l();
            cVarQ = q(hVar, true, iF, null);
        } else if (kVar != null) {
            d dVar = kVar.f10647c;
            int i25 = dVar.f10609b[i24];
            if (dVar.f10608a.size() > i25) {
                cVarQ = (c) kVar.f10647c.f10608a.get(i25);
            }
        }
        int i26 = hVar.i();
        if (z10) {
            int iF2 = hVar.e() ? hVar.f(8) : -1;
            if (kVar == null || (fVar = kVar.f10648d) == null) {
                i16 = 0;
                i17 = 0;
                i13 = 0;
                i14 = 0;
                i15 = 0;
            } else {
                if (iF2 == -1) {
                    iF2 = fVar.f10616b[i24];
                }
                if (iF2 == -1 || fVar.f10615a.size() <= iF2) {
                    i16 = 0;
                    i17 = 0;
                    i13 = 0;
                    i14 = 0;
                    i15 = 0;
                } else {
                    e eVar = (e) kVar.f10648d.f10615a.get(iF2);
                    i14 = eVar.f10610a;
                    i15 = eVar.f10613d;
                    i16 = eVar.f10614e;
                    i17 = eVar.f10611b;
                    i13 = eVar.f10612c;
                }
            }
        } else {
            int i27 = hVar.i();
            if (i27 == 3) {
                hVar.l();
            }
            int i28 = hVar.i();
            int i29 = hVar.i();
            if (hVar.e()) {
                int i30 = hVar.i();
                int i31 = hVar.i();
                int i32 = hVar.i();
                int i33 = hVar.i();
                i28 = b(i28, i27, i30, i31);
                i29 = a(i29, i27, i32, i33);
            }
            int i34 = hVar.i();
            i13 = hVar.i();
            i14 = i27;
            i15 = i28;
            i16 = i29;
            i17 = i34;
        }
        int i35 = hVar.i();
        if (z10) {
            iMax = -1;
        } else {
            iMax = -1;
            for (int i36 = hVar.e() ? 0 : iF; i36 <= iF; i36++) {
                hVar.i();
                iMax = Math.max(hVar.i(), iMax);
                hVar.i();
            }
        }
        hVar.i();
        hVar.i();
        hVar.i();
        hVar.i();
        hVar.i();
        hVar.i();
        if (hVar.e()) {
            if (z10 ? hVar.e() : false) {
                hVar.m(6);
            } else if (hVar.e()) {
                G(hVar);
            }
        }
        int i37 = 2;
        hVar.m(2);
        if (hVar.e()) {
            hVar.m(8);
            hVar.i();
            hVar.i();
            hVar.l();
        }
        H(hVar);
        if (hVar.e()) {
            int i38 = hVar.i();
            int i39 = 0;
            while (i39 < i38) {
                hVar.m(i35 + 5);
                i39++;
                i37 = 2;
            }
        }
        hVar.m(i37);
        float f12 = 1.0f;
        if (hVar.e()) {
            if (hVar.e()) {
                int iF3 = hVar.f(8);
                if (iF3 == 255) {
                    int iF4 = hVar.f(16);
                    int iF5 = hVar.f(16);
                    if (iF4 != 0 && iF5 != 0) {
                        f12 = iF4 / iF5;
                    }
                } else {
                    float[] fArr = f10594b;
                    if (iF3 < fArr.length) {
                        f12 = fArr[iF3];
                    } else {
                        u.h("NalUnitUtil", "Unexpected aspect_ratio_idc value: " + iF3);
                    }
                }
            }
            if (hVar.e()) {
                hVar.l();
            }
            if (hVar.e()) {
                hVar.m(3);
                i22 = hVar.e() ? 1 : 2;
                if (hVar.e()) {
                    int iF6 = hVar.f(8);
                    int iF7 = hVar.f(8);
                    hVar.m(8);
                    iJ = androidx.media3.common.i.j(iF6);
                    iK = androidx.media3.common.i.k(iF7);
                } else {
                    iJ = -1;
                    iK = -1;
                }
            } else if (kVar == null || (jVar = kVar.f10649e) == null || jVar.f10643a.size() <= (i23 = jVar.f10644b[i24])) {
                i22 = -1;
                iJ = -1;
                iK = -1;
            } else {
                i iVar = (i) kVar.f10649e.f10643a.get(i23);
                iJ = iVar.f10640a;
                int i40 = iVar.f10641b;
                iK = iVar.f10642c;
                i22 = i40;
            }
            if (hVar.e()) {
                hVar.i();
                hVar.i();
            }
            hVar.l();
            if (hVar.e()) {
                i16 *= 2;
            }
            i20 = i22;
            i19 = iJ;
            i21 = iK;
            f11 = f12;
            i18 = i16;
        } else {
            f11 = 1.0f;
            i18 = i16;
            i19 = -1;
            i20 = -1;
            i21 = -1;
        }
        return new h(bVar, iF, cVarQ, i14, i17, i13, i26, i15, i18, f11, iMax, i19, i20, i21);
    }

    private static i w(androidx.media3.container.h hVar) {
        hVar.m(3);
        int i11 = hVar.e() ? 1 : 2;
        int iJ = androidx.media3.common.i.j(hVar.f(8));
        int iK = androidx.media3.common.i.k(hVar.f(8));
        hVar.m(8);
        return new i(iJ, i11, iK);
    }

    private static j x(androidx.media3.container.h hVar, int i11, int i12, int[] iArr) {
        if (!hVar.e() ? hVar.e() : true) {
            hVar.l();
        }
        boolean zE = hVar.e();
        boolean zE2 = hVar.e();
        if (zE || zE2) {
            for (int i13 = 0; i13 < i12; i13++) {
                for (int i14 = 0; i14 < iArr[i13]; i14++) {
                    boolean zE3 = zE ? hVar.e() : false;
                    boolean zE4 = zE2 ? hVar.e() : false;
                    if (zE3) {
                        hVar.m(32);
                    }
                    if (zE4) {
                        hVar.m(18);
                    }
                }
            }
        }
        boolean zE5 = hVar.e();
        int iF = zE5 ? hVar.f(4) + 1 : i11;
        ImmutableList.a aVarBuilderWithExpectedSize = ImmutableList.builderWithExpectedSize(iF);
        int[] iArr2 = new int[i11];
        for (int i15 = 0; i15 < iF; i15++) {
            aVarBuilderWithExpectedSize.a(w(hVar));
        }
        if (zE5 && iF > 1) {
            for (int i16 = 0; i16 < i11; i16++) {
                iArr2[i16] = hVar.f(4);
            }
        }
        return new j(aVarBuilderWithExpectedSize.e(), iArr2);
    }

    public static k y(byte[] bArr, int i11, int i12) {
        androidx.media3.container.h hVar = new androidx.media3.container.h(bArr, i11, i12);
        return z(hVar, p(hVar));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static k z(androidx.media3.container.h hVar, b bVar) {
        int[][] iArr;
        int i11;
        int i12;
        int i13;
        j jVarX;
        int i14;
        int i15;
        boolean[][] zArr;
        int i16;
        boolean[][] zArr2;
        int[] iArr2;
        int[] iArr3;
        hVar.m(4);
        boolean zE = hVar.e();
        boolean zE2 = hVar.e();
        int iF = hVar.f(6);
        int i17 = iF + 1;
        int iF2 = hVar.f(3);
        hVar.m(17);
        boolean z10 = true;
        c cVarQ = q(hVar, true, iF2, null);
        for (int i18 = hVar.e() ? 0 : iF2; i18 <= iF2; i18++) {
            hVar.i();
            hVar.i();
            hVar.i();
        }
        int iF3 = hVar.f(6);
        int i19 = hVar.i() + 1;
        d dVar = new d(ImmutableList.of(cVarQ), new int[1]);
        Object[] objArr = i17 >= 2 && i19 >= 2;
        Object[] objArr2 = zE && zE2;
        int i20 = iF3 + 1;
        Object[] objArr3 = i20 >= i17;
        if (objArr != true || objArr2 != true || objArr3 != true) {
            return new k(bVar, null, dVar, null, null);
        }
        int[][] iArr4 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, i19, i20);
        int[] iArr5 = new int[i19];
        int[] iArr6 = new int[i19];
        iArr4[0][0] = 0;
        iArr5[0] = 1;
        iArr6[0] = 0;
        for (int i21 = 1; i21 < i19; i21++) {
            int i22 = 0;
            for (int i23 = 0; i23 <= iF3; i23++) {
                if (hVar.e()) {
                    iArr4[i21][i22] = i23;
                    iArr6[i21] = i23;
                    i22++;
                }
                iArr5[i21] = i22;
            }
        }
        if (hVar.e()) {
            hVar.m(64);
            if (hVar.e()) {
                hVar.i();
            }
            int i24 = hVar.i();
            int i25 = 0;
            while (i25 < i24) {
                hVar.i();
                if (i25 != 0 && !hVar.e()) {
                    z10 = false;
                }
                F(hVar, z10, iF2);
                i25++;
                z10 = true;
            }
        }
        if (!hVar.e()) {
            return new k(bVar, null, dVar, null, null);
        }
        hVar.b();
        c cVarQ2 = q(hVar, false, iF2, cVarQ);
        boolean zE3 = hVar.e();
        boolean[] zArr3 = new boolean[16];
        int i26 = 0;
        for (int i27 = 0; i27 < 16; i27++) {
            boolean zE4 = hVar.e();
            zArr3[i27] = zE4;
            if (zE4) {
                i26++;
            }
        }
        if (i26 == 0 || !zArr3[1]) {
            return new k(bVar, null, dVar, null, null);
        }
        int[] iArr7 = new int[i26];
        for (int i28 = 0; i28 < i26 - (zE3 ? 1 : 0); i28++) {
            iArr7[i28] = hVar.f(3);
        }
        int[] iArr8 = new int[i26 + 1];
        if (zE3) {
            int i29 = 1;
            while (i29 < i26) {
                int[][] iArr9 = iArr4;
                for (int i30 = 0; i30 < i29; i30++) {
                    iArr8[i29] = iArr8[i29] + iArr7[i30] + 1;
                }
                i29++;
                iArr4 = iArr9;
            }
            iArr = iArr4;
            iArr8[i26] = 6;
        } else {
            iArr = iArr4;
        }
        int[][] iArr10 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, i17, i26);
        int[] iArr11 = new int[i17];
        iArr11[0] = 0;
        boolean zE5 = hVar.e();
        int i31 = 1;
        while (i31 < i17) {
            if (zE5) {
                iArr11[i31] = hVar.f(6);
            } else {
                iArr11[i31] = i31;
            }
            if (zE3) {
                iArr3 = iArr7;
                int i32 = 0;
                while (i32 < i26) {
                    int i33 = i32 + 1;
                    iArr10[i31][i32] = (iArr11[i31] & ((1 << iArr8[i33]) - 1)) >> iArr8[i32];
                    i32 = i33;
                }
            } else {
                int i34 = 0;
                while (i34 < i26) {
                    iArr10[i31][i34] = hVar.f(iArr7[i34] + 1);
                    i34++;
                    iArr7 = iArr7;
                }
                iArr3 = iArr7;
            }
            i31++;
            iF2 = iF2;
            iArr7 = iArr3;
        }
        int i35 = iF2;
        int[] iArr12 = new int[i20];
        int i36 = 1;
        for (int i37 = 0; i37 < i17; i37++) {
            iArr12[iArr11[i37]] = -1;
            int i38 = 0;
            for (int i39 = 0; i39 < 16; i39++) {
                if (zArr3[i39]) {
                    if (i39 == 1) {
                        iArr12[iArr11[i37]] = iArr10[i37][i38];
                    }
                    i38++;
                }
            }
            if (i37 > 0) {
                int i40 = 0;
                while (true) {
                    if (i40 >= i37) {
                        i36++;
                        break;
                    }
                    if (iArr12[iArr11[i37]] == iArr12[iArr11[i40]]) {
                        break;
                    }
                    i40++;
                }
            }
        }
        int iF4 = hVar.f(4);
        if (i36 < 2 || iF4 == 0) {
            return new k(bVar, null, dVar, null, null);
        }
        int[] iArr13 = new int[i36];
        for (int i41 = 0; i41 < i36; i41++) {
            iArr13[i41] = hVar.f(iF4);
        }
        int[] iArr14 = new int[i20];
        for (int i42 = 0; i42 < i17; i42++) {
            iArr14[Math.min(iArr11[i42], iF3)] = i42;
        }
        ImmutableList.a aVarBuilder = ImmutableList.builder();
        int i43 = 0;
        while (i43 <= iF3) {
            int iMin = Math.min(iArr12[i43], i36 - 1);
            aVarBuilder.a(new a(iArr14[i43], iMin >= 0 ? iArr13[iMin] : -1));
            i43++;
            iArr12 = iArr12;
        }
        ImmutableList immutableListE = aVarBuilder.e();
        if (((a) immutableListE.get(0)).f10598b == -1) {
            return new k(bVar, null, dVar, null, null);
        }
        int i44 = 1;
        while (true) {
            if (i44 > iF3) {
                i11 = -1;
                i12 = -1;
                break;
            }
            i11 = -1;
            if (((a) immutableListE.get(i44)).f10598b != -1) {
                i12 = i44;
                break;
            }
            i44++;
        }
        if (i12 == i11) {
            return new k(bVar, null, dVar, null, null);
        }
        Class cls = Boolean.TYPE;
        boolean[][] zArr4 = (boolean[][]) Array.newInstance((Class<?>) cls, i17, i17);
        boolean[][] zArr5 = (boolean[][]) Array.newInstance((Class<?>) cls, i17, i17);
        for (int i45 = 1; i45 < i17; i45++) {
            for (int i46 = 0; i46 < i45; i46++) {
                boolean[] zArr6 = zArr4[i45];
                boolean[] zArr7 = zArr5[i45];
                boolean zE6 = hVar.e();
                zArr7[i46] = zE6;
                zArr6[i46] = zE6;
            }
        }
        for (int i47 = 1; i47 < i17; i47++) {
            for (int i48 = 0; i48 < iF; i48++) {
                for (int i49 = 0; i49 < i47; i49++) {
                    boolean[] zArr8 = zArr5[i47];
                    if (zArr8[i49] && zArr5[i49][i48]) {
                        zArr8[i48] = true;
                        break;
                    }
                }
            }
        }
        int[] iArr15 = new int[i20];
        for (int i50 = 0; i50 < i17; i50++) {
            int i51 = 0;
            for (int i52 = 0; i52 < i50; i52++) {
                i51 += zArr4[i50][i52] ? 1 : 0;
            }
            iArr15[iArr11[i50]] = i51;
        }
        int i53 = 0;
        for (int i54 = 0; i54 < i17; i54++) {
            if (iArr15[iArr11[i54]] == 0) {
                i53++;
            }
        }
        if (i53 > 1) {
            return new k(bVar, null, dVar, null, null);
        }
        int[] iArr16 = new int[i17];
        int[] iArr17 = new int[i19];
        if (hVar.e()) {
            for (int i55 = 0; i55 < i17; i55++) {
                iArr16[i55] = hVar.f(3);
            }
            i13 = i35;
        } else {
            i13 = i35;
            Arrays.fill(iArr16, 0, i17, i13);
        }
        int i56 = 0;
        while (i56 < i19) {
            boolean[][] zArr9 = zArr5;
            int[] iArr18 = iArr15;
            int[] iArr19 = iArr11;
            int iMax = 0;
            for (int i57 = 0; i57 < iArr5[i56]; i57++) {
                iMax = Math.max(iMax, iArr16[((a) immutableListE.get(iArr[i56][i57])).f10597a]);
            }
            iArr17[i56] = iMax + 1;
            i56++;
            iArr11 = iArr19;
            iArr15 = iArr18;
            zArr5 = zArr9;
        }
        boolean[][] zArr10 = zArr5;
        int[] iArr20 = iArr15;
        int[] iArr21 = iArr11;
        if (hVar.e()) {
            int i58 = 0;
            while (i58 < iF) {
                int i59 = i58 + 1;
                for (int i60 = i59; i60 < i17; i60++) {
                    if (zArr4[i60][i58]) {
                        hVar.m(3);
                    }
                }
                i58 = i59;
            }
        }
        hVar.l();
        int i61 = hVar.i() + 1;
        ImmutableList.a aVarBuilder2 = ImmutableList.builder();
        aVarBuilder2.a(cVarQ);
        if (i61 > 1) {
            c cVarQ3 = cVarQ2;
            aVarBuilder2.a(cVarQ3);
            for (int i62 = 2; i62 < i61; i62++) {
                cVarQ3 = q(hVar, hVar.e(), i13, cVarQ3);
                aVarBuilder2.a(cVarQ3);
            }
        }
        ImmutableList immutableListE2 = aVarBuilder2.e();
        int i63 = hVar.i() + i19;
        if (i63 > i19) {
            return new k(bVar, null, dVar, null, null);
        }
        int iF5 = hVar.f(2);
        boolean[][] zArr11 = (boolean[][]) Array.newInstance((Class<?>) Boolean.TYPE, i63, i20);
        int[] iArr22 = new int[i63];
        int[] iArr23 = new int[i63];
        int i64 = 0;
        while (i64 < i19) {
            int i65 = i19;
            iArr22[i64] = 0;
            iArr23[i64] = iArr6[i64];
            if (iF5 == 0) {
                zArr2 = zArr4;
                iArr2 = iArr17;
                i16 = i17;
                Arrays.fill(zArr11[i64], 0, iArr5[i64], true);
                iArr22[i64] = iArr5[i64];
            } else {
                i16 = i17;
                zArr2 = zArr4;
                iArr2 = iArr17;
                if (iF5 == 1) {
                    int i66 = iArr6[i64];
                    for (int i67 = 0; i67 < iArr5[i64]; i67++) {
                        zArr11[i64][i67] = iArr[i64][i67] == i66;
                    }
                    iArr22[i64] = 1;
                } else {
                    zArr11[0][0] = true;
                    iArr22[0] = 1;
                }
                i64++;
                i19 = i65;
                zArr4 = zArr2;
                iArr17 = iArr2;
                i17 = i16;
            }
            i64++;
            i19 = i65;
            zArr4 = zArr2;
            iArr17 = iArr2;
            i17 = i16;
        }
        int i68 = i17;
        boolean[][] zArr12 = zArr4;
        int[] iArr24 = iArr17;
        int i69 = i19;
        int[] iArr25 = new int[i20];
        int i70 = 2;
        boolean[][] zArr13 = (boolean[][]) Array.newInstance((Class<?>) Boolean.TYPE, i63, i20);
        int i71 = 1;
        int i72 = 0;
        while (i71 < i63) {
            if (iF5 == i70) {
                for (int i73 = 0; i73 < iArr5[i71]; i73++) {
                    zArr11[i71][i73] = hVar.e();
                    int i74 = iArr22[i71];
                    boolean z11 = zArr11[i71][i73];
                    iArr22[i71] = i74 + (z11 ? 1 : 0);
                    if (z11) {
                        iArr23[i71] = iArr[i71][i73];
                    }
                }
            }
            if (i72 == 0 && iArr[i71][0] == 0 && zArr11[i71][0]) {
                for (int i75 = 1; i75 < iArr5[i71]; i75++) {
                    if (iArr[i71][i75] == i12 && zArr11[i71][i12]) {
                        i72 = i71;
                    }
                }
            }
            int i76 = 0;
            while (i76 < iArr5[i71]) {
                if (i61 > 1) {
                    zArr13[i71][i76] = zArr11[i71][i76];
                    zArr = zArr11;
                    i14 = i61;
                    int iD = com.google.common.math.b.d(i61, RoundingMode.CEILING);
                    if (zArr13[i71][i76]) {
                        i15 = i12;
                        break;
                    }
                    int i77 = ((a) immutableListE.get(iArr[i71][i76])).f10597a;
                    int i78 = 0;
                    while (true) {
                        if (i78 >= i76) {
                            i15 = i12;
                            break;
                        }
                        i15 = i12;
                        if (zArr10[i77][((a) immutableListE.get(iArr[i71][i78])).f10597a]) {
                            zArr13[i71][i76] = true;
                            break;
                        }
                        i78++;
                        i12 = i15;
                    }
                    if (zArr13[i71][i76]) {
                        if (i72 <= 0 || i71 != i72) {
                            hVar.m(iD);
                        } else {
                            iArr25[i76] = hVar.f(iD);
                        }
                    }
                } else {
                    i14 = i61;
                    i15 = i12;
                    zArr = zArr11;
                }
                i76++;
                zArr11 = zArr;
                i61 = i14;
                i12 = i15;
            }
            int i79 = i61;
            int i80 = i12;
            boolean[][] zArr14 = zArr11;
            if (iArr22[i71] == 1 && iArr20[iArr23[i71]] > 0) {
                hVar.l();
            }
            i71++;
            zArr11 = zArr14;
            i61 = i79;
            i12 = i80;
            i70 = 2;
        }
        if (i72 == 0) {
            return new k(bVar, null, dVar, null, null);
        }
        f fVarS = s(hVar, i68);
        hVar.m(2);
        for (int i81 = 1; i81 < i68; i81++) {
            if (iArr20[iArr21[i81]] == 0) {
                hVar.l();
            }
        }
        E(hVar, i63, iArr24, iArr5, zArr13);
        K(hVar, i68, zArr12);
        if (hVar.e()) {
            hVar.b();
            jVarX = x(hVar, i68, i69, iArr24);
        } else {
            jVarX = null;
        }
        return new k(bVar, immutableListE, new d(immutableListE2, iArr25), fVarS, jVarX);
    }
}
