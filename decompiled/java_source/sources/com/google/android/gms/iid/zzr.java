package com.google.android.gms.iid;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.common.util.concurrent.NamedThreadFactory;
import com.google.android.gms.tasks.Task;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: classes3.dex */
public final class zzr {
    private final ScheduledExecutorService zzce;
    private zzt zzcf;
    private int zzcg;
    private final Context zzl;

    public zzr(Context context) {
        this(context, com.google.android.gms.internal.gcm.zzg.zzaa().zze(1, new NamedThreadFactory("MessengerIpcClient"), 9));
    }

    private zzr(Context context, ScheduledExecutorService scheduledExecutorService) {
        this.zzcf = new zzt(this);
        this.zzcg = 1;
        this.zzl = context.getApplicationContext();
        this.zzce = scheduledExecutorService;
    }

    private final synchronized <T> Task<T> zzd(zzz<T> zzzVar) {
        try {
            if (Log.isLoggable("MessengerIpcClient", 3)) {
                String strValueOf = String.valueOf(zzzVar);
                StringBuilder sb2 = new StringBuilder(strValueOf.length() + 9);
                sb2.append("Queueing ");
                sb2.append(strValueOf);
            }
            if (!this.zzcf.zze(zzzVar)) {
                zzt zztVar = new zzt(this);
                this.zzcf = zztVar;
                zztVar.zze(zzzVar);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return zzzVar.zzcq.getTask();
    }

    private final synchronized int zzs() {
        int i11;
        i11 = this.zzcg;
        this.zzcg = i11 + 1;
        return i11;
    }

    public final Task<Bundle> zzd(int i11, Bundle bundle) {
        return zzd(new zzab(zzs(), 1, bundle));
    }
}
