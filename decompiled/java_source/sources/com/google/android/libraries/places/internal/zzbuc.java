package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
final class zzbuc {
    private final zzbuc[] zza;
    private final int zzb;
    private final int zzc;

    zzbuc() {
        this.zza = new zzbuc[256];
        this.zzb = 0;
        this.zzc = 0;
    }

    zzbuc(int i11, int i12) {
        this.zza = null;
        this.zzb = i11;
        int i13 = i12 & 7;
        this.zzc = i13 == 0 ? 8 : i13;
    }
}
