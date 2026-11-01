package b3;

import androidx.media3.common.util.j0;
import androidx.media3.common.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class d extends b3.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f16180a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f16181b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f16182c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f16183d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f16184e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f16185f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final long f16186g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final List f16187h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f16188i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final long f16189j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f16190k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f16191l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f16192m;

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f16193a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f16194b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f16195c;

        private b(int i11, long j11, long j12) {
            this.f16193a = i11;
            this.f16194b = j11;
            this.f16195c = j12;
        }
    }

    private d(long j11, boolean z10, boolean z11, boolean z12, boolean z13, long j12, long j13, List list, boolean z14, long j14, int i11, int i12, int i13) {
        this.f16180a = j11;
        this.f16181b = z10;
        this.f16182c = z11;
        this.f16183d = z12;
        this.f16184e = z13;
        this.f16185f = j12;
        this.f16186g = j13;
        this.f16187h = Collections.unmodifiableList(list);
        this.f16188i = z14;
        this.f16189j = j14;
        this.f16190k = i11;
        this.f16191l = i12;
        this.f16192m = i13;
    }

    static d b(j0 j0Var, long j11, p0 p0Var) {
        List list;
        boolean z10;
        boolean z11;
        long j12;
        boolean z12;
        long j13;
        int iP;
        int iH;
        int iH2;
        boolean z13;
        boolean z14;
        long J;
        long J2 = j0Var.J();
        boolean z15 = (j0Var.H() & 128) != 0;
        List listEmptyList = Collections.emptyList();
        if (z15) {
            list = listEmptyList;
            z10 = false;
            z11 = false;
            j12 = C.TIME_UNSET;
            z12 = false;
            j13 = C.TIME_UNSET;
            iP = 0;
            iH = 0;
            iH2 = 0;
            z13 = false;
        } else {
            int iH3 = j0Var.H();
            boolean z16 = (iH3 & 128) != 0;
            boolean z17 = (iH3 & 64) != 0;
            boolean z18 = (iH3 & 32) != 0;
            boolean z19 = (iH3 & 16) != 0;
            long jC = (!z17 || z19) ? C.TIME_UNSET : g.c(j0Var, j11);
            if (!z17) {
                int iH4 = j0Var.H();
                ArrayList arrayList = new ArrayList(iH4);
                for (int i11 = 0; i11 < iH4; i11++) {
                    int iH5 = j0Var.H();
                    long jC2 = !z19 ? g.c(j0Var, j11) : C.TIME_UNSET;
                    arrayList.add(new b(iH5, jC2, p0Var.b(jC2)));
                }
                listEmptyList = arrayList;
            }
            if (z18) {
                long jH = j0Var.H();
                boolean z20 = (128 & jH) != 0;
                J = ((((jH & 1) << 32) | j0Var.J()) * 1000) / 90;
                z14 = z20;
            } else {
                z14 = false;
                J = C.TIME_UNSET;
            }
            iP = j0Var.P();
            z13 = z17;
            iH = j0Var.H();
            iH2 = j0Var.H();
            list = listEmptyList;
            long j14 = jC;
            z12 = z14;
            j13 = J;
            z11 = z19;
            z10 = z16;
            j12 = j14;
        }
        return new d(J2, z15, z10, z13, z11, j12, p0Var.b(j12), list, z12, j13, iP, iH, iH2);
    }

    @Override // b3.b
    public String toString() {
        return "SCTE-35 SpliceInsertCommand { programSplicePts=" + this.f16185f + ", programSplicePlaybackPositionUs= " + this.f16186g + " }";
    }
}
