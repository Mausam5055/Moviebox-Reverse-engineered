package kotlinx.coroutines.internal;

/* JADX INFO: loaded from: classes7.dex */
public abstract class i {
    public static final void a(int i11) {
        if (i11 >= 1) {
            return;
        }
        throw new IllegalArgumentException(("Expected positive parallelism level, but got " + i11).toString());
    }

    public static final kotlinx.coroutines.i0 b(kotlinx.coroutines.i0 i0Var, String str) {
        return str != null ? new r(i0Var, str) : i0Var;
    }
}
