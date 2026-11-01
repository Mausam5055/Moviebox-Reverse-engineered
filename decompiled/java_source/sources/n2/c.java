package n2;

import androidx.media3.common.util.j0;

/* JADX INFO: loaded from: classes2.dex */
final class c implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f70142a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f70143b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f70144c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f70145d;

    private c(int i11, int i12, int i13, int i14) {
        this.f70142a = i11;
        this.f70143b = i12;
        this.f70144c = i13;
        this.f70145d = i14;
    }

    public static c b(j0 j0Var) {
        int iU = j0Var.u();
        j0Var.X(8);
        int iU2 = j0Var.u();
        int iU3 = j0Var.u();
        j0Var.X(4);
        int iU4 = j0Var.u();
        j0Var.X(12);
        return new c(iU, iU2, iU3, iU4);
    }

    public boolean a() {
        return (this.f70143b & 16) == 16;
    }

    @Override // n2.a
    public int getType() {
        return 1751742049;
    }
}
