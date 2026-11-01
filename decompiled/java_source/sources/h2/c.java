package h2;

import androidx.media3.common.util.u;
import androidx.media3.exoplayer.source.e0;
import l2.s0;

/* JADX INFO: loaded from: classes2.dex */
public final class c implements f.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int[] f64273a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final e0[] f64274b;

    public c(int[] iArr, e0[] e0VarArr) {
        this.f64273a = iArr;
        this.f64274b = e0VarArr;
    }

    public int[] a() {
        int[] iArr = new int[this.f64274b.length];
        int i11 = 0;
        while (true) {
            e0[] e0VarArr = this.f64274b;
            if (i11 >= e0VarArr.length) {
                return iArr;
            }
            iArr[i11] = e0VarArr[i11].J();
            i11++;
        }
    }

    public void b(long j11) {
        for (e0 e0Var : this.f64274b) {
            e0Var.d0(j11);
        }
    }

    @Override // h2.f.b
    public s0 track(int i11, int i12) {
        int i13 = 0;
        while (true) {
            int[] iArr = this.f64273a;
            if (i13 >= iArr.length) {
                u.c("BaseMediaChunkOutput", "Unmatched track of type: " + i12);
                return new l2.n();
            }
            if (i12 == iArr[i13]) {
                return this.f64274b[i13];
            }
            i13++;
        }
    }
}
