package kotlinx.serialization.internal;

/* JADX INFO: loaded from: classes7.dex */
public abstract class p1 {
    public static /* synthetic */ void c(p1 p1Var, int i11, int i12, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: ensureCapacity");
        }
        if ((i12 & 1) != 0) {
            i11 = p1Var.d() + 1;
        }
        p1Var.b(i11);
    }

    public abstract Object a();

    public abstract void b(int i11);

    public abstract int d();
}
