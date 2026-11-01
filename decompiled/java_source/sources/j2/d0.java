package j2;

import android.graphics.Point;
import android.os.SystemClock;
import androidx.media3.common.i0;
import androidx.media3.common.util.a1;
import com.google.common.collect.ImmutableList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class d0 {
    public static i0 a(b0.a aVar, c0[] c0VarArr) {
        List[] listArr = new List[c0VarArr.length];
        for (int i11 = 0; i11 < c0VarArr.length; i11++) {
            c0 c0Var = c0VarArr[i11];
            listArr[i11] = c0Var != null ? ImmutableList.of(c0Var) : ImmutableList.of();
        }
        return b(aVar, listArr);
    }

    public static i0 b(b0.a aVar, List[] listArr) {
        boolean z10;
        ImmutableList.a aVar2 = new ImmutableList.a();
        for (int i11 = 0; i11 < aVar.d(); i11++) {
            g2.z zVarF = aVar.f(i11);
            List list = listArr[i11];
            for (int i12 = 0; i12 < zVarF.f63266a; i12++) {
                androidx.media3.common.f0 f0VarB = zVarF.b(i12);
                boolean z11 = aVar.a(i11, i12, false) != 0;
                int i13 = f0VarB.f9971a;
                int[] iArr = new int[i13];
                boolean[] zArr = new boolean[i13];
                for (int i14 = 0; i14 < f0VarB.f9971a; i14++) {
                    iArr[i14] = aVar.g(i11, i12, i14);
                    int i15 = 0;
                    while (true) {
                        if (i15 >= list.size()) {
                            z10 = false;
                            break;
                        }
                        c0 c0Var = (c0) list.get(i15);
                        if (c0Var.getTrackGroup().equals(f0VarB) && c0Var.indexOf(i14) != -1) {
                            z10 = true;
                            break;
                        }
                        i15++;
                    }
                    zArr[i14] = z10;
                }
                aVar2.a(new i0.a(f0VarB, z11, iArr, zArr));
            }
        }
        g2.z zVarH = aVar.h();
        for (int i16 = 0; i16 < zVarH.f63266a; i16++) {
            androidx.media3.common.f0 f0VarB2 = zVarH.b(i16);
            int[] iArr2 = new int[f0VarB2.f9971a];
            Arrays.fill(iArr2, 0);
            aVar2.a(new i0.a(f0VarB2, false, iArr2, new boolean[f0VarB2.f9971a]));
        }
        return new i0(aVar2.e());
    }

    public static androidx.media3.exoplayer.upstream.m.a c(z zVar) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        int length = zVar.length();
        int i11 = 0;
        for (int i12 = 0; i12 < length; i12++) {
            if (zVar.d(i12, jElapsedRealtime)) {
                i11++;
            }
        }
        return new androidx.media3.exoplayer.upstream.m.a(1, 0, length, i11);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x000f  */
    public static Point d(boolean z10, int i11, int i12, int i13, int i14) {
        if (z10) {
            if ((i13 > i14) == (i11 > i12)) {
                i12 = i11;
                i11 = i12;
            }
        } else {
            i12 = i11;
            i11 = i12;
        }
        int i15 = i13 * i11;
        int i16 = i14 * i12;
        return i15 >= i16 ? new Point(i12, a1.k(i16, i13)) : new Point(a1.k(i15, i14), i11);
    }
}
