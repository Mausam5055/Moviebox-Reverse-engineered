package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.util.p0;

/* JADX INFO: loaded from: classes3.dex */
public abstract class i0 {
    public static int a(int i11, int i12) {
        if (i11 != 1) {
            if (i11 == 3) {
                return i12 == 32 ? 4 : 0;
            }
            if (i11 != 65534) {
                return 0;
            }
        }
        return p0.c0(i12);
    }
}
