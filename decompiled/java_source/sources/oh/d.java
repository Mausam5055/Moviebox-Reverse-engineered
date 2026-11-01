package oh;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.cloud.tmc.kernel.utils.NetworkUtil;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;

/* JADX INFO: loaded from: classes4.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static String f71019a = "none";

    public static String a(Context context) {
        NetworkInfo activeNetworkInfo;
        NetworkInfo.State state;
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager == null || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null) {
                return "none";
            }
            if (!activeNetworkInfo.isAvailable()) {
                return OfflineConstantsKt.OFFLINE;
            }
            NetworkInfo networkInfo = connectivityManager.getNetworkInfo(1);
            if (networkInfo != null && (state = networkInfo.getState()) != null && (state == NetworkInfo.State.CONNECTED || state == NetworkInfo.State.CONNECTING)) {
                return "Wifi";
            }
            NetworkInfo networkInfo2 = connectivityManager.getNetworkInfo(0);
            if (networkInfo2 != null) {
                NetworkInfo.State state2 = networkInfo2.getState();
                String subtypeName = networkInfo2.getSubtypeName();
                if (state2 != null && (state2 == NetworkInfo.State.CONNECTED || state2 == NetworkInfo.State.CONNECTING)) {
                    switch (activeNetworkInfo.getSubtype()) {
                        case 1:
                        case 2:
                        case 4:
                        case 7:
                        case 11:
                            return NetworkUtil.NETWORK_TYPE_2G;
                        case 3:
                        case 5:
                        case 6:
                        case 8:
                        case 9:
                        case 10:
                        case 12:
                        case 14:
                        case 15:
                            return NetworkUtil.NETWORK_TYPE_3G;
                        case 13:
                            return NetworkUtil.NETWORK_TYPE_4G;
                        default:
                            return (subtypeName.equalsIgnoreCase("TD-SCDMA") || subtypeName.equalsIgnoreCase("WCDMA") || subtypeName.equalsIgnoreCase("CDMA2000")) ? NetworkUtil.NETWORK_TYPE_3G : "mobile";
                    }
                    e.printStackTrace();
                    return f71019a;
                }
            }
            return "none";
        } catch (Exception e11) {
            e11.printStackTrace();
            return f71019a;
        }
    }
}
