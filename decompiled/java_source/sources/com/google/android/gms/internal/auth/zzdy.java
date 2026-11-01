package com.google.android.gms.internal.auth;

/* JADX INFO: loaded from: classes3.dex */
final class zzdy extends zzeb {
    private final int zzc;

    zzdy(byte[] bArr, int i11, int i12) {
        super(bArr);
        zzee.zzi(0, i12, bArr.length);
        this.zzc = i12;
    }

    @Override // com.google.android.gms.internal.auth.zzeb, com.google.android.gms.internal.auth.zzee
    public final byte zza(int i11) {
        int i12 = this.zzc;
        if (((i12 - (i11 + 1)) | i11) >= 0) {
            return this.zza[i11];
        }
        if (i11 < 0) {
            throw new ArrayIndexOutOfBoundsException("Index < 0: " + i11);
        }
        throw new ArrayIndexOutOfBoundsException("Index > length: " + i11 + ", " + i12);
    }

    @Override // com.google.android.gms.internal.auth.zzeb, com.google.android.gms.internal.auth.zzee
    final byte zzb(int i11) {
        return this.zza[i11];
    }

    @Override // com.google.android.gms.internal.auth.zzeb
    protected final int zzc() {
        return 0;
    }

    @Override // com.google.android.gms.internal.auth.zzeb, com.google.android.gms.internal.auth.zzee
    public final int zzd() {
        return this.zzc;
    }
}
