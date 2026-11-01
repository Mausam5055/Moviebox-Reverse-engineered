package com.google.android.gms.internal.common;

/* JADX INFO: loaded from: classes4.dex */
abstract class zzw extends zzj {
    final CharSequence zzb;
    final zzo zzc;
    final boolean zzd;
    int zze = 0;
    int zzf = Integer.MAX_VALUE;

    protected zzw(zzx zzxVar, CharSequence charSequence) {
        this.zzc = zzxVar.zza;
        this.zzd = zzxVar.zzb;
        this.zzb = charSequence;
    }

    @Override // com.google.android.gms.internal.common.zzj
    protected final /* bridge */ /* synthetic */ Object zza() {
        int iZzc;
        int i11 = this.zze;
        while (true) {
            int i12 = this.zze;
            if (i12 == -1) {
                zzb();
                return null;
            }
            int iZzd = zzd(i12);
            if (iZzd == -1) {
                iZzd = this.zzb.length();
                this.zze = -1;
                iZzc = -1;
            } else {
                iZzc = zzc(iZzd);
                this.zze = iZzc;
            }
            if (iZzc == i11) {
                int i13 = iZzc + 1;
                this.zze = i13;
                if (i13 > this.zzb.length()) {
                    this.zze = -1;
                }
            } else {
                if (i11 < iZzd) {
                    this.zzb.charAt(i11);
                }
                if (i11 < iZzd) {
                    this.zzb.charAt(iZzd - 1);
                }
                if (!this.zzd || i11 != iZzd) {
                    int i14 = this.zzf;
                    if (i14 == 1) {
                        iZzd = this.zzb.length();
                        this.zze = -1;
                        if (iZzd > i11) {
                            this.zzb.charAt(iZzd - 1);
                        }
                    } else {
                        this.zzf = i14 - 1;
                    }
                    return this.zzb.subSequence(i11, iZzd).toString();
                }
                i11 = this.zze;
            }
        }
    }

    abstract int zzc(int i11);

    abstract int zzd(int i11);
}
