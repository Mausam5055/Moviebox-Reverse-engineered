package com.google.android.gms.internal.play_billing;

import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
final class zzdk {
    static int zza(byte[] bArr, int i11, zzdj zzdjVar) throws zzff {
        int iZzh = zzh(bArr, i11, zzdjVar);
        int i12 = zzdjVar.zza;
        if (i12 < 0) {
            throw zzff.zzd();
        }
        if (i12 > bArr.length - iZzh) {
            throw zzff.zzg();
        }
        if (i12 == 0) {
            zzdjVar.zzc = zzdw.zzb;
            return iZzh;
        }
        zzdjVar.zzc = zzdw.zzl(bArr, iZzh, i12);
        return iZzh + i12;
    }

    static int zzb(byte[] bArr, int i11) {
        int i12 = bArr[i11] & 255;
        int i13 = bArr[i11 + 1] & 255;
        int i14 = bArr[i11 + 2] & 255;
        return ((bArr[i11 + 3] & 255) << 24) | (i13 << 8) | i12 | (i14 << 16);
    }

    static int zzc(zzgm zzgmVar, byte[] bArr, int i11, int i12, int i13, zzdj zzdjVar) throws IOException {
        Object objZze = zzgmVar.zze();
        int iZzl = zzl(objZze, zzgmVar, bArr, i11, i12, i13, zzdjVar);
        zzgmVar.zzf(objZze);
        zzdjVar.zzc = objZze;
        return iZzl;
    }

    static int zzd(zzgm zzgmVar, byte[] bArr, int i11, int i12, zzdj zzdjVar) throws IOException {
        Object objZze = zzgmVar.zze();
        int iZzm = zzm(objZze, zzgmVar, bArr, i11, i12, zzdjVar);
        zzgmVar.zzf(objZze);
        zzdjVar.zzc = objZze;
        return iZzm;
    }

    static int zze(zzgm zzgmVar, int i11, byte[] bArr, int i12, int i13, zzfc zzfcVar, zzdj zzdjVar) throws IOException {
        int iZzd = zzd(zzgmVar, bArr, i12, i13, zzdjVar);
        zzfcVar.add(zzdjVar.zzc);
        while (iZzd < i13) {
            int iZzh = zzh(bArr, iZzd, zzdjVar);
            if (i11 != zzdjVar.zza) {
                break;
            }
            iZzd = zzd(zzgmVar, bArr, iZzh, i13, zzdjVar);
            zzfcVar.add(zzdjVar.zzc);
        }
        return iZzd;
    }

    static int zzf(byte[] bArr, int i11, zzfc zzfcVar, zzdj zzdjVar) throws IOException {
        zzey zzeyVar = (zzey) zzfcVar;
        int iZzh = zzh(bArr, i11, zzdjVar);
        int i12 = zzdjVar.zza + iZzh;
        while (iZzh < i12) {
            iZzh = zzh(bArr, iZzh, zzdjVar);
            zzeyVar.zzf(zzdjVar.zza);
        }
        if (iZzh == i12) {
            return iZzh;
        }
        throw zzff.zzg();
    }

    static int zzg(int i11, byte[] bArr, int i12, int i13, zzhe zzheVar, zzdj zzdjVar) throws zzff {
        if ((i11 >>> 3) == 0) {
            throw zzff.zzb();
        }
        int i14 = i11 & 7;
        if (i14 == 0) {
            int iZzk = zzk(bArr, i12, zzdjVar);
            zzheVar.zzj(i11, Long.valueOf(zzdjVar.zzb));
            return iZzk;
        }
        if (i14 == 1) {
            zzheVar.zzj(i11, Long.valueOf(zzn(bArr, i12)));
            return i12 + 8;
        }
        if (i14 == 2) {
            int iZzh = zzh(bArr, i12, zzdjVar);
            int i15 = zzdjVar.zza;
            if (i15 < 0) {
                throw zzff.zzd();
            }
            if (i15 > bArr.length - iZzh) {
                throw zzff.zzg();
            }
            if (i15 == 0) {
                zzheVar.zzj(i11, zzdw.zzb);
            } else {
                zzheVar.zzj(i11, zzdw.zzl(bArr, iZzh, i15));
            }
            return iZzh + i15;
        }
        if (i14 != 3) {
            if (i14 != 5) {
                throw zzff.zzb();
            }
            zzheVar.zzj(i11, Integer.valueOf(zzb(bArr, i12)));
            return i12 + 4;
        }
        int i16 = (i11 & (-8)) | 4;
        zzhe zzheVarZzf = zzhe.zzf();
        int i17 = 0;
        while (i12 < i13) {
            int iZzh2 = zzh(bArr, i12, zzdjVar);
            int i18 = zzdjVar.zza;
            i17 = i18;
            if (i18 == i16) {
                i12 = iZzh2;
                break;
            }
            int iZzg = zzg(i17, bArr, iZzh2, i13, zzheVarZzf, zzdjVar);
            i17 = i18;
            i12 = iZzg;
        }
        if (i12 > i13 || i17 != i16) {
            throw zzff.zze();
        }
        zzheVar.zzj(i11, zzheVarZzf);
        return i12;
    }

