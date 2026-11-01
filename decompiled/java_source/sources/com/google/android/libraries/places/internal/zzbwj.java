package com.google.android.libraries.places.internal;

import java.io.IOException;
import java.io.OutputStream;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes4.dex */
@SourceDebugExtension
final class zzbwj implements zzbwq {
    private final OutputStream zza;
    private final zzbwv zzb;

    public zzbwj(OutputStream out, zzbwv timeout) {
        Intrinsics.h(out, "out");
        Intrinsics.h(timeout, "timeout");
        this.zza = out;
        this.zzb = timeout;
    }

    @Override // com.google.android.libraries.places.internal.zzbwq, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.zza.close();
    }

    @Override // com.google.android.libraries.places.internal.zzbwq, java.io.Flushable
    public final void flush() throws IOException {
        this.zza.flush();
    }

    public final String toString() {
        return "sink(" + this.zza + ")";
    }

    @Override // com.google.android.libraries.places.internal.zzbwq
    public final void zzn(zzbwb source, long j11) throws IOException {
        Intrinsics.h(source, "source");
        zzbvv.zzb(source.zzg(), 0L, j11);
        while (j11 > 0) {
            zzbwv.zzb();
            zzbwn zzbwnVar = source.zza;
            Intrinsics.e(zzbwnVar);
            int iMin = (int) Math.min(j11, zzbwnVar.zzd - zzbwnVar.zzc);
            this.zza.write(zzbwnVar.zzb, zzbwnVar.zzc, iMin);
            zzbwnVar.zzc += iMin;
            long j12 = iMin;
            source.zzE(source.zzg() - j12);
            j11 -= j12;
            if (zzbwnVar.zzc == zzbwnVar.zzd) {
                source.zza = zzbwnVar.zza();
                zzbwo.zzb(zzbwnVar);
            }
        }
    }
}
