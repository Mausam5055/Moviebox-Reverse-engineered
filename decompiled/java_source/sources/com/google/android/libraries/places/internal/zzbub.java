package com.google.android.libraries.places.internal;

import java.io.IOException;
import java.util.Locale;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes4.dex */
public final class zzbub implements zzbuf {
    private static final Logger zza = Logger.getLogger(zzbty.class.getName());
    private static final zzbwf zzb;

    static {
        zzbwe zzbweVar = zzbwf.zza;
        zzb = zzbwe.zza("PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n");
    }

    static /* bridge */ /* synthetic */ int zza(int i11, byte b11, short s11) throws IOException {
        if ((b11 & 8) != 0) {
            i11--;
        }
        if (s11 <= i11) {
            return i11 - s11;
        }
        throw zzi("PROTOCOL_ERROR padding %s > remaining length %s", Short.valueOf(s11), Integer.valueOf(i11));
    }

    static /* bridge */ /* synthetic */ int zzb(zzbwd zzbwdVar) {
        return (zzbwdVar.zzc() & 255) | ((zzbwdVar.zzc() & 255) << 16) | ((zzbwdVar.zzc() & 255) << 8);
    }

    static /* bridge */ /* synthetic */ IllegalArgumentException zzf(String str, Object[] objArr) {
        throw new IllegalArgumentException(String.format(Locale.US, str, objArr));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static IOException zzi(String str, Object... objArr) throws IOException {
        throw new IOException(String.format(Locale.US, str, objArr));
    }

    @Override // com.google.android.libraries.places.internal.zzbuf
    public final zzbtr zzc(zzbwd zzbwdVar, boolean z10) {
        return new zzbtz(zzbwdVar, 4096, true);
    }

    @Override // com.google.android.libraries.places.internal.zzbuf
    public final zzbts zzd(zzbwc zzbwcVar, boolean z10) {
        return new zzbua(zzbwcVar, true);
    }
}
