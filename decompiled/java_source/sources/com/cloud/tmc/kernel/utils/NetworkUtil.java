package com.cloud.tmc.kernel.utils;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.util.Log;
import androidx.annotation.NonNull;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.miniutils.util.Utils;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes3.dex */
public class NetworkUtil {
    public static final String NETWORK_TYPE_2G = "2G";
    public static final String NETWORK_TYPE_3G = "3G";
    public static final String NETWORK_TYPE_4G = "4G";
    public static final String NETWORK_TYPE_5G = "5G";
    public static final String NETWORK_TYPE_NOT_REACHABLE = "none";
    public static final String NETWORK_TYPE_UNKNOWN = "UNKNOWN";
    public static final String NETWORK_TYPE_WIFI = "WIFI";
    public static final String TAG = "NetworkUtil";
    private static Network sCurrentNetworkType;
    private static final List<NetworkListener> sListenerList = new CopyOnWriteArrayList();
    private static boolean sAlreadyRegistered = false;
    protected static BroadcastReceiver sBroadcastReceiver = null;
    private static final Utils.OnAppStatusChangedListener mOnAppStatusChangedListener = new Utils.OnAppStatusChangedListener() { // from class: com.cloud.tmc.kernel.utils.NetworkUtil.1
        @Override // com.cloud.tmc.miniutils.util.Utils.OnAppStatusChangedListener
        public void onBackground(Activity activity) {
            NetworkUtil.unRegisterReceiver(activity.getApplicationContext());
        }

        @Override // com.cloud.tmc.miniutils.util.Utils.OnAppStatusChangedListener
        public void onForeground(Activity activity) {
            NetworkUtil.registerReceiver(activity.getApplicationContext());
        }
    };

