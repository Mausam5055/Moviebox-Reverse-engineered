package b3;

import androidx.media3.common.util.j0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class f extends b3.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f16196a;

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f16197a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f16198b;

        private b(int i11, long j11) {
            this.f16197a = i11;
            this.f16198b = j11;
        }
    }

    public static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f16199a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f16200b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f16201c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final boolean f16202d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final long f16203e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final List f16204f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final boolean f16205g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final long f16206h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final int f16207i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final int f16208j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final int f16209k;

        private c(long j11, boolean z10, boolean z11, boolean z12, List list, long j12, boolean z13, long j13, int i11, int i12, int i13) {
            this.f16199a = j11;
            this.f16200b = z10;
            this.f16201c = z11;
            this.f16202d = z12;
            this.f16204f = Collections.unmodifiableList(list);
            this.f16203e = j12;
            this.f16205g = z13;
            this.f16206h = j13;
            this.f16207i = i11;
            this.f16208j = i12;
            this.f16209k = i13;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static c b(j0 j0Var) {
            ArrayList arrayList;
            boolean z10;
            long j11;
            boolean z11;
            long j12;
            int i11;
            int i12;
            int iH;
            boolean z12;
            boolean z13;
            long J;
            long J2 = j0Var.J();
            boolean z14 = (j0Var.H() & 128) != 0;
            ArrayList arrayList2 = new ArrayList();
            if (z14) {
                arrayList = arrayList2;
                z10 = false;
                j11 = C.TIME_UNSET;
                z11 = false;
                j12 = C.TIME_UNSET;
                i11 = 0;
                i12 = 0;
                iH = 0;
                z12 = false;
            } else {
                int iH2 = j0Var.H();
                boolean z15 = (iH2 & 128) != 0;
                boolean z16 = (iH2 & 64) != 0;
                boolean z17 = (iH2 & 32) != 0;
                long J3 = z16 ? j0Var.J() : C.TIME_UNSET;
                if (!z16) {
                    int iH3 = j0Var.H();
                    ArrayList arrayList3 = new ArrayList(iH3);
                    for (int i13 = 0; i13 < iH3; i13++) {
                        arrayList3.add(new b(j0Var.H(), j0Var.J()));
                    }
                    arrayList2 = arrayList3;
                }
                if (z17) {
                    long jH = j0Var.H();
                    boolean z18 = (128 & jH) != 0;
                    J = ((((jH & 1) << 32) | j0Var.J()) * 1000) / 90;
                    z13 = z18;
                } else {
                    z13 = false;
                    J = C.TIME_UNSET;
                }
                int iP = j0Var.P();
                int iH4 = j0Var.H();
                z12 = z16;
                iH = j0Var.H();
                j12 = J;
                arrayList = arrayList2;
                long j13 = J3;
                i11 = iP;
                i12 = iH4;
                j11 = j13;
                boolean z19 = z15;
                z11 = z13;
                z10 = z19;
            }
            return new c(J2, z14, z10, z12, arrayList, j11, z11, j12, i11, i12, iH);
        }
    }

    private f(List list) {
        this.f16196a = Collections.unmodifiableList(list);
    }

    static f b(j0 j0Var) {
        int iH = j0Var.H();
        ArrayList arrayList = new ArrayList(iH);
        for (int i11 = 0; i11 < iH; i11++) {
            arrayList.add(c.b(j0Var));
        }
        return new f(arrayList);
    }
}
