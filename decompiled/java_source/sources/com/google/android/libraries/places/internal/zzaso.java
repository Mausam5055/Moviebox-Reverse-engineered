package com.google.android.libraries.places.internal;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
final class zzaso extends zzasq {
    private final InputStream zzf;
    private final byte[] zzg;
    private int zzh;
    private int zzi;
    private int zzj;
    private int zzk;
    private int zzl;
    private int zzm;

    /* synthetic */ zzaso(InputStream inputStream, int i11, zzasn zzasnVar) {
        super(null);
        this.zzm = Integer.MAX_VALUE;
        byte[] bArr = zzaud.zzd;
        this.zzf = inputStream;
        this.zzg = new byte[4096];
        this.zzh = 0;
        this.zzj = 0;
        this.zzl = 0;
    }

    private final List zzL(int i11) throws IOException {
        ArrayList arrayList = new ArrayList();
        while (i11 > 0) {
            int iMin = Math.min(i11, 4096);
            byte[] bArr = new byte[iMin];
            int i12 = 0;
            while (i12 < iMin) {
                int i13 = this.zzf.read(bArr, i12, iMin - i12);
                if (i13 == -1) {
                    throw zzauf.zzj();
                }
                this.zzl += i13;
                i12 += i13;
            }
            i11 -= iMin;
            arrayList.add(bArr);
        }
        return arrayList;
    }

    private final void zzM() {
        int i11 = this.zzh + this.zzi;
        this.zzh = i11;
        int i12 = this.zzl + i11;
        int i13 = this.zzm;
        if (i12 <= i13) {
            this.zzi = 0;
            return;
        }
        int i14 = i12 - i13;
        this.zzi = i14;
        this.zzh = i11 - i14;
    }

    private final void zzN(int i11) throws IOException {
        if (zzO(i11)) {
            return;
        }
        if (i11 <= (this.zzc - this.zzl) - this.zzj) {
            throw zzauf.zzj();
        }
        throw zzauf.zzi();
    }

    private final boolean zzO(int i11) throws IOException {
        int i12 = this.zzj;
        int i13 = i12 + i11;
        int i14 = this.zzh;
        if (i13 <= i14) {
            throw new IllegalStateException("refillBuffer() called when " + i11 + " bytes were already available in buffer");
        }
        int i15 = this.zzc;
        int i16 = this.zzl;
        if (i11 > (i15 - i16) - i12 || i16 + i12 + i11 > this.zzm) {
            return false;
        }
        if (i12 > 0) {
            if (i14 > i12) {
                byte[] bArr = this.zzg;
                System.arraycopy(bArr, i12, bArr, 0, i14 - i12);
            }
            i16 = this.zzl + i12;
            this.zzl = i16;
            i14 = this.zzh - i12;
            this.zzh = i14;
            this.zzj = 0;
        }
        try {
            int i17 = this.zzf.read(this.zzg, i14, Math.min(4096 - i14, (this.zzc - i16) - i14));
            if (i17 == 0 || i17 < -1 || i17 > 4096) {
                throw new IllegalStateException(String.valueOf(this.zzf.getClass()) + "#read(byte[]) returned invalid result: " + i17 + "\nThe InputStream implementation is buggy.");
            }
            if (i17 <= 0) {
                return false;
            }
            this.zzh += i17;
            zzM();
            if (this.zzh >= i11) {
                return true;
            }
            return zzO(i11);
        } catch (zzauf e11) {
            e11.zzk();
            throw e11;
        }
    }

    private final byte[] zzP(int i11, boolean z10) throws IOException {
        byte[] bArrZzQ = zzQ(i11);
        if (bArrZzQ != null) {
            return bArrZzQ;
        }
        int i12 = this.zzj;
        int i13 = this.zzh;
        int i14 = i13 - i12;
        this.zzl += i13;
        this.zzj = 0;
        this.zzh = 0;
        List<byte[]> listZzL = zzL(i11 - i14);
        byte[] bArr = new byte[i11];
        System.arraycopy(this.zzg, i12, bArr, 0, i14);
        for (byte[] bArr2 : listZzL) {
            int length = bArr2.length;
            System.arraycopy(bArr2, 0, bArr, i14, length);
            i14 += length;
        }
        return bArr;
    }

