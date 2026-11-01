package com.google.android.gms.internal.play_billing;

import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
final class zzeb extends zzee {
    private final byte[] zzc;
    private final int zzd;
    private int zze;

    zzeb(byte[] bArr, int i11, int i12) {
        super(null);
        int length = bArr.length;
        if (((length - i12) | i12) < 0) {
            throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(length), 0, Integer.valueOf(i12)));
        }
        this.zzc = bArr;
        this.zze = 0;
        this.zzd = i12;
    }

    @Override // com.google.android.gms.internal.play_billing.zzee
    public final int zza() {
        return this.zzd - this.zze;
    }

    @Override // com.google.android.gms.internal.play_billing.zzee
    public final void zzb(byte b11) throws IOException {
        try {
            byte[] bArr = this.zzc;
            int i11 = this.zze;
            this.zze = i11 + 1;
            bArr[i11] = b11;
        } catch (IndexOutOfBoundsException e11) {
            throw new zzec(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zze), Integer.valueOf(this.zzd), 1), e11);
        }
    }

    public final void zzc(byte[] bArr, int i11, int i12) throws IOException {
        try {
            System.arraycopy(bArr, 0, this.zzc, this.zze, i12);
            this.zze += i12;
        } catch (IndexOutOfBoundsException e11) {
            throw new zzec(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zze), Integer.valueOf(this.zzd), Integer.valueOf(i12)), e11);
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzee
    public final void zzd(int i11, boolean z10) throws IOException {
        zzq(i11 << 3);
        zzb(z10 ? (byte) 1 : (byte) 0);
    }

    @Override // com.google.android.gms.internal.play_billing.zzee
    public final void zze(int i11, zzdw zzdwVar) throws IOException {
        zzq((i11 << 3) | 2);
        zzq(zzdwVar.zzd());
        zzdwVar.zzh(this);
    }

    @Override // com.google.android.gms.internal.play_billing.zzee
    public final void zzf(int i11, int i12) throws IOException {
        zzq((i11 << 3) | 5);
        zzg(i12);
    }

    @Override // com.google.android.gms.internal.play_billing.zzee
    public final void zzg(int i11) throws IOException {
        try {
            byte[] bArr = this.zzc;
            int i12 = this.zze;
            int i13 = i12 + 1;
            this.zze = i13;
            bArr[i12] = (byte) (i11 & 255);
            int i14 = i12 + 2;
            this.zze = i14;
            bArr[i13] = (byte) ((i11 >> 8) & 255);
            int i15 = i12 + 3;
            this.zze = i15;
            bArr[i14] = (byte) ((i11 >> 16) & 255);
            this.zze = i12 + 4;
            bArr[i15] = (byte) ((i11 >> 24) & 255);
        } catch (IndexOutOfBoundsException e11) {
            throw new zzec(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zze), Integer.valueOf(this.zzd), 1), e11);
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzee
    public final void zzh(int i11, long j11) throws IOException {
        zzq((i11 << 3) | 1);
        zzi(j11);
    }

    @Override // com.google.android.gms.internal.play_billing.zzee
    public final void zzi(long j11) throws IOException {
        try {
            byte[] bArr = this.zzc;
            int i11 = this.zze;
            int i12 = i11 + 1;
            this.zze = i12;
            bArr[i11] = (byte) (((int) j11) & 255);
            int i13 = i11 + 2;
            this.zze = i13;
            bArr[i12] = (byte) (((int) (j11 >> 8)) & 255);
            int i14 = i11 + 3;
            this.zze = i14;
            bArr[i13] = (byte) (((int) (j11 >> 16)) & 255);
            int i15 = i11 + 4;
            this.zze = i15;
            bArr[i14] = (byte) (((int) (j11 >> 24)) & 255);
            int i16 = i11 + 5;
            this.zze = i16;
            bArr[i15] = (byte) (((int) (j11 >> 32)) & 255);
            int i17 = i11 + 6;
            this.zze = i17;
            bArr[i16] = (byte) (((int) (j11 >> 40)) & 255);
            int i18 = i11 + 7;
            this.zze = i18;
            bArr[i17] = (byte) (((int) (j11 >> 48)) & 255);
            this.zze = i11 + 8;
            bArr[i18] = (byte) (((int) (j11 >> 56)) & 255);
        } catch (IndexOutOfBoundsException e11) {
            throw new zzec(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zze), Integer.valueOf(this.zzd), 1), e11);
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzee
    public final void zzj(int i11, int i12) throws IOException {
        zzq(i11 << 3);
        zzk(i12);
    }

    @Override // com.google.android.gms.internal.play_billing.zzee
    public final void zzk(int i11) throws IOException {
        if (i11 >= 0) {
            zzq(i11);
        } else {
            zzs(i11);
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzee
    public final void zzl(byte[] bArr, int i11, int i12) throws IOException {
        zzc(bArr, 0, i12);
    }

    @Override // com.google.android.gms.internal.play_billing.zzee
    public final void zzm(int i11, String str) throws IOException {
        zzq((i11 << 3) | 2);
        zzn(str);
    }

    public final void zzn(String str) throws IOException {
        int i11 = this.zze;
        try {
            int iZzx = zzee.zzx(str.length() * 3);
            int iZzx2 = zzee.zzx(str.length());
            if (iZzx2 != iZzx) {
                zzq(zzhs.zzc(str));
                byte[] bArr = this.zzc;
                int i12 = this.zze;
                this.zze = zzhs.zzb(str, bArr, i12, this.zzd - i12);
                return;
            }
            int i13 = i11 + iZzx2;
            this.zze = i13;
            int iZzb = zzhs.zzb(str, this.zzc, i13, this.zzd - i13);
            this.zze = i11;
            zzq((iZzb - i11) - iZzx2);
            this.zze = iZzb;
        } catch (zzhr e11) {
            this.zze = i11;
            zzB(str, e11);
        } catch (IndexOutOfBoundsException e12) {
            throw new zzec(e12);
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzee
    public final void zzo(int i11, int i12) throws IOException {
        zzq((i11 << 3) | i12);
    }

    @Override // com.google.android.gms.internal.play_billing.zzee
    public final void zzp(int i11, int i12) throws IOException {
        zzq(i11 << 3);
        zzq(i12);
    }

    @Override // com.google.android.gms.internal.play_billing.zzee
    public final void zzq(int i11) throws IOException {
        while ((i11 & (-128)) != 0) {
            try {
                byte[] bArr = this.zzc;
                int i12 = this.zze;
                this.zze = i12 + 1;
                bArr[i12] = (byte) ((i11 & 127) | 128);
                i11 >>>= 7;
            } catch (IndexOutOfBoundsException e11) {
                throw new zzec(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zze), Integer.valueOf(this.zzd), 1), e11);
            }
        }
        byte[] bArr2 = this.zzc;
        int i13 = this.zze;
        this.zze = i13 + 1;
        bArr2[i13] = (byte) i11;
    }

    @Override // com.google.android.gms.internal.play_billing.zzee
    public final void zzr(int i11, long j11) throws IOException {
        zzq(i11 << 3);
        zzs(j11);
    }

    @Override // com.google.android.gms.internal.play_billing.zzee
    public final void zzs(long j11) throws IOException {
        if (!zzee.zzd || this.zzd - this.zze < 10) {
            while ((j11 & (-128)) != 0) {
                try {
                    byte[] bArr = this.zzc;
                    int i11 = this.zze;
                    this.zze = i11 + 1;
                    bArr[i11] = (byte) ((((int) j11) & 127) | 128);
                    j11 >>>= 7;
                } catch (IndexOutOfBoundsException e11) {
                    throw new zzec(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zze), Integer.valueOf(this.zzd), 1), e11);
                }
            }
            byte[] bArr2 = this.zzc;
            int i12 = this.zze;
            this.zze = i12 + 1;
            bArr2[i12] = (byte) j11;
            return;
        }
        while (true) {
            int i13 = (int) j11;
            if ((j11 & (-128)) == 0) {
                byte[] bArr3 = this.zzc;
                int i14 = this.zze;
                this.zze = 1 + i14;
                zzhn.zzn(bArr3, i14, (byte) i13);
                return;
            }
            byte[] bArr4 = this.zzc;
            int i15 = this.zze;
            this.zze = i15 + 1;
            zzhn.zzn(bArr4, i15, (byte) ((i13 & 127) | 128));
            j11 >>>= 7;
        }
    }
}
