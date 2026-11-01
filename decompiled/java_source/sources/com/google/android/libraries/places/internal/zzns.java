package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzns {
    zzns() {
    }

    static int zzd(int i11, int i12) {
        int i13 = i11 + (i11 >> 1) + 1;
        if (i13 < i12) {
            int iHighestOneBit = Integer.highestOneBit(i12 - 1);
            i13 = iHighestOneBit + iHighestOneBit;
        }
        if (i13 < 0) {
            return Integer.MAX_VALUE;
        }
        return i13;
    }

    public abstract zzns zzb(Object obj);
}
