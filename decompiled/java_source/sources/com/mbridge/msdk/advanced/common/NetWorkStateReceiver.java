package com.mbridge.msdk.advanced.common;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import android.util.Base64;
import android.webkit.WebView;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.mbsignalcommon.windvane.f;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class NetWorkStateReceiver extends BroadcastReceiver {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f34038c = "NetWorkStateReceiver";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private WebView f34039a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f34040b;

    public NetWorkStateReceiver(WebView webView) {
        this.f34039a = webView;
    }

    public void a() {
        this.f34039a = null;
    }

    public void a(WebView webView, int i11) {
        if (webView != null) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("netstat", i11);
                f.a().a(webView, "onNetstatChanged", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
            } catch (Throwable th2) {
                o0.a(f34038c, th2.getMessage());
            }
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager == null) {
                a(this.f34039a, 0);
                return;
            }
            if (!com.mbridge.msdk.foundation.same.a.f35354z) {
                a(this.f34039a, 0);
                return;
            }
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo == null) {
                a(this.f34039a, 0);
                return;
            }
            if (activeNetworkInfo.getState() != NetworkInfo.State.CONNECTING && activeNetworkInfo.getState() != NetworkInfo.State.DISCONNECTING) {
                if (activeNetworkInfo.getType() == 1) {
                    a(this.f34039a, 9);
                    return;
                }
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                if (telephonyManager == null) {
                    a(this.f34039a, 0);
                    return;
                }
                int networkType = telephonyManager.getNetworkType();
                this.f34040b = networkType;
                int iC = k0.c(networkType);
                this.f34040b = iC;
                a(this.f34039a, iC);
            }
        } catch (Throwable th2) {
            o0.a(f34038c, th2.getMessage());
        }
    }
}
