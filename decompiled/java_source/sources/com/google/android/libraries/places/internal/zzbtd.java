package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class zzbtd {
    private final String[] zza;

    /* synthetic */ zzbtd(zzbtb zzbtbVar, zzbtc zzbtcVar) {
        this.zza = (String[]) zzbtbVar.zza.toArray(new String[zzbtbVar.zza.size()]);
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        int iZza = zza();
        for (int i11 = 0; i11 < iZza; i11++) {
            sb2.append(zzb(i11));
            sb2.append(": ");
            sb2.append(zzc(i11));
            sb2.append("\n");
        }
        return sb2.toString();
    }

    public final int zza() {
        return this.zza.length >> 1;
    }

    public final String zzb(int i11) {
        int i12 = i11 + i11;
        if (i12 < 0) {
            return null;
        }
        String[] strArr = this.zza;
        if (i12 >= strArr.length) {
            return null;
        }
        return strArr[i12];
    }

    public final String zzc(int i11) {
        int i12 = i11 + i11 + 1;
        if (i12 < 0) {
            return null;
        }
        String[] strArr = this.zza;
        if (i12 >= strArr.length) {
            return null;
        }
        return strArr[i12];
    }
}
