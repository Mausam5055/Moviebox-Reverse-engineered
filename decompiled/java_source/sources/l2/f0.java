package l2;

import androidx.media3.common.ParserException;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class f0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f68567a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f68568b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f68569c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f68570d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f68571e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f68572f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f68573g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f68574h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f68575i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f68576j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f68577k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final float f68578l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f68579m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final String f68580n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final androidx.media3.container.g.k f68581o;

    private f0(List list, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19, int i20, float f11, int i21, String str, androidx.media3.container.g.k kVar) {
        this.f68567a = list;
        this.f68568b = i11;
        this.f68569c = i12;
        this.f68570d = i13;
        this.f68571e = i14;
        this.f68572f = i15;
        this.f68573g = i16;
        this.f68574h = i17;
        this.f68575i = i18;
        this.f68576j = i19;
        this.f68577k = i20;
        this.f68578l = f11;
        this.f68579m = i21;
        this.f68580n = str;
        this.f68581o = kVar;
    }

    public static f0 a(androidx.media3.common.util.j0 j0Var) {
        return b(j0Var, false, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static f0 b(androidx.media3.common.util.j0 j0Var, boolean z10, androidx.media3.container.g.k kVar) throws ParserException {
        int i11;
        androidx.media3.container.g.C0090g c0090gT;
        try {
            if (z10) {
                j0Var.X(4);
            } else {
                j0Var.X(21);
            }
            int iH = j0Var.H() & 3;
            int iH2 = j0Var.H();
            int iF = j0Var.f();
            int i12 = 0;
            int i13 = 0;
            for (int i14 = 0; i14 < iH2; i14++) {
                j0Var.X(1);
                int iP = j0Var.P();
                for (int i15 = 0; i15 < iP; i15++) {
                    int iP2 = j0Var.P();
                    i13 += iP2 + 4;
                    j0Var.X(iP2);
                }
            }
            j0Var.W(iF);
            byte[] bArr = new byte[i13];
            androidx.media3.container.g.k kVar2 = kVar;
            int i16 = -1;
            int i17 = -1;
            int i18 = -1;
            int i19 = -1;
            int i20 = -1;
            int i21 = -1;
            int i22 = -1;
            int i23 = -1;
            int i24 = -1;
            int i25 = -1;
            float f11 = 1.0f;
            String strF = null;
            int i26 = 0;
            int i27 = 0;
            while (i26 < iH2) {
                int iH3 = j0Var.H() & 63;
                int iP3 = j0Var.P();
                int i28 = i12;
                androidx.media3.container.g.k kVarY = kVar2;
                while (i28 < iP3) {
                    int iP4 = j0Var.P();
                    byte[] bArr2 = androidx.media3.container.g.f10593a;
                    int i29 = iH2;
                    System.arraycopy(bArr2, i12, bArr, i27, bArr2.length);
                    int length = i27 + bArr2.length;
                    System.arraycopy(j0Var.e(), j0Var.f(), bArr, length, iP4);
                    if (iH3 == 32 && i28 == 0) {
                        kVarY = androidx.media3.container.g.y(bArr, length, length + iP4);
                        i11 = i12;
                        iP3 = iP3;
                    } else if (iH3 == 33 && i28 == 0) {
                        androidx.media3.container.g.h hVarU = androidx.media3.container.g.u(bArr, length, length + iP4, kVarY);
                        int i30 = hVarU.f10627b + 1;
                        int i31 = hVarU.f10633h;
                        int i32 = hVarU.f10634i;
                        i19 = hVarU.f10630e + 8;
                        i20 = hVarU.f10631f + 8;
                        int i33 = hVarU.f10637l;
                        int i34 = hVarU.f10638m;
                        int i35 = hVarU.f10639n;
                        float f12 = hVarU.f10635j;
                        int i36 = hVarU.f10636k;
                        androidx.media3.container.g.c cVar = hVarU.f10628c;
                        if (cVar != null) {
                            strF = androidx.media3.common.util.j.f(cVar.f10602a, cVar.f10603b, cVar.f10604c, cVar.f10605d, cVar.f10606e, cVar.f10607f);
                        }
                        i16 = i30;
                        i17 = i31;
                        i11 = 0;
                        i21 = i33;
                        i18 = i32;
                        i25 = i36;
                        f11 = f12;
                        i23 = i35;
                        i22 = i34;
                    } else {
                        iP3 = iP3;
                        if (iH3 != 39 || i28 != 0 || (c0090gT = androidx.media3.container.g.t(bArr, length, length + iP4)) == null || kVarY == null) {
                            i11 = 0;
                        } else {
                            i11 = 0;
                            i24 = c0090gT.f10620d == ((androidx.media3.container.g.a) kVarY.f10646b.get(0)).f10598b ? 4 : 5;
                        }
                    }
                    i27 = length + iP4;
                    j0Var.X(iP4);
                    i28++;
                    i12 = i11;
                    iH2 = i29;
                    iP3 = iP3;
                }
                i26++;
                kVar2 = kVarY;
            }
            return new f0(i13 == 0 ? Collections.emptyList() : Collections.singletonList(bArr), iH + 1, i16, i17, i18, i19, i20, i21, i22, i23, i24, f11, i25, strF, kVar2);
        } catch (ArrayIndexOutOfBoundsException e11) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Error parsing");
            sb2.append(z10 ? "L-HEVC config" : "HEVC config");
            throw ParserException.createForMalformedContainer(sb2.toString(), e11);
        }
    }

    public static f0 c(androidx.media3.common.util.j0 j0Var, androidx.media3.container.g.k kVar) {
        return b(j0Var, true, kVar);
    }
}
