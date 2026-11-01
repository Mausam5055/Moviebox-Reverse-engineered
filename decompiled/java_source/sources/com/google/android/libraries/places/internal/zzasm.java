package com.google.android.libraries.places.internal;

import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
final class zzasm extends zzasq {
    private final byte[] zzf;
    private int zzg;
    private int zzh;
    private int zzi;
    private int zzj;
    private int zzk;

    /* synthetic */ zzasm(byte[] bArr, int i11, int i12, boolean z10, zzasl zzaslVar) {
        super(null);
        this.zzk = Integer.MAX_VALUE;
        this.zzf = bArr;
        this.zzg = i12;
        this.zzi = 0;
    }

    private final void zzL() {
        int i11 = this.zzg + this.zzh;
        this.zzg = i11;
        int i12 = this.zzk;
        if (i11 <= i12) {
            this.zzh = 0;
            return;
        }
        int i13 = i11 - i12;
        this.zzh = i13;
        this.zzg = i11 - i13;
    }

    @Override // com.google.android.libraries.places.internal.zzasq
    public final void zzA(int i11) {
        this.zzk = i11;
        zzL();
    }

    public final void zzB(int i11) throws IOException {
        if (i11 >= 0) {
            int i12 = this.zzg;
            int i13 = this.zzi;
            if (i11 <= i12 - i13) {
                this.zzi = i13 + i11;
                return;
            }
        }
        if (i11 >= 0) {
            throw zzauf.zzj();
        }
        throw zzauf.zzf();
    }

    @Override // com.google.android.libraries.places.internal.zzasq
    public final boolean zzC() throws IOException {
        return this.zzi == this.zzg;
    }

    @Override // com.google.android.libraries.places.internal.zzasq
    public final boolean zzD() throws IOException {
        return zzr() != 0;
    }

    @Override // com.google.android.libraries.places.internal.zzasq
    public final boolean zzE(int i11) throws IOException {
        int iZzm;
        int i12 = i11 & 7;
        int i13 = 0;
        if (i12 == 0) {
            if (this.zzg - this.zzi < 10) {
                while (i13 < 10) {
                    if (zza() < 0) {
                        i13++;
                    }
                }
                throw zzauf.zze();
            }
            while (i13 < 10) {
                byte[] bArr = this.zzf;
                int i14 = this.zzi;
                this.zzi = i14 + 1;
                if (bArr[i14] < 0) {
                    i13++;
                }
            }
            throw zzauf.zze();
            return true;
        }
        if (i12 == 1) {
            zzB(8);
            return true;
        }
        if (i12 == 2) {
            zzB(zzj());
            return true;
        }
        if (i12 != 3) {
            if (i12 == 4) {
                return false;
            }
            if (i12 != 5) {
                throw zzauf.zza();
            }
            zzB(4);
            return true;
        }
        do {
            iZzm = zzm();
            if (iZzm == 0) {
                break;
            }
        } while (zzE(iZzm));
        zzz(((i11 >>> 3) << 3) | 4);
        return true;
    }

    public final byte zza() throws IOException {
        int i11 = this.zzi;
        if (i11 == this.zzg) {
            throw zzauf.zzj();
        }
        byte[] bArr = this.zzf;
        this.zzi = i11 + 1;
        return bArr[i11];
    }

    @Override // com.google.android.libraries.places.internal.zzasq
    public final double zzb() throws IOException {
        return Double.longBitsToDouble(zzq());
    }

    @Override // com.google.android.libraries.places.internal.zzasq
    public final float zzc() throws IOException {
        return Float.intBitsToFloat(zzi());
    }

    @Override // com.google.android.libraries.places.internal.zzasq
    public final int zzd() {
        return this.zzi;
    }

    @Override // com.google.android.libraries.places.internal.zzasq
    public final int zze(int i11) throws zzauf {
        if (i11 < 0) {
            throw zzauf.zzf();
        }
        int i12 = i11 + this.zzi;
        if (i12 < 0) {
            throw zzauf.zzg();
        }
        int i13 = this.zzk;
        if (i12 > i13) {
            throw zzauf.zzj();
        }
        this.zzk = i12;
        zzL();
        return i13;
    }

