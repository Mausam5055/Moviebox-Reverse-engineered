package nh;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import com.blankj.utilcode.util.Utils;
import com.tn.lib.util.networkinfo.NetworkType;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
public final class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final m f70474a = new m();

    private m() {
    }

    private final NetworkInfo a() {
        Object systemService = Utils.a().getSystemService("connectivity");
        ConnectivityManager connectivityManager = systemService instanceof ConnectivityManager ? (ConnectivityManager) systemService : null;
        if (connectivityManager != null) {
            return connectivityManager.getActiveNetworkInfo();
        }
        return null;
    }

    private final boolean g() {
        NetworkInfo networkInfo;
        NetworkInfo.State state;
        Object systemService = Utils.a().getSystemService("connectivity");
        ConnectivityManager connectivityManager = systemService instanceof ConnectivityManager ? (ConnectivityManager) systemService : null;
        if (connectivityManager == null || (networkInfo = connectivityManager.getNetworkInfo(9)) == null || (state = networkInfo.getState()) == null) {
            return false;
        }
        return state == NetworkInfo.State.CONNECTED || state == NetworkInfo.State.CONNECTING;
    }

    public final int b() {
        return l.f70465g.a().v();
    }

    public final NetworkType c() {
        return l.f70465g.a().x();
    }

    public final NetworkType d() {
        if (g()) {
            return NetworkType.NETWORK_ETHERNET;
        }
        NetworkInfo networkInfoA = a();
        if (networkInfoA == null) {
            return NetworkType.NETWORK_NO;
        }
        int type = networkInfoA.getType();
        if (type != 0) {
            return type != 1 ? NetworkType.NETWORK_UNKNOWN : NetworkType.NETWORK_WIFI;
        }
        switch (networkInfoA.getSubtype()) {
            case 1:
            case 2:
            case 4:
            case 7:
            case 11:
            case 16:
                return NetworkType.NETWORK_2G;
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
                return NetworkType.NETWORK_3G;
            case 13:
            case 18:
                return NetworkType.NETWORK_4G;
            case 19:
            default:
                String subtypeName = networkInfoA.getSubtypeName();
                return (StringsKt.H(subtypeName, "TD-SCDMA", true) || StringsKt.H(subtypeName, "WCDMA", true) || StringsKt.H(subtypeName, "CDMA2000", true)) ? NetworkType.NETWORK_3G : NetworkType.NETWORK_UNKNOWN;
            case 20:
                return NetworkType.NETWORK_5G;
        }
    }

    public final boolean e() {
        return l.f70465g.a().y();
    }

    public final void f() {
        l.f70465g.a().C();
    }

    public final boolean h(Context context) {
        Intrinsics.h(context, "context");
        Object systemService = context.getSystemService("connectivity");
        NetworkCapabilities networkCapabilities = null;
        ConnectivityManager connectivityManager = systemService instanceof ConnectivityManager ? (ConnectivityManager) systemService : null;
        if (connectivityManager == null) {
            return false;
        }
        try {
            networkCapabilities = connectivityManager.getNetworkCapabilities(connectivityManager.getActiveNetwork());
        } catch (SecurityException unused) {
        }
        return networkCapabilities != null && networkCapabilities.hasTransport(0);
    }

    public final boolean i(Context context) {
        Intrinsics.h(context, "context");
        Object systemService = context.getSystemService("connectivity");
        NetworkCapabilities networkCapabilities = null;
        ConnectivityManager connectivityManager = systemService instanceof ConnectivityManager ? (ConnectivityManager) systemService : null;
        if (connectivityManager == null) {
            return false;
        }
        try {
            networkCapabilities = connectivityManager.getNetworkCapabilities(connectivityManager.getActiveNetwork());
        } catch (SecurityException unused) {
        }
        return networkCapabilities != null && networkCapabilities.hasCapability(16);
    }

    public final boolean j(Context context) {
        Intrinsics.h(context, "context");
        Object systemService = context.getSystemService("connectivity");
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
        ConnectivityManager connectivityManager = (ConnectivityManager) systemService;
        Network activeNetwork = connectivityManager.getActiveNetwork();
        if (activeNetwork == null) {
            return false;
        }
        try {
            NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork);
            return networkCapabilities != null && networkCapabilities.hasCapability(12);
        } catch (SecurityException e11) {
            e11.printStackTrace();
            return false;
        }
    }

    public final boolean k(Context context) {
        Intrinsics.h(context, "context");
        Object systemService = context.getSystemService("connectivity");
        NetworkCapabilities networkCapabilities = null;
        ConnectivityManager connectivityManager = systemService instanceof ConnectivityManager ? (ConnectivityManager) systemService : null;
        if (connectivityManager == null) {
            return false;
        }
        try {
            networkCapabilities = connectivityManager.getNetworkCapabilities(connectivityManager.getActiveNetwork());
        } catch (SecurityException unused) {
        }
        return networkCapabilities != null && networkCapabilities.hasTransport(1);
    }

    public final void l(n nVar) {
        l.f70465g.a().F(nVar);
    }

    public final void m(n nVar) {
        l.f70465g.a().K(nVar);
    }
}
