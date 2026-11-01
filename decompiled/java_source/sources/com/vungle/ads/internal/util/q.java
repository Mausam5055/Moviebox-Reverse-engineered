package com.vungle.ads.internal.util;

/* JADX INFO: loaded from: classes7.dex */
public final class q {
    public static final q INSTANCE = new q();

    private q() {
    }

    public static /* synthetic */ boolean isInRange$default(q qVar, float f11, float f12, float f13, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            f13 = Float.MAX_VALUE;
        }
        return qVar.isInRange(f11, f12, f13);
    }

    public static /* synthetic */ boolean isInRange$default(q qVar, int i11, int i12, int i13, int i14, Object obj) {
        if ((i14 & 4) != 0) {
            i13 = Integer.MAX_VALUE;
        }
        return qVar.isInRange(i11, i12, i13);
    }

    public final boolean isInRange(float f11, float f12, float f13) {
        return f12 <= f11 && f11 <= f13;
    }

    public final boolean isInRange(int i11, int i12, int i13) {
        return i12 <= i11 && i11 <= i13;
    }
}