    @Override // com.google.android.libraries.places.internal.zzasq
    public final int zzf() throws IOException {
        return zzj();
    }

    @Override // com.google.android.libraries.places.internal.zzasq
    public final int zzg() throws IOException {
        return zzi();
    }

    @Override // com.google.android.libraries.places.internal.zzasq
    public final int zzh() throws IOException {
        return zzj();
    }

    public final int zzi() throws IOException {
        int i11 = this.zzi;
        if (this.zzg - i11 < 4) {
            throw zzauf.zzj();
        }
        byte[] bArr = this.zzf;
        this.zzi = i11 + 4;
        int i12 = bArr[i11] & 255;
        int i13 = bArr[i11 + 1] & 255;
        int i14 = bArr[i11 + 2] & 255;
        return ((bArr[i11 + 3] & 255) << 24) | (i13 << 8) | i12 | (i14 << 16);
    }

    public final int zzj() throws IOException {
        int i11;
        int i12 = this.zzi;
        int i13 = this.zzg;
        if (i13 != i12) {
            byte[] bArr = this.zzf;
            int i14 = i12 + 1;
            byte b11 = bArr[i12];
            if (b11 >= 0) {
                this.zzi = i14;
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
                this.zzi = i15;
                return i11;
            }
        }
        return (int) zzs();
    }

    @Override // com.google.android.libraries.places.internal.zzasq
    public final int zzk() throws IOException {
        return zzi();
    }

    @Override // com.google.android.libraries.places.internal.zzasq
    public final int zzl() throws IOException {
        return zzasq.zzF(zzj());
    }

    @Override // com.google.android.libraries.places.internal.zzasq
    public final int zzm() throws IOException {
        if (zzC()) {
            this.zzj = 0;
            return 0;
        }
        int iZzj = zzj();
        this.zzj = iZzj;
        if ((iZzj >>> 3) != 0) {
            return iZzj;
        }
        throw zzauf.zzc();
    }

    @Override // com.google.android.libraries.places.internal.zzasq
    public final int zzn() throws IOException {
        return zzj();
    }

    @Override // com.google.android.libraries.places.internal.zzasq
    public final long zzo() throws IOException {
        return zzq();
    }

    @Override // com.google.android.libraries.places.internal.zzasq
    public final long zzp() throws IOException {
        return zzr();
    }

    public final long zzq() throws IOException {
        int i11 = this.zzi;
        if (this.zzg - i11 < 8) {
            throw zzauf.zzj();
        }
        byte[] bArr = this.zzf;
        this.zzi = i11 + 8;
        long j11 = bArr[i11];
        long j12 = (((long) bArr[i11 + 1]) & 255) << 8;
        long j13 = bArr[i11 + 2];
        long j14 = bArr[i11 + 3];
        return ((((long) bArr[i11 + 7]) & 255) << 56) | (j11 & 255) | j12 | ((j13 & 255) << 16) | ((j14 & 255) << 24) | ((bArr[i11 + 4] & 255) << 32) | ((bArr[i11 + 5] & 255) << 40) | ((bArr[i11 + 6] & 255) << 48);
    }