    /* JADX INFO: renamed from: com.cloud.tmc.kernel.utils.NetworkUtil$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$cloud$tmc$kernel$utils$NetworkUtil$Network;

        static {
            int[] iArr = new int[Network.values().length];
            $SwitchMap$com$cloud$tmc$kernel$utils$NetworkUtil$Network = iArr;
            try {
                iArr[Network.NETWORK_NO_CONNECTION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$cloud$tmc$kernel$utils$NetworkUtil$Network[Network.NETWORK_MOBILE_SLOW.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$cloud$tmc$kernel$utils$NetworkUtil$Network[Network.NETWORK_MOBILE_MIDDLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$cloud$tmc$kernel$utils$NetworkUtil$Network[Network.NETWORK_MOBILE_FAST.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$cloud$tmc$kernel$utils$NetworkUtil$Network[Network.NETWORK_MOBILE_VERY_FAST.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$cloud$tmc$kernel$utils$NetworkUtil$Network[Network.NETWORK_WIFI.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    private static class MyBroadcastReceiver extends BroadcastReceiver {
        private MyBroadcastReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            NetworkUtil.updateNetwork(context);
        }
    }

    public enum Network {
        NETWORK_WIFI,
        NETWORK_MOBILE_FAST,
        NETWORK_MOBILE_VERY_FAST,
        NETWORK_MOBILE_MIDDLE,
        NETWORK_MOBILE_SLOW,
        NETWORK_NO_CONNECTION,
        NETWORK_TYPE_UNKNOWN
    }

    public interface NetworkListener {
        void onNetworkChanged(Network network, Network network2);
    }

    public static void addListener(Context context, NetworkListener networkListener) {
        if (networkListener != null) {
            List<NetworkListener> list = sListenerList;
            if (list.contains(networkListener)) {
                return;
            }
            list.add(networkListener);
            registerReceiver(context.getApplicationContext());
        }
    }

    private static Network detectNetwork(NetworkInfo networkInfo) {
        try {
            if (networkInfo != null && networkInfo.isConnected()) {
                int type = networkInfo.getType();
                int subtype = networkInfo.getSubtype();
                TmcLogger.d(TAG, "type: " + type + " subType: " + subtype);
                if (type != 1 && type != 9) {
                    if (type == 0 && subtype != 0) {
                        if (subtype != 1 && subtype != 2 && subtype != 4 && subtype != 7 && subtype != 11) {
                            if (subtype != 13) {
                                if (subtype != 16) {
                                    switch (subtype) {
                                        case 18:
                                        case 19:
                                            break;
                                        case 20:
                                            return Network.NETWORK_MOBILE_VERY_FAST;
                                        default:
                                            return Network.NETWORK_MOBILE_MIDDLE;
                                    }
                                }
                            }
                            return Network.NETWORK_MOBILE_FAST;
                        }
                        return Network.NETWORK_MOBILE_SLOW;
                    }
                    return Network.NETWORK_TYPE_UNKNOWN;
                }
                return Network.NETWORK_WIFI;
            }
            return Network.NETWORK_NO_CONNECTION;
        } catch (Exception e11) {
            TmcLogger.e(TAG, "detectNetwork error!", e11);
            return Network.NETWORK_TYPE_UNKNOWN;
        }
    }

    public static Network getCurrentNetworkType(Context context, boolean z10) {
        Network network = sCurrentNetworkType;
        if (network != null && z10) {
            return network;
        }
        updateNetwork(context);
        return sCurrentNetworkType;
    }

    @NonNull
    public static String getDetailNetworkType(Context context) {
        NetworkInfo.State state;
        NetworkInfo.State state2;
        NetworkInfo.State state3;
        if (context == null) {
            return NETWORK_TYPE_UNKNOWN;
        }
        NetworkInfo activeNetworkInfo = null;
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getApplicationContext().getSystemService("connectivity");
            state = connectivityManager.getNetworkInfo(0).getState();
            try {
                state2 = connectivityManager.getNetworkInfo(1).getState();
                try {
                    NetworkInfo.State state4 = NetworkInfo.State.CONNECTED;
                    if (state != state4 && state != (state3 = NetworkInfo.State.CONNECTING)) {
                        return (state2 == state4 || state2 == state3) ? NETWORK_TYPE_WIFI : NETWORK_TYPE_UNKNOWN;
                    }
                    activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                    switch (activeNetworkInfo.getSubtype()) {
                        case 1:
                        case 2:
                        case 4:
                        case 7:
                        case 11:
                        case 16:
                            return NETWORK_TYPE_2G;
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
                            return NETWORK_TYPE_3G;
                        case 13:
                        case 18:
                        case 19:
                            return NETWORK_TYPE_4G;
                        case 20:
                            return NETWORK_TYPE_5G;
                        default:
                            String subtypeName = activeNetworkInfo.getSubtypeName();
                            if (!"TD-SCDMA".equalsIgnoreCase(subtypeName) && !"WCDMA".equalsIgnoreCase(subtypeName) && !"CDMA2000".equalsIgnoreCase(subtypeName)) {
                                Log.e(TAG, "network unknown, type: " + activeNetworkInfo.getSubtype() + " , mobile: " + state);
                                return NETWORK_TYPE_UNKNOWN;
                            }
                            return NETWORK_TYPE_3G;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
                th = th2;
            } catch (Throwable th3) {
                th = th3;
                state2 = null;
            }
        } catch (Throwable th4) {
            th = th4;
            state = null;
            state2 = null;
        }
        TmcLogger.e(TAG, th);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("network unknown, type: ");
        sb2.append(activeNetworkInfo == null ? "null" : Integer.valueOf(activeNetworkInfo.getSubtype()));
        sb2.append(" , mobile: ");
        sb2.append(state);
        sb2.append(", wifi: ");
        sb2.append(state2);
        Log.e(TAG, sb2.toString());
        return NETWORK_TYPE_UNKNOWN;
    }

    public static Utils.OnAppStatusChangedListener getOnAppStatusChangedListener() {
        return mOnAppStatusChangedListener;
    }

    public static String getSimpleNetworkType(Context context) {
        NetworkInfo activeNetworkInfo;
        if (context == null) {
            return "fail";
        }
        try {
            activeNetworkInfo = ((ConnectivityManager) context.getApplicationContext().getSystemService("connectivity")).getActiveNetworkInfo();
        } catch (Exception e11) {
            TmcLogger.e(TAG, "Exception", e11);
            activeNetworkInfo = null;
        }
        if (activeNetworkInfo == null) {
            return "fail";
        }
        int type = activeNetworkInfo.getType();
        return (type == 1 || type == 9) ? "wifi" : "wwan";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static synchronized void registerReceiver(Context context) {
        if (context == null) {
            return;
        }
        try {
            if (sAlreadyRegistered) {
                return;
            }
            sAlreadyRegistered = true;
            try {
                if (sBroadcastReceiver == null) {
                    sBroadcastReceiver = new MyBroadcastReceiver();
                }
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
                context.getApplicationContext().registerReceiver(sBroadcastReceiver, intentFilter);
            } catch (Exception e11) {
                TmcLogger.e(TAG, "registerReceiver error", e11);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public static void removeListener(Context context, NetworkListener networkListener) {
        if (networkListener == null) {
            return;
        }
        List<NetworkListener> list = sListenerList;
        list.remove(networkListener);
        if (list.isEmpty()) {
            unRegisterReceiver(context);
        }
    }

    public static String transferNetworkType(Network network) {
        switch (AnonymousClass2.$SwitchMap$com$cloud$tmc$kernel$utils$NetworkUtil$Network[network.ordinal()]) {
            case 1:
                return "none";
            case 2:
                return NETWORK_TYPE_2G;
            case 3:
                return NETWORK_TYPE_3G;
            case 4:
                return NETWORK_TYPE_4G;
            case 5:
                return NETWORK_TYPE_5G;
            case 6:
                return NETWORK_TYPE_WIFI;
            default:
                return NETWORK_TYPE_UNKNOWN;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static synchronized void unRegisterReceiver(Context context) {
        sAlreadyRegistered = false;
        if (sBroadcastReceiver == null || context == null) {
            return;
        }
        try {
            context.getApplicationContext().unregisterReceiver(sBroadcastReceiver);
            sBroadcastReceiver = null;
        } catch (Exception e11) {
            TmcLogger.e(TAG, "unRegisterReceiver error", e11);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"MissingPermission"})
    public static void updateNetwork(Context context) {
        NetworkInfo activeNetworkInfo;
        if (context == null) {
            return;
        }
        try {
            activeNetworkInfo = ((ConnectivityManager) context.getApplicationContext().getSystemService("connectivity")).getActiveNetworkInfo();
        } catch (Exception e11) {
            TmcLogger.e(TAG, "exception detail", e11);
            activeNetworkInfo = null;
        }
        Network network = sCurrentNetworkType;
        Network networkDetectNetwork = detectNetwork(activeNetworkInfo);
        sCurrentNetworkType = networkDetectNetwork;
        if (network == null || networkDetectNetwork == network) {
            return;
        }
        TmcLogger.d(TAG, "onNetworkChanged");
        List<NetworkListener> list = sListenerList;
        synchronized (list) {
            try {
                for (NetworkListener networkListener : list) {
                    if (networkListener != null) {
                        networkListener.onNetworkChanged(network, sCurrentNetworkType);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
