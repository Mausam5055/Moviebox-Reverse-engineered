package com.tmc.network;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.util.Base64;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.kernel.utils.NetworkUtil;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0012\bÇ\u0002\u0018\u00002\u00020\u0001:\u000201B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u0004H\u0002J\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0010H\u0002J\u0006\u0010\u001e\u001a\u00020\u0004J\n\u0010\u001f\u001a\u0004\u0018\u00010 H\u0002J\u0006\u0010!\u001a\u00020\u0015J\u0006\u0010\"\u001a\u00020\u0004J\u0010\u0010#\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0010J\u0006\u0010$\u001a\u00020\u000bJ\b\u0010%\u001a\u00020\u000bH\u0002J\u000e\u0010&\u001a\u00020\u001c2\u0006\u0010'\u001a\u00020\u0007J\u0018\u0010(\u001a\u00020\u00072\u0006\u0010)\u001a\u00020\u00152\u0006\u0010*\u001a\u00020\u0004H\u0002J\u000e\u0010+\u001a\u00020\u001c2\u0006\u0010,\u001a\u00020\u0018J\u0010\u0010-\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0010H\u0002J\u0010\u0010.\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0010H\u0002J\u000e\u0010/\u001a\u00020\u001c2\u0006\u0010,\u001a\u00020\u0018R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00180\u0017X\u0082\u000e¢\u0006\u0002\n\u0000¨\u00062"}, d2 = {"Lcom/tmc/network/NetworkMonitor;", "", "()V", "apn", "", "bssid", "currentStatus", "Lcom/tmc/network/NetworkMonitor$NetworkStatus;", "isInited", "Ljava/util/concurrent/atomic/AtomicBoolean;", "isNetworkConnected", "", "lastStatus", "mConnectivityManager", "Landroid/net/ConnectivityManager;", "mContext", "Landroid/content/Context;", "mNetworkType", "mReceiver", "Landroid/content/BroadcastReceiver;", "netStatus", "", "networkListeners", "Ljava/util/concurrent/CopyOnWriteArrayList;", "Lcom/tmc/network/NetworkMonitor$INetworkChangeListener;", "base64Str", "str", "checkNetworkStatus", "", "context", "getNetworkId", "getNetworkInfo", "Landroid/net/NetworkInfo;", "getNetworkStatus", "getNetworkType", "init", "isConnected", "isMobile", "notifyNetworkChanged", NotificationCompat.CATEGORY_STATUS, "parseNetworkStatus", NativeComponentConstants.KEY_COMPONENT_TYPE, "subType", "registerListener", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "registerNetworkCallback", "registerNetworkReceiver", "unregisterListener", "INetworkChangeListener", "NetworkStatus", "network_release"}, k = 1, mv = {1, 5, 1}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SuppressLint({"StaticFieldLeak"})
public final class NetworkMonitor {
    private static NetworkStatus currentStatus;
    private static boolean isNetworkConnected;
    private static NetworkStatus lastStatus;
    private static ConnectivityManager mConnectivityManager;
    private static Context mContext;
    private static final BroadcastReceiver mReceiver;
    private static int netStatus;
    private static CopyOnWriteArrayList<INetworkChangeListener> networkListeners;
    public static final NetworkMonitor INSTANCE = new NetworkMonitor();
    private static final AtomicBoolean isInited = new AtomicBoolean(false);
    private static String mNetworkType = TmcConstants.ROUTE_UNKNOWN;
    private static String apn = TmcConstants.ROUTE_UNKNOWN;
    private static String bssid = TmcConstants.ROUTE_UNKNOWN;

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, d2 = {"Lcom/tmc/network/NetworkMonitor$INetworkChangeListener;", "", "onNetworkChanged", "", NotificationCompat.CATEGORY_STATUS, "Lcom/tmc/network/NetworkMonitor$NetworkStatus;", "network_release"}, k = 1, mv = {1, 5, 1}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public interface INetworkChangeListener {
        void onNetworkChanged(NetworkStatus status);
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\r"}, d2 = {"Lcom/tmc/network/NetworkMonitor$NetworkStatus;", "", NativeComponentConstants.KEY_COMPONENT_TYPE, "", "(Ljava/lang/String;ILjava/lang/String;)V", "getType", "()Ljava/lang/String;", "NONE", "G2", "G3", "G4", NetworkUtil.NETWORK_TYPE_WIFI, "G5", "network_release"}, k = 1, mv = {1, 5, 1}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public enum NetworkStatus {
        NONE(TmcConstants.ROUTE_UNKNOWN),
        G2("G2"),
        G3("G3"),
        G4("G4"),
        WIFI(NetworkUtil.NETWORK_TYPE_WIFI),
        G5("G5");

        private final String type;

        NetworkStatus(String str) {
            this.type = str;
        }

        public final String getType() {
            return this.type;
        }
    }

