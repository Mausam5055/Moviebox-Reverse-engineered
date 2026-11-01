package com.google.android.gms.measurement.internal;

import android.app.ActivityManager;
import android.os.Bundle;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes4.dex */
final class zznj {
    final /* synthetic */ zznb zza;

    zznj(zznb zznbVar) {
        this.zza = zznbVar;
    }

    private final void zzb(long j11, boolean z10) {
        this.zza.zzt();
        if (this.zza.zzu.zzac()) {
            this.zza.zzk().zzk.zza(j11);
            this.zza.zzj().zzp().zza("Session started, time", Long.valueOf(this.zza.zzb().elapsedRealtime()));
            long j12 = j11 / 1000;
            this.zza.zzm().zza("auto", "_sid", Long.valueOf(j12), j11);
            this.zza.zzk().zzl.zza(j12);
            this.zza.zzk().zzg.zza(false);
            Bundle bundle = new Bundle();
            bundle.putLong("_sid", j12);
            this.zza.zzm().zza("auto", "_s", j11, bundle);
            String strZza = this.zza.zzk().zzq.zza();
            if (TextUtils.isEmpty(strZza)) {
                return;
            }
            Bundle bundle2 = new Bundle();
            bundle2.putString("_ffr", strZza);
            this.zza.zzm().zza("auto", "_ssr", j11, bundle2);
        }
    }

    final void zza() {
        this.zza.zzt();
        if (this.zza.zzk().zza(this.zza.zzb().currentTimeMillis())) {
            this.zza.zzk().zzg.zza(true);
            ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
            ActivityManager.getMyMemoryState(runningAppProcessInfo);
            if (runningAppProcessInfo.importance == 100) {
                this.zza.zzj().zzp().zza("Detected application was in foreground");
                zzb(this.zza.zzb().currentTimeMillis(), false);
            }
        }
    }

    final void zza(long j11, boolean z10) {
        this.zza.zzt();
        this.zza.zzab();
        if (this.zza.zzk().zza(j11)) {
            this.zza.zzk().zzg.zza(true);
            this.zza.zzg().zzag();
        }
        this.zza.zzk().zzk.zza(j11);
        if (this.zza.zzk().zzg.zza()) {
            zzb(j11, z10);
        }
    }
}
