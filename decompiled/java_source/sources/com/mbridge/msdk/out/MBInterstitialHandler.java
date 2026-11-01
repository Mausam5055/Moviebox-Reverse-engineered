package com.mbridge.msdk.out;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.tools.t0;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class MBInterstitialHandler {
    private com.mbridge.msdk.interstitial.controller.a mController;
    private String unitId;

    public MBInterstitialHandler(Context context, Map<String, Object> map) {
        if (this.mController == null) {
            this.mController = new com.mbridge.msdk.interstitial.controller.a();
        }
        if (map != null && map.containsKey(MBridgeConstans.PROPERTIES_UNIT_ID)) {
            String str = (String) map.get(MBridgeConstans.PROPERTIES_UNIT_ID);
            this.unitId = str;
            if (!TextUtils.isEmpty(str)) {
                String strE = t0.e(str);
                if (!TextUtils.isEmpty(strE)) {
                    t0.b(str, strE);
                }
            }
        }
        this.mController.a(context, map);
        if (c.m().d() != null || context == null) {
            return;
        }
        c.m().b(context);
    }

    public String getCreativeIdWithUnitId() {
        com.mbridge.msdk.interstitial.controller.a aVar = this.mController;
        return aVar != null ? aVar.a() : "";
    }

    public String getRequestId() {
        com.mbridge.msdk.interstitial.controller.a aVar = this.mController;
        return aVar != null ? aVar.b() : "";
    }

    public void preload() {
        try {
            com.mbridge.msdk.interstitial.controller.a aVar = this.mController;
            if (aVar != null) {
                aVar.f();
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public void setInterstitialListener(InterstitialListener interstitialListener) {
        try {
            com.mbridge.msdk.interstitial.controller.a aVar = this.mController;
            if (aVar != null) {
                aVar.a(interstitialListener);
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public void show() {
        try {
            this.mController.j();
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }
}
