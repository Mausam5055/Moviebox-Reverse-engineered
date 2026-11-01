package com.transsion.transfer.wifi.util;

import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiManager;
import android.text.TextUtils;
import java.lang.reflect.Field;
import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.Regex;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes6.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f55962a = new a();

    private a() {
    }

    public final int a(WifiConfiguration wifiConfig) {
        Intrinsics.h(wifiConfig, "wifiConfig");
        try {
            return wifiConfig.getClass().getDeclaredField("numAssociation").getInt(wifiConfig);
        } catch (Exception unused) {
            return 0;
        }
    }

    public final String b(String str) {
        if (str == null || TextUtils.isEmpty(str)) {
            return "OPEN";
        }
        String str2 = "WEP";
        if (!StringsKt.c0(str, "WEP", false, 2, null)) {
            str2 = "PSK";
            if (!StringsKt.c0(str, "PSK", false, 2, null) && !StringsKt.c0(str, "WPA", false, 2, null)) {
                str2 = "EAP";
                if (!StringsKt.c0(str, "EAP", false, 2, null)) {
                    str2 = "OTHER";
                    if (!StringsKt.c0(str, "OTHER", false, 2, null)) {
                        return "OPEN";
                    }
                }
            }
        }
        return str2;
    }

    public final boolean c(String str) {
        int length = str != null ? str.length() : 0;
        if (length != 10 && length != 26 && length != 58) {
            return false;
        }
        Intrinsics.e(str);
        return new Regex("[0-9A-Fa-f]*").matches(str);
    }

    public final void d(WifiConfiguration wifiConfig) {
        Intrinsics.h(wifiConfig, "wifiConfig");
        try {
            Field declaredField = wifiConfig.getClass().getDeclaredField("numNoInternetAccessReports");
            declaredField.setAccessible(true);
            declaredField.setInt(wifiConfig, 1);
        } catch (Exception unused) {
        }
    }

    public final void e(WifiManager wifiManager, WifiConfiguration wifiConfig) {
        Intrinsics.h(wifiManager, "wifiManager");
        Intrinsics.h(wifiConfig, "wifiConfig");
        try {
            int i11 = 0;
            for (WifiConfiguration wifiConfiguration : wifiManager.getConfiguredNetworks()) {
                a aVar = f55962a;
                Intrinsics.e(wifiConfiguration);
                int iA = aVar.a(wifiConfiguration);
                if (iA > i11) {
                    i11 = iA;
                }
            }
            Field declaredField = wifiConfig.getClass().getDeclaredField("numAssociation");
            declaredField.setAccessible(true);
            declaredField.setInt(wifiConfig, i11);
        } catch (Exception unused) {
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:21:0x00dc  */
    public final void f(WifiConfiguration config, String str, String str2) {
        Intrinsics.h(config, "config");
        config.allowedAuthAlgorithms.clear();
        config.allowedGroupCiphers.clear();
        config.allowedKeyManagement.clear();
        config.allowedPairwiseCiphers.clear();
        config.allowedProtocols.clear();
        switch (b(str)) {
            case "EAP":
                config.allowedProtocols.set(1);
                config.allowedProtocols.set(0);
                config.allowedGroupCiphers.set(0);
                config.allowedGroupCiphers.set(1);
                config.allowedGroupCiphers.set(2);
                config.allowedGroupCiphers.set(3);
                config.allowedPairwiseCiphers.set(1);
                config.allowedPairwiseCiphers.set(2);
                config.allowedKeyManagement.set(2);
                config.allowedKeyManagement.set(3);
                WifiUtils wifiUtils = WifiUtils.f55960a;
                Intrinsics.e(str2);
                config.preSharedKey = wifiUtils.d(str2);
                break;
            case "PSK":
                config.hiddenSSID = true;
                config.allowedAuthAlgorithms.set(0);
                config.allowedProtocols.set(1);
                config.allowedProtocols.set(0);
                config.allowedKeyManagement.set(1);
                config.allowedPairwiseCiphers.set(2);
                config.allowedPairwiseCiphers.set(1);
                config.allowedGroupCiphers.set(0);
                config.allowedGroupCiphers.set(1);
                config.allowedGroupCiphers.set(3);
                config.allowedGroupCiphers.set(2);
                WifiUtils wifiUtils2 = WifiUtils.f55960a;
                Intrinsics.e(str2);
                config.preSharedKey = wifiUtils2.d(str2);
                config.status = 2;
                break;
            case "WEP":
                config.hiddenSSID = true;
                config.wepTxKeyIndex = 0;
                config.allowedKeyManagement.set(0);
                config.allowedAuthAlgorithms.set(1);
                config.allowedPairwiseCiphers.set(2);
                config.allowedPairwiseCiphers.set(1);
                config.allowedGroupCiphers.set(0);
                config.allowedGroupCiphers.set(1);
                config.status = 2;
                if (!f55962a.c(str2)) {
                    String[] strArr = config.wepKeys;
                    WifiUtils wifiUtils3 = WifiUtils.f55960a;
                    Intrinsics.e(str2);
                    strArr[0] = wifiUtils3.d(str2);
                } else {
                    config.wepKeys[0] = str2;
                }
                break;
            case "OPEN":
                config.allowedKeyManagement.set(0);
                break;
            default:
                StringCompanionObject stringCompanionObject = StringCompanionObject.f67289a;
                String str3 = String.format("\"%s\"", Arrays.copyOf(new Object[]{str2}, 1));
                Intrinsics.g(str3, "format(...)");
                config.preSharedKey = str3;
                break;
        }
        config.status = 2;
    }

    public final int g(WifiManager wifiManager, WifiConfiguration config) {
        Intrinsics.h(wifiManager, "wifiManager");
        Intrinsics.h(config, "config");
        a aVar = f55962a;
        aVar.e(wifiManager, config);
        aVar.d(config);
        return wifiManager.updateNetwork(config);
    }
}