    static {
        NetworkStatus networkStatus = NetworkStatus.NONE;
        currentStatus = networkStatus;
        lastStatus = networkStatus;
        networkListeners = new CopyOnWriteArrayList<>();
        mReceiver = new NetworkMonitor$mReceiver$1();
    }

    private NetworkMonitor() {
    }

    private final String base64Str(String str) {
        if (Intrinsics.c(str, TmcConstants.ROUTE_UNKNOWN)) {
            return TmcConstants.ROUTE_UNKNOWN;
        }
        try {
            Charset charset = Charsets.UTF_8;
            if (str == null) {
                throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
            }
            byte[] bytes = str.getBytes(charset);
            Intrinsics.g(bytes, "(this as java.lang.String).getBytes(charset)");
            String strEncodeToString = Base64.encodeToString(bytes, 0);
            Intrinsics.g(strEncodeToString, "encodeToString(str.toByteArray(), Base64.DEFAULT)");
            return strEncodeToString;
        } catch (Throwable th2) {
            gg.b.f63567a.e(th2);
            return TmcConstants.ROUTE_UNKNOWN;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void checkNetworkStatus(Context context) {
        String string;
        WifiInfo connectionInfo;
        String bssid2;
        try {
            NetworkInfo networkInfo = getNetworkInfo();
            if (networkInfo == null || !networkInfo.isConnected()) {
                currentStatus = NetworkStatus.NONE;
                mNetworkType = TmcConstants.ROUTE_UNKNOWN;
                bssid = TmcConstants.ROUTE_UNKNOWN;
                apn = TmcConstants.ROUTE_UNKNOWN;
            } else {
                if (networkInfo.getType() == 1) {
                    mNetworkType = NetworkUtil.NETWORK_TYPE_WIFI;
                    Object systemService = context.getApplicationContext().getSystemService("wifi");
                    WifiManager wifiManager = systemService instanceof WifiManager ? (WifiManager) systemService : null;
                    if (wifiManager == null || (connectionInfo = wifiManager.getConnectionInfo()) == null || (bssid2 = connectionInfo.getBSSID()) == null) {
                        bssid2 = TmcConstants.ROUTE_UNKNOWN;
                    }
                    bssid = bssid2;
                    if (Intrinsics.c(bssid2, "02:00:00:00:00:00") || StringsKt.H(bssid, TmcConstants.ROUTE_UNKNOWN, true)) {
                        bssid = TmcConstants.ROUTE_UNKNOWN;
                    }
                    currentStatus = NetworkStatus.WIFI;
                } else if (networkInfo.getType() == 0) {
                    int subtype = networkInfo.getSubtype();
                    String subtypeName = networkInfo.getSubtypeName();
                    Intrinsics.g(subtypeName, "networkInfo.subtypeName");
                    NetworkStatus networkStatus = parseNetworkStatus(subtype, subtypeName);
                    currentStatus = networkStatus;
                    mNetworkType = networkStatus.getType();
                    String extraInfo = networkInfo.getExtraInfo();
                    if (extraInfo != null && (string = StringsKt.n1(extraInfo).toString()) != null) {
                        apn = string;
                    }
                } else {
                    currentStatus = NetworkStatus.NONE;
                    mNetworkType = TmcConstants.ROUTE_UNKNOWN;
                    bssid = TmcConstants.ROUTE_UNKNOWN;
                    apn = TmcConstants.ROUTE_UNKNOWN;
                }
                mNetworkType = currentStatus.getType();
            }
            NetworkStatus networkStatus2 = lastStatus;
            NetworkStatus networkStatus3 = currentStatus;
            if (networkStatus2 != networkStatus3) {
                lastStatus = networkStatus3;
                notifyNetworkChanged(networkStatus3);
            }
        } catch (Throwable th2) {
            gg.b.f63567a.e(th2);
        }
    }

    private final NetworkInfo getNetworkInfo() {
        Context applicationContext;
        if (mConnectivityManager == null) {
            Context context = mContext;
            Object systemService = (context == null || (applicationContext = context.getApplicationContext()) == null) ? null : applicationContext.getSystemService("connectivity");
            mConnectivityManager = systemService instanceof ConnectivityManager ? (ConnectivityManager) systemService : null;
        }
        ConnectivityManager connectivityManager = mConnectivityManager;
        if (connectivityManager == null) {
            return null;
        }
        return connectivityManager.getActiveNetworkInfo();
    }

    private final boolean isMobile() {
        return currentStatus == NetworkStatus.G2 || currentStatus == NetworkStatus.G3 || currentStatus == NetworkStatus.G4 || currentStatus == NetworkStatus.G5;
    }

    private final NetworkStatus parseNetworkStatus(int type, String subType) {
        switch (type) {
            case 1:
            case 2:
            case 4:
            case 7:
            case 11:
            case 16:
                return NetworkStatus.G2;
            case 3:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 12:
            case 14:
            case 15:
            case 17:
                return NetworkStatus.G3;
            case 13:
            case 18:
            case 19:
                return NetworkStatus.G4;
            case 20:
                return NetworkStatus.G5;
            default:
                int iHashCode = subType.hashCode();
                return (iHashCode == -1004072973 ? subType.equals("CDMA2000") : iHashCode == 82410124 ? subType.equals("WCDMA") : iHashCode == 1954916075 && subType.equals("TD-SCDMA")) ? NetworkStatus.G3 : NetworkStatus.NONE;
        }
    }

    private final void registerNetworkCallback(Context context) {
        Context applicationContext = context.getApplicationContext();
        Object systemService = applicationContext == null ? null : applicationContext.getSystemService("connectivity");
        ConnectivityManager connectivityManager = systemService instanceof ConnectivityManager ? (ConnectivityManager) systemService : null;
        if (connectivityManager == null) {
            return;
        }
        NetworkInfo networkInfo = getNetworkInfo();
        isNetworkConnected = networkInfo != null && networkInfo.isConnected();
        checkNetworkStatus(context);
        if (Build.VERSION.SDK_INT >= 24) {
            connectivityManager.registerDefaultNetworkCallback(new ConnectivityManager.NetworkCallback() { // from class: com.tmc.network.NetworkMonitor.registerNetworkCallback.1
                @Override // android.net.ConnectivityManager.NetworkCallback
                public void onAvailable(Network network) {
                    Intrinsics.h(network, "network");
                    super.onAvailable(network);
                    NetworkMonitor.isNetworkConnected = true;
                }

                @Override // android.net.ConnectivityManager.NetworkCallback
                public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
                    Intrinsics.h(network, "network");
                    Intrinsics.h(networkCapabilities, "networkCapabilities");
                    super.onCapabilitiesChanged(network, networkCapabilities);
                    NetworkMonitor networkMonitor = NetworkMonitor.INSTANCE;
                    NetworkMonitor.netStatus = networkCapabilities.hasCapability(16) ? 1 : -1;
                }

                @Override // android.net.ConnectivityManager.NetworkCallback
                public void onLost(Network network) {
                    Intrinsics.h(network, "network");
                    super.onLost(network);
                    NetworkMonitor.isNetworkConnected = false;
                    NetworkMonitor.netStatus = -1;
                }

                @Override // android.net.ConnectivityManager.NetworkCallback
                public void onUnavailable() {
                    super.onUnavailable();
                    NetworkMonitor.isNetworkConnected = false;
                }
            });
            NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(connectivityManager.getActiveNetwork());
            if (networkCapabilities != null) {
                netStatus = networkCapabilities.hasCapability(16) ? 1 : -1;
            }
        }
    }

    private final void registerNetworkReceiver(Context context) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        try {
            context.registerReceiver(mReceiver, intentFilter);
        } catch (Throwable th2) {
            gg.b.f63567a.e(th2);
        }
    }

