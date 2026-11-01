package androidx.compose.runtime.snapshots;

/* JADX INFO: loaded from: classes.dex */
public abstract class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Object f4018a = new Object();

    /* JADX INFO: Access modifiers changed from: private */
    public static final Void e() {
        throw new IllegalStateException("Cannot call set before the first call to next() or previous() or immediately after a call to add() or remove()");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Void f() {
        throw new IllegalStateException("Cannot modify a state list through an iterator");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(int i11, int i12) {
        if (i11 < 0 || i11 >= i12) {
            throw new IndexOutOfBoundsException("index (" + i11 + ") is out of bound of [0, " + i12 + ')');
        }
    }
}
