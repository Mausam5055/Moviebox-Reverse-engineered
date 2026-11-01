package com.google.android.gms.iid;

import android.os.Binder;
import android.os.Process;
import android.util.Log;

/* JADX INFO: loaded from: classes3.dex */
public final class zzi extends Binder {
    private final zze zzbm;

    zzi(zze zzeVar) {
        this.zzbm = zzeVar;
    }

    public final void zzd(zzg zzgVar) {
        if (Binder.getCallingUid() != Process.myUid()) {
            throw new SecurityException("Binding only allowed within app");
        }
        Log.isLoggable("EnhancedIntentService", 3);
        Log.isLoggable("EnhancedIntentService", 3);
        this.zzbm.zzbb.execute(new zzj(this, zzgVar));
    }
}
