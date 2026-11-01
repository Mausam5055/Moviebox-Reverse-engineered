package com.mbridge.msdk.reward.report.metrics;

import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.metrics.c;
import com.mbridge.msdk.foundation.same.report.metrics.d;
import com.mbridge.msdk.videocommon.setting.b;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile a f37193a;

    private a() {
    }

    public static a a() {
        if (f37193a == null) {
            synchronized (a.class) {
                try {
                    if (f37193a == null) {
                        f37193a = new a();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f37193a;
    }

    private void a(c cVar) {
        if (cVar == null) {
            try {
                cVar = new c();
            } catch (Exception e11) {
                if (MBridgeConstans.DEBUG) {
                    e11.printStackTrace();
                    return;
                }
                return;
            }
        }
        com.mbridge.msdk.videocommon.setting.a aVarC = b.b().c();
        if (aVarC != null) {
            cVar.k(aVarC.a());
            cVar.j(aVarC.f());
        }
    }

    private void b(c cVar) {
        List<CampaignEx> listJ;
        if (cVar == null) {
            return;
        }
        try {
            int iA = cVar.a();
            String strW = cVar.w();
            if (TextUtils.isEmpty(strW) && (listJ = cVar.j()) != null && listJ.size() > 0 && listJ.get(0) != null) {
                strW = listJ.get(0).getCampaignUnitId();
                iA = listJ.get(0).getAdType();
                cVar.a(iA);
                cVar.m(strW);
            }
            com.mbridge.msdk.videocommon.setting.c cVarA = b.b().a(com.mbridge.msdk.foundation.controller.c.m().b(), strW, iA == 287);
            if (cVarA != null) {
                cVar.l(cVarA.x());
                cVar.n(cVarA.a());
            }
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                e11.printStackTrace();
            }
        }
    }

    public void a(String str, c cVar) {
        try {
            a(cVar);
            b(cVar);
            d.b().b(cVar);
            d.b().b(str, cVar, null);
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                e11.printStackTrace();
            }
        }
    }
}
