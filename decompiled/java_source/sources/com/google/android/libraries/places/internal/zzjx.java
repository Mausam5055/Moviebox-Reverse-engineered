package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
final class zzjx extends zzka {
    private String zza;
    private int zzb;
    private byte zzc;
    private int zzd;

    zzjx() {
    }

    final zzka zza(String str) {
        if (str == null) {
            throw new NullPointerException("Null packageName");
        }
        this.zza = str;
        return this;
    }

    @Override // com.google.android.libraries.places.internal.zzka
    final zzka zzb(int i11) {
        this.zzb = i11;
        this.zzc = (byte) 1;
        return this;
    }

    @Override // com.google.android.libraries.places.internal.zzka
    final zzkb zzc() {
        String str;
        int i11;
        if (this.zzc == 1 && (str = this.zza) != null && (i11 = this.zzd) != 0) {
            return new zzjz(str, this.zzb, i11, null);
        }
        StringBuilder sb2 = new StringBuilder();
        if (this.zza == null) {
            sb2.append(" packageName");
        }
        if (this.zzc == 0) {
            sb2.append(" versionCode");
        }
        if (this.zzd == 0) {
            sb2.append(" requestSource");
        }
        throw new IllegalStateException("Missing required properties:".concat(sb2.toString()));
    }

    @Override // com.google.android.libraries.places.internal.zzka
    public final zzka zzd(int i11) {
        this.zzd = i11;
        return this;
    }
}
