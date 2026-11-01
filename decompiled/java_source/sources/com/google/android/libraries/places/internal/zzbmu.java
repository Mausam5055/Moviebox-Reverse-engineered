package com.google.android.libraries.places.internal;

import java.io.OutputStream;

/* JADX INFO: loaded from: classes4.dex */
final class zzbmu extends OutputStream {
    final /* synthetic */ zzbmw zza;

    /* synthetic */ zzbmu(zzbmw zzbmwVar, zzbmt zzbmtVar) {
        this.zza = zzbmwVar;
    }

    @Override // java.io.OutputStream
    public final void write(int i11) {
        this.zza.zzk(new byte[]{(byte) i11}, 0, 1);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i11, int i12) {
        this.zza.zzk(bArr, i11, i12);
    }
}
