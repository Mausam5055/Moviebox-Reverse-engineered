package com.transsion.api.gateway.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.transsion.api.gateway.GateWaySdk;
import com.transsion.api.gateway.utils.NetworkUtils;

/* JADX INFO: loaded from: classes.dex */
public class a extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if ("android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction()) && GateWaySdk.isOkhttpIntegrated()) {
            NetworkUtils.checkNetworkState();
        }
    }
}
