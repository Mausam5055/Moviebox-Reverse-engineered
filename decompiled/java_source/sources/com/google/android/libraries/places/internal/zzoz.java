package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
public class zzoz extends zzpb {
    private final char[][] zza;
    private final int zzb;
    private final char zzc;

    protected zzoz(zzpa zzpaVar, char c11, char c12) {
        char[][] cArrZzb = zzpaVar.zzb();
        this.zza = cArrZzb;
        this.zzb = cArrZzb.length;
        this.zzc = (char) 65535;
    }

    @Override // com.google.android.libraries.places.internal.zzpb, com.google.android.libraries.places.internal.zzpd
    public final String zza(String str) {
        str.getClass();
        for (int i11 = 0; i11 < str.length(); i11++) {
            char cCharAt = str.charAt(i11);
            if ((cCharAt < this.zzb && this.zza[cCharAt] != null) || cCharAt > this.zzc) {
                return zzc(str, i11);
            }
        }
        return str;
    }

    @Override // com.google.android.libraries.places.internal.zzpb
    protected final char[] zzb(char c11) {
        char[] cArr;
        if (c11 >= this.zzb || (cArr = this.zza[c11]) == null) {
            return null;
        }
        return cArr;
    }
}