    private final byte[] zzQ(int i11) throws IOException {
        if (i11 == 0) {
            return zzaud.zzd;
        }
        int i12 = this.zzl;
        int i13 = this.zzj;
        int i14 = i12 + i13 + i11;
        if (i14 - this.zzc > 0) {
            throw zzauf.zzi();
        }
        int i15 = this.zzm;
        if (i14 > i15) {
            zzB((i15 - i12) - i13);
            throw zzauf.zzj();
        }
        int i16 = this.zzh - i13;
        int i17 = i11 - i16;
        if (i17 >= 4096) {
            try {
                if (i17 > this.zzf.available()) {
                    return null;
                }
            } catch (zzauf e11) {
                e11.zzk();
                throw e11;
            }
        }
        byte[] bArr = new byte[i11];
        System.arraycopy(this.zzg, this.zzj, bArr, 0, i16);
        this.zzl += this.zzh;
        this.zzj = 0;
        this.zzh = 0;
        while (i16 < i11) {
            try {
                int i18 = this.zzf.read(bArr, i16, i11 - i16);
                if (i18 == -1) {
                    throw zzauf.zzj();
                }
                this.zzl += i18;
                i16 += i18;
            } catch (zzauf e12) {
                e12.zzk();
                throw e12;
            }
        }
        return bArr;
    }

    @Override // com.google.android.libraries.places.internal.zzasq
    public final void zzA(int i11) {
        this.zzm = i11;
        zzM();
    }

    public final void zzB(int i11) throws IOException {
        int i12 = this.zzh;
        int i13 = this.zzj;
        int i14 = i12 - i13;
        if (i11 <= i14 && i11 >= 0) {
            this.zzj = i13 + i11;
            return;
        }
        if (i11 < 0) {
            throw zzauf.zzf();
        }
        int i15 = this.zzl;
        int i16 = i15 + i13;
        int i17 = this.zzm;
        if (i16 + i11 > i17) {
            zzB((i17 - i15) - i13);
            throw zzauf.zzj();
        }
        this.zzl = i16;
        this.zzh = 0;
        this.zzj = 0;
        while (i14 < i11) {
            try {
                long j11 = i11 - i14;
                try {
                    long jSkip = this.zzf.skip(j11);
                    if (jSkip < 0 || jSkip > j11) {
                        throw new IllegalStateException(String.valueOf(this.zzf.getClass()) + "#skip returned invalid result: " + jSkip + "\nThe InputStream implementation is buggy.");
                    }
                    if (jSkip == 0) {
                        break;
                    } else {
                        i14 += (int) jSkip;
                    }
                } catch (zzauf e11) {
                    e11.zzk();
                    throw e11;
                }
            } catch (Throwable th2) {
                this.zzl += i14;
                zzM();
                throw th2;
            }
        }
        this.zzl += i14;
        zzM();
        if (i14 >= i11) {
            return;
        }
        int i18 = this.zzh;
        int i19 = i18 - this.zzj;
        this.zzj = i18;
        zzN(1);
        while (true) {
            int i20 = i11 - i19;
            int i21 = this.zzh;
            if (i20 <= i21) {
                this.zzj = i20;
                return;
            } else {
                i19 += i21;
                this.zzj = i21;
                zzN(1);
            }
        }
    }

