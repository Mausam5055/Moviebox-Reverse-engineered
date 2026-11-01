package com.google.android.libraries.places.internal;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.InvalidMarkException;

/* JADX INFO: loaded from: classes4.dex */
final class zzbnx extends zzbeg {
    int zza;
    final int zzb;
    final byte[] zzc;
    int zzd = -1;

    zzbnx(byte[] bArr, int i11, int i12) {
        zzmt.zzf(i11 >= 0, "offset must be >= 0");
        zzmt.zzf(i12 >= 0, "length must be >= 0");
        int i13 = i12 + i11;
        zzmt.zzf(i13 <= 0, "offset + length exceeds array boundary");
        this.zzc = bArr;
        this.zza = i11;
        this.zzb = i13;
    }

    @Override // com.google.android.libraries.places.internal.zzbeg, com.google.android.libraries.places.internal.zzbnv
    public final void zzb() {
        this.zzd = this.zza;
    }

    @Override // com.google.android.libraries.places.internal.zzbeg, com.google.android.libraries.places.internal.zzbnv
    public final void zzc() {
        int i11 = this.zzd;
        if (i11 == -1) {
            throw new InvalidMarkException();
        }
        this.zza = i11;
    }

    @Override // com.google.android.libraries.places.internal.zzbeg, com.google.android.libraries.places.internal.zzbnv
    public final boolean zzd() {
        return true;
    }

    @Override // com.google.android.libraries.places.internal.zzbnv
    public final int zze() {
        zza(1);
        int i11 = this.zza;
        this.zza = i11 + 1;
        return this.zzc[i11] & 255;
    }

    @Override // com.google.android.libraries.places.internal.zzbnv
    public final int zzf() {
        return this.zzb - this.zza;
    }

    @Override // com.google.android.libraries.places.internal.zzbnv
    public final /* bridge */ /* synthetic */ zzbnv zzg(int i11) {
        zza(i11);
        int i12 = this.zza;
        this.zza = i12 + i11;
        return new zzbnx(this.zzc, i12, i11);
    }

    @Override // com.google.android.libraries.places.internal.zzbnv
    public final void zzi(ByteBuffer byteBuffer) {
        zzmt.zzc(byteBuffer, "dest");
        int iRemaining = byteBuffer.remaining();
        zza(iRemaining);
        byteBuffer.put(this.zzc, this.zza, iRemaining);
        this.zza += iRemaining;
    }

    @Override // com.google.android.libraries.places.internal.zzbnv
    public final void zzj(OutputStream outputStream, int i11) throws IOException {
        zza(i11);
        outputStream.write(this.zzc, this.zza, i11);
        this.zza += i11;
    }

    @Override // com.google.android.libraries.places.internal.zzbnv
    public final void zzk(byte[] bArr, int i11, int i12) {
        System.arraycopy(this.zzc, this.zza, bArr, i11, i12);
        this.zza += i12;
    }

    @Override // com.google.android.libraries.places.internal.zzbnv
    public final void zzl(int i11) {
        zza(i11);
        this.zza += i11;
    }
}