    public final String getNetworkId() {
        if (Intrinsics.c(mNetworkType, NetworkUtil.NETWORK_TYPE_WIFI)) {
            return mNetworkType + '#' + base64Str(bssid);
        }
        if (!isMobile()) {
            return TmcConstants.ROUTE_UNKNOWN;
        }
        return mNetworkType + '#' + apn;
    }

    public final int getNetworkStatus() {
        return netStatus;
    }

    public final String getNetworkType() {
        return mNetworkType;
    }

    public final void init(Context context) {
        if (context == null) {
            return;
        }
        try {
            if (isInited.compareAndSet(false, true)) {
                gg.b.f63567a.d("NetworkMonitor", "NetworkMonitor.init");
                mContext = context;
                registerNetworkCallback(context);
                registerNetworkReceiver(context);
                NetworkConfig.INSTANCE.setPackageName(context.getPackageName());
            }
        } catch (Throwable th2) {
            gg.b.f63567a.e(th2);
        }
    }

    public final boolean isConnected() {
        try {
            if (Build.VERSION.SDK_INT >= 24 && isNetworkConnected) {
                return true;
            }
            NetworkInfo networkInfo = getNetworkInfo();
            if (networkInfo == null) {
                return false;
            }
            return networkInfo.isConnected();
        } catch (Throwable th2) {
            gg.b.f63567a.e(th2);
            return false;
        }
    }

    public final void notifyNetworkChanged(NetworkStatus status) {
        Intrinsics.h(status, "status");
        Iterator<T> it = networkListeners.iterator();
        while (it.hasNext()) {
            ((INetworkChangeListener) it.next()).onNetworkChanged(status);
        }
    }

    public final void registerListener(INetworkChangeListener listener) {
        Intrinsics.h(listener, "listener");
        gg.b.f63567a.c(Intrinsics.q("register listener ", listener));
        networkListeners.add(listener);
    }

    public final void unregisterListener(INetworkChangeListener listener) {
        Intrinsics.h(listener, "listener");
        networkListeners.remove(listener);
    }
}
