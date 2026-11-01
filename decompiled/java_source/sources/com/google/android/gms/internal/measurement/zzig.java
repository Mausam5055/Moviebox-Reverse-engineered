package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
final class zzig {
    private static volatile int zza = 100;

    static double zza(byte[] bArr, int i11) {
        return Double.longBitsToDouble(zzd(bArr, i11));
    }

    static int zza(int i11, byte[] bArr, int i12, int i13, zzij zzijVar) throws zzkb {
        if ((i11 >>> 3) == 0) {
            throw zzkb.zzc();
        }
        int i14 = i11 & 7;
        if (i14 == 0) {
            return zzd(bArr, i12, zzijVar);
        }
        if (i14 == 1) {
            return i12 + 8;
        }
        if (i14 == 2) {
            return zzc(bArr, i12, zzijVar) + zzijVar.zza;
        }
        if (i14 != 3) {
            if (i14 == 5) {
                return i12 + 4;
            }
            throw zzkb.zzc();
        }
        int i15 = (i11 & (-8)) | 4;
        int i16 = 0;
        while (i12 < i13) {
            i12 = zzc(bArr, i12, zzijVar);
            i16 = zzijVar.zza;
            if (i16 == i15) {
                break;
            }
            i12 = zza(i16, bArr, i12, i13, zzijVar);
        }
        if (i12 > i13 || i16 != i15) {
            throw zzkb.zzg();
        }
        return i12;
    }

    static int zza(int i11, byte[] bArr, int i12, int i13, zzkc<?> zzkcVar, zzij zzijVar) {
        zzjw zzjwVar = (zzjw) zzkcVar;
        int iZzc = zzc(bArr, i12, zzijVar);
        zzjwVar.zzd(zzijVar.zza);
        while (iZzc < i13) {
            int iZzc2 = zzc(bArr, iZzc, zzijVar);
            if (i11 != zzijVar.zza) {
                break;
            }
            iZzc = zzc(bArr, iZzc2, zzijVar);
            zzjwVar.zzd(zzijVar.zza);
        }
        return iZzc;
    }

    static int zza(int i11, byte[] bArr, int i12, int i13, zzmj zzmjVar, zzij zzijVar) throws zzkb {
        if ((i11 >>> 3) == 0) {
            throw zzkb.zzc();
        }
        int i14 = i11 & 7;
        if (i14 == 0) {
            int iZzd = zzd(bArr, i12, zzijVar);
            zzmjVar.zza(i11, Long.valueOf(zzijVar.zzb));
            return iZzd;
        }
        if (i14 == 1) {
            zzmjVar.zza(i11, Long.valueOf(zzd(bArr, i12)));
            return i12 + 8;
        }
        if (i14 == 2) {
            int iZzc = zzc(bArr, i12, zzijVar);
            int i15 = zzijVar.zza;
            if (i15 < 0) {
                throw zzkb.zzf();
            }
            if (i15 > bArr.length - iZzc) {
                throw zzkb.zzi();
            }
            if (i15 == 0) {
                zzmjVar.zza(i11, zzik.zza);
            } else {
                zzmjVar.zza(i11, zzik.zza(bArr, iZzc, i15));
            }
            return iZzc + i15;
        }
        if (i14 != 3) {
            if (i14 != 5) {
                throw zzkb.zzc();
            }
            zzmjVar.zza(i11, Integer.valueOf(zzc(bArr, i12)));
            return i12 + 4;
        }
        zzmj zzmjVarZzd = zzmj.zzd();
        int i16 = (i11 & (-8)) | 4;
        int i17 = zzijVar.zze + 1;
        zzijVar.zze = i17;
        zza(i17);
        int i18 = 0;
        while (i12 < i13) {
            int iZzc2 = zzc(bArr, i12, zzijVar);
            int i19 = zzijVar.zza;
            i18 = i19;
            if (i19 == i16) {
                i12 = iZzc2;
                break;
            }
            int iZza = zza(i18, bArr, iZzc2, i13, zzmjVarZzd, zzijVar);
            i18 = i19;
            i12 = iZza;
        }
        zzijVar.zze--;
        if (i12 > i13 || i18 != i16) {
            throw zzkb.zzg();
        }
        zzmjVar.zza(i11, zzmjVarZzd);
        return i12;
    }

