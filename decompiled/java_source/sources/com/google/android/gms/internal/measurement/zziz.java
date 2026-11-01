package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
final class zziz extends zziw {
    private final byte[] zzd;
    private int zze;
    private int zzf;
    private int zzg;
    private int zzh;
    private int zzi;
    private int zzj;

    private zziz(byte[] bArr, int i11, int i12, boolean z10) {
        super();
        this.zzj = Integer.MAX_VALUE;
        this.zzd = bArr;
        this.zze = i12 + i11;
        this.zzg = i11;
        this.zzh = i11;
    }

    private final void zzaa() {
        int i11 = this.zze + this.zzf;
        this.zze = i11;
        int i12 = i11 - this.zzh;
        int i13 = this.zzj;
        if (i12 <= i13) {
            this.zzf = 0;
            return;
        }
        int i14 = i12 - i13;
        this.zzf = i14;
        this.zze = i11 - i14;
    }

    private final void zzf(int i11) throws IOException {
        if (i11 >= 0) {
            int i12 = this.zze;
            int i13 = this.zzg;
            if (i11 <= i12 - i13) {
                this.zzg = i13 + i11;
                return;
            }
        }
        if (i11 >= 0) {
            throw zzkb.zzi();
        }
        throw zzkb.zzf();
    }

    private final byte zzv() throws IOException {
        int i11 = this.zzg;
        if (i11 == this.zze) {
            throw zzkb.zzi();
        }
        byte[] bArr = this.zzd;
        this.zzg = i11 + 1;
        return bArr[i11];
    }

    private final int zzw() throws IOException {
        int i11 = this.zzg;
        if (this.zze - i11 < 4) {
            throw zzkb.zzi();
        }
        byte[] bArr = this.zzd;
        this.zzg = i11 + 4;
        return ((bArr[i11 + 3] & 255) << 24) | (bArr[i11] & 255) | ((bArr[i11 + 1] & 255) << 8) | ((bArr[i11 + 2] & 255) << 16);
    }

    private final int zzx() throws IOException {
        int i11;
        int i12 = this.zzg;
        int i13 = this.zze;
        if (i13 != i12) {
            byte[] bArr = this.zzd;
            int i14 = i12 + 1;
            byte b11 = bArr[i12];
            if (b11 >= 0) {
                this.zzg = i14;
                return b11;
            }
            if (i13 - i14 >= 9) {
                int i15 = i12 + 2;
                int i16 = (bArr[i14] << 7) ^ b11;
                if (i16 < 0) {
                    i11 = i16 ^ (-128);
                } else {
                    int i17 = i12 + 3;
                    int i18 = (bArr[i15] << 14) ^ i16;
                    if (i18 >= 0) {
                        i11 = i18 ^ 16256;
                    } else {
                        int i19 = i12 + 4;
                        int i20 = i18 ^ (bArr[i17] << 21);
                        if (i20 < 0) {
                            i11 = (-2080896) ^ i20;
                        } else {
                            i17 = i12 + 5;
                            byte b12 = bArr[i19];
                            int i21 = (i20 ^ (b12 << 28)) ^ 266354560;
                            if (b12 < 0) {
                                i19 = i12 + 6;
                                if (bArr[i17] < 0) {
                                    i17 = i12 + 7;
                                    if (bArr[i19] < 0) {
                                        i19 = i12 + 8;
                                        if (bArr[i17] < 0) {
                                            i17 = i12 + 9;
                                            if (bArr[i19] < 0) {
                                                int i22 = i12 + 10;
                                                if (bArr[i17] >= 0) {
                                                    i15 = i22;
                                                    i11 = i21;
                                                }
                                            }
                                        }
                                    }
                                }
                                i11 = i21;
                            }
                            i11 = i21;
                        }
                        i15 = i19;
                    }
                    i15 = i17;
                }
                this.zzg = i15;
                return i11;
            }
        }
        return (int) zzm();
    }

    private final long zzy() throws IOException {
        int i11 = this.zzg;
        if (this.zze - i11 < 8) {
            throw zzkb.zzi();
        }
        byte[] bArr = this.zzd;
        this.zzg = i11 + 8;
        return ((((long) bArr[i11 + 7]) & 255) << 56) | (((long) bArr[i11]) & 255) | ((((long) bArr[i11 + 1]) & 255) << 8) | ((((long) bArr[i11 + 2]) & 255) << 16) | ((((long) bArr[i11 + 3]) & 255) << 24) | ((((long) bArr[i11 + 4]) & 255) << 32) | ((((long) bArr[i11 + 5]) & 255) << 40) | ((((long) bArr[i11 + 6]) & 255) << 48);
    }