    public final long zzr() throws IOException {
        long j11;
        long j12;
        int i11 = this.zzi;
        int i12 = this.zzg;
        if (i12 != i11) {
            byte[] bArr = this.zzf;
            int i13 = i11 + 1;
            byte b11 = bArr[i11];
            if (b11 >= 0) {
                this.zzi = i13;
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
                    } else {
                        int i18 = i11 + 4;
                        int i19 = i17 ^ (bArr[i16] << 21);
                        if (i19 < 0) {
                            long j13 = (-2080896) ^ i19;
                            i14 = i18;
                            j11 = j13;
                        } else {
                            i16 = i11 + 5;
                            long j14 = (((long) bArr[i18]) << 28) ^ ((long) i19);
                            if (j14 >= 0) {
                                j11 = j14 ^ 266354560;
                            } else {
                                i14 = i11 + 6;
                                long j15 = (((long) bArr[i16]) << 35) ^ j14;
                                if (j15 < 0) {
                                    j12 = -34093383808L;
                                } else {
                                    int i20 = i11 + 7;
                                    long j16 = j15 ^ (((long) bArr[i14]) << 42);
                                    if (j16 >= 0) {
                                        j11 = j16 ^ 4363953127296L;
                                    } else {
                                        i14 = i11 + 8;
                                        j15 = j16 ^ (((long) bArr[i20]) << 49);
                                        if (j15 < 0) {
                                            j12 = -558586000294016L;
                                        } else {
                                            i20 = i11 + 9;
                                            long j17 = (j15 ^ (((long) bArr[i14]) << 56)) ^ 71499008037633920L;
                                            if (j17 < 0) {
                                                i14 = i11 + 10;
                                                if (bArr[i20] >= 0) {
                                                    j11 = j17;
                                                }
                                            } else {
                                                j11 = j17;
                                            }
                                        }
                                    }
                                    i14 = i20;
                                }
                                j11 = j15 ^ j12;
                            }
                        }
                    }
                    i14 = i16;
                }
                this.zzi = i14;
                return j11;
            }
        }
        return zzs();
    }

    final long zzs() throws IOException {
        long j11 = 0;
        for (int i11 = 0; i11 < 64; i11 += 7) {
            byte bZza = zza();
            j11 |= ((long) (bZza & 127)) << i11;
            if ((bZza & 128) == 0) {
                return j11;
            }
        }
        throw zzauf.zze();
    }

    @Override // com.google.android.libraries.places.internal.zzasq
    public final long zzt() throws IOException {
        return zzq();
    }

    @Override // com.google.android.libraries.places.internal.zzasq
    public final long zzu() throws IOException {
        return zzasq.zzH(zzr());
    }

    @Override // com.google.android.libraries.places.internal.zzasq
    public final long zzv() throws IOException {
        return zzr();
    }

    @Override // com.google.android.libraries.places.internal.zzasq
    public final zzask zzw() throws IOException {
        int iZzj = zzj();
        if (iZzj > 0) {
            int i11 = this.zzg;
            int i12 = this.zzi;
            if (iZzj <= i11 - i12) {
                zzask zzaskVarZzl = zzask.zzl(this.zzf, i12, iZzj);
                this.zzi += iZzj;
                return zzaskVarZzl;
            }
        }
        if (iZzj == 0) {
            return zzask.zzb;
        }
        if (iZzj > 0) {
            int i13 = this.zzg;
            int i14 = this.zzi;
            if (iZzj <= i13 - i14) {
                int i15 = iZzj + i14;
                this.zzi = i15;
                return new zzash(Arrays.copyOfRange(this.zzf, i14, i15));
            }
        }
        if (iZzj <= 0) {
            throw zzauf.zzf();
        }
        throw zzauf.zzj();
    }

    @Override // com.google.android.libraries.places.internal.zzasq
    public final String zzx() throws IOException {
        int iZzj = zzj();
        if (iZzj > 0) {
            int i11 = this.zzg;
            int i12 = this.zzi;
            if (iZzj <= i11 - i12) {
                String str = new String(this.zzf, i12, iZzj, zzaud.zzb);
                this.zzi += iZzj;
                return str;
            }
        }
        if (iZzj == 0) {
            return "";
        }
        if (iZzj < 0) {
            throw zzauf.zzf();
        }
        throw zzauf.zzj();
    }

    @Override // com.google.android.libraries.places.internal.zzasq
    public final String zzy() throws IOException {
        int iZzj = zzj();
        if (iZzj > 0) {
            int i11 = this.zzg;
            int i12 = this.zzi;
            if (iZzj <= i11 - i12) {
                String strZzd = zzaxc.zzd(this.zzf, i12, iZzj);
                this.zzi += iZzj;
                return strZzd;
            }
        }
        if (iZzj == 0) {
            return "";
        }
        if (iZzj <= 0) {
            throw zzauf.zzf();
        }
        throw zzauf.zzj();
    }

    @Override // com.google.android.libraries.places.internal.zzasq
    public final void zzz(int i11) throws zzauf {
        if (this.zzj != i11) {
            throw zzauf.zzb();
        }
    }
}
