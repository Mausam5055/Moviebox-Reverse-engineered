package androidx.compose.ui.platform;

/* JADX INFO: loaded from: classes.dex */
public abstract class h1 {
    private static final float a(float f11) {
        return (float) (f11 >= 0.0f ? Math.ceil(f11) : Math.floor(f11));
    }

    public static final int b(float f11) {
        return ((int) a(f11)) * (-1);
    }
}
