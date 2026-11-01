package com.mbridge.msdk.foundation.same.report;

import android.content.Context;
import android.text.TextUtils;
import com.cloud.tmc.kernel.utils.NetworkUtil;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.same.DomainNameUtils;
import com.mbridge.msdk.foundation.same.net.Aa;
import com.mbridge.msdk.foundation.tools.i0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.meituan.android.walle.ChannelReader;
import com.vungle.ads.internal.presenter.MRAIDPresenter;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class a {
    public static JSONObject a() {
        JSONObject jSONObject;
        Context contextD = com.mbridge.msdk.foundation.controller.c.m().d();
        try {
            jSONObject = j.a(contextD).c();
        } catch (Exception e11) {
            o0.b("CommonDeviceInfo", "getCommonProperty error", e11);
            jSONObject = null;
        }
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        try {
            if (TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.V)) {
                com.mbridge.msdk.foundation.same.a.V = com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B);
            }
            if (!TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.V)) {
                jSONObject.put(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, com.mbridge.msdk.foundation.same.a.V);
            }
            if (TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.f35335g)) {
                com.mbridge.msdk.foundation.same.a.f35335g = com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a("c");
            }
            if (!TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.f35335g)) {
                jSONObject.put("c", com.mbridge.msdk.foundation.same.a.f35335g);
            }
            jSONObject.put(MRAIDPresenter.OPEN, com.mbridge.msdk.foundation.same.a.S);
            String strA = Aa.a();
            if (strA == null) {
                strA = "";
            }
            jSONObject.put(ChannelReader.CHANNEL_KEY, strA);
            jSONObject.put("band_width", com.mbridge.msdk.foundation.same.net.a.b().a());
            if (!com.mbridge.msdk.foundation.controller.authoritycontroller.b.i()) {
                jSONObject.put("dev_source", "2");
            }
            if (DomainNameUtils.getInstance().isExcludeCNDomain()) {
                jSONObject.put("re_domain", "1");
            }
            com.mbridge.msdk.setting.g gVarD = com.mbridge.msdk.setting.h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
            if (gVarD == null) {
                gVarD = com.mbridge.msdk.setting.h.b().a();
            }
            JSONObject jSONObjectA = a(gVarD);
            if (jSONObjectA != null) {
                String string = jSONObjectA.toString();
                if (!TextUtils.isEmpty(string)) {
                    String strB = i0.b(string);
                    if (!TextUtils.isEmpty(strB)) {
                        jSONObject.put("dvi", strB);
                    }
                }
            }
            jSONObject.put("app_id", com.mbridge.msdk.foundation.controller.c.m().b());
            jSONObject.put("m_sdk", "msdk");
            jSONObject.put("lqswt", String.valueOf(1));
            jSONObject.put("network_available", String.valueOf(t0.m(contextD)));
            String strK = NetworkUtil.NETWORK_TYPE_UNKNOWN;
            if (gVarD != null) {
                strK = gVarD.k();
                jSONObject.put("a_stid", gVarD.a());
            }
            jSONObject.put("country_code", strK);
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    public static JSONObject a(com.mbridge.msdk.setting.g gVar) {
        try {
            return j.a(com.mbridge.msdk.foundation.controller.c.m().d(), gVar);
        } catch (Exception unused) {
            return null;
        }
    }
}
