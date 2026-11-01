package com.mbridge.msdk.foundation.same.net.wrapper;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.tools.i0;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.o0;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f35507a = "";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static String f35508b = "";

    public static void a(e eVar) {
    }

    public static void a(e eVar, Context context) {
    }

    public static void a(e eVar, Context context, boolean z10, com.mbridge.msdk.setting.g gVar) {
        if (eVar == null) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
                jSONObject.put("dmt", k0.v() + "");
                jSONObject.put("dmf", k0.h());
                jSONObject.put("adid_limit", com.mbridge.msdk.foundation.tools.f.a() + "");
                jSONObject.put("adid_limit_dev", com.mbridge.msdk.foundation.controller.authoritycontroller.b.j() ? "1" : "0");
            }
            if (gVar.s0() == 1 && !TextUtils.isEmpty(com.mbridge.msdk.foundation.tools.f.e()) && com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_DEVICE_ID)) {
                jSONObject.put("az_aid_info", com.mbridge.msdk.foundation.tools.f.e());
            }
            if (TextUtils.isEmpty(jSONObject.toString())) {
                return;
            }
            if (!jSONObject.equals(f35508b)) {
                f35507a = i0.b(jSONObject.toString());
            }
            if (TextUtils.isEmpty(f35507a)) {
                return;
            }
            eVar.a("dvi", f35507a);
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                o0.b("CommonRequestParamsForAddDiff", e11.getMessage());
            }
        }
    }

    public static void b(e eVar) {
    }

    public static void c(e eVar) {
    }
}
