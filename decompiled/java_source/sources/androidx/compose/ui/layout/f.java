package androidx.compose.ui.layout;

/* JADX INFO: loaded from: classes.dex */
public abstract class f {
    /* JADX INFO: Access modifiers changed from: private */
    public static final float e(long j11, long j12) {
        return y.m.g(j12) / y.m.g(j11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float f(long j11, long j12) {
        return Math.max(h(j11, j12), e(j11, j12));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float g(long j11, long j12) {
        return Math.min(h(j11, j12), e(j11, j12));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float h(long j11, long j12) {
        return y.m.i(j12) / y.m.i(j11);
    }
}
