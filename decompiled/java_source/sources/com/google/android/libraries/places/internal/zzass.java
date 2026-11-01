package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
abstract class zzass extends zzasx {
    final byte[] zza;
    final int zzb;
    int zzc;
    int zzd;

    zzass(int i11) {
        super(null);
        if (i11 < 0) {
            throw new IllegalArgumentException("bufferSize must be >= 0");
        }
        byte[] bArr = new byte[Math.max(i11, 20)];
        this.zza = bArr;
        this.zzb = bArr.length;
    }

    @Override // com.google.android.libraries.places.internal.zzasx
    public final int zzb() {
        throw new UnsupportedOperationException("spaceLeft() can only be called on CodedOutputStreams that are writing to a flat array or ByteBuffer.");
    }

    final void zzc(byte b11) {
        int i11 = this.zzc;
        this.zzc = i11 + 1;
        this.zza[i11] = b11;
        this.zzd++;
    }

    final void zzd(int i11) {
        int i12 = this.zzc;
        int i13 = i12 + 1;
        this.zzc = i13;
        byte[] bArr = this.zza;
        bArr[i12] = (byte) (i11 & 255);
        int i14 = i12 + 2;
        this.zzc = i14;
        bArr[i13] = (byte) ((i11 >> 8) & 255);
        int i15 = i12 + 3;
        this.zzc = i15;
        bArr[i14] = (byte) ((i11 >> 16) & 255);
        this.zzc = i12 + 4;
        bArr[i15] = (byte) ((i11 >> 24) & 255);
        this.zzd += 4;
    }

    final void zze(long j11) {
        int i11 = this.zzc;
        int i12 = i11 + 1;
        this.zzc = i12;
        byte[] bArr = this.zza;
        bArr[i11] = (byte) (j11 & 255);
        int i13 = i11 + 2;
        this.zzc = i13;
        bArr[i12] = (byte) ((j11 >> 8) & 255);
        int i14 = i11 + 3;
        this.zzc = i14;
        bArr[i13] = (byte) ((j11 >> 16) & 255);
        int i15 = i11 + 4;
        this.zzc = i15;
        bArr[i14] = (byte) (255 & (j11 >> 24));
        int i16 = i11 + 5;
        this.zzc = i16;
        bArr[i15] = (byte) (((int) (j11 >> 32)) & 255);
        int i17 = i11 + 6;
        this.zzc = i17;
        bArr[i16] = (byte) (((int) (j11 >> 40)) & 255);
        int i18 = i11 + 7;
        this.zzc = i18;
        bArr[i17] = (byte) (((int) (j11 >> 48)) & 255);
        this.zzc = i11 + 8;
        bArr[i18] = (byte) (((int) (j11 >> 56)) & 255);
        this.zzd += 8;
    }

    final void zzf(int i11) {
        if (!zzasx.zzb) {
            while ((i11 & (-128)) != 0) {
                byte[] bArr = this.zza;
                int i12 = this.zzc;
                this.zzc = i12 + 1;
                bArr[i12] = (byte) ((i11 | 128) & 255);
                this.zzd++;
                i11 >>>= 7;
            }
            byte[] bArr2 = this.zza;
            int i13 = this.zzc;
            this.zzc = i13 + 1;
            bArr2[i13] = (byte) i11;
            this.zzd++;
            return;
        }
        long j11 = this.zzc;
        while ((i11 & (-128)) != 0) {
            byte[] bArr3 = this.zza;
            int i14 = this.zzc;
            this.zzc = i14 + 1;
            zzawx.zzn(bArr3, i14, (byte) ((i11 | 128) & 255));
            i11 >>>= 7;
        }
        byte[] bArr4 = this.zza;
        int i15 = this.zzc;
        this.zzc = i15 + 1;
        zzawx.zzn(bArr4, i15, (byte) i11);
        this.zzd += (int) (((long) this.zzc) - j11);
    }

    final void zzg(long j11) {
        if (zzasx.zzb) {
            long j12 = this.zzc;
            while (true) {
                int i11 = (int) j11;
                if ((j11 & (-128)) == 0) {
                    byte[] bArr = this.zza;
                    int i12 = this.zzc;
                    this.zzc = i12 + 1;
                    zzawx.zzn(bArr, i12, (byte) i11);
                    this.zzd += (int) (((long) this.zzc) - j12);
                    return;
                }
                byte[] bArr2 = this.zza;
                int i13 = this.zzc;
                this.zzc = i13 + 1;
                zzawx.zzn(bArr2, i13, (byte) ((i11 | 128) & 255));
                j11 >>>= 7;
            }
        } else {
            while (true) {
                int i14 = (int) j11;
                if ((j11 & (-128)) == 0) {
                    byte[] bArr3 = this.zza;
                    int i15 = this.zzc;
                    this.zzc = i15 + 1;
                    bArr3[i15] = (byte) i14;
                    this.zzd++;
                    return;
                }
                byte[] bArr4 = this.zza;
                int i16 = this.zzc;
                this.zzc = i16 + 1;
                bArr4[i16] = (byte) ((i14 | 128) & 255);
                this.zzd++;
                j11 >>>= 7;
            }
        }
    }
}
