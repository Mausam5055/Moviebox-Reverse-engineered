package i9;

import com.google.android.exoplayer2.util.d0;

/* JADX INFO: loaded from: classes4.dex */
final class c implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f65053a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f65054b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f65055c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f65056d;

    private c(int i11, int i12, int i13, int i14) {
        this.f65053a = i11;
        this.f65054b = i12;
        this.f65055c = i13;
        this.f65056d = i14;
    }

    public static c b(d0 d0Var) {
        int iQ = d0Var.q();
        d0Var.Q(8);
        int iQ2 = d0Var.q();
        int iQ3 = d0Var.q();
        d0Var.Q(4);
        int iQ4 = d0Var.q();
        d0Var.Q(12);
        return new c(iQ, iQ2, iQ3, iQ4);
    }

    public boolean a() {
        return (this.f65054b & 16) == 16;
    }

    @Override // i9.a
    public int getType() {
        return 1751742049;
    }
}
