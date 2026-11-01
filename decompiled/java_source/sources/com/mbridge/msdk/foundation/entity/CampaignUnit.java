package com.mbridge.msdk.foundation.entity;

import android.content.Context;
import android.os.Build;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.out.MBConfiguration;
import com.mbridge.msdk.system.NoProGuard;
import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class CampaignUnit extends b implements Serializable, NoProGuard {
    private static final String TAG = "CampaignUnit";

    @Override // com.mbridge.msdk.foundation.entity.b
    public String assembCParams() {
        String str;
        String strValueOf;
        StringBuffer stringBuffer = this.cParams;
        if (stringBuffer != null && stringBuffer.length() > 0) {
            return this.cParams.toString();
        }
        try {
            String strD = com.mbridge.msdk.foundation.tools.f.d();
            Context contextD = com.mbridge.msdk.foundation.controller.c.m().d();
            String strR = k0.r(contextD);
            String strQ = k0.q(contextD);
            if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
                strValueOf = String.valueOf(k0.s(contextD));
                str = k0.n(contextD) + "x" + k0.m(contextD);
            } else {
                str = "";
                strValueOf = str;
            }
            StringBuffer stringBuffer2 = this.cParams;
            stringBuffer2.append(getAdType());
            stringBuffer2.append("|");
            stringBuffer2.append(nullToEmpty("1"));
            stringBuffer2.append("|");
            stringBuffer2.append(nullToEmpty(Build.VERSION.RELEASE));
            stringBuffer2.append("|");
            stringBuffer2.append(nullToEmpty(MBConfiguration.SDK_VERSION));
            stringBuffer2.append("|");
            stringBuffer2.append(nullToEmpty(k0.n()));
            stringBuffer2.append("|");
            stringBuffer2.append(nullToEmpty(str));
            stringBuffer2.append("|");
            stringBuffer2.append(nullToEmpty(Integer.valueOf(k0.F(com.mbridge.msdk.foundation.controller.c.m().d()))));
            stringBuffer2.append("|");
            stringBuffer2.append(nullToEmpty(k0.p(com.mbridge.msdk.foundation.controller.c.m().d())));
            stringBuffer2.append("|");
            stringBuffer2.append(nullToEmpty(strValueOf));
            stringBuffer2.append("|");
            stringBuffer2.append(nullToEmpty(strQ));
            stringBuffer2.append(nullToEmpty(strR));
            stringBuffer2.append("|");
            stringBuffer2.append("|");
            stringBuffer2.append("|");
            stringBuffer2.append("|");
            stringBuffer2.append(nullToEmpty(strD));
            stringBuffer2.append("|");
            stringBuffer2.append(nullToEmpty(""));
            stringBuffer2.append("|");
            stringBuffer2.append(nullToEmpty(k0.s()));
            stringBuffer2.append("|");
            stringBuffer2.append(nullToEmpty(""));
            stringBuffer2.append("|");
            stringBuffer2.append("");
            stringBuffer2.append("|");
            stringBuffer2.append(nullToEmpty(""));
            stringBuffer2.append("|");
            stringBuffer2.append(nullToEmpty(com.mbridge.msdk.foundation.same.a.V + "," + com.mbridge.msdk.foundation.same.a.f35335g));
            stringBuffer2.append("|");
            stringBuffer2.append(k0.j());
            stringBuffer2.append("|");
            this.cParams = stringBuffer2;
        } catch (Throwable th2) {
            if (MBridgeConstans.DEBUG) {
                o0.b(TAG, th2.getMessage(), th2);
            }
        }
        return this.cParams.toString();
    }
}
