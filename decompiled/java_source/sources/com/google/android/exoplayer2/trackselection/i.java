package com.google.android.exoplayer2.trackselection;

import android.util.Pair;
import com.google.android.exoplayer2.a3;
import com.google.android.exoplayer2.k3;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.o;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.y2;
import com.google.android.exoplayer2.z2;
import java.util.Arrays;
import la.m;
import la.q;
import la.r;
import t9.x;

/* JADX INFO: loaded from: classes3.dex */
public abstract class i extends q {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private a f26874c;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f26875a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final String[] f26876b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int[] f26877c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final x[] f26878d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final int[] f26879e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final int[][][] f26880f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final x f26881g;

        a(String[] strArr, int[] iArr, x[] xVarArr, int[] iArr2, int[][][] iArr3, x xVar) {
            this.f26876b = strArr;
            this.f26877c = iArr;
            this.f26878d = xVarArr;
            this.f26880f = iArr3;
            this.f26879e = iArr2;
            this.f26881g = xVar;
            this.f26875a = iArr.length;
        }

        public int a(int i11, int i12, boolean z10) {
            int i13 = this.f26878d[i11].b(i12).f25673a;
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
                String str2 = this.f26878d[i11].b(i12).c(iArr[i13]).f25496l;
                int i15 = i14 + 1;
                if (i14 == 0) {
                    str = str2;
                } else {
                    z10 |= !p0.c(str, str2);
                }
                iMin = Math.min(iMin, y2.d(this.f26880f[i11][i12][i13]));
                i13++;
                i14 = i15;
            }
            return z10 ? Math.min(iMin, this.f26879e[i11]) : iMin;
        }

        public int c(int i11, int i12, int i13) {
            return this.f26880f[i11][i12][i13];
        }

        public int d() {
            return this.f26875a;
        }

        public int e(int i11) {
            return this.f26877c[i11];
        }

        public x f(int i11) {
            return this.f26878d[i11];
        }

        public int g(int i11, int i12, int i13) {
            return y2.f(c(i11, i12, i13));
        }

        public x h() {
            return this.f26881g;
        }
    }

    private static int k(z2[] z2VarArr, TrackGroup trackGroup, int[] iArr, boolean z10) {
        int length = z2VarArr.length;
        int i11 = 0;
        boolean z11 = true;
        for (int i12 = 0; i12 < z2VarArr.length; i12++) {
            z2 z2Var = z2VarArr[i12];
            int iMax = 0;
            for (int i13 = 0; i13 < trackGroup.f25673a; i13++) {
                iMax = Math.max(iMax, y2.f(z2Var.a(trackGroup.c(i13))));
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

    private static int[] l(z2 z2Var, TrackGroup trackGroup) {
        int[] iArr = new int[trackGroup.f25673a];
        for (int i11 = 0; i11 < trackGroup.f25673a; i11++) {
            iArr[i11] = z2Var.a(trackGroup.c(i11));
        }
        return iArr;
    }

    private static int[] m(z2[] z2VarArr) {
        int length = z2VarArr.length;
        int[] iArr = new int[length];
        for (int i11 = 0; i11 < length; i11++) {
            iArr[i11] = z2VarArr[i11].supportsMixedMimeTypeAdaptation();
        }
        return iArr;
    }

    @Override // la.q
    public final void f(Object obj) {
        this.f26874c = (a) obj;
    }

    @Override // la.q
    public final r h(z2[] z2VarArr, x xVar, o.b bVar, k3 k3Var) {
        int[] iArr = new int[z2VarArr.length + 1];
        int length = z2VarArr.length + 1;
        TrackGroup[][] trackGroupArr = new TrackGroup[length][];
        int[][][] iArr2 = new int[z2VarArr.length + 1][][];
        for (int i11 = 0; i11 < length; i11++) {
            int i12 = xVar.f76165a;
            trackGroupArr[i11] = new TrackGroup[i12];
            iArr2[i11] = new int[i12][];
        }
        int[] iArrM = m(z2VarArr);
        for (int i13 = 0; i13 < xVar.f76165a; i13++) {
            TrackGroup trackGroupB = xVar.b(i13);
            int iK = k(z2VarArr, trackGroupB, iArr, trackGroupB.f25675c == 5);
            int[] iArrL = iK == z2VarArr.length ? new int[trackGroupB.f25673a] : l(z2VarArr[iK], trackGroupB);
            int i14 = iArr[iK];
            trackGroupArr[iK][i14] = trackGroupB;
            iArr2[iK][i14] = iArrL;
            iArr[iK] = i14 + 1;
        }
        x[] xVarArr = new x[z2VarArr.length];
        String[] strArr = new String[z2VarArr.length];
        int[] iArr3 = new int[z2VarArr.length];
        for (int i15 = 0; i15 < z2VarArr.length; i15++) {
            int i16 = iArr[i15];
            xVarArr[i15] = new x((TrackGroup[]) p0.G0(trackGroupArr[i15], i16));
            iArr2[i15] = (int[][]) p0.G0(iArr2[i15], i16);
            strArr[i15] = z2VarArr[i15].getName();
            iArr3[i15] = z2VarArr[i15].getTrackType();
        }
        a aVar = new a(strArr, iArr3, xVarArr, iArrM, iArr2, new x((TrackGroup[]) p0.G0(trackGroupArr[z2VarArr.length], iArr[z2VarArr.length])));
        Pair pairN = n(aVar, iArr2, iArrM, bVar, k3Var);
        return new r((a3[]) pairN.first, (h[]) pairN.second, j.b(aVar, (m[]) pairN.second), aVar);
    }

    protected abstract Pair n(a aVar, int[][][] iArr, int[] iArr2, o.b bVar, k3 k3Var);
}
