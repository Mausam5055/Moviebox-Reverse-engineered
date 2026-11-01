package com.mbridge.msdk.util;

import com.cloud.tmc.component_api_ps.MiniAppIpcCommonUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.out.MBConfiguration;

/* JADX INFO: loaded from: classes5.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile Boolean f38760a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile Boolean f38761b;

    public static boolean a() {
        if (f38760a == null) {
            try {
                boolean z10 = Integer.parseInt(String.valueOf(MBConfiguration.SDK_VERSION.charAt(10))) == 2;
                f38760a = Boolean.valueOf(z10);
                return z10;
            } catch (Exception e11) {
                if (MBridgeConstans.DEBUG) {
                    o0.b(MiniAppIpcCommonUtils.TAG, "isChina", e11);
                }
            }
        }
        return f38760a != null && f38760a.booleanValue();
    }

    public static boolean b() {
        if (f38761b == null) {
            try {
                boolean z10 = Integer.parseInt(String.valueOf(MBConfiguration.SDK_VERSION.charAt(10))) == 1;
                f38761b = Boolean.valueOf(z10);
                return z10;
            } catch (Exception e11) {
                if (MBridgeConstans.DEBUG) {
                    o0.b(MiniAppIpcCommonUtils.TAG, "isOversea", e11);
                }
            }
        }
        return f38761b != null && f38761b.booleanValue();
    }
}
