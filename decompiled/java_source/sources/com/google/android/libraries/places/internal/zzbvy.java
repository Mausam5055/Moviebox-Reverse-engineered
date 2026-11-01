package com.google.android.libraries.places.internal;

import java.io.IOException;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes4.dex */
@SourceDebugExtension
public final class zzbvy implements zzbws {
    final /* synthetic */ zzbvz zza;
    final /* synthetic */ zzbws zzb;

    zzbvy(zzbvz zzbvzVar, zzbws zzbwsVar) {
        this.zza = zzbvzVar;
        this.zzb = zzbwsVar;
    }

    @Override // com.google.android.libraries.places.internal.zzbws, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        zzbvz zzbvzVar = this.zza;
        try {
            try {
                this.zzb.close();
                Unit unit = Unit.f67061a;
                zzbvw.zza(zzbvz.zza, zzbvzVar);
            } catch (IOException e11) {
                zzbvw.zza(zzbvz.zza, zzbvzVar);
                throw e11;
            }
        } catch (Throwable th2) {
            zzbvw.zza(zzbvz.zza, zzbvzVar);
            throw th2;
        }
    }

    public final String toString() {
        return "AsyncTimeout.source(" + this.zzb + ")";
    }

    @Override // com.google.android.libraries.places.internal.zzbws
    public final long zza(zzbwb sink, long j11) {
        Intrinsics.h(sink, "sink");
        zzbvz zzbvzVar = this.zza;
        try {
            try {
                long jZza = this.zzb.zza(sink, j11);
                zzbvw.zza(zzbvz.zza, zzbvzVar);
                return jZza;
            } catch (IOException e11) {
                zzbvw.zza(zzbvz.zza, zzbvzVar);
                throw e11;
            }
        } catch (Throwable th2) {
            zzbvw.zza(zzbvz.zza, zzbvzVar);
            throw th2;
        }
    }
}
