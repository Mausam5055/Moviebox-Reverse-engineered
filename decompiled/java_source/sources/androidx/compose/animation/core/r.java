package androidx.compose.animation.core;

/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class r {
    public static /* synthetic */ int a(double d11) {
        long jDoubleToLongBits = Double.doubleToLongBits(d11);
        return (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
    }
}
