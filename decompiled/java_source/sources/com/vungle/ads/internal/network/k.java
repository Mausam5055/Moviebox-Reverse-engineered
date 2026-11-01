package com.vungle.ads.internal.network;

import android.os.Build;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class k {
    public static final k INSTANCE;
    private static String appId;
    private static String appVersion;
    private static String headerUa;

    static {
        k kVar = new k();
        INSTANCE = kVar;
        headerUa = kVar.defaultHeader();
    }

    private k() {
    }

    private final String defaultHeader() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(Intrinsics.c("Amazon", Build.MANUFACTURER) ? "VungleAmazon/" : "VungleDroid/");
        sb2.append("7.5.0");
        return sb2.toString();
    }

    public final String getAppId() {
        return appId;
    }

    public final String getAppVersion() {
        return appVersion;
    }

    public final String getHeaderUa() {
        return headerUa;
    }

    public final void reset() {
        headerUa = defaultHeader();
    }

    public final void setAppId(String str) {
        appId = str;
    }

    public final void setAppVersion(String str) {
        appVersion = str;
    }

    public final void setHeaderUa(String str) {
        Intrinsics.h(str, "<set-?>");
        headerUa = str;
    }
}
