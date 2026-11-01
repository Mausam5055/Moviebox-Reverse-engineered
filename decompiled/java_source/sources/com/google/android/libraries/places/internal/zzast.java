package com.google.android.libraries.places.internal;

import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
final class zzast extends zzasx {
    private final byte[] zza;
    private final int zzb;
    private int zzc;

    zzast(byte[] bArr, int i11, int i12) {
        super(null);
        if (bArr == null) {
            throw new NullPointerException("buffer");
        }
        int i13 = i11 + i12;
        int length = bArr.length;
        if ((i11 | i12 | (length - i13)) < 0) {
            throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(length), Integer.valueOf(i11), Integer.valueOf(i12)));
        }
        this.zza = bArr;
        this.zzc = i11;
        this.zzb = i13;
    }

    @Override // com.google.android.libraries.places.internal.zzasx
    public final void zzJ() {
    }

    @Override // com.google.android.libraries.places.internal.zzasx
    public final void zzK(byte b11) throws IOException {
        try {
            byte[] bArr = this.zza;
            int i11 = this.zzc;
            this.zzc = i11 + 1;
            bArr[i11] = b11;
        } catch (IndexOutOfBoundsException e11) {
            throw new zzasu(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zzc), Integer.valueOf(this.zzb), 1), e11);
        }
    }

    @Override // com.google.android.libraries.places.internal.zzasx
    public final void zzL(int i11, boolean z10) throws IOException {
        zzu(i11 << 3);
        zzK(z10 ? (byte) 1 : (byte) 0);
    }

    @Override // com.google.android.libraries.places.internal.zzasx
    public final void zzM(int i11, zzask zzaskVar) throws IOException {
        zzu((i11 << 3) | 2);
        zzu(zzaskVar.zzd());
        zzaskVar.zzh(this);
    }

    @Override // com.google.android.libraries.places.internal.zzasx, com.google.android.libraries.places.internal.zzarz
    public final void zza(byte[] bArr, int i11, int i12) throws IOException {
        zze(bArr, 0, i12);
    }

    @Override // com.google.android.libraries.places.internal.zzasx
    public final int zzb() {
        return this.zzb - this.zzc;
    }

    public final void zze(byte[] bArr, int i11, int i12) throws IOException {
        try {
            System.arraycopy(bArr, 0, this.zza, this.zzc, i12);
            this.zzc += i12;
        } catch (IndexOutOfBoundsException e11) {
            throw new zzasu(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zzc), Integer.valueOf(this.zzb), Integer.valueOf(i12)), e11);
        }
    }

    @Override // com.google.android.libraries.places.internal.zzasx
    public final void zzh(int i11, int i12) throws IOException {
        zzu((i11 << 3) | 5);
        zzi(i12);
    }

    @Override // com.google.android.libraries.places.internal.zzasx
    public final void zzi(int i11) throws IOException {
        try {
            byte[] bArr = this.zza;
            int i12 = this.zzc;
            int i13 = i12 + 1;
            this.zzc = i13;
            bArr[i12] = (byte) (i11 & 255);
            int i14 = i12 + 2;
            this.zzc = i14;
            bArr[i13] = (byte) ((i11 >> 8) & 255);
            int i15 = i12 + 3;
            this.zzc = i15;
            bArr[i14] = (byte) ((i11 >> 16) & 255);
            this.zzc = i12 + 4;
            bArr[i15] = (byte) ((i11 >> 24) & 255);
        } catch (IndexOutOfBoundsException e11) {
            throw new zzasu(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zzc), Integer.valueOf(this.zzb), 1), e11);
        }
    }

    @Override // com.google.android.libraries.places.internal.zzasx
    public final void zzj(int i11, long j11) throws IOException {
        zzu((i11 << 3) | 1);
        zzk(j11);
    }

    @Override // com.google.android.libraries.places.internal.zzasx
    public final void zzk(long j11) throws IOException {
        try {
            byte[] bArr = this.zza;
            int i11 = this.zzc;
            int i12 = i11 + 1;
            this.zzc = i12;
            bArr[i11] = (byte) (((int) j11) & 255);
            int i13 = i11 + 2;
            this.zzc = i13;
            bArr[i12] = (byte) (((int) (j11 >> 8)) & 255);
            int i14 = i11 + 3;
            this.zzc = i14;
            bArr[i13] = (byte) (((int) (j11 >> 16)) & 255);
            int i15 = i11 + 4;
            this.zzc = i15;
            bArr[i14] = (byte) (((int) (j11 >> 24)) & 255);
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
        } catch (IndexOutOfBoundsException e11) {
            throw new zzasu(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zzc), Integer.valueOf(this.zzb), 1), e11);
        }
    }

    @Override // com.google.android.libraries.places.internal.zzasx
    public final void zzl(int i11, int i12) throws IOException {
        zzu(i11 << 3);
        zzm(i12);
    }

    @Override // com.google.android.libraries.places.internal.zzasx
    public final void zzm(int i11) throws IOException {
        if (i11 >= 0) {
            zzu(i11);
        } else {
            zzw(i11);
        }
    }

    @Override // com.google.android.libraries.places.internal.zzasx
    final void zzn(int i11, zzavf zzavfVar, zzavt zzavtVar) throws IOException {
        zzu((i11 << 3) | 2);
        zzu(((zzart) zzavfVar).zzak(zzavtVar));
        zzavtVar.zzj(zzavfVar, this.zze);
    }

    @Override // com.google.android.libraries.places.internal.zzasx
    public final void zzo(int i11, zzavf zzavfVar) throws IOException {
        zzu(11);
        zzt(2, i11);
        zzu(26);
        zzu(zzavfVar.zzaq());
        zzavfVar.zzaK(this);
        zzu(12);
    }

    @Override // com.google.android.libraries.places.internal.zzasx
    public final void zzp(int i11, zzask zzaskVar) throws IOException {
        zzu(11);
        zzt(2, i11);
        zzM(3, zzaskVar);
        zzu(12);
    }

    @Override // com.google.android.libraries.places.internal.zzasx
    public final void zzq(int i11, String str) throws IOException {
        zzu((i11 << 3) | 2);
        zzr(str);
    }

    public final void zzr(String str) throws IOException {
        int i11 = this.zzc;
        try {
            int iZzB = zzasx.zzB(str.length() * 3);
            int iZzB2 = zzasx.zzB(str.length());
            if (iZzB2 != iZzB) {
                zzu(zzaxc.zzc(str));
                byte[] bArr = this.zza;
                int i12 = this.zzc;
                this.zzc = zzaxc.zzb(str, bArr, i12, this.zzb - i12);
                return;
            }
            int i13 = i11 + iZzB2;
            this.zzc = i13;
            int iZzb = zzaxc.zzb(str, this.zza, i13, this.zzb - i13);
            this.zzc = i11;
            zzu((iZzb - i11) - iZzB2);
            this.zzc = iZzb;
        } catch (zzaxb e11) {
            this.zzc = i11;
            zzF(str, e11);
        } catch (IndexOutOfBoundsException e12) {
            throw new zzasu(e12);
        }
    }

    @Override // com.google.android.libraries.places.internal.zzasx
    public final void zzs(int i11, int i12) throws IOException {
        zzu((i11 << 3) | i12);
    }

    @Override // com.google.android.libraries.places.internal.zzasx
    public final void zzt(int i11, int i12) throws IOException {
        zzu(i11 << 3);
        zzu(i12);
    }

    @Override // com.google.android.libraries.places.internal.zzasx
    public final void zzu(int i11) throws IOException {
        while ((i11 & (-128)) != 0) {
            try {
                byte[] bArr = this.zza;
                int i12 = this.zzc;
                this.zzc = i12 + 1;
                bArr[i12] = (byte) ((i11 | 128) & 255);
                i11 >>>= 7;
            } catch (IndexOutOfBoundsException e11) {
                throw new zzasu(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zzc), Integer.valueOf(this.zzb), 1), e11);
            }
        }
        byte[] bArr2 = this.zza;
        int i13 = this.zzc;
        this.zzc = i13 + 1;
        bArr2[i13] = (byte) i11;
    }

    @Override // com.google.android.libraries.places.internal.zzasx
    public final void zzv(int i11, long j11) throws IOException {
        zzu(i11 << 3);
        zzw(j11);
    }

    @Override // com.google.android.libraries.places.internal.zzasx
    public final void zzw(long j11) throws IOException {
        if (!zzasx.zzb || this.zzb - this.zzc < 10) {
            while ((j11 & (-128)) != 0) {
                try {
                    byte[] bArr = this.zza;
                    int i11 = this.zzc;
                    this.zzc = i11 + 1;
                    bArr[i11] = (byte) ((((int) j11) | 128) & 255);
                    j11 >>>= 7;
                } catch (IndexOutOfBoundsException e11) {
                    throw new zzasu(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zzc), Integer.valueOf(this.zzb), 1), e11);
                }
            }
            byte[] bArr2 = this.zza;
            int i12 = this.zzc;
            this.zzc = i12 + 1;
            bArr2[i12] = (byte) j11;
            return;
        }
        while (true) {
            int i13 = (int) j11;
            if ((j11 & (-128)) == 0) {
                byte[] bArr3 = this.zza;
                int i14 = this.zzc;
                this.zzc = 1 + i14;
                zzawx.zzn(bArr3, i14, (byte) i13);
                return;
            }
            byte[] bArr4 = this.zza;
            int i15 = this.zzc;
            this.zzc = i15 + 1;
            zzawx.zzn(bArr4, i15, (byte) ((i13 | 128) & 255));
            j11 >>>= 7;
        }
    }
}
