package n2;

import androidx.media3.common.util.a1;
import androidx.media3.common.util.j0;
import androidx.media3.common.util.u;

/* JADX INFO: loaded from: classes2.dex */
final class d implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f70146a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f70147b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f70148c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f70149d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f70150e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f70151f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f70152g;

    private d(int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
        this.f70146a = i11;
        this.f70147b = i12;
        this.f70148c = i13;
        this.f70149d = i14;
        this.f70150e = i15;
        this.f70151f = i16;
        this.f70152g = i17;
    }

    public static d c(j0 j0Var) {
        int iU = j0Var.u();
        j0Var.X(12);
        int iU2 = j0Var.u();
        int iU3 = j0Var.u();
        int iU4 = j0Var.u();
        j0Var.X(4);
        int iU5 = j0Var.u();
        int iU6 = j0Var.u();
        j0Var.X(4);
        return new d(iU, iU2, iU3, iU4, iU5, iU6, j0Var.u());
    }

    public long a() {
        return a1.e1(this.f70150e, ((long) this.f70148c) * 1000000, this.f70149d);
    }

    public int b() {
        int i11 = this.f70146a;
        if (i11 == 1935960438) {
            return 2;
        }
        if (i11 == 1935963489) {
            return 1;
        }
        if (i11 == 1937012852) {
            return 3;
        }
        u.h("AviStreamHeaderChunk", "Found unsupported streamType fourCC: " + Integer.toHexString(this.f70146a));
        return -1;
    }

    @Override // n2.a
    public int getType() {
        return 1752331379;
    }
}
