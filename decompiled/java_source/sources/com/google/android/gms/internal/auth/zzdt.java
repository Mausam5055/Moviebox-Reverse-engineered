package com.google.android.gms.internal.auth;

import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
final class zzdt {
    static int zza(byte[] bArr, int i11, zzds zzdsVar) throws zzfa {
        int iZzj = zzj(bArr, i11, zzdsVar);
        int i12 = zzdsVar.zza;
        if (i12 < 0) {
            throw zzfa.zzc();
        }
        if (i12 > bArr.length - iZzj) {
            throw zzfa.zzf();
        }
        if (i12 == 0) {
            zzdsVar.zzc = zzee.zzb;
            return iZzj;
        }
        zzdsVar.zzc = zzee.zzk(bArr, iZzj, i12);
        return iZzj + i12;
    }

    static int zzb(byte[] bArr, int i11) {
        return ((bArr[i11 + 3] & 255) << 24) | (bArr[i11] & 255) | ((bArr[i11 + 1] & 255) << 8) | ((bArr[i11 + 2] & 255) << 16);
    }

    static int zzc(zzgh zzghVar, byte[] bArr, int i11, int i12, int i13, zzds zzdsVar) throws IOException {
        zzfz zzfzVar = (zzfz) zzghVar;
        Object objZzd = zzfzVar.zzd();
        int iZzb = zzfzVar.zzb(objZzd, bArr, i11, i12, i13, zzdsVar);
        zzfzVar.zze(objZzd);
        zzdsVar.zzc = objZzd;
        return iZzb;
    }

    static int zzd(zzgh zzghVar, byte[] bArr, int i11, int i12, zzds zzdsVar) throws IOException {
        int iZzk = i11 + 1;
        int i13 = bArr[i11];
        if (i13 < 0) {
            iZzk = zzk(i13, bArr, iZzk, zzdsVar);
            i13 = zzdsVar.zza;
        }
        int i14 = iZzk;
        if (i13 < 0 || i13 > i12 - i14) {
            throw zzfa.zzf();
        }
        Object objZzd = zzghVar.zzd();
        int i15 = i13 + i14;
        zzghVar.zzg(objZzd, bArr, i14, i15, zzdsVar);
        zzghVar.zze(objZzd);
        zzdsVar.zzc = objZzd;
        return i15;
    }

    static int zze(zzgh zzghVar, int i11, byte[] bArr, int i12, int i13, zzey zzeyVar, zzds zzdsVar) throws IOException {
        int iZzd = zzd(zzghVar, bArr, i12, i13, zzdsVar);
        zzeyVar.add(zzdsVar.zzc);
        while (iZzd < i13) {
            int iZzj = zzj(bArr, iZzd, zzdsVar);
            if (i11 != zzdsVar.zza) {
                break;
            }
            iZzd = zzd(zzghVar, bArr, iZzj, i13, zzdsVar);
            zzeyVar.add(zzdsVar.zzc);
        }
        return iZzd;
    }

    static int zzf(byte[] bArr, int i11, zzey zzeyVar, zzds zzdsVar) throws IOException {
        zzev zzevVar = (zzev) zzeyVar;
        int iZzj = zzj(bArr, i11, zzdsVar);
        int i12 = zzdsVar.zza + iZzj;
        while (iZzj < i12) {
            iZzj = zzj(bArr, iZzj, zzdsVar);
            zzevVar.zze(zzdsVar.zza);
        }
        if (iZzj == i12) {
            return iZzj;
        }
        throw zzfa.zzf();
    }

    static int zzg(byte[] bArr, int i11, zzds zzdsVar) throws zzfa {
        int iZzj = zzj(bArr, i11, zzdsVar);
        int i12 = zzdsVar.zza;
        if (i12 < 0) {
            throw zzfa.zzc();
        }
        if (i12 == 0) {
            zzdsVar.zzc = "";
            return iZzj;
        }
        zzdsVar.zzc = new String(bArr, iZzj, i12, zzez.zzb);
        return iZzj + i12;
    }

    static int zzh(byte[] bArr, int i11, zzds zzdsVar) throws zzfa {
        int iZzj = zzj(bArr, i11, zzdsVar);
        int i12 = zzdsVar.zza;
        if (i12 < 0) {
            throw zzfa.zzc();
        }
        if (i12 == 0) {
            zzdsVar.zzc = "";
            return iZzj;
        }
        zzdsVar.zzc = zzhm.zzb(bArr, iZzj, i12);
        return iZzj + i12;
    }

