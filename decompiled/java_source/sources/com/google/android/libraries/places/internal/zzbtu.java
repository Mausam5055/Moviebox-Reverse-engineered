package com.google.android.libraries.places.internal;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
final class zzbtu {
    zzbtt[] zza;
    int zzb;
    private final zzbwd zzf;
    private final List zze = new ArrayList();
    int zzc = 0;
    int zzd = 0;
    private int zzg = 4096;
    private int zzh = 4096;

    zzbtu(int i11, int i12, zzbws zzbwsVar) {
        zzbtt[] zzbttVarArr = new zzbtt[8];
        this.zza = zzbttVarArr;
        this.zzb = zzbttVarArr.length - 1;
        this.zzf = zzbwh.zzb(zzbwsVar);
    }

    private final int zzf(int i11) {
        return this.zzb + 1 + i11;
    }

    private final int zzg(int i11) {
        int i12;
        int i13 = 0;
        if (i11 > 0) {
            int length = this.zza.length;
            while (true) {
                length--;
                i12 = this.zzb;
                if (length < i12 || i11 <= 0) {
                    break;
                }
                int i14 = this.zza[length].zzj;
                i11 -= i14;
                this.zzd -= i14;
                this.zzc--;
                i13++;
            }
            zzbtt[] zzbttVarArr = this.zza;
            int i15 = i12 + 1;
            System.arraycopy(zzbttVarArr, i15, zzbttVarArr, i15 + i13, this.zzc);
            this.zzb += i13;
        }
        return i13;
    }

    private final int zzh() throws IOException {
        return this.zzf.zzc() & 255;
    }

    private final zzbwf zzi(int i11) throws IOException {
        if (zzm(i11)) {
            return zzbtw.zzb[i11].zzh;
        }
        int length = zzbtw.zzb.length;
        int iZzf = zzf(i11 - 61);
        if (iZzf >= 0) {
            zzbtt[] zzbttVarArr = this.zza;
            if (iZzf < zzbttVarArr.length) {
                return zzbttVarArr[iZzf].zzh;
            }
        }
        throw new IOException("Header index too large " + (i11 + 1));
    }

    private final void zzj() {
        int i11 = this.zzh;
        int i12 = this.zzd;
        if (i11 < i12) {
            if (i11 == 0) {
                zzk();
            } else {
                zzg(i12 - i11);
            }
        }
    }

    private final void zzk() {
        Arrays.fill(this.zza, (Object) null);
        this.zzb = this.zza.length - 1;
        this.zzc = 0;
        this.zzd = 0;
    }

    private final void zzl(int i11, zzbtt zzbttVar) {
        this.zze.add(zzbttVar);
        int i12 = zzbttVar.zzj;
        int i13 = this.zzh;
        if (i12 > i13) {
            zzk();
            return;
        }
        zzg((this.zzd + i12) - i13);
        int i14 = this.zzc + 1;
        zzbtt[] zzbttVarArr = this.zza;
        int length = zzbttVarArr.length;
        if (i14 > length) {
            zzbtt[] zzbttVarArr2 = new zzbtt[length + length];
            System.arraycopy(zzbttVarArr, 0, zzbttVarArr2, length, length);
            this.zzb = this.zza.length - 1;
            this.zza = zzbttVarArr2;
        }
        int i15 = this.zzb;
        this.zzb = i15 - 1;
        this.zza[i15] = zzbttVar;
        this.zzc++;
        this.zzd += i12;
    }

    private static final boolean zzm(int i11) {
        if (i11 < 0) {
            return false;
        }
        int length = zzbtw.zzb.length;
        return i11 <= 60;
    }

    final int zza(int i11, int i12) throws IOException {
        int i13 = i11 & i12;
        if (i13 < i12) {
            return i13;
        }
        int i14 = 0;
        while (true) {
            int iZzh = zzh();
            if ((iZzh & 128) == 0) {
                return i12 + (iZzh << i14);
            }
            i12 += (iZzh & 127) << i14;
            i14 += 7;
        }
    }

    public final List zzb() {
        ArrayList arrayList = new ArrayList(this.zze);
        this.zze.clear();
        return arrayList;
    }

    final zzbwf zzc() throws IOException {
        int iZzh = zzh();
        int i11 = iZzh & 128;
        long jZza = zza(iZzh, 127);
        if (i11 != 128) {
            return this.zzf.zzy(jZza);
        }
        zzbwd zzbwdVar = this.zzf;
        zzbud zzbudVarZza = zzbud.zza();
        zzbwl zzbwlVar = (zzbwl) zzbwdVar;
        zzbwlVar.zzD(jZza);
        byte[] bArrZzb = zzbudVarZza.zzb(zzbwlVar.zzb.zzH(jZza));
        zzbwe zzbweVar = zzbwf.zza;
        return zzbwe.zzb(bArrZzb);
    }

    final void zzd(int i11) {
        this.zzg = i11;
        this.zzh = i11;
        zzj();
    }

    final void zze() throws IOException {
        while (true) {
            zzbwl zzbwlVar = (zzbwl) this.zzf;
            if (zzbwlVar.zzc) {
                throw new IllegalStateException("closed");
            }
            zzbwb zzbwbVar = zzbwlVar.zzb;
            if (zzbwbVar.zzG() && zzbwlVar.zza.zza(zzbwbVar, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                return;
            }
            byte bZzc = this.zzf.zzc();
            int i11 = bZzc & 255;
            if (i11 == 128) {
                throw new IOException("index == 0");
            }
            if ((bZzc & 128) == 128) {
                int iZza = zza(i11, 127);
                int i12 = iZza - 1;
                if (!zzm(i12)) {
                    int length = zzbtw.zzb.length;
                    int iZzf = zzf(iZza - 62);
                    if (iZzf >= 0) {
                        zzbtt[] zzbttVarArr = this.zza;
                        if (iZzf <= zzbttVarArr.length - 1) {
                            this.zze.add(zzbttVarArr[iZzf]);
                        }
                    }
                    throw new IOException("Header index too large " + iZza);
                }
                this.zze.add(zzbtw.zzb[i12]);
            } else if (i11 == 64) {
                zzbwf zzbwfVarZzc = zzc();
                zzbtw.zzc(zzbwfVarZzc);
                zzl(-1, new zzbtt(zzbwfVarZzc, zzc()));
            } else if ((bZzc & 64) == 64) {
                zzl(-1, new zzbtt(zzi(zza(i11, 63) - 1), zzc()));
            } else if ((bZzc & 32) == 32) {
                int iZza2 = zza(i11, 31);
                this.zzh = iZza2;
                if (iZza2 < 0 || iZza2 > this.zzg) {
                    throw new IOException("Invalid dynamic table size update " + iZza2);
                }
                zzj();
            } else if (i11 == 16 || i11 == 0) {
                zzbwf zzbwfVarZzc2 = zzc();
                zzbtw.zzc(zzbwfVarZzc2);
                this.zze.add(new zzbtt(zzbwfVarZzc2, zzc()));
            } else {
                this.zze.add(new zzbtt(zzi(zza(i11, 15) - 1), zzc()));
            }
        }
    }
}