    @Override // com.google.android.libraries.places.internal.zzasq
    public final boolean zzC() throws IOException {
        return this.zzj == this.zzh && !zzO(1);
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
            if (this.zzh - this.zzj < 10) {
                while (i13 < 10) {
                    if (zza() < 0) {
                        i13++;
                    }
                }
                throw zzauf.zze();
            }
            while (i13 < 10) {
                byte[] bArr = this.zzg;
                int i14 = this.zzj;
                this.zzj = i14 + 1;
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
        if (this.zzj == this.zzh) {
            zzN(1);
        }
        byte[] bArr = this.zzg;
        int i11 = this.zzj;
        this.zzj = i11 + 1;
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
        return this.zzl + this.zzj;
    }

    @Override // com.google.android.libraries.places.internal.zzasq
    public final int zze(int i11) throws zzauf {
        if (i11 < 0) {
            throw zzauf.zzf();
        }
        int i12 = this.zzl + this.zzj;
        int i13 = this.zzm;
        int i14 = i11 + i12;
        if (i14 > i13) {
            throw zzauf.zzj();
        }
        this.zzm = i14;
        zzM();
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
        int i11 = this.zzj;
        if (this.zzh - i11 < 4) {
            zzN(4);
            i11 = this.zzj;
        }
        byte[] bArr = this.zzg;
        this.zzj = i11 + 4;
        int i12 = bArr[i11] & 255;
        int i13 = bArr[i11 + 1] & 255;
        int i14 = bArr[i11 + 2] & 255;
        return ((bArr[i11 + 3] & 255) << 24) | (i13 << 8) | i12 | (i14 << 16);
    }

    public final int zzj() throws IOException {
        int i11;
        int i12 = this.zzj;
        int i13 = this.zzh;
        if (i13 != i12) {
            byte[] bArr = this.zzg;
            int i14 = i12 + 1;
            byte b11 = bArr[i12];
            if (b11 >= 0) {
                this.zzj = i14;
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
                this.zzj = i15;
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
            this.zzk = 0;
            return 0;
        }
        int iZzj = zzj();
        this.zzk = iZzj;
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
        int i11 = this.zzj;
        if (this.zzh - i11 < 8) {
            zzN(8);
            i11 = this.zzj;
        }
        byte[] bArr = this.zzg;
        this.zzj = i11 + 8;
        long j11 = bArr[i11];
        long j12 = (((long) bArr[i11 + 1]) & 255) << 8;
        long j13 = bArr[i11 + 2];
        long j14 = bArr[i11 + 3];
        return ((((long) bArr[i11 + 7]) & 255) << 56) | (j11 & 255) | j12 | ((j13 & 255) << 16) | ((j14 & 255) << 24) | ((bArr[i11 + 4] & 255) << 32) | ((bArr[i11 + 5] & 255) << 40) | ((bArr[i11 + 6] & 255) << 48);
    }

    public final long zzr() throws IOException {
        long j11;
        long j12;
        int i11 = this.zzj;
        int i12 = this.zzh;
        if (i12 != i11) {
            byte[] bArr = this.zzg;
            int i13 = i11 + 1;
            byte b11 = bArr[i11];
            if (b11 >= 0) {
                this.zzj = i13;
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
                this.zzj = i14;
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
        int i11 = this.zzh;
        int i12 = this.zzj;
        if (iZzj <= i11 - i12 && iZzj > 0) {
            zzask zzaskVarZzl = zzask.zzl(this.zzg, i12, iZzj);
            this.zzj += iZzj;
            return zzaskVarZzl;
        }
        if (iZzj == 0) {
            return zzask.zzb;
        }
        if (iZzj < 0) {
            throw zzauf.zzf();
        }
        byte[] bArrZzQ = zzQ(iZzj);
        if (bArrZzQ != null) {
            return zzask.zzl(bArrZzQ, 0, bArrZzQ.length);
        }
        int i13 = this.zzj;
        int i14 = this.zzh;
        int i15 = i14 - i13;
        this.zzl += i14;
        this.zzj = 0;
        this.zzh = 0;
        List<byte[]> listZzL = zzL(iZzj - i15);
        byte[] bArr = new byte[iZzj];
        System.arraycopy(this.zzg, i13, bArr, 0, i15);
        for (byte[] bArr2 : listZzL) {
            int length = bArr2.length;
            System.arraycopy(bArr2, 0, bArr, i15, length);
            i15 += length;
        }
        return new zzash(bArr);
    }

    @Override // com.google.android.libraries.places.internal.zzasq
    public final String zzx() throws IOException {
        int iZzj = zzj();
        if (iZzj > 0) {
            int i11 = this.zzh;
            int i12 = this.zzj;
            if (iZzj <= i11 - i12) {
                String str = new String(this.zzg, i12, iZzj, zzaud.zzb);
                this.zzj += iZzj;
                return str;
            }
        }
        if (iZzj == 0) {
            return "";
        }
        if (iZzj < 0) {
            throw zzauf.zzf();
        }
        if (iZzj > this.zzh) {
            return new String(zzP(iZzj, false), zzaud.zzb);
        }
        zzN(iZzj);
        String str2 = new String(this.zzg, this.zzj, iZzj, zzaud.zzb);
        this.zzj += iZzj;
        return str2;
    }

    @Override // com.google.android.libraries.places.internal.zzasq
    public final String zzy() throws IOException {
        byte[] bArrZzP;
        int iZzj = zzj();
        int i11 = this.zzj;
        int i12 = this.zzh;
        if (iZzj <= i12 - i11 && iZzj > 0) {
            bArrZzP = this.zzg;
            this.zzj = i11 + iZzj;
        } else {
            if (iZzj == 0) {
                return "";
            }
            if (iZzj < 0) {
                throw zzauf.zzf();
            }
            i11 = 0;
            if (iZzj <= i12) {
                zzN(iZzj);
                bArrZzP = this.zzg;
                this.zzj = iZzj;
            } else {
                bArrZzP = zzP(iZzj, false);
            }
        }
        return zzaxc.zzd(bArrZzP, i11, iZzj);
    }

    @Override // com.google.android.libraries.places.internal.zzasq
    public final void zzz(int i11) throws zzauf {
        if (this.zzk != i11) {
            throw zzauf.zzb();
        }
    }
}
