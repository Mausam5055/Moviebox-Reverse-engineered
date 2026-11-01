package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
abstract class zzmx extends zzlt {
    final CharSequence zzb;
    final zzma zzc;
    int zzd = 0;
    int zze = Integer.MAX_VALUE;

    protected zzmx(zzmy zzmyVar, CharSequence charSequence) {
        this.zzc = zzmyVar.zza;
        this.zzb = charSequence;
    }

    @Override // com.google.android.libraries.places.internal.zzlt
    protected final /* bridge */ /* synthetic */ Object zza() {
        int iZzc;
        int i11 = this.zzd;
        while (true) {
            int i12 = this.zzd;
            if (i12 == -1) {
                zzb();
                return null;
            }
            int iZzd = zzd(i12);
            if (iZzd == -1) {
                iZzd = this.zzb.length();
                this.zzd = -1;
                iZzc = -1;
            } else {
                iZzc = zzc(iZzd);
                this.zzd = iZzc;
            }
            if (iZzc != i11) {
                while (i11 < iZzd && this.zzc.zza(this.zzb.charAt(i11))) {
                    i11++;
                }
                while (iZzd > i11) {
                    int i13 = iZzd - 1;
                    if (!this.zzc.zza(this.zzb.charAt(i13))) {
                        break;
                    }
                    iZzd = i13;
                }
                int i14 = this.zze;
                if (i14 == 1) {
                    iZzd = this.zzb.length();
                    this.zzd = -1;
                    while (iZzd > i11) {
                        int i15 = iZzd - 1;
                        if (!this.zzc.zza(this.zzb.charAt(i15))) {
                            break;
                        }
                        iZzd = i15;
                    }
                } else {
                    this.zze = i14 - 1;
                }
                return this.zzb.subSequence(i11, iZzd).toString();
            }
            int i16 = iZzc + 1;
            this.zzd = i16;
            if (i16 > this.zzb.length()) {
                this.zzd = -1;
            }
        }
    }

    abstract int zzc(int i11);

    abstract int zzd(int i11);
}
