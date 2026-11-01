package com.google.android.libraries.places.internal;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
final class zzbtv {
    zzbtt[] zza;
    int zzb;
    private final zzbwb zzc;
    private int zzd;
    private int zze;

    zzbtv(int i11, boolean z10, zzbwb zzbwbVar) {
        zzbtt[] zzbttVarArr = new zzbtt[8];
        this.zza = zzbttVarArr;
        this.zzd = zzbttVarArr.length - 1;
        this.zzc = zzbwbVar;
    }

    private final void zzd(zzbtt zzbttVar) {
        int i11;
        int i12 = zzbttVar.zzj;
        if (i12 > 4096) {
            Arrays.fill(this.zza, (Object) null);
            this.zzd = this.zza.length - 1;
            this.zzb = 0;
            this.zze = 0;
            return;
        }
        int i13 = (this.zze + i12) - 4096;
        if (i13 > 0) {
            int length = this.zza.length - 1;
            int i14 = 0;
            while (true) {
                i11 = this.zzd;
                if (length < i11 || i13 <= 0) {
                    break;
                }
                int i15 = this.zza[length].zzj;
                i13 -= i15;
                this.zze -= i15;
                this.zzb--;
                i14++;
                length--;
            }
            zzbtt[] zzbttVarArr = this.zza;
            int i16 = i11 + 1;
            System.arraycopy(zzbttVarArr, i16, zzbttVarArr, i16 + i14, this.zzb);
            this.zzd += i14;
        }
        int i17 = this.zzb + 1;
        zzbtt[] zzbttVarArr2 = this.zza;
        int length2 = zzbttVarArr2.length;
        if (i17 > length2) {
            zzbtt[] zzbttVarArr3 = new zzbtt[length2 + length2];
            System.arraycopy(zzbttVarArr2, 0, zzbttVarArr3, length2, length2);
            this.zzd = this.zza.length - 1;
            this.zza = zzbttVarArr3;
        }
        int i18 = this.zzd;
        this.zzd = i18 - 1;
        this.zza[i18] = zzbttVar;
        this.zzb++;
        this.zze += i12;
    }

    final void zza(zzbwf zzbwfVar) throws IOException {
        zzc(zzbwfVar.zzc(), 127, 0);
        this.zzc.zzk(zzbwfVar);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0053  */
    final void zzb(List list) throws IOException {
        int i11;
        int i12;
        int size = list.size();
        for (int i13 = 0; i13 < size; i13++) {
            zzbtt zzbttVar = (zzbtt) list.get(i13);
            zzbwf zzbwfVarZzg = zzbttVar.zzh.zzg();
            zzbwf zzbwfVar = zzbttVar.zzi;
            Integer num = (Integer) zzbtw.zzc.get(zzbwfVarZzg);
            if (num != null) {
                int iIntValue = num.intValue();
                i12 = iIntValue + 1;
                if (i12 < 2 || i12 > 7) {
                    i11 = i12;
                    i12 = -1;
                } else if (zzbtw.zzb[iIntValue].zzi.equals(zzbwfVar)) {
                    i11 = i12;
                } else if (zzbtw.zzb[i12].zzi.equals(zzbwfVar)) {
                    i12 = iIntValue + 2;
                    i11 = i12;
                } else {
                    i11 = i12;
                    i12 = -1;
                }
            } else {
                i11 = -1;
                i12 = -1;
            }
            if (i12 == -1) {
                int i14 = this.zzd;
                while (true) {
                    i14++;
                    zzbtt[] zzbttVarArr = this.zza;
                    if (i14 >= zzbttVarArr.length) {
                        i12 = -1;
                        break;
                    }
                    if (zzbttVarArr[i14].zzh.equals(zzbwfVarZzg)) {
                        if (this.zza[i14].zzi.equals(zzbwfVar)) {
                            int i15 = i14 - this.zzd;
                            int length = zzbtw.zzb.length;
                            i12 = i15 + 61;
                            break;
                        } else if (i11 == -1) {
                            int i16 = i14 - this.zzd;
                            int length2 = zzbtw.zzb.length;
                            i11 = i16 + 61;
                        }
                    }
                }
            }
            if (i12 != -1) {
                zzc(i12, 127, 128);
            } else if (i11 == -1) {
                this.zzc.zzm(64);
                zza(zzbwfVarZzg);
                zza(zzbwfVar);
                zzd(zzbttVar);
            } else if (!zzbwfVarZzg.zzm(zzbtw.zza) || zzbtt.zze.equals(zzbwfVarZzg)) {
                zzc(i11, 63, 64);
                zza(zzbwfVar);
                zzd(zzbttVar);
            } else {
                zzc(i11, 15, 0);
                zza(zzbwfVar);
            }
        }
    }

    final void zzc(int i11, int i12, int i13) throws IOException {
        if (i11 < i12) {
            this.zzc.zzm(i11 | i13);
            return;
        }
        this.zzc.zzm(i13 | i12);
        int i14 = i11 - i12;
        while (i14 >= 128) {
            this.zzc.zzm(128 | (i14 & 127));
            i14 >>>= 7;
        }
        this.zzc.zzm(i14);
    }
}
