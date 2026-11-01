package com.transsion.transfer.wifi.broadcast;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.NetworkInfo;
import android.net.wifi.p2p.WifiP2pDevice;
import com.transsion.transfer.wifi.util.g;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Deprecated
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0007\u0018\u0000 \u00052\u00020\u0001:\u0001\u0005B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0006J#\u0010\f\u001a\u00020\u000b2\b\u0010\b\u001a\u0004\u0018\u00010\u00072\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/transsion/transfer/wifi/broadcast/WifiStateReceiver;", "Landroid/content/BroadcastReceiver;", "<init>", "()V", "", "a", "()Ljava/lang/String;", "Landroid/content/Context;", "context", "Landroid/content/Intent;", "intent", "", "onReceive", "(Landroid/content/Context;Landroid/content/Intent;)V", "Transfer_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class WifiStateReceiver extends BroadcastReceiver {
    private final String a() {
        String simpleName = WifiStateReceiver.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent != null ? intent.getAction() : null;
        if (action != null) {
            switch (action.hashCode()) {
                case -1875733435:
                    if (action.equals("android.net.wifi.WIFI_STATE_CHANGED")) {
                        int intExtra = intent.getIntExtra("wifi_state", 4);
                        if (intExtra == 1) {
                            g.h(g.f55970a, a() + " --> onReceive() --> Wi-Fi 已禁用，系统会发送这个广播。", false, 2, null);
                            break;
                        } else if (intExtra == 3) {
                            g.h(g.f55970a, a() + " --> onReceive() --> Wi-Fi 已启用，系统会发送这个广播。", false, 2, null);
                            break;
                        }
                    }
                    break;
                case -1772632330:
                    if (action.equals("android.net.wifi.p2p.CONNECTION_STATE_CHANGE")) {
                        NetworkInfo networkInfo = (NetworkInfo) intent.getParcelableExtra("networkInfo");
                        if (networkInfo != null && networkInfo.isConnected()) {
                            g.h(g.f55970a, a() + " --> onReceive() --> WIFI_P2P_CONNECTION_CHANGED_ACTION --> 当 P2P 连接建立时，系统会发送这个广播。", false, 2, null);
                        } else if ((networkInfo != null ? networkInfo.getState() : null) != NetworkInfo.State.DISCONNECTED) {
                            g.h(g.f55970a, a() + " --> onReceive() --> WIFI_P2P_CONNECTION_CHANGED_ACTION --> networkInfo = " + networkInfo, false, 2, null);
                        } else {
                            g.h(g.f55970a, a() + " --> onReceive() --> WIFI_P2P_CONNECTION_CHANGED_ACTION --> 当 P2P 连接断开时，系统会发送这个广播。", false, 2, null);
                        }
                        break;
                    }
                    break;
                case -1566767901:
                    if (action.equals("android.net.wifi.p2p.THIS_DEVICE_CHANGED")) {
                        WifiP2pDevice wifiP2pDevice = (WifiP2pDevice) intent.getParcelableExtra("wifiP2pDevice");
                        g.h(g.f55970a, a() + " --> onReceive() --> WIFI_P2P_THIS_DEVICE_CHANGED_ACTION --> 当本设备的 Wi-Fi P2P 配置（如设备名称、设备状态、支持的服务等）发生变化时，系统会发送这个广播。--> device = " + wifiP2pDevice, false, 2, null);
                        break;
                    }
                    break;
                case -1394739139:
                    if (action.equals("android.net.wifi.p2p.PEERS_CHANGED")) {
                        g.h(g.f55970a, a() + " --> onReceive() --> WIFI_P2P_PEERS_CHANGED_ACTION --> 当发现新的 P2P 设备或设备离开时，系统会发出这个广播。", false, 2, null);
                        break;
                    }
                    break;
                case 1695662461:
                    if (action.equals("android.net.wifi.p2p.STATE_CHANGED")) {
                        if (intent.getIntExtra("wifi_p2p_state", -1) != 2) {
                            g.h(g.f55970a, a() + " --> onReceive() --> WIFI_P2P_STATE_CHANGED_ACTION --> Wi-Fi P2P 不可用,系统会发送这个广播。", false, 2, null);
                        } else {
                            g.h(g.f55970a, a() + " --> onReceive() --> WIFI_P2P_STATE_CHANGED_ACTION --> Wi-Fi P2P 已启用,系统会发送这个广播。", false, 2, null);
                        }
                        break;
                    }
                    break;
            }
        }
    }
}
