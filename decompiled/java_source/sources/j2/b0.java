package j2;

import android.util.Pair;
import androidx.media3.common.util.a1;
import androidx.media3.exoplayer.x3;
import androidx.media3.exoplayer.y3;
import androidx.media3.exoplayer.z3;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public abstract class b0 extends e0 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private a f65735c;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f65736a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final String[] f65737b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int[] f65738c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final g2.z[] f65739d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final int[] f65740e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final int[][][] f65741f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final g2.z f65742g;

        a(String[] strArr, int[] iArr, g2.z[] zVarArr, int[] iArr2, int[][][] iArr3, g2.z zVar) {
            this.f65737b = strArr;
            this.f65738c = iArr;
            this.f65739d = zVarArr;
            this.f65741f = iArr3;
            this.f65740e = iArr2;
            this.f65742g = zVar;
            this.f65736a = iArr.length;
        }

        public int a(int i11, int i12, boolean z10) {
            int i13 = this.f65739d[i11].b(i12).f9971a;
            int[] iArr = new int[i13];
            int i14 = 0;
            for (int i15 = 0; i15 < i13; i15++) {
                int iG = g(i11, i12, i15);
                if (iG == 4 || (z10 && iG == 3)) {
                    iArr[i14] = i15;
                    i14++;
                }
            }
            return b(i11, i12, Arrays.copyOf(iArr, i14));
        }

        public int b(int i11, int i12, int[] iArr) {
            int i13 = 0;
            int iMin = 16;
            String str = null;
            boolean z10 = false;
            int i14 = 0;
            while (i13 < iArr.length) {
                String str2 = this.f65739d[i11].b(i12).a(iArr[i13]).f10161o;
                int i15 = i14 + 1;
                if (i14 == 0) {
                    str = str2;
                } else {
                    z10 |= !Objects.equals(str, str2);
                }
                iMin = Math.min(iMin, x3.f(this.f65741f[i11][i12][i13]));
                i13++;
                i14 = i15;
            }
            return z10 ? Math.min(iMin, this.f65740e[i11]) : iMin;
        }

        public int c(int i11, int i12, int i13) {
            return this.f65741f[i11][i12][i13];
        }

        public int d() {
            return this.f65736a;
        }

        public int e(int i11) {
            return this.f65738c[i11];
        }

        public g2.z f(int i11) {
            return this.f65739d[i11];
        }

        public int g(int i11, int i12, int i13) {
            return x3.i(c(i11, i12, i13));
        }

        public g2.z h() {
            return this.f65742g;
        }
    }

    private static int n(y3[] y3VarArr, androidx.media3.common.f0 f0Var, int[] iArr, boolean z10) {
        int length = y3VarArr.length;
        int i11 = 0;
        boolean z11 = true;
        for (int i12 = 0; i12 < y3VarArr.length; i12++) {
            y3 y3Var = y3VarArr[i12];
            int iMax = 0;
            for (int i13 = 0; i13 < f0Var.f9971a; i13++) {
                iMax = Math.max(iMax, x3.i(y3Var.a(f0Var.a(i13))));
            }
            boolean z12 = iArr[i12] == 0;
            if (iMax > i11 || (iMax == i11 && z10 && !z11 && z12)) {
                length = i12;
                z11 = z12;
                i11 = iMax;
            }
        }
        return length;
    }

    private static int[] o(y3 y3Var, androidx.media3.common.f0 f0Var) {
        int[] iArr = new int[f0Var.f9971a];
        for (int i11 = 0; i11 < f0Var.f9971a; i11++) {
            iArr[i11] = y3Var.a(f0Var.a(i11));
        }
        return iArr;
    }

    private static int[] p(y3[] y3VarArr) {
        int length = y3VarArr.length;
        int[] iArr = new int[length];
        for (int i11 = 0; i11 < length; i11++) {
            iArr[i11] = y3VarArr[i11].supportsMixedMimeTypeAdaptation();
        }
        return iArr;
    }

    @Override // j2.e0
    public final void i(Object obj) {
        this.f65735c = (a) obj;
    }

    @Override // j2.e0
    public final f0 k(y3[] y3VarArr, g2.z zVar, androidx.media3.exoplayer.source.r.b bVar, androidx.media3.common.e0 e0Var) {
        int[] iArr = new int[y3VarArr.length + 1];
        int length = y3VarArr.length + 1;
        androidx.media3.common.f0[][] f0VarArr = new androidx.media3.common.f0[length][];
        int[][][] iArr2 = new int[y3VarArr.length + 1][][];
        for (int i11 = 0; i11 < length; i11++) {
            int i12 = zVar.f63266a;
            f0VarArr[i11] = new androidx.media3.common.f0[i12];
            iArr2[i11] = new int[i12][];
        }
        int[] iArrP = p(y3VarArr);
        for (int i13 = 0; i13 < zVar.f63266a; i13++) {
            androidx.media3.common.f0 f0VarB = zVar.b(i13);
            int iN = n(y3VarArr, f0VarB, iArr, f0VarB.f9973c == 5);
            int[] iArrO = iN == y3VarArr.length ? new int[f0VarB.f9971a] : o(y3VarArr[iN], f0VarB);
            int i14 = iArr[iN];
            f0VarArr[iN][i14] = f0VarB;
            iArr2[iN][i14] = iArrO;
            iArr[iN] = i14 + 1;
        }
        g2.z[] zVarArr = new g2.z[y3VarArr.length];
        String[] strArr = new String[y3VarArr.length];
        int[] iArr3 = new int[y3VarArr.length];
        for (int i15 = 0; i15 < y3VarArr.length; i15++) {
            int i16 = iArr[i15];
            zVarArr[i15] = new g2.z((androidx.media3.common.f0[]) a1.X0(f0VarArr[i15], i16));
            iArr2[i15] = (int[][]) a1.X0(iArr2[i15], i16);
            strArr[i15] = y3VarArr[i15].getName();
            iArr3[i15] = y3VarArr[i15].getTrackType();
        }
        a aVar = new a(strArr, iArr3, zVarArr, iArrP, iArr2, new g2.z((androidx.media3.common.f0[]) a1.X0(f0VarArr[y3VarArr.length], iArr[y3VarArr.length])));
        Pair pairQ = q(aVar, iArr2, iArrP, bVar, e0Var);
        return new f0((z3[]) pairQ.first, (z[]) pairQ.second, d0.a(aVar, (c0[]) pairQ.second), aVar);
    }

    protected abstract Pair q(a aVar, int[][][] iArr, int[] iArr2, androidx.media3.exoplayer.source.r.b bVar, androidx.media3.common.e0 e0Var);
}