    static int zzh(byte[] bArr, int i11, zzdj zzdjVar) {
        int i12 = i11 + 1;
        byte b11 = bArr[i11];
        if (b11 < 0) {
            return zzi(b11, bArr, i12, zzdjVar);
        }
        zzdjVar.zza = b11;
        return i12;
    }

    static int zzi(int i11, byte[] bArr, int i12, zzdj zzdjVar) {
        byte b11 = bArr[i12];
        int i13 = i12 + 1;
        int i14 = i11 & 127;
        if (b11 >= 0) {
            zzdjVar.zza = i14 | (b11 << 7);
            return i13;
        }
        int i15 = i14 | ((b11 & 127) << 7);
        int i16 = i12 + 2;
        byte b12 = bArr[i13];
        if (b12 >= 0) {
            zzdjVar.zza = i15 | (b12 << 14);
            return i16;
        }
        int i17 = i15 | ((b12 & 127) << 14);
        int i18 = i12 + 3;
        byte b13 = bArr[i16];
        if (b13 >= 0) {
            zzdjVar.zza = i17 | (b13 << 21);
            return i18;
        }
        int i19 = i17 | ((b13 & 127) << 21);
        int i20 = i12 + 4;
        byte b14 = bArr[i18];
        if (b14 >= 0) {
            zzdjVar.zza = i19 | (b14 << 28);
            return i20;
        }
        int i21 = i19 | ((b14 & 127) << 28);
        while (true) {
            int i22 = i20 + 1;
            if (bArr[i20] >= 0) {
                zzdjVar.zza = i21;
                return i22;
            }
            i20 = i22;
        }
    }

    static int zzj(int i11, byte[] bArr, int i12, int i13, zzfc zzfcVar, zzdj zzdjVar) {
        zzey zzeyVar = (zzey) zzfcVar;
        int iZzh = zzh(bArr, i12, zzdjVar);
        zzeyVar.zzf(zzdjVar.zza);
        while (iZzh < i13) {
            int iZzh2 = zzh(bArr, iZzh, zzdjVar);
            if (i11 != zzdjVar.zza) {
                break;
            }
            iZzh = zzh(bArr, iZzh2, zzdjVar);
            zzeyVar.zzf(zzdjVar.zza);
        }
        return iZzh;
    }

    static int zzk(byte[] bArr, int i11, zzdj zzdjVar) {
        long j11 = bArr[i11];
        int i12 = i11 + 1;
        if (j11 >= 0) {
            zzdjVar.zzb = j11;
            return i12;
        }
        int i13 = i11 + 2;
        byte b11 = bArr[i12];
        long j12 = (j11 & 127) | (((long) (b11 & 127)) << 7);
        int i14 = 7;
        while (b11 < 0) {
            int i15 = i13 + 1;
            byte b12 = bArr[i13];
            i14 += 7;
            j12 |= ((long) (b12 & 127)) << i14;
            b11 = b12;
            i13 = i15;
        }
        zzdjVar.zzb = j12;
        return i13;
    }

    static int zzl(Object obj, zzgm zzgmVar, byte[] bArr, int i11, int i12, int i13, zzdj zzdjVar) throws IOException {
        int iZzc = ((zzgf) zzgmVar).zzc(obj, bArr, i11, i12, i13, zzdjVar);
        zzdjVar.zzc = obj;
        return iZzc;
    }

    static int zzm(Object obj, zzgm zzgmVar, byte[] bArr, int i11, int i12, zzdj zzdjVar) throws IOException {
        int iZzi = i11 + 1;
        int i13 = bArr[i11];
        if (i13 < 0) {
            iZzi = zzi(i13, bArr, iZzi, zzdjVar);
            i13 = zzdjVar.zza;
        }
        int i14 = iZzi;
        if (i13 < 0 || i13 > i12 - i14) {
            throw zzff.zzg();
        }
        int i15 = i13 + i14;
        zzgmVar.zzh(obj, bArr, i14, i15, zzdjVar);
        zzdjVar.zzc = obj;
        return i15;
    }

    static long zzn(byte[] bArr, int i11) {
        return (((long) bArr[i11]) & 255) | ((((long) bArr[i11 + 1]) & 255) << 8) | ((((long) bArr[i11 + 2]) & 255) << 16) | ((((long) bArr[i11 + 3]) & 255) << 24) | ((((long) bArr[i11 + 4]) & 255) << 32) | ((((long) bArr[i11 + 5]) & 255) << 40) | ((((long) bArr[i11 + 6]) & 255) << 48) | ((((long) bArr[i11 + 7]) & 255) << 56);
    }
}
