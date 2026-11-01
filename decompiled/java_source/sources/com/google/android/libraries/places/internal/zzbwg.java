package com.google.android.libraries.places.internal;

import java.io.IOException;
import java.io.InputStream;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes4.dex */
@SourceDebugExtension
final class zzbwg implements zzbws {
    private final InputStream zza;
    private final zzbwv zzb;

    public zzbwg(InputStream input, zzbwv timeout) {
        Intrinsics.h(input, "input");
        Intrinsics.h(timeout, "timeout");
        this.zza = input;
        this.zzb = timeout;
    }

    @Override // com.google.android.libraries.places.internal.zzbws, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.zza.close();
    }

    public final String toString() {
        return "source(" + this.zza + ")";
    }

    @Override // com.google.android.libraries.places.internal.zzbws
    public final long zza(zzbwb sink, long j11) throws IOException {
        Intrinsics.h(sink, "sink");
        try {
            zzbwv.zzb();
            zzbwn zzbwnVarZzB = sink.zzB(1);
            int i11 = this.zza.read(zzbwnVarZzB.zzb, zzbwnVarZzB.zzd, (int) Math.min(j11, 8192 - zzbwnVarZzB.zzd));
            if (i11 != -1) {
                zzbwnVarZzB.zzd += i11;
                long j12 = i11;
                sink.zzE(sink.zzg() + j12);
                return j12;
            }
            if (zzbwnVarZzB.zzc != zzbwnVarZzB.zzd) {
                return -1L;
            }
            sink.zza = zzbwnVarZzB.zza();
            zzbwo.zzb(zzbwnVarZzB);
            return -1L;
        } catch (AssertionError e11) {
            if (zzbwi.zza(e11)) {
                throw new IOException(e11);
            }
            throw e11;
        }
    }
}
