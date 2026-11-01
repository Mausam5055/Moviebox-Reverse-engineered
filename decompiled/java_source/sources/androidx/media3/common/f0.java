package androidx.media3.common;

import androidx.media3.common.util.a1;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class f0 {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f9969f = a1.C0(0);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String f9970g = a1.C0(1);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f9971a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f9972b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f9973c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final r[] f9974d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f9975e;

    public f0(String str, r... rVarArr) {
        androidx.media3.common.util.a.a(rVarArr.length > 0);
        this.f9972b = str;
        this.f9974d = rVarArr;
        this.f9971a = rVarArr.length;
        int iK = y.k(rVarArr[0].f10161o);
        this.f9973c = iK == -1 ? y.k(rVarArr[0].f10160n) : iK;
        f();
    }

    public f0(r... rVarArr) {
        this("", rVarArr);
    }

    private static void c(String str, String str2, String str3, int i11) {
        androidx.media3.common.util.u.d("TrackGroup", "", new IllegalStateException("Different " + str + " combined in one TrackGroup: '" + str2 + "' (track 0) and '" + str3 + "' (track " + i11 + ")"));
    }

    private static String d(String str) {
        return (str == null || str.equals(C.LANGUAGE_UNDETERMINED)) ? "" : str;
    }

    private static int e(int i11) {
        return i11 | 16384;
    }

    private void f() {
        String strD = d(this.f9974d[0].f10150d);
        int iE = e(this.f9974d[0].f10152f);
        int i11 = 1;
        while (true) {
            r[] rVarArr = this.f9974d;
            if (i11 >= rVarArr.length) {
                return;
            }
            if (!strD.equals(d(rVarArr[i11].f10150d))) {
                r[] rVarArr2 = this.f9974d;
                c("languages", rVarArr2[0].f10150d, rVarArr2[i11].f10150d, i11);
                return;
            } else {
                if (iE != e(this.f9974d[i11].f10152f)) {
                    c("role flags", Integer.toBinaryString(this.f9974d[0].f10152f), Integer.toBinaryString(this.f9974d[i11].f10152f), i11);
                    return;
                }
                i11++;
            }
        }
    }

    public r a(int i11) {
        return this.f9974d[i11];
    }

    public int b(r rVar) {
        int i11 = 0;
        while (true) {
            r[] rVarArr = this.f9974d;
            if (i11 >= rVarArr.length) {
                return -1;
            }
            if (rVar == rVarArr[i11]) {
                return i11;
            }
            i11++;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || f0.class != obj.getClass()) {
            return false;
        }
        f0 f0Var = (f0) obj;
        return this.f9972b.equals(f0Var.f9972b) && Arrays.equals(this.f9974d, f0Var.f9974d);
    }

    public int hashCode() {
        if (this.f9975e == 0) {
            this.f9975e = ((527 + this.f9972b.hashCode()) * 31) + Arrays.hashCode(this.f9974d);
        }
        return this.f9975e;
    }

    public String toString() {
        return this.f9972b + ": " + Arrays.toString(this.f9974d);
    }
}
