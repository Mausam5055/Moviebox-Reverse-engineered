package com.transsion.ga;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.location.LocationManager;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.transsion.athena.config.data.model.anehat;
import com.transsion.athena.taaneh.aatnhe;

/* JADX INFO: loaded from: classes5.dex */
class h extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f44205a = true;

    h() {
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        if ("android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
            if (this.f44205a) {
                this.f44205a = false;
                return;
            }
            try {
                if (aatnhe.c(context) && anehat.c(context)) {
                    AthenaAnalytics.f0();
                    AthenaAnalytics.E();
                    return;
                }
                return;
            } catch (Exception e11) {
                e11.printStackTrace();
                return;
            }
        }
        if ("android.location.PROVIDERS_CHANGED".equals(action)) {
            if (com.transsion.athena.taaneh.anehat.a(context, "android.permission.ACCESS_FINE_LOCATION") || com.transsion.athena.taaneh.anehat.a(context, "android.permission.ACCESS_COARSE_LOCATION")) {
                try {
                    LocationManager locationManager = (LocationManager) context.getApplicationContext().getSystemService(RequestParameters.SUBRESOURCE_LOCATION);
                    if (!locationManager.isProviderEnabled("gps") && !locationManager.isProviderEnabled("network")) {
                        return;
                    }
                    AthenaAnalytics.K(9999).k(502, 3000L);
                } catch (Exception e12) {
                    e12.printStackTrace();
                }
            }
        }
    }
}