    private final long zzz() throws IOException {
        long j11;
        long j12;
        long j13;
        int i11 = this.zzg;
        int i12 = this.zze;
        if (i12 != i11) {
            byte[] bArr = this.zzd;
            int i13 = i11 + 1;
            byte b11 = bArr[i11];
            if (b11 >= 0) {
                this.zzg = i13;
                return b11;
            }
            if (i12 - i13 >= 9) {
                int i14 = i11 + 2;
                int i15 = (bArr[i13] << 7) ^ b11;
                if (i15 < 0) {
                    j11 = i15 ^ (-128);
                } else {
                    int i16 = i11 + 3;
                    int i17 = (bArr[i14] << 14) ^ i15;
                    if (i17 >= 0) {
                        j11 = i17 ^ 16256;
                        i14 = i16;
                    } else {
                        int i18 = i11 + 4;
                        int i19 = i17 ^ (bArr[i16] << 21);
                        if (i19 < 0) {
                            long j14 = (-2080896) ^ i19;
                            i14 = i18;
                            j11 = j14;
                        } else {
                            long j15 = i19;
                            i14 = i11 + 5;
                            long j16 = j15 ^ (((long) bArr[i18]) << 28);
                            if (j16 >= 0) {
                                j13 = 266354560;
                            } else {
                                int i20 = i11 + 6;
                                long j17 = j16 ^ (((long) bArr[i14]) << 35);
                                if (j17 < 0) {
                                    j12 = -34093383808L;
                                } else {
                                    i14 = i11 + 7;
                                    j16 = j17 ^ (((long) bArr[i20]) << 42);
                                    if (j16 >= 0) {
                                        j13 = 4363953127296L;
                                    } else {
                                        i20 = i11 + 8;
                                        j17 = j16 ^ (((long) bArr[i14]) << 49);
                                        if (j17 < 0) {
                                            j12 = -558586000294016L;
                                        } else {
                                            i14 = i11 + 9;
                                            long j18 = (j17 ^ (((long) bArr[i20]) << 56)) ^ 71499008037633920L;
                                            if (j18 < 0) {
                                                int i21 = i11 + 10;
                                                if (bArr[i14] >= 0) {
                                                    i14 = i21;
                                                }
                                            }
                                            j11 = j18;
                                        }
                                    }
                                }
                                j11 = j17 ^ j12;
                                i14 = i20;
                            }
                            j11 = j16 ^ j13;
                        }
                    }
                }
                this.zzg = i14;
                return j11;
            }
        }
        return zzm();
    }

    @Override // com.google.android.gms.internal.measurement.zziw
    public final double zza() throws IOException {
        return Double.longBitsToDouble(zzy());
    }

    @Override // com.google.android.gms.internal.measurement.zziw
    public final float zzb() throws IOException {
        return Float.intBitsToFloat(zzw());
    }

    @Override // com.google.android.gms.internal.measurement.zziw
    public final int zzb(int i11) throws zzkb {
        if (i11 < 0) {
            throw zzkb.zzf();
        }
        int iZzc = i11 + zzc();
        if (iZzc < 0) {
            throw zzkb.zzg();
        }
        int i12 = this.zzj;
        if (iZzc > i12) {
            throw zzkb.zzi();
        }
        this.zzj = iZzc;
        zzaa();
        return i12;
    }

    @Override // com.google.android.gms.internal.measurement.zziw
    public final int zzc() {
        return this.zzg - this.zzh;
    }

    @Override // com.google.android.gms.internal.measurement.zziw
    public final void zzc(int i11) throws zzkb {
        if (this.zzi != i11) {
            throw zzkb.zzb();
        }
    }

    @Override // com.google.android.gms.internal.measurement.zziw
    public final int zzd() throws IOException {
        return zzx();
    }

    @Override // com.google.android.gms.internal.measurement.zziw
    public final void zzd(int i11) {
        this.zzj = i11;
        zzaa();
    }

    @Override // com.google.android.gms.internal.measurement.zziw
    public final int zze() throws IOException {
        return zzw();
    }