    static int zza(int i11, byte[] bArr, int i12, int i13, Object obj, zzlc zzlcVar, zzmk<zzmj, zzmj> zzmkVar, zzij zzijVar) throws IOException {
        if (zzijVar.zzd.zza(zzlcVar, i11 >>> 3) == null) {
            return zza(i11, bArr, i12, i13, zzlg.zzc(obj), zzijVar);
        }
        zzjt.zzd zzdVar = (zzjt.zzd) obj;
        zzdVar.zza();
        zzjm<zzjt.zzc> zzjmVar = zzdVar.zzc;
        throw new NoSuchMethodError();
    }

    static int zza(int i11, byte[] bArr, int i12, zzij zzijVar) {
        int i13 = i11 & 127;
        int i14 = i12 + 1;
        byte b11 = bArr[i12];
        if (b11 >= 0) {
            zzijVar.zza = i13 | (b11 << 7);
            return i14;
        }
        int i15 = i13 | ((b11 & 127) << 7);
        int i16 = i12 + 2;
        byte b12 = bArr[i14];
        if (b12 >= 0) {
            zzijVar.zza = i15 | (b12 << 14);
            return i16;
        }
        int i17 = i15 | ((b12 & 127) << 14);
        int i18 = i12 + 3;
        byte b13 = bArr[i16];
        if (b13 >= 0) {
            zzijVar.zza = i17 | (b13 << 21);
            return i18;
        }
        int i19 = i17 | ((b13 & 127) << 21);
        int i20 = i12 + 4;
        byte b14 = bArr[i18];
        if (b14 >= 0) {
            zzijVar.zza = i19 | (b14 << 28);
            return i20;
        }
        int i21 = i19 | ((b14 & 127) << 28);
        while (true) {
            int i22 = i20 + 1;
            if (bArr[i20] >= 0) {
                zzijVar.zza = i21;
                return i22;
            }
            i20 = i22;
        }
    }

    static int zza(zzlu zzluVar, int i11, byte[] bArr, int i12, int i13, zzkc<?> zzkcVar, zzij zzijVar) throws IOException {
        int i14 = (i11 & (-8)) | 4;
        int iZza = zza(zzluVar, bArr, i12, i13, i14, zzijVar);
        zzkcVar.add(zzijVar.zzc);
        while (iZza < i13) {
            int iZzc = zzc(bArr, iZza, zzijVar);
            if (i11 != zzijVar.zza) {
                break;
            }
            iZza = zza(zzluVar, bArr, iZzc, i13, i14, zzijVar);
            zzkcVar.add(zzijVar.zzc);
        }
        return iZza;
    }

    private static int zza(zzlu zzluVar, byte[] bArr, int i11, int i12, int i13, zzij zzijVar) throws IOException {
        Object objZza = zzluVar.zza();
        int iZza = zza(objZza, zzluVar, bArr, i11, i12, i13, zzijVar);
        zzluVar.zzd(objZza);
        zzijVar.zzc = objZza;
        return iZza;
    }

    static int zza(zzlu zzluVar, byte[] bArr, int i11, int i12, zzij zzijVar) throws IOException {
        Object objZza = zzluVar.zza();
        int iZza = zza(objZza, zzluVar, bArr, i11, i12, zzijVar);
        zzluVar.zzd(objZza);
        zzijVar.zzc = objZza;
        return iZza;
    }

    static int zza(Object obj, zzlu zzluVar, byte[] bArr, int i11, int i12, int i13, zzij zzijVar) throws IOException {
        zzlg zzlgVar = (zzlg) zzluVar;
        int i14 = zzijVar.zze + 1;
        zzijVar.zze = i14;
        zza(i14);
        int iZza = zzlgVar.zza(obj, bArr, i11, i12, i13, zzijVar);
        zzijVar.zze--;
        zzijVar.zzc = obj;
        return iZza;
    }

    static int zza(Object obj, zzlu zzluVar, byte[] bArr, int i11, int i12, zzij zzijVar) throws IOException {
        int iZza = i11 + 1;
        int i13 = bArr[i11];
        if (i13 < 0) {
            iZza = zza(i13, bArr, iZza, zzijVar);
            i13 = zzijVar.zza;
        }
        int i14 = iZza;
        if (i13 < 0 || i13 > i12 - i14) {
            throw zzkb.zzi();
        }
        int i15 = zzijVar.zze + 1;
        zzijVar.zze = i15;
        zza(i15);
        int i16 = i13 + i14;
        zzluVar.zza(obj, bArr, i14, i16, zzijVar);
        zzijVar.zze--;
        zzijVar.zzc = obj;
        return i16;
    }

