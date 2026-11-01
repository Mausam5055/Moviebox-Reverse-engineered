package com.mbridge.msdk.mbbanner.common.request;

import android.content.Context;
import android.os.Build;
import com.cloud.tmc.integration.net.UrlKt;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.foundation.same.net.wrapper.b;
import com.mbridge.msdk.foundation.same.net.wrapper.e;
import com.mbridge.msdk.foundation.tools.f;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.t;
import com.mbridge.msdk.out.MBConfiguration;

/* JADX INFO: loaded from: classes5.dex */
public class a extends b {
    public a(Context context) {
        super(context);
    }

    @Override // com.mbridge.msdk.foundation.same.net.wrapper.a, com.mbridge.msdk.foundation.same.net.wrapper.c
    public void addExtraParams(String str, e eVar) {
        super.addExtraParams(str, eVar);
        eVar.a(TrackingKey.PLATFORM, "1");
        eVar.a("os_version", Build.VERSION.RELEASE);
        eVar.a("package_name", k0.t(this.mContext));
        eVar.a("app_version_name", k0.B(this.mContext));
        eVar.a("app_version_code", k0.A(this.mContext) + "");
        eVar.a("orientation", k0.F(this.mContext) + "");
        eVar.a("model", k0.n());
        eVar.a("brand", k0.s());
        eVar.a(UrlKt.KEY_MINI_GAID, "");
        eVar.a("gaid2", f.c());
        int iS = k0.s(this.mContext);
        eVar.a("network_type", iS + "");
        eVar.a("network_str", k0.a(this.mContext, iS) + "");
        eVar.a(TmcConstants.KEY_LANGUAGE, k0.p(this.mContext));
        eVar.a("timezone", k0.w());
        eVar.a("useragent", k0.i());
        eVar.a("sdk_version", MBConfiguration.SDK_VERSION);
        eVar.a("screen_size", k0.n(this.mContext) + "x" + k0.m(this.mContext));
        eVar.a("version_flag", "1");
        if (com.mbridge.msdk.util.b.a()) {
            eVar.a("gp_version", t.d(this.mContext));
        }
        com.mbridge.msdk.foundation.same.net.wrapper.f.a(eVar, this.mContext);
        com.mbridge.msdk.foundation.same.net.wrapper.f.b(eVar);
        com.mbridge.msdk.foundation.same.net.wrapper.f.j(eVar);
    }
}
