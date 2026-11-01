package com.google.android.gms.measurement.internal;

import android.database.sqlite.SQLiteException;
import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzpn;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes4.dex */
final class zziy implements Callable<List<zzno>> {
    private final /* synthetic */ zzo zza;
    private final /* synthetic */ Bundle zzb;
    private final /* synthetic */ zzic zzc;

    zziy(zzic zzicVar, zzo zzoVar, Bundle bundle) {
        this.zza = zzoVar;
        this.zzb = bundle;
        this.zzc = zzicVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ List<zzno> call() throws Exception {
        this.zzc.zza.zzr();
        zznv zznvVar = this.zzc.zza;
        zzo zzoVar = this.zza;
        Bundle bundle = this.zzb;
        zznvVar.zzl().zzt();
        if (!zzpn.zza() || !zznvVar.zze().zze(zzoVar.zza, zzbh.zzch) || zzoVar.zza == null) {
            return new ArrayList();
        }
        if (bundle != null) {
            int[] intArray = bundle.getIntArray("uriSources");
            long[] longArray = bundle.getLongArray("uriTimestamps");
            if (intArray != null) {
                if (longArray == null || longArray.length != intArray.length) {
                    zznvVar.zzj().zzg().zza("Uri sources and timestamps do not match");
                } else {
                    for (int i11 = 0; i11 < intArray.length; i11++) {
                        zzal zzalVarZzf = zznvVar.zzf();
                        String str = zzoVar.zza;
                        int i12 = intArray[i11];
                        long j11 = longArray[i11];
                        Preconditions.checkNotEmpty(str);
                        zzalVarZzf.zzt();
                        zzalVarZzf.zzal();
                        try {
                            int iDelete = zzalVarZzf.e_().delete("trigger_uris", "app_id=? and source=? and timestamp_millis<=?", new String[]{str, String.valueOf(i12), String.valueOf(j11)});
                            zzalVarZzf.zzj().zzp().zza("Pruned " + iDelete + " trigger URIs. appId, source, timestamp", str, Integer.valueOf(i12), Long.valueOf(j11));
                        } catch (SQLiteException e11) {
                            zzalVarZzf.zzj().zzg().zza("Error pruning trigger URIs. appId", zzgo.zza(str), e11);
                        }
                    }
                }
            }
        }
        return zznvVar.zzf().zzk(zzoVar.zza);
    }
}
