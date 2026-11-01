package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList;

/* JADX INFO: loaded from: classes.dex */
public abstract class j {
    public static final int a(int i11, int i12) {
        return (i11 >> i12) & 31;
    }

    public static final t.f b() {
        return h.f3718b.a();
    }

    public static final Object[] c(Object obj) {
        Object[] objArr = new Object[32];
        objArr[0] = obj;
        return objArr;
    }

    public static final int d(int i11) {
        return (i11 - 1) & (-32);
    }
}
