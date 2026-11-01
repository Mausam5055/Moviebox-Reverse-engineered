package com.bytedance.adsdk.sP;

/* JADX INFO: loaded from: classes2.dex */
public enum RiZ {
    AUTOMATIC,
    HARDWARE,
    SOFTWARE;

    /* JADX INFO: renamed from: com.bytedance.adsdk.sP.RiZ$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] Sj;

        static {
            int[] iArr = new int[RiZ.values().length];
            Sj = iArr;
            try {
                iArr[RiZ.HARDWARE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                Sj[RiZ.SOFTWARE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                Sj[RiZ.AUTOMATIC.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public boolean Sj(int i11, boolean z10, int i12) {
        int i13 = AnonymousClass1.Sj[ordinal()];
        if (i13 == 1) {
            return false;
        }
        if (i13 != 2) {
            return (z10 && i11 < 28) || i12 > 4 || i11 <= 25;
        }
        return true;
    }
}
