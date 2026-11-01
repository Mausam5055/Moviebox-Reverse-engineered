package com.google.android.gms.iid;

import android.util.Log;

/* JADX INFO: loaded from: classes3.dex */
final class zzj implements Runnable {
    private final /* synthetic */ zzg zzbn;
    private final /* synthetic */ zzi zzbo;

    zzj(zzi zziVar, zzg zzgVar) {
        this.zzbo = zziVar;
        this.zzbn = zzgVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Log.isLoggable("EnhancedIntentService", 3);
        this.zzbo.zzbm.handleIntent(this.zzbn.intent);
        this.zzbn.finish();
    }
}
