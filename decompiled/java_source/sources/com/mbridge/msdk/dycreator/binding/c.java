package com.mbridge.msdk.dycreator.binding;

import android.text.TextUtils;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.mbridge.msdk.dycreator.binding.base.BaseStrategy;
import com.mbridge.msdk.dycreator.binding.strategy.d;
import com.mbridge.msdk.dycreator.binding.strategy.e;
import com.mbridge.msdk.dycreator.binding.strategy.f;
import com.mbridge.msdk.dycreator.binding.strategy.g;

/* JADX INFO: loaded from: classes5.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile c f34760a;

    private c() {
    }

    public static c a() {
        if (f34760a == null) {
            synchronized (c.class) {
                try {
                    if (f34760a == null) {
                        f34760a = new c();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f34760a;
    }

    public <T extends BaseStrategy> T a(String str) {
        T aVar = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (str.equals("close")) {
            aVar = new com.mbridge.msdk.dycreator.binding.strategy.c();
        } else if (str.equals("download")) {
            aVar = new com.mbridge.msdk.dycreator.binding.strategy.b();
        } else if (!str.equals("deeplink") && str.equals("activity")) {
            aVar = new com.mbridge.msdk.dycreator.binding.strategy.a();
        }
        if (str.equals(TmcConstants.MENU_KEY_FEEDBACK)) {
            aVar = new d();
        }
        if (str.equals("notice")) {
            aVar = new e();
        }
        if (str.equals("permissionInfo")) {
            aVar = new f();
        }
        return str.equals("privateAddress") ? new g() : aVar;
    }
}
