package androidx.compose.animation.core;

/* JADX INFO: loaded from: classes.dex */
public abstract class t {
    public static final s a(double d11) {
        return d11 < 0.0d ? new s(0.0d, Math.sqrt(Math.abs(d11))) : new s(Math.sqrt(d11), 0.0d);
    }
}
