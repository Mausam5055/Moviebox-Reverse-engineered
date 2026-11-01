package com.cloud.tmc.integration.networkenv;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import java.text.SimpleDateFormat;
import java.util.Date;

/* JADX INFO: loaded from: classes3.dex */
public class NetworkReceiver extends BroadcastReceiver {
    private static long ETHERNET_TIME = 0;
    private static int LAST_TYPE = -3;
    private static final int NETWORK_MOBILE = 1;
    private static final int NETWORK_NONE = -1;
    private static final int NETWORK_WIFI = 0;
    private static long NONE_TIME = 0;
    private static String TAG = "TAG";
    private static long WIFI_TIME;

    public static int getNetworkState(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getApplicationContext().getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
            if (activeNetworkInfo.getType() == 1) {
                return 0;
            }
            if (activeNetworkInfo.getType() == 0) {
                return 1;
            }
        }
        return -1;
    }

    public long getTime() {
        return Long.valueOf(new SimpleDateFormat("yyyyMMddhhmmss").format(new Date())).longValue();
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE")) {
            long time = getTime();
            if (time == WIFI_TIME || time == ETHERNET_TIME || time == NONE_TIME) {
                return;
            }
            int networkState = getNetworkState(context);
            if (networkState == 0 && LAST_TYPE != 0) {
                WIFI_TIME = time;
                LAST_TYPE = networkState;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("wifi：");
                sb2.append(time);
                return;
            }
            if (networkState == 1 && LAST_TYPE != 1) {
                ETHERNET_TIME = time;
                LAST_TYPE = networkState;
                StringBuilder sb3 = new StringBuilder();
                sb3.append("数据网络：");
                sb3.append(time);
                return;
            }
            if (networkState != -1 || LAST_TYPE == -1) {
                return;
            }
            NONE_TIME = time;
            LAST_TYPE = networkState;
            StringBuilder sb4 = new StringBuilder();
            sb4.append("无网络：");
            sb4.append(time);
        }
    }
}
