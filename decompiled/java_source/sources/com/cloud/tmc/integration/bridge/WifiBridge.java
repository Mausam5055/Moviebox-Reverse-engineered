package com.cloud.tmc.integration.bridge;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.MacAddress;
import android.net.Network;
import android.net.NetworkInfo;
import android.net.NetworkRequest;
import android.net.wifi.ScanResult;
import android.net.wifi.SupplicantState;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.net.wifi.WifiNetworkSpecifier;
import android.os.Build;
import android.provider.Settings;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.AppContext;
import com.cloud.tmc.integration.structure.AppManager;
import com.cloud.tmc.kernel.annotation.ActionFilter;
import com.cloud.tmc.kernel.annotation.ThreadType;
import com.cloud.tmc.kernel.bridge.extension.BridgeCallback;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingCallback;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingNode;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingParam;
import com.cloud.tmc.kernel.executor.ExecutorType;
import com.cloud.tmc.kernel.extension.BridgeExtension;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.security.Permission;
import com.cloud.tmc.miniutils.util.NetworkUtils;
import com.cloud.tmc.miniutils.util.PermissionUtils;
import com.cloud.tmc.miniutils.util.Utils;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 82\u00020\u0001:\u000489:;B\u0005¢\u0006\u0002\u0010\u0002JU\u0010\u000b\u001a\u00020\f2\n\b\u0001\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\b\u0001\u0010\u000f\u001a\u0004\u0018\u00010\u00052\n\b\u0001\u0010\u0010\u001a\u0004\u0018\u00010\u00052\n\b\u0001\u0010\u0011\u001a\u0004\u0018\u00010\u00052\n\b\u0003\u0010\u0012\u001a\u0004\u0018\u00010\u00062\n\b\u0001\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0007¢\u0006\u0002\u0010\u0015J6\u0010\u0016\u001a\u00020\f2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u000f\u001a\u00020\u00052\b\u0010\u0010\u001a\u0004\u0018\u00010\u00052\b\u0010\u0011\u001a\u0004\u0018\u00010\u00052\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0003J6\u0010\u0019\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u00052\b\u0010\u0010\u001a\u0004\u0018\u00010\u00052\b\u0010\u0011\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0017\u001a\u00020\u00182\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0003J\u0014\u0010\u001a\u001a\u00020\f2\n\b\u0001\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007J \u0010\u001b\u001a\u00020\f2\n\b\u0001\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\b\u0001\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0007J*\u0010\u001c\u001a\u00020\u001d2\u000e\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020 \u0018\u00010\u001f2\u0006\u0010\u000f\u001a\u00020\u00052\b\u0010\u0010\u001a\u0004\u0018\u00010\u0005H\u0002J\u0012\u0010!\u001a\u00020\u001d2\b\u0010\"\u001a\u0004\u0018\u00010\u0005H\u0002J \u0010#\u001a\u00020\f2\n\b\u0001\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\b\u0001\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0007J\u0010\u0010$\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J \u0010%\u001a\u00020\f2\n\b\u0001\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\b\u0001\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0007J \u0010&\u001a\u00020\f2\n\b\u0001\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\b\u0001\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0007J\b\u0010'\u001a\u00020\fH\u0016J \u0010(\u001a\u00020\f2\n\b\u0001\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\b\u0001\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0007J\b\u0010)\u001a\u00020\fH\u0016J \u0010*\u001a\u00020\f2\n\b\u0001\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\b\u0001\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0007J\n\u0010+\u001a\u0004\u0018\u00010,H\u0016J\u0018\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u0002002\u0006\u00101\u001a\u00020\u001dH\u0002J\u001c\u00102\u001a\u00020\f2\u0006\u0010\u0017\u001a\u00020\u00182\n\u00103\u001a\u00060\nR\u00020\u0000H\u0002J \u00104\u001a\u00020\f2\n\b\u0001\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\b\u0001\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0007J \u00105\u001a\u00020\f2\n\b\u0001\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\b\u0001\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0007J\u0018\u00106\u001a\u00020\f2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u00103\u001a\u000207H\u0002R\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\b\u0012\u00060\bR\u00020\u00000\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\t\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\b\u0012\u00060\nR\u00020\u00000\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006<"}, d2 = {"Lcom/cloud/tmc/integration/bridge/WifiBridge;", "Lcom/cloud/tmc/kernel/extension/BridgeExtension;", "()V", "mWifiInitMap", "Ljava/util/concurrent/ConcurrentHashMap;", "", "", "mWifiListenerMap", "Lcom/cloud/tmc/integration/bridge/WifiBridge$WifiConnectListener;", "mWifiScanReceiverMap", "Lcom/cloud/tmc/integration/bridge/WifiBridge$WifiReceiver;", "connectWifi", "", "app", "Lcom/cloud/tmc/integration/structure/App;", "ssid", "bssid", "password", "maunal", "callback", "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;", "(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V", "connectWifiConfig", "context", "Landroid/content/Context;", "connectWifiV29", "destroyAppWifi", "getConnectedWifi", "getNetworkIdFromConfig", "", "configList", "", "Landroid/net/wifi/WifiConfiguration;", "getSecurity", "capabilities", "getWifiList", "isLocationOpen", "offGetWifiList", "offWifiConnected", "onFinalized", "onGetWifiList", "onInitialized", "onWifiConnected", "permit", "Lcom/cloud/tmc/kernel/security/Permission;", "processWifiInfo", "Lcom/google/gson/JsonObject;", "wifiInfo", "Landroid/net/wifi/WifiInfo;", "security", "registerWifiReceiver", "receiver", "startWifi", "stopWifi", "unregisterReceiver", "Landroid/content/BroadcastReceiver;", "Companion", "ConnectingEventReceiver", "WifiConnectListener", "WifiReceiver", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class WifiBridge implements BridgeExtension {
    public static final String ERROR_CONNECT_TIMEOUT = "connection timeout: W12003";
    public static final String ERROR_INVALID_SSID = "invalid ssid: W12008";
    public static final String ERROR_LOCATION_CLOSED = "gps not turned on: W12006";
    public static final String ERROR_LOCATION_PERMISSION = "not have location permission: W12007";
    public static final String ERROR_MULTI_LISTENER = "this app already has listener: W12004";
    public static final String ERROR_NO_INIT = "not init: W12000";
    public static final String ERROR_PASSWORD_INVALID = "password error Wi-Fi: W12002";
    public static final String ERROR_SYSTEM_ERROR = "system internal error: W12010";
    public static final String ERROR_WIFI_CLOSED = "wifi not turned on: W12005";
    public static final int SECURITY_EAP = 3;
    public static final int SECURITY_NONE = 0;
    public static final int SECURITY_PSK = 2;
    public static final int SECURITY_WEP = 1;
    public static final String TAG = "WifiBridge";
    public static final long WIFI_CONNECT_TIMEOUT = 30;
    private final ConcurrentHashMap<String, WifiConnectListener> mWifiListenerMap = new ConcurrentHashMap<>();
    private final ConcurrentHashMap<String, Boolean> mWifiInitMap = new ConcurrentHashMap<>();
    private final ConcurrentHashMap<String, WifiReceiver> mWifiScanReceiverMap = new ConcurrentHashMap<>();

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0004\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0018\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcom/cloud/tmc/integration/bridge/WifiBridge$ConnectingEventReceiver;", "Landroid/content/BroadcastReceiver;", "netId", "", "countDownLatch", "Ljava/util/concurrent/CountDownLatch;", "(Lcom/cloud/tmc/integration/bridge/WifiBridge;ILjava/util/concurrent/CountDownLatch;)V", "errorReason", "getErrorReason", "()I", "setErrorReason", "(I)V", "onReceive", "", "context", "Landroid/content/Context;", "intent", "Landroid/content/Intent;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public final class ConnectingEventReceiver extends BroadcastReceiver {
        private final CountDownLatch countDownLatch;
        private int errorReason;
        private final int netId;
        final /* synthetic */ WifiBridge this$0;

        public ConnectingEventReceiver(WifiBridge wifiBridge, int i11, CountDownLatch countDownLatch) {
            Intrinsics.h(countDownLatch, "countDownLatch");
            this.this$0 = wifiBridge;
            this.netId = i11;
            this.countDownLatch = countDownLatch;
            this.errorReason = -1;
        }

        public final int getErrorReason() {
            return this.errorReason;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Intrinsics.h(context, "context");
            Intrinsics.h(intent, "intent");
            try {
                if (this.countDownLatch.getCount() < 1) {
                    return;
                }
                if (intent.getIntExtra("supplicantError", -1) == 1) {
                    this.errorReason = 1;
                    this.countDownLatch.countDown();
                    return;
                }
                Object systemService = context.getApplicationContext().getSystemService("wifi");
                Intrinsics.f(systemService, "null cannot be cast to non-null type android.net.wifi.WifiManager");
                WifiManager wifiManager = (WifiManager) systemService;
                NetworkInfo networkInfo = (NetworkInfo) intent.getParcelableExtra("networkInfo");
                if ((networkInfo != null ? networkInfo.getState() : null) == NetworkInfo.State.CONNECTED) {
                    WifiInfo connectionInfo = wifiManager.getConnectionInfo();
                    if (connectionInfo.getNetworkId() == this.netId && connectionInfo.getSupplicantState() == SupplicantState.COMPLETED) {
                        this.countDownLatch.countDown();
                        this.errorReason = 0;
                    }
                }
            } catch (Throwable th2) {
                TmcLogger.e(WifiBridge.TAG, th2);
            }
        }

        public final void setErrorReason(int i11) {
            this.errorReason = i11;
        }
    }

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0004\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\u0012\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0017J\b\u0010\u0011\u001a\u00020\u000eH\u0016R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcom/cloud/tmc/integration/bridge/WifiBridge$WifiConnectListener;", "Lcom/cloud/tmc/miniutils/util/NetworkUtils$OnNetworkStatusChangedListener;", "wifiManager", "Landroid/net/wifi/WifiManager;", "appId", "", "callback", "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;", "(Lcom/cloud/tmc/integration/bridge/WifiBridge;Landroid/net/wifi/WifiManager;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V", "getAppId", "()Ljava/lang/String;", "getCallback", "()Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;", "onConnected", "", NetworkBridge.KEY_NETWORK_TYPE, "Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkType;", "onDisconnected", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public final class WifiConnectListener implements NetworkUtils.OnNetworkStatusChangedListener {
        private final String appId;
        private final BridgeCallback callback;
        final /* synthetic */ WifiBridge this$0;
        private final WifiManager wifiManager;

        public WifiConnectListener(WifiBridge wifiBridge, WifiManager wifiManager, String appId, BridgeCallback bridgeCallback) {
            Intrinsics.h(wifiManager, "wifiManager");
            Intrinsics.h(appId, "appId");
            this.this$0 = wifiBridge;
            this.wifiManager = wifiManager;
            this.appId = appId;
            this.callback = bridgeCallback;
        }

        public final String getAppId() {
            return this.appId;
        }

        public final BridgeCallback getCallback() {
            return this.callback;
        }

        @Override // com.cloud.tmc.miniutils.util.NetworkUtils.OnNetworkStatusChangedListener
        @SuppressLint({"MissingPermission"})
        public void onConnected(NetworkUtils.NetworkType networkType) {
            int security;
            if (networkType == NetworkUtils.NetworkType.NETWORK_WIFI) {
                try {
                    if (((AppManager) TmcProxy.get(AppManager.class)).findApp(this.appId) != null) {
                        WifiBridge wifiBridge = this.this$0;
                        JsonObject jsonObject = new JsonObject();
                        WifiInfo wifiInfo = this.wifiManager.getConnectionInfo();
                        Iterator<ScanResult> it = this.wifiManager.getScanResults().iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                security = 0;
                                break;
                            }
                            ScanResult next = it.next();
                            if (Intrinsics.c("\"" + next.SSID + "\"", wifiInfo.getSSID()) && Intrinsics.c(next.BSSID, wifiInfo.getBSSID())) {
                                security = wifiBridge.getSecurity(next.capabilities);
                                break;
                            }
                        }
                        Intrinsics.g(wifiInfo, "wifiInfo");
                        jsonObject.add("wifiInfo", wifiBridge.processWifiInfo(wifiInfo, security));
                        BridgeCallback bridgeCallback = this.callback;
                        if (bridgeCallback != null) {
                            bridgeCallback.sendSuccessResponse(jsonObject);
                        }
                    }
                } catch (Throwable th2) {
                    TmcLogger.e(WifiBridge.TAG, th2);
                }
            }
        }

        @Override // com.cloud.tmc.miniutils.util.NetworkUtils.OnNetworkStatusChangedListener
        public void onDisconnected() {
        }
    }

    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\b\u0086\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u0018\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0016\u0010\u0011\u001a\u00020\f2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013H\u0002R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0015"}, d2 = {"Lcom/cloud/tmc/integration/bridge/WifiBridge$WifiReceiver;", "Landroid/content/BroadcastReceiver;", "appId", "", "callback", "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;", "(Lcom/cloud/tmc/integration/bridge/WifiBridge;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V", "getAppId", "()Ljava/lang/String;", "getCallback", "()Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;", "onReceive", "", "context", "Landroid/content/Context;", "intent", "Landroid/content/Intent;", "updateResult", "scanResults", "", "Landroid/net/wifi/ScanResult;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public final class WifiReceiver extends BroadcastReceiver {
        private final String appId;
        private final BridgeCallback callback;
        final /* synthetic */ WifiBridge this$0;

        public WifiReceiver(WifiBridge wifiBridge, String appId, BridgeCallback bridgeCallback) {
            Intrinsics.h(appId, "appId");
            this.this$0 = wifiBridge;
            this.appId = appId;
            this.callback = bridgeCallback;
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        private final void updateResult(List<ScanResult> scanResults) {
            BridgeCallback bridgeCallback;
            JsonObject jsonObject = new JsonObject();
            JsonArray jsonArray = new JsonArray();
            for (ScanResult scanResult : scanResults) {
                JsonObject jsonObject2 = new JsonObject();
                jsonObject2.addProperty("frequency", Integer.valueOf(scanResult.frequency));
                jsonObject2.addProperty("SSID", scanResult.SSID);
                jsonObject2.addProperty("BSSID", scanResult.BSSID);
                jsonObject2.addProperty("secure", Boolean.valueOf(this.this$0.getSecurity(scanResult.capabilities) != 0));
                jsonObject2.addProperty("signalStrength", Integer.valueOf(WifiManager.calculateSignalLevel(scanResult.level, 100)));
                jsonArray.add(jsonObject2);
            }
            jsonObject.add("wifiList", jsonArray);
            if (((WifiReceiver) this.this$0.mWifiScanReceiverMap.get(this.appId)) == null || (bridgeCallback = this.callback) == null) {
                return;
            }
            bridgeCallback.sendSuccessResponse(jsonObject);
        }

        public final String getAppId() {
            return this.appId;
        }

        public final BridgeCallback getCallback() {
            return this.callback;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Intrinsics.h(context, "context");
            Intrinsics.h(intent, "intent");
            try {
                Object systemService = context.getApplicationContext().getSystemService("wifi");
                Intrinsics.f(systemService, "null cannot be cast to non-null type android.net.wifi.WifiManager");
                List<ScanResult> scanResults = ((WifiManager) systemService).getScanResults();
                context.unregisterReceiver(this);
                Intrinsics.g(scanResults, "scanResults");
                updateResult(scanResults);
            } catch (Throwable th2) {
                TmcLogger.e(WifiBridge.TAG, th2);
                List<ScanResult> listEmptyList = Collections.emptyList();
                Intrinsics.g(listEmptyList, "emptyList()");
                updateResult(listEmptyList);
            }
        }
    }

    public static /* synthetic */ void connectWifi$default(WifiBridge wifiBridge, App app, String str, String str2, String str3, Boolean bool, BridgeCallback bridgeCallback, int i11, Object obj) {
        if ((i11 & 16) != 0) {
            bool = Boolean.FALSE;
        }
        wifiBridge.connectWifi(app, str, str2, str3, bool, bridgeCallback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"MissingPermission", "NewApi"})
    public final void connectWifiConfig(Context context, String ssid, String bssid, String password, BridgeCallback callback) throws InterruptedException {
        boolean z10;
        Object systemService = context.getApplicationContext().getSystemService("wifi");
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.net.wifi.WifiManager");
        WifiManager wifiManager = (WifiManager) systemService;
        int networkIdFromConfig = getNetworkIdFromConfig(wifiManager.getConfiguredNetworks(), ssid, bssid);
        boolean zEnableNetwork = false;
        if (networkIdFromConfig < 0) {
            WifiConfiguration wifiConfiguration = new WifiConfiguration();
            wifiConfiguration.SSID = "\"" + ssid + "\"";
            wifiConfiguration.BSSID = bssid;
            wifiConfiguration.status = 2;
            if (password == null || password.length() == 0) {
                wifiConfiguration.allowedKeyManagement.set(0);
            } else {
                wifiConfiguration.preSharedKey = "\"" + password + "\"";
                wifiConfiguration.hiddenSSID = true;
                wifiConfiguration.allowedAuthAlgorithms.set(0);
                wifiConfiguration.allowedGroupCiphers.set(2);
                wifiConfiguration.allowedKeyManagement.set(1);
                wifiConfiguration.allowedPairwiseCiphers.set(1);
                wifiConfiguration.allowedGroupCiphers.set(3);
                wifiConfiguration.allowedPairwiseCiphers.set(2);
            }
            networkIdFromConfig = wifiManager.addNetwork(wifiConfiguration);
        }
        CountDownLatch countDownLatch = new CountDownLatch(1);
        ConnectingEventReceiver connectingEventReceiver = new ConnectingEventReceiver(this, networkIdFromConfig, countDownLatch);
        if (networkIdFromConfig >= 0) {
            context.registerReceiver(connectingEventReceiver, new IntentFilter("android.net.wifi.STATE_CHANGE"));
            zEnableNetwork = wifiManager.enableNetwork(networkIdFromConfig, true);
            z10 = true;
        } else {
            z10 = false;
        }
        if (!zEnableNetwork) {
            if (z10) {
                unregisterReceiver(context, connectingEventReceiver);
            }
            TmcLogger.e(TAG, "connect wifi failed!");
            if (callback != null) {
                JsonObject jsonObject = new JsonObject();
                jsonObject.addProperty(NativeComponentConstants.KEY_COMPONENT_ERRCODE, (Number) 12010);
                jsonObject.addProperty("errMsg", ERROR_SYSTEM_ERROR);
                callback.sendFailResponse(jsonObject);
                return;
            }
            return;
        }
        countDownLatch.await(30L, TimeUnit.SECONDS);
        int errorReason = connectingEventReceiver.getErrorReason();
        if (errorReason != 0) {
            if (errorReason != 1) {
                if (callback != null) {
                    JsonObject jsonObject2 = new JsonObject();
                    jsonObject2.addProperty(NativeComponentConstants.KEY_COMPONENT_ERRCODE, (Number) 12010);
                    jsonObject2.addProperty("errMsg", ERROR_SYSTEM_ERROR);
                    callback.sendFailResponse(jsonObject2);
                }
            } else if (callback != null) {
                JsonObject jsonObject3 = new JsonObject();
                jsonObject3.addProperty(NativeComponentConstants.KEY_COMPONENT_ERRCODE, (Number) 12002);
                jsonObject3.addProperty("errMsg", ERROR_PASSWORD_INVALID);
                callback.sendFailResponse(jsonObject3);
            }
        } else if (callback != null) {
            callback.sendSuccessResponse();
        }
        unregisterReceiver(context, connectingEventReceiver);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void connectWifiV29(String ssid, String bssid, String password, Context context, final BridgeCallback callback) {
        WifiNetworkSpecifier.Builder ssid2 = y.a().setSsid(ssid);
        Intrinsics.g(ssid2, "Builder().setSsid(ssid)");
        if (bssid != null && bssid.length() != 0) {
            ssid2.setBssid(MacAddress.fromString(bssid));
        }
        if (password != null && password.length() != 0) {
            ssid2.setWpa2Passphrase(password);
        }
        WifiNetworkSpecifier wifiNetworkSpecifierBuild = ssid2.build();
        Intrinsics.g(wifiNetworkSpecifierBuild, "specifierBuilder.build()");
        NetworkRequest networkRequestBuild = new NetworkRequest.Builder().addTransportType(1).removeCapability(12).setNetworkSpecifier(w.a(wifiNetworkSpecifierBuild)).build();
        Object systemService = context.getApplicationContext().getSystemService("connectivity");
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
        final ConnectivityManager connectivityManager = (ConnectivityManager) systemService;
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        try {
            connectivityManager.requestNetwork(networkRequestBuild, new ConnectivityManager.NetworkCallback() { // from class: com.cloud.tmc.integration.bridge.WifiBridge$connectWifiV29$networkCallback$1
                @Override // android.net.ConnectivityManager.NetworkCallback
                public void onAvailable(Network network) {
                    Intrinsics.h(network, "network");
                    super.onAvailable(network);
                    booleanRef.element = true;
                    connectivityManager.bindProcessToNetwork(network);
                    BridgeCallback bridgeCallback = callback;
                    if (bridgeCallback != null) {
                        bridgeCallback.sendSuccessResponse();
                    }
                    if (countDownLatch.getCount() > 0) {
                        countDownLatch.countDown();
                    }
                }

                @Override // android.net.ConnectivityManager.NetworkCallback
                public void onUnavailable() {
                    super.onUnavailable();
                    booleanRef.element = true;
                    BridgeCallback bridgeCallback = callback;
                    if (bridgeCallback != null) {
                        JsonObject jsonObject = new JsonObject();
                        jsonObject.addProperty(NativeComponentConstants.KEY_COMPONENT_ERRCODE, (Number) 12010);
                        jsonObject.addProperty("errMsg", WifiBridge.ERROR_SYSTEM_ERROR);
                        bridgeCallback.sendFailResponse(jsonObject);
                    }
                    if (countDownLatch.getCount() > 0) {
                        countDownLatch.countDown();
                    }
                }
            });
            countDownLatch.await(30L, TimeUnit.SECONDS);
            if (booleanRef.element || callback == null) {
                return;
            }
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty(NativeComponentConstants.KEY_COMPONENT_ERRCODE, (Number) 12003);
            jsonObject.addProperty("errMsg", ERROR_CONNECT_TIMEOUT);
            callback.sendFailResponse(jsonObject);
        } catch (Throwable th2) {
            if (callback != null) {
                callback.sendFailResponse();
            }
            TmcLogger.e(TAG, th2);
        }
    }

    private final int getNetworkIdFromConfig(List<? extends WifiConfiguration> configList, String ssid, String bssid) {
        List<? extends WifiConfiguration> list = configList;
        if (list != null && !list.isEmpty()) {
            String str = "\"" + ssid + "\"";
            for (WifiConfiguration wifiConfiguration : configList) {
                if (Intrinsics.c(wifiConfiguration.SSID, str) && (bssid == null || bssid.length() == 0 || Intrinsics.c(bssid, wifiConfiguration.BSSID))) {
                    return wifiConfiguration.networkId;
                }
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int getSecurity(String capabilities) {
        if (capabilities == null || capabilities.length() == 0) {
            return 0;
        }
        if (StringsKt.a0(capabilities, "WPA", true)) {
            return 2;
        }
        if (StringsKt.a0(capabilities, "WEP", true)) {
            return 1;
        }
        return StringsKt.a0(capabilities, "EAP", true) ? 3 : 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isLocationOpen(Context context) {
        try {
            return Settings.Secure.getInt(context.getContentResolver(), "location_mode", 0) != 0;
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final JsonObject processWifiInfo(WifiInfo wifiInfo, int security) {
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("frequency", Integer.valueOf(wifiInfo.getFrequency()));
        String ssid = wifiInfo.getSSID();
        Intrinsics.g(ssid, "wifiInfo.ssid");
        String strSubstring = ssid.substring(1, wifiInfo.getSSID().length() - 1);
        Intrinsics.g(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        jsonObject.addProperty("SSID", strSubstring);
        jsonObject.addProperty("BSSID", wifiInfo.getBSSID());
        jsonObject.addProperty("security", Boolean.valueOf(security != 0));
        jsonObject.addProperty("signalStrength", Integer.valueOf(WifiManager.calculateSignalLevel(wifiInfo.getRssi(), 100)));
        return jsonObject;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void registerWifiReceiver(Context context, WifiReceiver receiver) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.wifi.SCAN_RESULTS");
        context.registerReceiver(receiver, intentFilter);
    }

    private final void unregisterReceiver(Context context, BroadcastReceiver receiver) {
        try {
            context.unregisterReceiver(receiver);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
        }
    }

    @Override // com.cloud.tmc.kernel.extension.BridgeExtension
    public /* synthetic */ void callbackFail(BridgeCallback bridgeCallback, String str, Boolean bool) {
        com.cloud.tmc.kernel.extension.a.a(this, bridgeCallback, str, bool);
    }

    @ActionFilter
    @ThreadType(ExecutorType.NORMAL)
    public final void connectWifi(@BindingNode(App.class) App app, @BindingParam({"SSID"}) final String ssid, @BindingParam({"BSSID"}) final String bssid, @BindingParam({"password"}) final String password, @BindingParam({"maunal"}) Boolean maunal, @BindingCallback final BridgeCallback callback) {
        String appId;
        if (app == null || (appId = app.getAppId()) == null || appId.length() == 0) {
            if (callback != null) {
                callback.sendFailResponse();
                return;
            }
            return;
        }
        AppContext appContext = app.getAppContext();
        final Context context = appContext != null ? appContext.getContext() : null;
        if (context == null) {
            if (callback != null) {
                callback.sendFailResponse();
                return;
            }
            return;
        }
        try {
            if (ssid != null) {
                try {
                    if (ssid.length() != 0) {
                        Boolean bool = this.mWifiInitMap.get(app.getAppId());
                        Boolean bool2 = Boolean.TRUE;
                        if (!Intrinsics.c(bool, bool2)) {
                            if (callback != null) {
                                JsonObject jsonObject = new JsonObject();
                                jsonObject.addProperty(NativeComponentConstants.KEY_COMPONENT_ERRCODE, (Number) 12000);
                                jsonObject.addProperty("errMsg", ERROR_NO_INIT);
                                callback.sendFailResponse(jsonObject);
                                return;
                            }
                            return;
                        }
                        Object systemService = context.getApplicationContext().getSystemService("wifi");
                        Intrinsics.f(systemService, "null cannot be cast to non-null type android.net.wifi.WifiManager");
                        final WifiManager wifiManager = (WifiManager) systemService;
                        if (!wifiManager.isWifiEnabled()) {
                            if (callback != null) {
                                JsonObject jsonObject2 = new JsonObject();
                                jsonObject2.addProperty(NativeComponentConstants.KEY_COMPONENT_ERRCODE, (Number) 12005);
                                jsonObject2.addProperty("errMsg", ERROR_WIFI_CLOSED);
                                callback.sendFailResponse(jsonObject2);
                                return;
                            }
                            return;
                        }
                        if (!Intrinsics.c(maunal, bool2)) {
                            PermissionUtils.permissionGroup("LOCATION").callback(new PermissionUtils.SimpleCallback() { // from class: com.cloud.tmc.integration.bridge.WifiBridge.connectWifi.4
                                @Override // com.cloud.tmc.miniutils.util.PermissionUtils.SimpleCallback
                                public void onDenied() {
                                    BridgeCallback bridgeCallback = callback;
                                    if (bridgeCallback != null) {
                                        JsonObject jsonObject3 = new JsonObject();
                                        jsonObject3.addProperty(NativeComponentConstants.KEY_COMPONENT_ERRCODE, (Number) 12007);
                                        jsonObject3.addProperty("errMsg", WifiBridge.ERROR_LOCATION_PERMISSION);
                                        bridgeCallback.sendFailResponse(jsonObject3);
                                    }
                                }

                                @Override // com.cloud.tmc.miniutils.util.PermissionUtils.SimpleCallback
                                @SuppressLint({"MissingPermission"})
                                public void onGranted() throws InterruptedException {
                                    WifiInfo connectionInfo = wifiManager.getConnectionInfo();
                                    if (connectionInfo != null) {
                                        String str = ssid;
                                        String str2 = bssid;
                                        BridgeCallback bridgeCallback = callback;
                                        String ssid2 = connectionInfo.getSSID();
                                        String bssid2 = connectionInfo.getBSSID();
                                        if (Intrinsics.c(str, ssid2) && (str2 == null || str2.length() == 0 || Intrinsics.c(str2, bssid2))) {
                                            if (bridgeCallback != null) {
                                                bridgeCallback.sendSuccessResponse();
                                                return;
                                            }
                                            return;
                                        }
                                    }
                                    if (Build.VERSION.SDK_INT >= 29) {
                                        this.connectWifiV29(ssid, bssid, password, context, callback);
                                    } else {
                                        this.connectWifiConfig(context, ssid, bssid, password, callback);
                                    }
                                }
                            }).request();
                            return;
                        }
                        context.startActivity(new Intent("android.settings.WIFI_SETTINGS"));
                        if (callback != null) {
                            callback.sendSuccessResponse();
                            return;
                        }
                        return;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    TmcLogger.e(TAG, th);
                    if (callback != null) {
                        JsonObject jsonObject3 = new JsonObject();
                        jsonObject3.addProperty(NativeComponentConstants.KEY_COMPONENT_ERRCODE, (Number) 12010);
                        jsonObject3.addProperty("errMsg", ERROR_SYSTEM_ERROR);
                        callback.sendFailResponse(jsonObject3);
                        return;
                    }
                    return;
                }
            }
            if (callback != null) {
                JsonObject jsonObject4 = new JsonObject();
                jsonObject4.addProperty(NativeComponentConstants.KEY_COMPONENT_ERRCODE, (Number) 12008);
                jsonObject4.addProperty("errMsg", ERROR_INVALID_SSID);
                callback.sendFailResponse(jsonObject4);
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    @ActionFilter
    public final void destroyAppWifi(@BindingNode(App.class) App app) {
        String appId;
        if (app == null || (appId = app.getAppId()) == null || appId.length() == 0) {
            return;
        }
        try {
            this.mWifiInitMap.remove(app.getAppId());
            WifiConnectListener wifiConnectListenerRemove = this.mWifiListenerMap.remove(app.getAppId());
            if (wifiConnectListenerRemove != null) {
                TmcLogger.e(TAG, "unregisterNetworkStatusChangedListener = " + app.getAppId());
                BridgeCallback callback = wifiConnectListenerRemove.getCallback();
                if (callback != null) {
                    callback.close();
                }
                NetworkUtils.unregisterNetworkStatusChangedListener(wifiConnectListenerRemove);
            }
            WifiReceiver wifiReceiverRemove = this.mWifiScanReceiverMap.remove(app.getAppId());
            if (wifiReceiverRemove != null) {
                TmcLogger.e(TAG, "unRegisterWifiReceiver = " + app.getAppId());
                Context applicationContext = Utils.getApp().getApplicationContext();
                Intrinsics.g(applicationContext, "getApp().applicationContext");
                unregisterReceiver(applicationContext, wifiReceiverRemove);
                BridgeCallback callback2 = wifiReceiverRemove.getCallback();
                if (callback2 != null) {
                    callback2.close();
                }
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.NORMAL)
    public final void getConnectedWifi(@BindingNode(App.class) App app, @BindingCallback final BridgeCallback callback) {
        String appId;
        if (app == null || (appId = app.getAppId()) == null || appId.length() == 0) {
            if (callback != null) {
                callback.sendFailResponse();
                return;
            }
            return;
        }
        AppContext appContext = app.getAppContext();
        if (appContext == null) {
            if (callback != null) {
                callback.sendFailResponse();
                return;
            }
            return;
        }
        final Context context = appContext.getContext();
        if (context == null) {
            if (callback != null) {
                callback.sendFailResponse();
                return;
            }
            return;
        }
        try {
            if (!Intrinsics.c(this.mWifiInitMap.get(app.getAppId()), Boolean.TRUE)) {
                if (callback != null) {
                    JsonObject jsonObject = new JsonObject();
                    jsonObject.addProperty(NativeComponentConstants.KEY_COMPONENT_ERRCODE, (Number) 12000);
                    jsonObject.addProperty("errMsg", ERROR_NO_INIT);
                    callback.sendFailResponse(jsonObject);
                    return;
                }
                return;
            }
            Object systemService = context.getApplicationContext().getSystemService("wifi");
            Intrinsics.f(systemService, "null cannot be cast to non-null type android.net.wifi.WifiManager");
            final WifiManager wifiManager = (WifiManager) systemService;
            if (wifiManager.isWifiEnabled()) {
                PermissionUtils.permissionGroup("LOCATION").callback(new PermissionUtils.SimpleCallback() { // from class: com.cloud.tmc.integration.bridge.WifiBridge.getConnectedWifi.3
                    @Override // com.cloud.tmc.miniutils.util.PermissionUtils.SimpleCallback
                    public void onDenied() {
                        BridgeCallback bridgeCallback = callback;
                        if (bridgeCallback != null) {
                            JsonObject jsonObject2 = new JsonObject();
                            jsonObject2.addProperty(NativeComponentConstants.KEY_COMPONENT_ERRCODE, (Number) 12007);
                            jsonObject2.addProperty("errMsg", WifiBridge.ERROR_LOCATION_PERMISSION);
                            bridgeCallback.sendFailResponse(jsonObject2);
                        }
                    }

                    @Override // com.cloud.tmc.miniutils.util.PermissionUtils.SimpleCallback
                    @SuppressLint({"MissingPermission"})
                    public void onGranted() {
                        int security;
                        WifiBridge wifiBridge = WifiBridge.this;
                        Context context2 = context;
                        Intrinsics.g(context2, "context");
                        if (!wifiBridge.isLocationOpen(context2)) {
                            BridgeCallback bridgeCallback = callback;
                            if (bridgeCallback != null) {
                                JsonObject jsonObject2 = new JsonObject();
                                jsonObject2.addProperty(NativeComponentConstants.KEY_COMPONENT_ERRCODE, (Number) 12006);
                                jsonObject2.addProperty("errMsg", WifiBridge.ERROR_LOCATION_CLOSED);
                                bridgeCallback.sendFailResponse(jsonObject2);
                                return;
                            }
                            return;
                        }
                        JsonObject jsonObject3 = new JsonObject();
                        WifiInfo wifiInfo = wifiManager.getConnectionInfo();
                        Iterator<ScanResult> it = wifiManager.getScanResults().iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                security = 0;
                                break;
                            }
                            ScanResult next = it.next();
                            if (Intrinsics.c("\"" + next.SSID + "\"", wifiInfo.getSSID()) && Intrinsics.c(next.BSSID, wifiInfo.getBSSID())) {
                                security = WifiBridge.this.getSecurity(next.capabilities);
                                break;
                            }
                        }
                        WifiBridge wifiBridge2 = WifiBridge.this;
                        Intrinsics.g(wifiInfo, "wifiInfo");
                        jsonObject3.add("wifi", wifiBridge2.processWifiInfo(wifiInfo, security));
                        TmcLogger.e(WifiBridge.TAG, "get connect info = " + jsonObject3);
                        BridgeCallback bridgeCallback2 = callback;
                        if (bridgeCallback2 != null) {
                            bridgeCallback2.sendSuccessResponse(jsonObject3);
                        }
                    }
                }).request();
            } else if (callback != null) {
                JsonObject jsonObject2 = new JsonObject();
                jsonObject2.addProperty(NativeComponentConstants.KEY_COMPONENT_ERRCODE, (Number) 12005);
                jsonObject2.addProperty("errMsg", ERROR_WIFI_CLOSED);
                callback.sendFailResponse(jsonObject2);
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
            if (callback != null) {
                callback.sendFailResponse();
            }
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.NORMAL)
    public final void getWifiList(@BindingNode(App.class) App app, @BindingCallback final BridgeCallback callback) {
        String appId;
        if (app == null || (appId = app.getAppId()) == null || appId.length() == 0) {
            if (callback != null) {
                callback.sendFailResponse();
                return;
            }
            return;
        }
        AppContext appContext = app.getAppContext();
        if (appContext == null) {
            if (callback != null) {
                callback.sendFailResponse();
                return;
            }
            return;
        }
        final Context context = appContext.getContext();
        if (context == null) {
            if (callback != null) {
                callback.sendFailResponse();
                return;
            }
            return;
        }
        try {
            if (!Intrinsics.c(this.mWifiInitMap.get(app.getAppId()), Boolean.TRUE)) {
                if (callback != null) {
                    JsonObject jsonObject = new JsonObject();
                    jsonObject.addProperty(NativeComponentConstants.KEY_COMPONENT_ERRCODE, (Number) 12000);
                    jsonObject.addProperty("errMsg", ERROR_NO_INIT);
                    callback.sendFailResponse(jsonObject);
                    return;
                }
                return;
            }
            final WifiReceiver wifiReceiver = this.mWifiScanReceiverMap.get(app.getAppId());
            if (wifiReceiver == null) {
                TmcLogger.e(TAG, "please onGetList before this function!");
                return;
            }
            Object systemService = context.getApplicationContext().getSystemService("wifi");
            Intrinsics.f(systemService, "null cannot be cast to non-null type android.net.wifi.WifiManager");
            final WifiManager wifiManager = (WifiManager) systemService;
            if (wifiManager.isWifiEnabled()) {
                PermissionUtils.permissionGroup("LOCATION").callback(new PermissionUtils.SimpleCallback() { // from class: com.cloud.tmc.integration.bridge.WifiBridge.getWifiList.4
                    @Override // com.cloud.tmc.miniutils.util.PermissionUtils.SimpleCallback
                    public void onDenied() {
                        BridgeCallback bridgeCallback = callback;
                        if (bridgeCallback != null) {
                            JsonObject jsonObject2 = new JsonObject();
                            jsonObject2.addProperty(NativeComponentConstants.KEY_COMPONENT_ERRCODE, (Number) 12007);
                            jsonObject2.addProperty("errMsg", WifiBridge.ERROR_LOCATION_PERMISSION);
                            bridgeCallback.sendFailResponse(jsonObject2);
                        }
                    }

                    @Override // com.cloud.tmc.miniutils.util.PermissionUtils.SimpleCallback
                    public void onGranted() {
                        WifiBridge wifiBridge = WifiBridge.this;
                        Context context2 = context;
                        Intrinsics.g(context2, "context");
                        if (!wifiBridge.isLocationOpen(context2)) {
                            BridgeCallback bridgeCallback = callback;
                            if (bridgeCallback != null) {
                                JsonObject jsonObject2 = new JsonObject();
                                jsonObject2.addProperty(NativeComponentConstants.KEY_COMPONENT_ERRCODE, (Number) 12006);
                                jsonObject2.addProperty("errMsg", WifiBridge.ERROR_LOCATION_CLOSED);
                                bridgeCallback.sendFailResponse(jsonObject2);
                                return;
                            }
                            return;
                        }
                        WifiBridge wifiBridge2 = WifiBridge.this;
                        Context context3 = context;
                        Intrinsics.g(context3, "context");
                        wifiBridge2.registerWifiReceiver(context3, wifiReceiver);
                        if (wifiManager.startScan()) {
                            BridgeCallback bridgeCallback2 = callback;
                            if (bridgeCallback2 != null) {
                                bridgeCallback2.sendSuccessResponse();
                                return;
                            }
                            return;
                        }
                        BridgeCallback bridgeCallback3 = callback;
                        if (bridgeCallback3 != null) {
                            bridgeCallback3.sendFailResponse();
                        }
                    }
                }).request();
            } else if (callback != null) {
                JsonObject jsonObject2 = new JsonObject();
                jsonObject2.addProperty(NativeComponentConstants.KEY_COMPONENT_ERRCODE, (Number) 12005);
                jsonObject2.addProperty("errMsg", ERROR_WIFI_CLOSED);
                callback.sendFailResponse(jsonObject2);
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
            if (callback != null) {
                callback.sendFailResponse();
            }
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.NORMAL)
    public final void offGetWifiList(@BindingNode(App.class) App app, @BindingCallback BridgeCallback callback) {
        String appId;
        if (app == null || (appId = app.getAppId()) == null || appId.length() == 0) {
            if (callback != null) {
                callback.sendFailResponse();
                return;
            }
            return;
        }
        AppContext appContext = app.getAppContext();
        if (appContext == null) {
            if (callback != null) {
                callback.sendFailResponse();
                return;
            }
            return;
        }
        Context context = appContext.getContext();
        if (context == null) {
            if (callback != null) {
                callback.sendFailResponse();
                return;
            }
            return;
        }
        try {
            WifiReceiver wifiReceiverRemove = this.mWifiScanReceiverMap.remove(app.getAppId());
            if (wifiReceiverRemove != null) {
                unregisterReceiver(context, wifiReceiverRemove);
                BridgeCallback callback2 = wifiReceiverRemove.getCallback();
                if (callback2 != null) {
                    callback2.close();
                }
            }
            if (callback != null) {
                callback.sendSuccessResponse();
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
            if (callback != null) {
                callback.sendFailResponse();
            }
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.NORMAL)
    public final void offWifiConnected(@BindingNode(App.class) App app, @BindingCallback BridgeCallback callback) {
        String appId;
        if (app == null || (appId = app.getAppId()) == null || appId.length() == 0) {
            if (callback != null) {
                callback.sendFailResponse();
                return;
            }
            return;
        }
        AppContext appContext = app.getAppContext();
        if (appContext == null) {
            if (callback != null) {
                callback.sendFailResponse();
                return;
            }
            return;
        }
        if (appContext.getContext() == null) {
            if (callback != null) {
                callback.sendFailResponse();
                return;
            }
            return;
        }
        try {
            if (!Intrinsics.c(this.mWifiInitMap.get(app.getAppId()), Boolean.TRUE)) {
                if (callback != null) {
                    JsonObject jsonObject = new JsonObject();
                    jsonObject.addProperty(NativeComponentConstants.KEY_COMPONENT_ERRCODE, (Number) 12000);
                    jsonObject.addProperty("errMsg", ERROR_NO_INIT);
                    callback.sendFailResponse(jsonObject);
                    return;
                }
                return;
            }
            WifiConnectListener wifiConnectListenerRemove = this.mWifiListenerMap.remove(app.getAppId());
            if (wifiConnectListenerRemove != null) {
                BridgeCallback callback2 = wifiConnectListenerRemove.getCallback();
                if (callback2 != null) {
                    callback2.close();
                }
                NetworkUtils.unregisterNetworkStatusChangedListener(wifiConnectListenerRemove);
            }
            if (callback != null) {
                callback.sendSuccessResponse();
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
            if (callback != null) {
                callback.sendFailResponse();
            }
        }
    }

    @Override // com.cloud.tmc.kernel.extension.Extension
    public void onFinalized() {
    }

    @ActionFilter
    @ThreadType(ExecutorType.NORMAL)
    public final void onGetWifiList(@BindingNode(App.class) App app, @BindingCallback(isSticky = true) BridgeCallback callback) {
        String appId;
        if (app == null || (appId = app.getAppId()) == null || appId.length() == 0) {
            if (callback != null) {
                callback.sendFailResponse();
                return;
            }
            return;
        }
        AppContext appContext = app.getAppContext();
        if (appContext == null) {
            if (callback != null) {
                callback.sendFailResponse();
                return;
            }
            return;
        }
        if (appContext.getContext() == null) {
            if (callback != null) {
                callback.sendFailResponse();
                return;
            }
            return;
        }
        try {
            if (this.mWifiScanReceiverMap.get(app.getAppId()) != null) {
                if (callback != null) {
                    JsonObject jsonObject = new JsonObject();
                    jsonObject.addProperty(NativeComponentConstants.KEY_COMPONENT_ERRCODE, (Number) 12004);
                    jsonObject.addProperty("errMsg", ERROR_MULTI_LISTENER);
                    callback.sendFailResponse(jsonObject);
                    return;
                }
                return;
            }
            String appId2 = app.getAppId();
            Intrinsics.g(appId2, "app.appId");
            WifiReceiver wifiReceiver = new WifiReceiver(this, appId2, callback);
            ConcurrentHashMap<String, WifiReceiver> concurrentHashMap = this.mWifiScanReceiverMap;
            String appId3 = app.getAppId();
            Intrinsics.g(appId3, "app.appId");
            concurrentHashMap.put(appId3, wifiReceiver);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
            if (callback != null) {
                callback.sendFailResponse();
            }
        }
    }

    @Override // com.cloud.tmc.kernel.extension.Extension
    public void onInitialized() {
    }

    @ActionFilter
    @ThreadType(ExecutorType.NORMAL)
    public final void onWifiConnected(@BindingNode(App.class) App app, @BindingCallback(isSticky = true) BridgeCallback callback) {
        String appId;
        if (app == null || (appId = app.getAppId()) == null || appId.length() == 0) {
            if (callback != null) {
                callback.sendFailResponse();
                return;
            }
            return;
        }
        AppContext appContext = app.getAppContext();
        if (appContext == null) {
            if (callback != null) {
                callback.sendFailResponse();
                return;
            }
            return;
        }
        Context context = appContext.getContext();
        if (context == null) {
            if (callback != null) {
                callback.sendFailResponse();
                return;
            }
            return;
        }
        try {
            if (!Intrinsics.c(this.mWifiInitMap.get(app.getAppId()), Boolean.TRUE)) {
                if (callback != null) {
                    JsonObject jsonObject = new JsonObject();
                    jsonObject.addProperty(NativeComponentConstants.KEY_COMPONENT_ERRCODE, (Number) 12000);
                    jsonObject.addProperty("errMsg", ERROR_NO_INIT);
                    callback.sendFailResponse(jsonObject);
                    return;
                }
                return;
            }
            if (this.mWifiListenerMap.get(app.getAppId()) != null) {
                if (callback != null) {
                    JsonObject jsonObject2 = new JsonObject();
                    jsonObject2.addProperty(NativeComponentConstants.KEY_COMPONENT_ERRCODE, (Number) 12004);
                    jsonObject2.addProperty("errMsg", ERROR_MULTI_LISTENER);
                    callback.sendFailResponse(jsonObject2);
                    return;
                }
                return;
            }
            Object systemService = context.getApplicationContext().getSystemService("wifi");
            Intrinsics.f(systemService, "null cannot be cast to non-null type android.net.wifi.WifiManager");
            WifiManager wifiManager = (WifiManager) systemService;
            if (!wifiManager.isWifiEnabled()) {
                if (callback != null) {
                    JsonObject jsonObject3 = new JsonObject();
                    jsonObject3.addProperty(NativeComponentConstants.KEY_COMPONENT_ERRCODE, (Number) 12005);
                    jsonObject3.addProperty("errMsg", ERROR_WIFI_CLOSED);
                    callback.sendFailResponse(jsonObject3);
                    return;
                }
                return;
            }
            String appId2 = app.getAppId();
            Intrinsics.g(appId2, "app.appId");
            WifiConnectListener wifiConnectListener = new WifiConnectListener(this, wifiManager, appId2, callback);
            ConcurrentHashMap<String, WifiConnectListener> concurrentHashMap = this.mWifiListenerMap;
            String appId3 = app.getAppId();
            Intrinsics.g(appId3, "app.appId");
            concurrentHashMap.put(appId3, wifiConnectListener);
            NetworkUtils.registerNetworkStatusChangedListener(wifiConnectListener);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
            if (callback != null) {
                callback.sendFailResponse();
            }
        }
    }

    @Override // com.cloud.tmc.kernel.security.Guard
    public Permission permit() {
        return null;
    }

    @ActionFilter
    @ThreadType(ExecutorType.NORMAL)
    public final void startWifi(@BindingNode(App.class) App app, @BindingCallback BridgeCallback callback) {
        if (app == null) {
            if (callback != null) {
                callback.sendFailResponse();
                return;
            }
            return;
        }
        AppContext appContext = app.getAppContext();
        if (appContext == null) {
            if (callback != null) {
                callback.sendFailResponse();
                return;
            }
            return;
        }
        if (appContext.getContext() == null) {
            if (callback != null) {
                callback.sendFailResponse();
                return;
            }
            return;
        }
        try {
            ConcurrentHashMap<String, Boolean> concurrentHashMap = this.mWifiInitMap;
            String appId = app.getAppId();
            Intrinsics.g(appId, "app.appId");
            concurrentHashMap.put(appId, Boolean.TRUE);
            if (callback != null) {
                callback.sendSuccessResponse();
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
            if (callback != null) {
                callback.sendFailResponse();
            }
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.NORMAL)
    public final void stopWifi(@BindingNode(App.class) App app, @BindingCallback BridgeCallback callback) {
        String appId;
        if (app == null || (appId = app.getAppId()) == null || appId.length() == 0) {
            if (callback != null) {
                callback.sendFailResponse();
                return;
            }
            return;
        }
        AppContext appContext = app.getAppContext();
        if (appContext == null) {
            if (callback != null) {
                callback.sendFailResponse();
                return;
            }
            return;
        }
        Context context = appContext.getContext();
        if (context == null) {
            if (callback != null) {
                callback.sendFailResponse();
                return;
            }
            return;
        }
        try {
            this.mWifiInitMap.remove(app.getAppId());
            WifiConnectListener wifiConnectListenerRemove = this.mWifiListenerMap.remove(app.getAppId());
            if (wifiConnectListenerRemove != null) {
                NetworkUtils.unregisterNetworkStatusChangedListener(wifiConnectListenerRemove);
                BridgeCallback callback2 = wifiConnectListenerRemove.getCallback();
                if (callback2 != null) {
                    callback2.close();
                }
            }
            WifiReceiver wifiReceiverRemove = this.mWifiScanReceiverMap.remove(app.getAppId());
            if (wifiReceiverRemove != null) {
                unregisterReceiver(context, wifiReceiverRemove);
                BridgeCallback callback3 = wifiReceiverRemove.getCallback();
                if (callback3 != null) {
                    callback3.close();
                }
            }
            if (callback != null) {
                callback.sendSuccessResponse();
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
            if (callback != null) {
                callback.sendFailResponse();
            }
        }
    }
}
