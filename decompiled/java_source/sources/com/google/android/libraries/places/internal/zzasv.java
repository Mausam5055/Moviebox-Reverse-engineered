package com.google.android.libraries.places.internal;

import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes4.dex */
final class zzasv extends zzass {
    private final OutputStream zzg;

    zzasv(OutputStream outputStream, int i11) {
        super(i11);
        if (outputStream == null) {
            throw new NullPointerException("out");
        }
        this.zzg = outputStream;
    }

    private final void zzH() throws IOException {
        this.zzg.write(this.zza, 0, this.zzc);
        this.zzc = 0;
    }

    private final void zzI(int i11) throws IOException {
        if (this.zzb - this.zzc < i11) {
            zzH();
        }
    }

    @Override // com.google.android.libraries.places.internal.zzasx
    public final void zzJ() throws IOException {
        if (this.zzc > 0) {
            zzH();
        }
    }

    @Override // com.google.android.libraries.places.internal.zzasx
    public final void zzK(byte b11) throws IOException {
        if (this.zzc == this.zzb) {
            zzH();
        }
        zzc(b11);
    }

    @Override // com.google.android.libraries.places.internal.zzasx
    public final void zzL(int i11, boolean z10) throws IOException {
        zzI(11);
        zzf(i11 << 3);
        zzc(z10 ? (byte) 1 : (byte) 0);
    }

    @Override // com.google.android.libraries.places.internal.zzasx
    public final void zzM(int i11, zzask zzaskVar) throws IOException {
        zzu((i11 << 3) | 2);
        zzu(zzaskVar.zzd());
        zzaskVar.zzh(this);
    }

    @Override // com.google.android.libraries.places.internal.zzasx, com.google.android.libraries.places.internal.zzarz
    public final void zza(byte[] bArr, int i11, int i12) throws IOException {
        zzr(bArr, 0, i12);
    }

    @Override // com.google.android.libraries.places.internal.zzasx
    public final void zzh(int i11, int i12) throws IOException {
        zzI(14);
        zzf((i11 << 3) | 5);
        zzd(i12);
    }

    @Override // com.google.android.libraries.places.internal.zzasx
    public final void zzi(int i11) throws IOException {
        zzI(4);
        zzd(i11);
    }

    @Override // com.google.android.libraries.places.internal.zzasx
    public final void zzj(int i11, long j11) throws IOException {
        zzI(18);
        zzf((i11 << 3) | 1);
        zze(j11);
    }

    @Override // com.google.android.libraries.places.internal.zzasx
    public final void zzk(long j11) throws IOException {
        zzI(8);
        zze(j11);
    }

    @Override // com.google.android.libraries.places.internal.zzasx
    public final void zzl(int i11, int i12) throws IOException {
        zzI(20);
        zzf(i11 << 3);
        if (i12 >= 0) {
            zzf(i12);
        } else {
            zzg(i12);
        }
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
        zzx(str);
    }

    public final void zzr(byte[] bArr, int i11, int i12) throws IOException {
        int i13 = this.zzb;
        int i14 = this.zzc;
        int i15 = i13 - i14;
        if (i15 >= i12) {
            System.arraycopy(bArr, 0, this.zza, i14, i12);
            this.zzc += i12;
            this.zzd += i12;
            return;
        }
        System.arraycopy(bArr, 0, this.zza, i14, i15);
        this.zzc = this.zzb;
        this.zzd += i15;
        zzH();
        int i16 = i12 - i15;
        if (i16 <= this.zzb) {
            System.arraycopy(bArr, i15, this.zza, 0, i16);
            this.zzc = i16;
        } else {
            this.zzg.write(bArr, i15, i16);
        }
        this.zzd += i16;
    }

    @Override // com.google.android.libraries.places.internal.zzasx
    public final void zzs(int i11, int i12) throws IOException {
        zzu((i11 << 3) | i12);
    }

    @Override // com.google.android.libraries.places.internal.zzasx
    public final void zzt(int i11, int i12) throws IOException {
        zzI(20);
        zzf(i11 << 3);
        zzf(i12);
    }

    @Override // com.google.android.libraries.places.internal.zzasx
    public final void zzu(int i11) throws IOException {
        zzI(5);
        zzf(i11);
    }

    @Override // com.google.android.libraries.places.internal.zzasx
    public final void zzv(int i11, long j11) throws IOException {
        zzI(20);
        zzf(i11 << 3);
        zzg(j11);
    }

    @Override // com.google.android.libraries.places.internal.zzasx
    public final void zzw(long j11) throws IOException {
        zzI(10);
        zzg(j11);
    }

    public final void zzx(String str) throws IOException {
        int iZzc;
        try {
            int length = str.length() * 3;
            int iZzB = zzasx.zzB(length);
            int i11 = iZzB + length;
            int i12 = this.zzb;
            if (i11 > i12) {
                byte[] bArr = new byte[length];
                int iZzb = zzaxc.zzb(str, bArr, 0, length);
                zzu(iZzb);
                zzr(bArr, 0, iZzb);
                return;
            }
            if (i11 > i12 - this.zzc) {
                zzH();
            }
            int iZzB2 = zzasx.zzB(str.length());
            int i13 = this.zzc;
            try {
                if (iZzB2 == iZzB) {
                    int i14 = i13 + iZzB2;
                    this.zzc = i14;
                    int iZzb2 = zzaxc.zzb(str, this.zza, i14, this.zzb - i14);
                    this.zzc = i13;
                    iZzc = (iZzb2 - i13) - iZzB2;
                    zzf(iZzc);
                    this.zzc = iZzb2;
                } else {
                    iZzc = zzaxc.zzc(str);
                    zzf(iZzc);
                    this.zzc = zzaxc.zzb(str, this.zza, this.zzc, iZzc);
                }
                this.zzd += iZzc;
            } catch (zzaxb e11) {
                this.zzd -= this.zzc - i13;
                this.zzc = i13;
                throw e11;
            } catch (ArrayIndexOutOfBoundsException e12) {
                throw new zzasu(e12);
            }
        } catch (zzaxb e13) {
            zzF(str, e13);
        }
    }
}
