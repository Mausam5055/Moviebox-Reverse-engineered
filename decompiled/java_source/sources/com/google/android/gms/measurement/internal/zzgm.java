package com.google.android.gms.measurement.internal;

import android.content.Context;
import com.google.android.gms.common.internal.MethodInvocation;
import com.google.android.gms.common.internal.TelemetryData;
import com.google.android.gms.common.internal.TelemetryLogging;
import com.google.android.gms.common.internal.TelemetryLoggingClient;
import com.google.android.gms.common.internal.TelemetryLoggingOptions;
import com.google.android.gms.tasks.OnFailureListener;
import java.time.Duration;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes4.dex */
public final class zzgm {
    private static zzgm zza;
    private static final Duration zzb = Duration.ofMinutes(30);
    private final zzhy zzc;
    private final TelemetryLoggingClient zzd;
    private final AtomicLong zze = new AtomicLong(-1);

    private zzgm(Context context, zzhy zzhyVar) {
        this.zzd = TelemetryLogging.getClient(context, TelemetryLoggingOptions.builder().setApi("measurement:api").build());
        this.zzc = zzhyVar;
    }

    static zzgm zza(zzhy zzhyVar) {
        if (zza == null) {
            zza = new zzgm(zzhyVar.zza(), zzhyVar);
        }
        return zza;
    }

    public final synchronized void zza(int i11, int i12, long j11, long j12, int i13) {
        final long jElapsedRealtime = this.zzc.zzb().elapsedRealtime();
        if (this.zze.get() != -1 && jElapsedRealtime - this.zze.get() <= zzb.toMillis()) {
            return;
        }
        this.zzd.log(new TelemetryData(0, Arrays.asList(new MethodInvocation(36301, i12, 0, j11, j12, null, null, 0, i13)))).addOnFailureListener(new OnFailureListener() { // from class: com.google.android.gms.measurement.internal.zzgl
            @Override // com.google.android.gms.tasks.OnFailureListener
            public final void onFailure(Exception exc) {
                this.zza.zza(jElapsedRealtime, exc);
            }
        });
    }

    final /* synthetic */ void zza(long j11, Exception exc) {
        this.zze.set(j11);
    }
}
