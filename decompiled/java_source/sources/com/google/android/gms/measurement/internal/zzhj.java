package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.content.Intent;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes4.dex */
public final class zzhj {
    private final zza zza;

    public interface zza {
        void doStartService(Context context, Intent intent);
    }

    public zzhj(zza zzaVar) {
        Preconditions.checkNotNull(zzaVar);
        this.zza = zzaVar;
    }

    public final void zza(Context context, Intent intent) {
        zzgo zzgoVarZzj = zzhy.zza(context, null, null).zzj();
        if (intent == null) {
            zzgoVarZzj.zzu().zza("Receiver called with null intent");
            return;
        }
        String action = intent.getAction();
        zzgoVarZzj.zzp().zza("Local receiver got", action);
        if (!"com.google.android.gms.measurement.UPLOAD".equals(action)) {
            if ("com.android.vending.INSTALL_REFERRER".equals(action)) {
                zzgoVarZzj.zzu().zza("Install Referrer Broadcasts are deprecated");
            }
        } else {
            Intent className = new Intent().setClassName(context, "com.google.android.gms.measurement.AppMeasurementService");
            className.setAction("com.google.android.gms.measurement.UPLOAD");
            zzgoVarZzj.zzp().zza("Starting wakeful intent.");
            this.zza.doStartService(context, className);
        }
    }
}
