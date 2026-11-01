package com.mbridge.msdk.setting.net;

import android.content.Context;
import com.cloud.tmc.integration.net.UrlKt;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.same.net.wrapper.e;
import com.mbridge.msdk.foundation.tools.f;
import com.mbridge.msdk.foundation.tools.o0;

/* JADX INFO: loaded from: classes5.dex */
public class d {
    public static void a(Context context, e eVar) {
        if (eVar == null) {
            return;
        }
        try {
            eVar.a(UrlKt.KEY_MINI_GAID, f.d());
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                o0.b("SettingRequestDiff", e11.getMessage());
            }
        }
    }
}