    static int zzi(int i11, byte[] bArr, int i12, int i13, zzgz zzgzVar, zzds zzdsVar) throws zzfa {
        if ((i11 >>> 3) == 0) {
            throw zzfa.zza();
        }
        int i14 = i11 & 7;
        if (i14 == 0) {
            int iZzm = zzm(bArr, i12, zzdsVar);
            zzgzVar.zzf(i11, Long.valueOf(zzdsVar.zzb));
            return iZzm;
        }
        if (i14 == 1) {
            zzgzVar.zzf(i11, Long.valueOf(zzn(bArr, i12)));
            return i12 + 8;
        }
        if (i14 == 2) {
            int iZzj = zzj(bArr, i12, zzdsVar);
            int i15 = zzdsVar.zza;
            if (i15 < 0) {
                throw zzfa.zzc();
            }
            if (i15 > bArr.length - iZzj) {
                throw zzfa.zzf();
            }
            if (i15 == 0) {
                zzgzVar.zzf(i11, zzee.zzb);
            } else {
                zzgzVar.zzf(i11, zzee.zzk(bArr, iZzj, i15));
            }
            return iZzj + i15;
        }
        if (i14 != 3) {
            if (i14 != 5) {
                throw zzfa.zza();
            }
            zzgzVar.zzf(i11, Integer.valueOf(zzb(bArr, i12)));
            return i12 + 4;
        }
        int i16 = (i11 & (-8)) | 4;
        zzgz zzgzVarZzc = zzgz.zzc();
        int i17 = 0;
        while (i12 < i13) {
            int iZzj2 = zzj(bArr, i12, zzdsVar);
            int i18 = zzdsVar.zza;
            if (i18 == i16) {
                i17 = i18;
                i12 = iZzj2;
                break;
            }
            i17 = i18;
            i12 = zzi(i18, bArr, iZzj2, i13, zzgzVarZzc, zzdsVar);
        }
        if (i12 > i13 || i17 != i16) {
            throw zzfa.zzd();
        }
        zzgzVar.zzf(i11, zzgzVarZzc);
        return i12;
    }

    static int zzj(byte[] bArr, int i11, zzds zzdsVar) {
        int i12 = i11 + 1;
        byte b11 = bArr[i11];
        if (b11 < 0) {
            return zzk(b11, bArr, i12, zzdsVar);
        }
        zzdsVar.zza = b11;
        return i12;
    }

    static int zzk(int i11, byte[] bArr, int i12, zzds zzdsVar) {
        int i13 = i11 & 127;
        int i14 = i12 + 1;
        byte b11 = bArr[i12];
        if (b11 >= 0) {
            zzdsVar.zza = i13 | (b11 << 7);
            return i14;
        }
        int i15 = i13 | ((b11 & 127) << 7);
        int i16 = i12 + 2;
        byte b12 = bArr[i14];
        if (b12 >= 0) {
            zzdsVar.zza = i15 | (b12 << 14);
            return i16;
        }
        int i17 = i15 | ((b12 & 127) << 14);
        int i18 = i12 + 3;
        byte b13 = bArr[i16];
        if (b13 >= 0) {
            zzdsVar.zza = i17 | (b13 << 21);
            return i18;
        }
        int i19 = i17 | ((b13 & 127) << 21);
        int i20 = i12 + 4;
        byte b14 = bArr[i18];
        if (b14 >= 0) {
            zzdsVar.zza = i19 | (b14 << 28);
            return i20;
        }
        int i21 = i19 | ((b14 & 127) << 28);
        while (true) {
            int i22 = i20 + 1;
            if (bArr[i20] >= 0) {
                zzdsVar.zza = i21;
                return i22;
            }
            i20 = i22;
        }
    }

    static int zzl(int i11, byte[] bArr, int i12, int i13, zzey zzeyVar, zzds zzdsVar) {
        zzev zzevVar = (zzev) zzeyVar;
        int iZzj = zzj(bArr, i12, zzdsVar);
        zzevVar.zze(zzdsVar.zza);
        while (iZzj < i13) {
            int iZzj2 = zzj(bArr, iZzj, zzdsVar);
            if (i11 != zzdsVar.zza) {
                break;
            }
            iZzj = zzj(bArr, iZzj2, zzdsVar);
            zzevVar.zze(zzdsVar.zza);
        }
        return iZzj;
    }

    static int zzm(byte[] bArr, int i11, zzds zzdsVar) {
        int i12 = i11 + 1;
        long j11 = bArr[i11];
        if (j11 >= 0) {
            zzdsVar.zzb = j11;
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
        zzdsVar.zzb = j12;
        return i13;
    }

    static long zzn(byte[] bArr, int i11) {
        return ((((long) bArr[i11 + 7]) & 255) << 56) | (((long) bArr[i11]) & 255) | ((((long) bArr[i11 + 1]) & 255) << 8) | ((((long) bArr[i11 + 2]) & 255) << 16) | ((((long) bArr[i11 + 3]) & 255) << 24) | ((((long) bArr[i11 + 4]) & 255) << 32) | ((((long) bArr[i11 + 5]) & 255) << 40) | ((((long) bArr[i11 + 6]) & 255) << 48);
    }
}
