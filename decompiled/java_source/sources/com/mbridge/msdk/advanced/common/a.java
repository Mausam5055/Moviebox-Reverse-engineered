package com.mbridge.msdk.advanced.common;

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

/* JADX INFO: loaded from: classes4.dex */
public class a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f34045e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f34046f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public String f34047g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String f34048h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f34049i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public String f34050j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public String f34051k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public String f34052l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public String f34053m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public String f34054n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public String f34055o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f34056p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f34057q;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f34043c = "android";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f34041a = k0.t();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f34042b = k0.q();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f34044d = f.d();

    public a(Context context) {
        int iS = k0.s(context);
        this.f34045e = String.valueOf(iS);
        this.f34046f = k0.a(context, iS);
        this.f34047g = k0.l(context);
        this.f34048h = com.mbridge.msdk.foundation.controller.c.m().c();
        this.f34049i = com.mbridge.msdk.foundation.controller.c.m().b();
        this.f34050j = String.valueOf(t0.g(context));
        this.f34051k = String.valueOf(t0.f(context));
        this.f34053m = String.valueOf(t0.d(context));
        if (context.getResources().getConfiguration().orientation == 2) {
            this.f34052l = TmcStartParams.KEY_LANDSCAPE;
        } else {
            this.f34052l = "portrait";
        }
        this.f34054n = k0.u();
        this.f34055o = f.e();
        this.f34056p = f.a();
        this.f34057q = com.mbridge.msdk.foundation.controller.authoritycontroller.b.j() ? 1 : 0;
    }

    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        try {
            if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
                jSONObject.put("device", this.f34041a);
                jSONObject.put("system_version", this.f34042b);
                jSONObject.put("network_type", this.f34045e);
                jSONObject.put("network_type_str", this.f34046f);
                jSONObject.put("device_ua", this.f34047g);
                jSONObject.put("has_wx", k0.D(com.mbridge.msdk.foundation.controller.c.m().d()));
                jSONObject.put("integrated_wx", k0.D());
                jSONObject.put("opensdk_ver", k0.B() + "");
                jSONObject.put("wx_api_ver", k0.e(com.mbridge.msdk.foundation.controller.c.m().i()) + "");
                jSONObject.put("mnc", k0.r(com.mbridge.msdk.foundation.controller.c.m().d()));
                jSONObject.put("mcc", k0.q(com.mbridge.msdk.foundation.controller.c.m().d()));
                jSONObject.put("adid_limit", this.f34056p);
                jSONObject.put("adid_limit_dev", this.f34057q);
            }
            jSONObject.put("plantform", this.f34043c);
            if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_DEVICE_ID)) {
                jSONObject.put("google_ad_id", this.f34044d);
                jSONObject.put("az_aid_info", this.f34055o);
            }
            jSONObject.put("appkey", this.f34048h);
            jSONObject.put("appId", this.f34049i);
            jSONObject.put("screen_width", this.f34050j);
            jSONObject.put("screen_height", this.f34051k);
            jSONObject.put("orientation", this.f34052l);
            jSONObject.put("scale", this.f34053m);
            if (k0.y() != 0) {
                jSONObject.put("tun", k0.y());
            }
            jSONObject.put("f", this.f34054n);
            if (DomainNameUtils.getInstance().isExcludeCNDomain()) {
                jSONObject.put("re_domain", "1");
            }
        } catch (JSONException e11) {
            o0.b("BaseDeviceInfo", e11.getMessage());
        }
        return jSONObject;
    }
}
