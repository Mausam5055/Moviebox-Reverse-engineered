package androidx.compose.ui.text.style;

/* JADX INFO: loaded from: classes.dex */
public abstract class f {
    /* JADX INFO: Access modifiers changed from: private */
    public static final int e(int i11, int i12, int i13) {
        return i11 | (i12 << 8) | (i13 << 16);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int f(int i11) {
        return i11 & 255;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int g(int i11) {
        return (i11 >> 8) & 255;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int h(int i11) {
        return (i11 >> 16) & 255;
    }
}
