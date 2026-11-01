package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes4.dex */
final class zzio extends zziv {
    private final int zzc;
    private final int zzd;

    zzio(byte[] bArr, int i11, int i12) {
        super(bArr);
        zzik.zza(i11, i11 + i12, bArr.length);
        this.zzc = i11;
        this.zzd = i12;
    }

    @Override // com.google.android.gms.internal.measurement.zziv, com.google.android.gms.internal.measurement.zzik
    public final byte zza(int i11) {
        int iZzb = zzb();
        if (((iZzb - (i11 + 1)) | i11) >= 0) {
            return this.zzb[this.zzc + i11];
        }
        if (i11 < 0) {
            throw new ArrayIndexOutOfBoundsException("Index < 0: " + i11);
        }
        throw new ArrayIndexOutOfBoundsException("Index > length: " + i11 + ", " + iZzb);
    }

    @Override // com.google.android.gms.internal.measurement.zziv, com.google.android.gms.internal.measurement.zzik
    final byte zzb(int i11) {
        return this.zzb[this.zzc + i11];
    }

    @Override // com.google.android.gms.internal.measurement.zziv, com.google.android.gms.internal.measurement.zzik
    public final int zzb() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.measurement.zziv
    protected final int zzc() {
        return this.zzc;
    }
}
