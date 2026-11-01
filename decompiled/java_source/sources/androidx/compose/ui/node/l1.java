package androidx.compose.ui.node;

/* JADX INFO: loaded from: classes.dex */
public final class l1 extends androidx.compose.ui.f.c {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f5414n;

    public l1() {
        t1(0);
    }

    public final boolean D1() {
        return this.f5414n;
    }

    @Override // androidx.compose.ui.f.c
    public void n1() {
        this.f5414n = true;
    }

    @Override // androidx.compose.ui.f.c
    public void o1() {
        this.f5414n = false;
    }

    public String toString() {
        return "<tail>";
    }
}
