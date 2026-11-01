package com.transsion.transfer.wifi.util;

import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.DhcpInfo;
import android.net.NetworkInfo;
import android.net.Uri;
import android.net.wifi.SupplicantState;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.net.wifi.WpsInfo;
import android.net.wifi.p2p.WifiP2pConfig;
import android.net.wifi.p2p.WifiP2pDevice;
import android.os.Build;
import android.text.TextUtils;
import androidx.appcompat.app.AppCompatActivity;
import com.blankj.utilcode.util.Utils;
import com.transsion.transfer.R$string;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.Enumeration;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes6.dex */
public final class WifiUtils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final WifiUtils f55960a = new WifiUtils();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Lazy f55961b = LazyKt.b(new Function0() { // from class: com.transsion.transfer.wifi.util.k
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return WifiUtils.u();
        }
    });

    private WifiUtils() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String e() {
        String simpleName = WifiUtils.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean o(String str) {
        return p(Utils.a(), str);
    }

    private final boolean p(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String strReplace = new Regex("\"").replace(str, "");
        if (context == null) {
            return false;
        }
        String string = context.getString(R$string.wifi_ap_prefix);
        Intrinsics.g(string, "getString(...)");
        if (!StringsKt.W(strReplace, string, false, 2, null)) {
            String string2 = context.getString(R$string.wifi_direct_prefix);
            Intrinsics.g(string2, "getString(...)");
            if (!StringsKt.W(strReplace, string2, false, 2, null)) {
                String string3 = context.getString(R$string.wifi_ap_prefix_old);
                Intrinsics.g(string3, "getString(...)");
                if (!StringsKt.W(strReplace, string3, false, 2, null)) {
                    String string4 = context.getString(R$string.wifi_local_ap_prefix);
                    Intrinsics.g(string4, "getString(...)");
                    if (!StringsKt.W(strReplace, string4, false, 2, null)) {
                        return false;
                    }
                }
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final WifiManager u() {
        Object systemService = Utils.a().getApplicationContext().getSystemService("wifi");
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.net.wifi.WifiManager");
        return (WifiManager) systemService;
    }

    public final String d(String ssid) {
        Intrinsics.h(ssid, "ssid");
        if (TextUtils.isEmpty(ssid)) {
            return "";
        }
        int length = ssid.length() - 1;
        if (length < 0) {
            return ssid;
        }
        if (ssid.charAt(0) == '\"' && ssid.charAt(length) == '\"') {
            return ssid;
        }
        return "\"" + ssid + "\"";
    }

    public final WifiP2pConfig f(lv.a aVar, WifiP2pDevice wifiP2pDevice) {
        String strP;
        String strO;
        WpsInfo wpsInfo;
        WifiP2pConfig wifiP2pConfigBuild = null;
        if (Build.VERSION.SDK_INT >= 29) {
            try {
                j.a();
                WifiP2pConfig.Builder builderA = com.transsion.transfer.wifi.create.adapter.d.a();
                String str = "";
                if (aVar == null || (strP = aVar.p()) == null) {
                    strP = "";
                }
                WifiP2pConfig.Builder networkName = builderA.setNetworkName(strP);
                if (aVar != null && (strO = aVar.o()) != null) {
                    str = strO;
                }
                wifiP2pConfigBuild = networkName.setPassphrase(str).build();
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        } else {
            WifiP2pConfig wifiP2pConfig = new WifiP2pConfig();
            wifiP2pConfig.deviceAddress = wifiP2pDevice != null ? wifiP2pDevice.deviceAddress : null;
            wifiP2pConfigBuild = wifiP2pConfig;
        }
        if (wifiP2pConfigBuild != null && (wpsInfo = wifiP2pConfigBuild.wps) != null) {
            wpsInfo.setup = 0;
        }
        return wifiP2pConfigBuild;
    }

    public final String g(InetAddress inetAddress) {
        String hostAddress;
        return (inetAddress == null || inetAddress.isLoopbackAddress() || (hostAddress = inetAddress.getHostAddress()) == null || !StringsKt.W(hostAddress, "192.168", false, 2, null)) ? "" : hostAddress;
    }

    public final Object h(Continuation continuation) {
        return kotlinx.coroutines.i.g(y0.b(), new WifiUtils$getCorrectP2pAddress$2(null), continuation);
    }

    public final NetworkInfo.DetailedState i() {
        Object systemService = Utils.a().getApplicationContext().getSystemService("connectivity");
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) systemService).getActiveNetworkInfo();
        if (activeNetworkInfo != null) {
            return activeNetworkInfo.getDetailedState();
        }
        return null;
    }

    public final synchronized String j() {
        try {
            String ssid = m().getConnectionInfo().getSSID();
            if (ssid.length() < 3 || m().getConnectionInfo().getSupplicantState() == SupplicantState.DISCONNECTED) {
                return "";
            }
            Intrinsics.e(ssid);
            String strSubstring = ssid.substring(1, ssid.length() - 1);
            Intrinsics.g(strSubstring, "substring(...)");
            if (StringsKt.c0(strSubstring, "unknown ssid", false, 2, null)) {
                try {
                    Object systemService = Utils.a().getSystemService("connectivity");
                    Intrinsics.f(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
                    NetworkInfo activeNetworkInfo = ((ConnectivityManager) systemService).getActiveNetworkInfo();
                    if (activeNetworkInfo != null) {
                        String extraInfo = activeNetworkInfo.getExtraInfo();
                        Intrinsics.g(extraInfo, "getExtraInfo(...)");
                        strSubstring = extraInfo;
                    }
                } catch (Exception unused) {
                    g.d(g.f55970a, e() + " --> getCurrentSSID() --> getCurrentSSID->Current SSID:" + strSubstring, false, 2, null);
                }
            }
            return strSubstring;
        } catch (Exception e11) {
            g.d(g.f55970a, e() + " --> getCurrentSSID() --> getCurrentSSID Exception = " + e11, false, 2, null);
            return "";
        }
    }

    public final long k() {
        try {
            DhcpInfo dhcpInfo = m().getDhcpInfo();
            Intrinsics.g(dhcpInfo, "getDhcpInfo(...)");
            long j11 = dhcpInfo.gateway;
            if (j11 != 0) {
                return j11;
            }
            return 0L;
        } catch (Exception e11) {
            g.d(g.f55970a, e() + " --> getGateway() --> 获取ip异常 it = :" + e11, false, 2, null);
        }
    }

    public final String l() {
        Object objM454constructorimpl;
        String hostAddress;
        Object obj = "";
        try {
            Result.Companion companion = Result.INSTANCE;
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces != null && networkInterfaces.hasMoreElements()) {
                Enumeration<InetAddress> inetAddresses = networkInterfaces.nextElement().getInetAddresses();
                while (inetAddresses != null && inetAddresses.hasMoreElements()) {
                    InetAddress inetAddressNextElement = inetAddresses.nextElement();
                    if (!inetAddressNextElement.isLoopbackAddress() && (hostAddress = inetAddressNextElement.getHostAddress()) != null && StringsKt.W(hostAddress, "192.168", false, 2, null)) {
                        String hostAddress2 = inetAddressNextElement.getHostAddress();
                        return hostAddress2 == null ? "" : hostAddress2;
                    }
                }
            }
            objM454constructorimpl = Result.m454constructorimpl("");
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl == null) {
            obj = objM454constructorimpl;
        } else {
            g.d(g.f55970a, "WifiUtils --> getLocalIP() --> 获取IP异常 -- it = " + thM457exceptionOrNullimpl, false, 2, null);
        }
        return (String) obj;
    }

    public final WifiManager m() {
        return (WifiManager) f55961b.getValue();
    }

    public final boolean n() {
        return m().is5GHzBandSupported();
    }

    public final boolean q() {
        return m().isP2pSupported();
    }

    public final boolean r(Context context) {
        Intrinsics.h(context, "context");
        return Build.VERSION.SDK_INT < 29 || context.getApplicationInfo().targetSdkVersion < 29;
    }

    public final boolean s() {
        return Build.VERSION.SDK_INT < 29;
    }

    public final String t(long j11) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append((int) (j11 & 255));
        stringBuffer.append('.');
        stringBuffer.append((int) ((j11 >> 8) & 255));
        stringBuffer.append('.');
        stringBuffer.append((int) ((j11 >> 16) & 255));
        stringBuffer.append('.');
        stringBuffer.append((int) ((j11 >> 24) & 255));
        String string = stringBuffer.toString();
        Intrinsics.g(string, "toString(...)");
        return string;
    }

    public final void v(AppCompatActivity appCompatActivity) {
        Object objM454constructorimpl;
        Unit unit;
        try {
            Result.Companion companion = Result.INSTANCE;
            Intent intent = new Intent("android.settings.action.MANAGE_WRITE_SETTINGS");
            intent.setData(Uri.parse("package:" + (appCompatActivity != null ? appCompatActivity.getPackageName() : null)));
            if (appCompatActivity != null) {
                appCompatActivity.startActivity(intent);
                unit = Unit.f67061a;
            } else {
                unit = null;
            }
            objM454constructorimpl = Result.m454constructorimpl(unit);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl == null) {
            return;
        }
        g.d(g.f55970a, f55960a.e() + " --> openManageWriteSetting() --> it = " + thM457exceptionOrNullimpl, false, 2, null);
    }

    public final void w(AppCompatActivity appCompatActivity) {
        Intent intent = new Intent("android.settings.WIFI_SETTINGS");
        if (appCompatActivity != null) {
            appCompatActivity.startActivity(intent);
        }
    }

    public final void x() {
        Object objM454constructorimpl;
        NetworkInfo activeNetworkInfo;
        try {
            Result.Companion companion = Result.INSTANCE;
            Object systemService = Utils.a().getApplicationContext().getApplicationContext().getSystemService("connectivity");
            ConnectivityManager connectivityManager = systemService instanceof ConnectivityManager ? (ConnectivityManager) systemService : null;
            if (connectivityManager != null && (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) != null && activeNetworkInfo.isAvailable()) {
                WifiUtils wifiUtils = f55960a;
                WifiInfo connectionInfo = wifiUtils.m().getConnectionInfo();
                Intrinsics.g(connectionInfo, "getConnectionInfo(...)");
                String ssid = connectionInfo.getSSID();
                Intrinsics.g(ssid, "getSSID(...)");
                if (wifiUtils.o(ssid)) {
                    wifiUtils.m().removeNetwork(connectionInfo.getNetworkId());
                    g.b(g.f55970a, wifiUtils.e() + " --> removeMbNet() --> success", false, 2, null);
                }
            }
            objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl == null) {
            return;
        }
        g.b(g.f55970a, f55960a.e() + " --> removeMbNet() --> 异常 it = " + thM457exceptionOrNullimpl, false, 2, null);
    }
}
