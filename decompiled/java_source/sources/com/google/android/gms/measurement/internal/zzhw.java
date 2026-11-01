package com.google.android.gms.measurement.internal;

import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;

/* JADX INFO: loaded from: classes4.dex */
final class zzhw<V> extends FutureTask<V> implements Comparable<zzhw<V>> {
    final boolean zza;
    private final long zzb;
    private final String zzc;
    private final /* synthetic */ zzhv zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzhw(zzhv zzhvVar, Runnable runnable, boolean z10, String str) {
        super(com.google.android.gms.internal.measurement.zzdg.zza().zza(runnable), null);
        this.zzd = zzhvVar;
        Preconditions.checkNotNull(str);
        long andIncrement = zzhv.zza.getAndIncrement();
        this.zzb = andIncrement;
        this.zzc = str;
        this.zza = z10;
        if (andIncrement == Long.MAX_VALUE) {
            zzhvVar.zzj().zzg().zza("Tasks index overflow");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzhw(zzhv zzhvVar, Callable<V> callable, boolean z10, String str) {
        super(com.google.android.gms.internal.measurement.zzdg.zza().zza(callable));
        this.zzd = zzhvVar;
        Preconditions.checkNotNull(str);
        long andIncrement = zzhv.zza.getAndIncrement();
        this.zzb = andIncrement;
        this.zzc = str;
        this.zza = z10;
        if (andIncrement == Long.MAX_VALUE) {
            zzhvVar.zzj().zzg().zza("Tasks index overflow");
        }
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(@NonNull Object obj) {
        zzhw zzhwVar = (zzhw) obj;
        boolean z10 = this.zza;
        if (z10 != zzhwVar.zza) {
            return z10 ? -1 : 1;
        }
        long j11 = this.zzb;
        long j12 = zzhwVar.zzb;
        if (j11 < j12) {
            return -1;
        }
        if (j11 > j12) {
            return 1;
        }
        this.zzd.zzj().zzn().zza("Two tasks share the same index. index", Long.valueOf(this.zzb));
        return 0;
    }

    @Override // java.util.concurrent.FutureTask
    protected final void setException(Throwable th2) {
        Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler;
        this.zzd.zzj().zzg().zza(this.zzc, th2);
        if ((th2 instanceof zzhu) && (defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler()) != null) {
            defaultUncaughtExceptionHandler.uncaughtException(Thread.currentThread(), th2);
        }
        super.setException(th2);
    }
}
