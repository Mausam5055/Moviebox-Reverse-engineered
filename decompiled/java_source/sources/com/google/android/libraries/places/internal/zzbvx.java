package com.google.android.libraries.places.internal;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.IOException;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes4.dex */
@SourceDebugExtension
public final class zzbvx implements zzbwq {
    final /* synthetic */ zzbvz zza;
    final /* synthetic */ zzbwq zzb;

    zzbvx(zzbvz zzbvzVar, zzbwq zzbwqVar) {
        this.zza = zzbvzVar;
        this.zzb = zzbwqVar;
    }

    @Override // com.google.android.libraries.places.internal.zzbwq, java.io.Closeable, java.lang.AutoCloseable
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

    @Override // com.google.android.libraries.places.internal.zzbwq, java.io.Flushable
    public final void flush() {
        zzbvz zzbvzVar = this.zza;
        try {
            try {
                this.zzb.flush();
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
        return "AsyncTimeout.sink(" + this.zzb + ")";
    }

    @Override // com.google.android.libraries.places.internal.zzbwq
    public final void zzn(zzbwb source, long j11) {
        Intrinsics.h(source, "source");
        zzbvv.zzb(source.zzg(), 0L, j11);
        while (true) {
            long j12 = 0;
            if (j11 <= 0) {
                return;
            }
            zzbwn zzbwnVar = source.zza;
            Intrinsics.e(zzbwnVar);
            while (j12 < PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH) {
                j12 += (long) (zzbwnVar.zzd - zzbwnVar.zzc);
                if (j12 >= j11) {
                    j12 = j11;
                    break;
                } else {
                    zzbwnVar = zzbwnVar.zzg;
                    Intrinsics.e(zzbwnVar);
                }
            }
            zzbvz zzbvzVar = this.zza;
            try {
                this.zzb.zzn(source, j12);
                Unit unit = Unit.f67061a;
                zzbvw.zza(zzbvz.zza, zzbvzVar);
                j11 -= j12;
            } catch (IOException e11) {
                throw e11;
            } finally {
                zzbvw.zza(zzbvz.zza, zzbvzVar);
            }
        }
    }
}
