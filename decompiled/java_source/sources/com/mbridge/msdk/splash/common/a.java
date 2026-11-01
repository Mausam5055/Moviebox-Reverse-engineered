package com.mbridge.msdk.splash.common;

import android.content.Context;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.same.DomainNameUtils;
import com.mbridge.msdk.foundation.tools.f;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f37370e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f37371f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public String f37372g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String f37373h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f37374i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public String f37375j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public String f37376k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public String f37377l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public String f37378m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public String f37379n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public String f37380o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f37381p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f37382q;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f37368c = "android";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f37366a = k0.t();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f37367b = k0.q();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f37369d = f.d();

    public a(Context context) {
        int iS = k0.s(context);
        this.f37370e = String.valueOf(iS);
        this.f37371f = k0.a(context, iS);
        this.f37372g = k0.l(context);
        this.f37373h = com.mbridge.msdk.foundation.controller.c.m().c();
        this.f37374i = com.mbridge.msdk.foundation.controller.c.m().b();
        this.f37375j = String.valueOf(t0.g(context));
        this.f37376k = String.valueOf(t0.f(context));
        this.f37378m = String.valueOf(t0.d(context));
        if (context.getResources().getConfiguration().orientation == 2) {
            this.f37377l = TmcStartParams.KEY_LANDSCAPE;
        } else {
            this.f37377l = "portrait";
        }
        this.f37379n = k0.u();
        this.f37380o = f.e();
        this.f37381p = f.a();
        this.f37382q = com.mbridge.msdk.foundation.controller.authoritycontroller.b.j() ? 1 : 0;
    }

    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        try {
            if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
                jSONObject.put("device", this.f37366a);
                jSONObject.put("system_version", this.f37367b);
                jSONObject.put("network_type", this.f37370e);
                jSONObject.put("network_type_str", this.f37371f);
                jSONObject.put("device_ua", this.f37372g);
                jSONObject.put("has_wx", k0.D(com.mbridge.msdk.foundation.controller.c.m().d()));
                jSONObject.put("integrated_wx", k0.D());
                jSONObject.put("mnc", k0.r(com.mbridge.msdk.foundation.controller.c.m().d()));
                jSONObject.put("mcc", k0.q(com.mbridge.msdk.foundation.controller.c.m().d()));
                jSONObject.put("adid_limit", this.f37381p);
                jSONObject.put("adid_limit_dev", this.f37382q);
            }
            jSONObject.put("plantform", this.f37368c);
            if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_DEVICE_ID)) {
                jSONObject.put("google_ad_id", this.f37369d);
                jSONObject.put("az_aid_info", this.f37380o);
            }
            jSONObject.put("appkey", this.f37373h);
            jSONObject.put("appId", this.f37374i);
            jSONObject.put("screen_width", this.f37375j);
            jSONObject.put("screen_height", this.f37376k);
            jSONObject.put("orientation", this.f37377l);
            jSONObject.put("scale", this.f37378m);
            if (k0.y() != 0) {
                jSONObject.put("tun", k0.y());
            }
            jSONObject.put("f", this.f37379n);
            if (DomainNameUtils.getInstance().isExcludeCNDomain()) {
                jSONObject.put("re_domain", "1");
            }
        } catch (JSONException e11) {
            o0.b("BaseDeviceInfo", e11.getMessage());
        }
        return jSONObject;
    }
}