    static int zza(byte[] bArr, int i11, zzij zzijVar) throws zzkb {
        int iZzc = zzc(bArr, i11, zzijVar);
        int i12 = zzijVar.zza;
        if (i12 < 0) {
            throw zzkb.zzf();
        }
        if (i12 > bArr.length - iZzc) {
            throw zzkb.zzi();
        }
        if (i12 == 0) {
            zzijVar.zzc = zzik.zza;
            return iZzc;
        }
        zzijVar.zzc = zzik.zza(bArr, iZzc, i12);
        return iZzc + i12;
    }

    static int zza(byte[] bArr, int i11, zzkc<?> zzkcVar, zzij zzijVar) throws IOException {
        zzjw zzjwVar = (zzjw) zzkcVar;
        int iZzc = zzc(bArr, i11, zzijVar);
        int i12 = zzijVar.zza + iZzc;
        while (iZzc < i12) {
            iZzc = zzc(bArr, iZzc, zzijVar);
            zzjwVar.zzd(zzijVar.zza);
        }
        if (iZzc == i12) {
            return iZzc;
        }
        throw zzkb.zzi();
    }

    private static void zza(int i11) throws zzkb {
        if (i11 >= zza) {
            throw zzkb.zzh();
        }
    }

    static float zzb(byte[] bArr, int i11) {
        return Float.intBitsToFloat(zzc(bArr, i11));
    }

    static int zzb(zzlu<?> zzluVar, int i11, byte[] bArr, int i12, int i13, zzkc<?> zzkcVar, zzij zzijVar) throws IOException {
        int iZza = zza(zzluVar, bArr, i12, i13, zzijVar);
        zzkcVar.add(zzijVar.zzc);
        while (iZza < i13) {
            int iZzc = zzc(bArr, iZza, zzijVar);
            if (i11 != zzijVar.zza) {
                break;
            }
            iZza = zza(zzluVar, bArr, iZzc, i13, zzijVar);
            zzkcVar.add(zzijVar.zzc);
        }
        return iZza;
    }

    static int zzb(byte[] bArr, int i11, zzij zzijVar) throws zzkb {
        int iZzc = zzc(bArr, i11, zzijVar);
        int i12 = zzijVar.zza;
        if (i12 < 0) {
            throw zzkb.zzf();
        }
        if (i12 == 0) {
            zzijVar.zzc = "";
            return iZzc;
        }
        zzijVar.zzc = zzmp.zzb(bArr, iZzc, i12);
        return iZzc + i12;
    }

    static int zzc(byte[] bArr, int i11) {
        return ((bArr[i11 + 3] & 255) << 24) | (bArr[i11] & 255) | ((bArr[i11 + 1] & 255) << 8) | ((bArr[i11 + 2] & 255) << 16);
    }

    static int zzc(byte[] bArr, int i11, zzij zzijVar) {
        int i12 = i11 + 1;
        byte b11 = bArr[i11];
        if (b11 < 0) {
            return zza(b11, bArr, i12, zzijVar);
        }
        zzijVar.zza = b11;
        return i12;
    }

    static int zzd(byte[] bArr, int i11, zzij zzijVar) {
        int i12 = i11 + 1;
        long j11 = bArr[i11];
        if (j11 >= 0) {
            zzijVar.zzb = j11;
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
        zzijVar.zzb = j12;
        return i13;
    }

    static long zzd(byte[] bArr, int i11) {
        return ((((long) bArr[i11 + 7]) & 255) << 56) | (((long) bArr[i11]) & 255) | ((((long) bArr[i11 + 1]) & 255) << 8) | ((((long) bArr[i11 + 2]) & 255) << 16) | ((((long) bArr[i11 + 3]) & 255) << 24) | ((((long) bArr[i11 + 4]) & 255) << 32) | ((((long) bArr[i11 + 5]) & 255) << 40) | ((((long) bArr[i11 + 6]) & 255) << 48);
    }
}
