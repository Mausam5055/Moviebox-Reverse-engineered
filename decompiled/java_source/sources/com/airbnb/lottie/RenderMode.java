package com.airbnb.lottie;

/* JADX INFO: loaded from: classes.dex */
public enum RenderMode {
    AUTOMATIC,
    HARDWARE,
    SOFTWARE;

    /* JADX INFO: loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f17702a;

        static {
            int[] iArr = new int[RenderMode.values().length];
            f17702a = iArr;
            try {
                iArr[RenderMode.HARDWARE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17702a[RenderMode.SOFTWARE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17702a[RenderMode.AUTOMATIC.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public boolean useSoftwareRendering(int i11, boolean z10, int i12) {
        int i13 = a.f17702a[ordinal()];
        if (i13 == 1) {
            return false;
        }
        if (i13 != 2) {
            return (z10 && i11 < 28) || i12 > 4 || i11 <= 25;
        }
        return true;
    }
}
