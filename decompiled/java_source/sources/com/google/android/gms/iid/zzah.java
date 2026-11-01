package com.google.android.gms.iid;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;

/* JADX INFO: loaded from: classes3.dex */
final class zzah extends BroadcastReceiver {
    private final /* synthetic */ zzaf zzdc;

    zzah(zzaf zzafVar) {
        this.zzdc = zzafVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        Log.isLoggable("InstanceID", 3);
        this.zzdc.zzh(intent);
    }
}