    @Override // com.google.android.gms.internal.measurement.zziw
    public final boolean zze(int i11) throws IOException {
        boolean zZze;
        int i12 = i11 & 7;
        int i13 = 0;
        if (i12 == 0) {
            if (this.zze - this.zzg < 10) {
                while (i13 < 10) {
                    if (zzv() < 0) {
                        i13++;
                    }
                }
                throw zzkb.zze();
            }
            while (i13 < 10) {
                byte[] bArr = this.zzd;
                int i14 = this.zzg;
                this.zzg = i14 + 1;
                if (bArr[i14] < 0) {
                    i13++;
                }
            }
            throw zzkb.zze();
            return true;
        }
        if (i12 == 1) {
            zzf(8);
            return true;
        }
        if (i12 == 2) {
            zzf(zzx());
            return true;
        }
        if (i12 != 3) {
            if (i12 == 4) {
                return false;
            }
            if (i12 != 5) {
                throw zzkb.zza();
            }
            zzf(4);
            return true;
        }
        do {
            int iZzi = zzi();
            if (iZzi == 0) {
                break;
            }
            int i15 = this.zza;
            if (i15 >= this.zzb) {
                throw zzkb.zzh();
            }
            this.zza = i15 + 1;
            zZze = zze(iZzi);
            this.zza--;
        } while (zZze);
        zzc(((i11 >>> 3) << 3) | 4);
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zziw
    public final int zzf() throws IOException {
        return zzx();
    }

    @Override // com.google.android.gms.internal.measurement.zziw
    public final int zzg() throws IOException {
        return zzw();
    }

    @Override // com.google.android.gms.internal.measurement.zziw
    public final int zzh() throws IOException {
        return zziw.zza(zzx());
    }

    @Override // com.google.android.gms.internal.measurement.zziw
    public final int zzi() throws IOException {
        if (zzt()) {
            this.zzi = 0;
            return 0;
        }
        int iZzx = zzx();
        this.zzi = iZzx;
        if ((iZzx >>> 3) != 0) {
            return iZzx;
        }
        throw zzkb.zzc();
    }

    @Override // com.google.android.gms.internal.measurement.zziw
    public final int zzj() throws IOException {
        return zzx();
    }

    @Override // com.google.android.gms.internal.measurement.zziw
    public final long zzk() throws IOException {
        return zzy();
    }

    @Override // com.google.android.gms.internal.measurement.zziw
    public final long zzl() throws IOException {
        return zzz();
    }

    @Override // com.google.android.gms.internal.measurement.zziw
    final long zzm() throws IOException {
        long j11 = 0;
        for (int i11 = 0; i11 < 64; i11 += 7) {
            byte bZzv = zzv();
            j11 |= ((long) (bZzv & 127)) << i11;
            if ((bZzv & 128) == 0) {
                return j11;
            }
        }
        throw zzkb.zze();
    }

    @Override // com.google.android.gms.internal.measurement.zziw
    public final long zzn() throws IOException {
        return zzy();
    }

    @Override // com.google.android.gms.internal.measurement.zziw
    public final long zzo() throws IOException {
        return zziw.zza(zzz());
    }

    @Override // com.google.android.gms.internal.measurement.zziw
    public final long zzp() throws IOException {
        return zzz();
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0031 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:16:0x0033 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:17:0x0035  */
    /* JADX WARN: Code duplicated, block: B:20:0x003c  */
    /* JADX WARN: Code duplicated, block: B:22:0x0041  */
    @Override // com.google.android.gms.internal.measurement.zziw
    public final zzik zzq() throws IOException {
        byte[] bArrCopyOfRange;
        int iZzx = zzx();
        if (iZzx > 0) {
            int i11 = this.zze;
            int i12 = this.zzg;
            if (iZzx <= i11 - i12) {
                zzik zzikVarZza = zzik.zza(this.zzd, i12, iZzx);
                this.zzg += iZzx;
                return zzikVarZza;
            }
        }
        if (iZzx == 0) {
            return zzik.zza;
        }
        if (iZzx > 0) {
            int i13 = this.zze;
            int i14 = this.zzg;
            if (iZzx <= i13 - i14) {
                int i15 = iZzx + i14;
                this.zzg = i15;
                bArrCopyOfRange = Arrays.copyOfRange(this.zzd, i14, i15);
            } else {
                if (iZzx <= 0) {
                    throw zzkb.zzi();
                }
                if (iZzx == 0) {
                    throw zzkb.zzf();
                }
                bArrCopyOfRange = zzjv.zzb;
            }
        } else {
            if (iZzx <= 0) {
                throw zzkb.zzi();
            }
            if (iZzx == 0) {
                throw zzkb.zzf();
            }
            bArrCopyOfRange = zzjv.zzb;
        }
        return zzik.zzb(bArrCopyOfRange);
    }

    @Override // com.google.android.gms.internal.measurement.zziw
    public final String zzr() throws IOException {
        int iZzx = zzx();
        if (iZzx > 0) {
            int i11 = this.zze;
            int i12 = this.zzg;
            if (iZzx <= i11 - i12) {
                String str = new String(this.zzd, i12, iZzx, zzjv.zza);
                this.zzg += iZzx;
                return str;
            }
        }
        if (iZzx == 0) {
            return "";
        }
        if (iZzx < 0) {
            throw zzkb.zzf();
        }
        throw zzkb.zzi();
    }

    @Override // com.google.android.gms.internal.measurement.zziw
    public final String zzs() throws IOException {
        int iZzx = zzx();
        if (iZzx > 0) {
            int i11 = this.zze;
            int i12 = this.zzg;
            if (iZzx <= i11 - i12) {
                String strZzb = zzmp.zzb(this.zzd, i12, iZzx);
                this.zzg += iZzx;
                return strZzb;
            }
        }
        if (iZzx == 0) {
            return "";
        }
        if (iZzx <= 0) {
            throw zzkb.zzf();
        }
        throw zzkb.zzi();
    }

    @Override // com.google.android.gms.internal.measurement.zziw
    public final boolean zzt() throws IOException {
        return this.zzg == this.zze;
    }

    @Override // com.google.android.gms.internal.measurement.zziw
    public final boolean zzu() throws IOException {
        return zzz() != 0;
    }
}
