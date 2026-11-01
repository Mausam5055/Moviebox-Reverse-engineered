package i9;

import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.util.s;

/* JADX INFO: loaded from: classes4.dex */
final class d implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f65057a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f65058b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f65059c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f65060d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f65061e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f65062f;

    private d(int i11, int i12, int i13, int i14, int i15, int i16) {
        this.f65057a = i11;
        this.f65058b = i12;
        this.f65059c = i13;
        this.f65060d = i14;
        this.f65061e = i15;
        this.f65062f = i16;
    }

    public static d c(d0 d0Var) {
        int iQ = d0Var.q();
        d0Var.Q(12);
        int iQ2 = d0Var.q();
        int iQ3 = d0Var.q();
        int iQ4 = d0Var.q();
        d0Var.Q(4);
        int iQ5 = d0Var.q();
        int iQ6 = d0Var.q();
        d0Var.Q(8);
        return new d(iQ, iQ2, iQ3, iQ4, iQ5, iQ6);
    }

    public long a() {
        return p0.N0(this.f65061e, ((long) this.f65059c) * 1000000, this.f65060d);
    }

    public int b() {
        int i11 = this.f65057a;
        if (i11 == 1935960438) {
            return 2;
        }
        if (i11 == 1935963489) {
            return 1;
        }
        if (i11 == 1937012852) {
            return 3;
        }
        s.i("AviStreamHeaderChunk", "Found unsupported streamType fourCC: " + Integer.toHexString(this.f65057a));
        return -1;
    }

    @Override // i9.a
    public int getType() {
        return 1752331379;
    }
}
