package v9;

import com.google.android.exoplayer2.source.a0;
import com.google.android.exoplayer2.util.s;
import g9.e0;

/* JADX INFO: loaded from: classes4.dex */
public final class c implements g.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int[] f77112a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final a0[] f77113b;

    public c(int[] iArr, a0[] a0VarArr) {
        this.f77112a = iArr;
        this.f77113b = a0VarArr;
    }

    public int[] a() {
        int[] iArr = new int[this.f77113b.length];
        int i11 = 0;
        while (true) {
            a0[] a0VarArr = this.f77113b;
            if (i11 >= a0VarArr.length) {
                return iArr;
            }
            iArr[i11] = a0VarArr[i11].G();
            i11++;
        }
    }

    public void b(long j11) {
        for (a0 a0Var : this.f77113b) {
            a0Var.a0(j11);
        }
    }

    @Override // v9.g.b
    public e0 track(int i11, int i12) {
        int i13 = 0;
        while (true) {
            int[] iArr = this.f77112a;
            if (i13 >= iArr.length) {
                s.c("BaseMediaChunkOutput", "Unmatched track of type: " + i12);
                return new g9.k();
            }
            if (i12 == iArr[i13]) {
                return this.f77113b[i13];
            }
            i13++;
        }
    }
}
