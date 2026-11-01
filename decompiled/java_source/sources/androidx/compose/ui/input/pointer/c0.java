package androidx.compose.ui.input.pointer;

/* JADX INFO: loaded from: classes.dex */
public abstract class c0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private androidx.compose.ui.layout.l f4979a;

    public boolean a() {
        return false;
    }

    public final androidx.compose.ui.layout.l b() {
        return this.f4979a;
    }

    public boolean c() {
        return false;
    }

    public abstract void d();

    public abstract void e(o oVar, PointerEventPass pointerEventPass, long j11);

    public final void f(androidx.compose.ui.layout.l lVar) {
        this.f4979a = lVar;
    }
}
