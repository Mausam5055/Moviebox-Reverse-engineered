package com.google.android.gms.iid;

import android.content.Intent;
import android.util.Log;

/* JADX INFO: loaded from: classes3.dex */
final class zzh implements Runnable {
    private final /* synthetic */ Intent zzbf;
    private final /* synthetic */ zzg zzbl;

    zzh(zzg zzgVar, Intent intent) {
        this.zzbl = zzgVar;
        this.zzbf = intent;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String action = this.zzbf.getAction();
        StringBuilder sb2 = new StringBuilder(String.valueOf(action).length() + 61);
        sb2.append("Service took too long to process intent: ");
        sb2.append(action);
        sb2.append(" App may get closed.");
        Log.w("EnhancedIntentService", sb2.toString());
        this.zzbl.finish();
    }
}
