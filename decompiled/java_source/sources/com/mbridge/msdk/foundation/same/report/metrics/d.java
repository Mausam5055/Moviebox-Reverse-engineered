package com.mbridge.msdk.foundation.same.report.metrics;

import android.content.Context;
import android.text.TextUtils;
import com.cloud.tmc.integration.MiniAppConfigHelper;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.n;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.q0;
import com.mbridge.msdk.mbbid.common.BidResponsedEx;
import com.mbridge.msdk.playercommon.exoplayer2.DefaultLoadControl;
import com.mbridge.msdk.tracker.m;
import com.mbridge.msdk.tracker.network.toolbox.h;
import com.mbridge.msdk.tracker.p;
import com.mbridge.msdk.tracker.x;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class d {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static d f35620e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private volatile m f35621a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Map<String, e> f35622b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private LinkedHashMap<String, c> f35623c = new LinkedHashMap<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Map<String, e> f35624d = new HashMap();

    private d() {
        if (this.f35621a == null) {
            this.f35621a = m.a("metrics_sdk", com.mbridge.msdk.foundation.controller.c.m().d(), a());
        }
        JSONObject jSONObjectB = com.mbridge.msdk.foundation.same.report.c.b();
        if (this.f35621a != null) {
            this.f35621a.a(jSONObjectB);
            this.f35621a.h();
        }
    }

    private p a(int i11) {
        return i11 == 1 ? new p(new com.mbridge.msdk.foundation.same.report.m((byte) 2), com.mbridge.msdk.foundation.same.net.utils.d.h().f35477j, com.mbridge.msdk.foundation.same.net.utils.d.h().f35481n) : new p(new h(), com.mbridge.msdk.foundation.same.net.utils.d.h().f35468d, 0);
    }

    private x a() {
        try {
            int iB = q0.a().b("metrics", "t_m_e_t", q0.a().b("t_m_e_t", MiniAppConfigHelper.DEFAULT_MINI_SCOPE_REQUEST_DIFF));
            int iB2 = q0.a().b("metrics", "t_m_e_s", q0.a().b("t_m_e_s", 50));
            int iB3 = q0.a().b("metrics", "t_m_r_c", q0.a().b("t_m_r_c", 50));
            int iB4 = q0.a().b("metrics", "t_m_t", q0.a().b("t_m_t", DefaultLoadControl.DEFAULT_MIN_BUFFER_MS));
            int iB5 = q0.a().b("metrics", "t_m_r_t_s", q0.a().b("t_m_r_t_s", 2));
            int iB6 = q0.a().b("metrics", "t_r_t", q0.a().b("t_r_t", 1));
            if (iB6 != 0 && iB6 != 1) {
                iB6 = 0;
            }
            return new x.b().a(iB).b(iB2).d(iB3).c(iB4).e(iB5).a(new com.mbridge.msdk.foundation.same.report.d()).a(com.mbridge.msdk.foundation.same.report.c.c()).a(new n()).a(iB6, a(iB6)).a();
        } catch (Exception e11) {
            o0.b("EventLibraryReport", "configTrackManager error: " + e11.getMessage());
            return null;
        }
    }

    private void a(String str, c cVar, com.mbridge.msdk.foundation.same.report.metrics.callback.a aVar) {
        try {
            if (Arrays.asList(b.f35583c).contains(str)) {
                cVar.c(str);
            }
            Map<String, e> map = this.f35624d;
            if (map != null && map.containsKey(str)) {
                cVar.a(str, this.f35624d.get(str));
            }
            new f().a(str, d(), cVar, aVar);
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                e11.printStackTrace();
            }
        }
    }

    public static d b() {
        if (f35620e == null) {
            synchronized (d.class) {
                try {
                    if (f35620e == null) {
                        f35620e = new d();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f35620e;
    }

    public c a(c cVar) {
        if (cVar == null) {
            return null;
        }
        try {
            return (c) cVar.clone();
        } catch (CloneNotSupportedException e11) {
            if (!MBridgeConstans.DEBUG) {
                return null;
            }
            e11.printStackTrace();
            return null;
        }
    }

    public c a(String str) {
        return a(str, "");
    }

    public c a(String str, String str2) {
        LinkedHashMap<String, c> linkedHashMap;
        try {
            String str3 = str + str2;
            if (!TextUtils.isEmpty(str3) && (linkedHashMap = this.f35623c) != null && linkedHashMap.containsKey(str3)) {
                return this.f35623c.get(str3);
            }
            return null;
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                e11.printStackTrace();
            }
            return null;
        }
    }

    public e a(int i11, int i12, String str, boolean z10, int i13) {
        e eVar = new e();
        try {
            eVar.a(CampaignEx.JSON_KEY_HB, Integer.valueOf(i11));
            eVar.a("adtp", Integer.valueOf(i12));
            eVar.a(MBridgeConstans.PROPERTIES_UNIT_ID, str);
            if (z10) {
                eVar.a("auto_load", Integer.valueOf(i13));
            }
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                e11.printStackTrace();
            }
        }
        return eVar;
    }

    public void a(com.mbridge.msdk.foundation.entity.m mVar, CampaignEx campaignEx) {
        e eVar = new e();
        eVar.a("result", Integer.valueOf(mVar.x()));
        eVar.a("scenes", mVar.a("scenes", ""));
        eVar.a("resource_type", Integer.valueOf(mVar.y()));
        eVar.a("url", mVar.a("url", ""));
        eVar.a("reason", mVar.t());
        eVar.a("mraid_type", Integer.valueOf(mVar.p()));
        b().a(mVar.n(), campaignEx, eVar);
    }

    public void a(String str, CampaignEx campaignEx) {
        String currentLocalRid = "";
        if (campaignEx != null) {
            try {
                currentLocalRid = campaignEx.getCurrentLocalRid();
            } catch (Exception e11) {
                if (MBridgeConstans.DEBUG) {
                    e11.printStackTrace();
                    return;
                }
                return;
            }
        }
        c cVar = c().get(currentLocalRid);
        if (cVar == null) {
            cVar = new c();
        }
        if (cVar.j() != null && !cVar.j().isEmpty() && campaignEx != null) {
            for (int i11 = 0; i11 < cVar.j().size(); i11++) {
                if (cVar.j().get(i11).getId().equals(campaignEx.getId())) {
                    cVar.j().set(i11, campaignEx);
                    break;
                }
            }
        }
        cVar.a(campaignEx);
        cVar.h(currentLocalRid);
        a(str, cVar, (com.mbridge.msdk.foundation.same.report.metrics.callback.a) null);
    }

    public void a(String str, CampaignEx campaignEx, e eVar) {
        c cVar;
        String localRequestId = "";
        if (campaignEx != null) {
            try {
                localRequestId = campaignEx.getLocalRequestId();
                cVar = c().get(localRequestId);
            } catch (Exception e11) {
                if (MBridgeConstans.DEBUG) {
                    e11.printStackTrace();
                    return;
                }
                return;
            }
        } else {
            cVar = null;
        }
        if (cVar == null) {
            cVar = new c();
        } else if (Arrays.asList(b.f35588h).contains(str)) {
            cVar = a(cVar);
        }
        cVar.a(campaignEx);
        cVar.h(localRequestId);
        cVar.a(str, eVar);
        a(str, cVar, (com.mbridge.msdk.foundation.same.report.metrics.callback.a) null);
    }

    public void a(String str, c cVar) {
        try {
            Map<String, e> map = this.f35624d;
            if (map != null && map.containsKey(str) && cVar != null) {
                cVar.a(str, this.f35624d.get(str));
            }
            new f().a(str, d(), cVar, null);
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                e11.printStackTrace();
            }
        }
    }

    public void a(String str, c cVar, CampaignEx campaignEx, Context context, com.mbridge.msdk.foundation.same.report.metrics.callback.a aVar) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            if (cVar == null) {
                cVar = new c();
            }
            e eVar = new e();
            eVar.a("st", Long.valueOf(System.currentTimeMillis()));
            if (campaignEx != null) {
                eVar.a(BidResponsedEx.KEY_CID, campaignEx.getId());
                eVar.a("lrid", campaignEx.getLocalRequestId());
                eVar.a("rid", campaignEx.getRequestId());
                eVar.a("rid_n", campaignEx.getRequestIdNotice());
                eVar.a("adtp", Integer.valueOf(campaignEx.getAdType()));
                if (!eVar.a(MBridgeConstans.PROPERTIES_UNIT_ID)) {
                    eVar.a(MBridgeConstans.PROPERTIES_UNIT_ID, campaignEx.getCampaignUnitId());
                }
                eVar.a(CampaignEx.JSON_KEY_HB, Integer.valueOf(campaignEx.isBidCampaign() ? 1 : 0));
                eVar.a("bid_tk", campaignEx.getBidToken());
            }
            if (context != null) {
                eVar.a("network_type", Integer.valueOf(k0.s(context)));
            }
            cVar.a(str, eVar);
            a(str, cVar, aVar);
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                e11.printStackTrace();
            }
        }
    }

    public void a(String str, e eVar) {
        Map<String, e> map = this.f35624d;
        if (map != null) {
            map.put(str, eVar);
        }
    }

    public void a(String str, List<CampaignEx> list, e eVar) {
        CampaignEx campaignEx;
        String currentLocalRid = "";
        if (list != null) {
            try {
                if (list.size() > 0 && (campaignEx = list.get(0)) != null) {
                    currentLocalRid = campaignEx.getCurrentLocalRid();
                }
            } catch (Exception e11) {
                if (MBridgeConstans.DEBUG) {
                    e11.printStackTrace();
                    return;
                }
                return;
            }
        }
        c cVar = c().get(currentLocalRid);
        if (cVar == null) {
            cVar = new c();
        }
        cVar.b(list);
        if (list != null && list.size() > 0) {
            cVar.h(list.get(0).getCurrentLocalRid());
        }
        cVar.a(str, eVar);
        a(str, cVar, (com.mbridge.msdk.foundation.same.report.metrics.callback.a) null);
    }

    public void a(JSONObject jSONObject) {
        if (jSONObject != null) {
            try {
                if (jSONObject.length() == 0) {
                    return;
                }
                String strOptString = jSONObject.optString("key");
                if (TextUtils.isEmpty(strOptString)) {
                    return;
                }
                com.mbridge.msdk.tracker.e eVar = new com.mbridge.msdk.tracker.e(strOptString);
                eVar.a(0);
                eVar.b(0);
                eVar.a(com.mbridge.msdk.foundation.same.report.c.d());
                eVar.a(jSONObject);
                m mVarD = b().d();
                if (mVarD == null || !mVarD.g()) {
                    return;
                }
                mVarD.d(eVar);
            } catch (Exception e11) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("EventLibraryReport", "reportByTrackManager error: " + e11.getMessage());
                }
            }
        }
    }

    public e b(String str) {
        Map<String, e> map;
        e eVar = new e();
        try {
            return (TextUtils.isEmpty(str) || (map = this.f35622b) == null || !map.containsKey(str)) ? eVar : this.f35622b.get(str);
        } catch (Exception e11) {
            if (!MBridgeConstans.DEBUG) {
                return eVar;
            }
            e11.printStackTrace();
            return eVar;
        }
    }

    public void b(c cVar) {
        if (cVar != null) {
            try {
                if (this.f35622b != null) {
                    e eVar = new e();
                    eVar.a("rs_rid", cVar.s());
                    eVar.a("r_stid", cVar.t());
                    eVar.a("rus_rid", cVar.u());
                    eVar.a("u_stid", cVar.x());
                    this.f35622b.put(cVar.w(), eVar);
                }
            } catch (Exception e11) {
                if (MBridgeConstans.DEBUG) {
                    e11.printStackTrace();
                }
            }
        }
    }

    public void b(String str, c cVar, com.mbridge.msdk.foundation.same.report.metrics.callback.a aVar) {
        a(str, cVar, aVar);
    }

    public void b(String str, e eVar) {
        try {
            c cVar = new c();
            if (eVar.b(MBridgeConstans.PROPERTIES_UNIT_ID) != null) {
                cVar.m(String.valueOf(eVar.b(MBridgeConstans.PROPERTIES_UNIT_ID)));
            }
            if (eVar.b("lrid") != null && (eVar.b("lrid") instanceof String)) {
                cVar.h(String.valueOf(eVar.b("lrid")));
            }
            cVar.a(str, eVar);
            new f().b(str, d(), cVar, null);
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                e11.printStackTrace();
            }
        }
    }

    public void b(String str, String str2) {
        LinkedHashMap<String, c> linkedHashMap;
        try {
            String str3 = str + str2;
            if (!TextUtils.isEmpty(str3) && (linkedHashMap = this.f35623c) != null && linkedHashMap.containsKey(str3)) {
                this.f35623c.remove(str3);
            }
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                e11.printStackTrace();
            }
        }
    }

    public LinkedHashMap<String, c> c() {
        return this.f35623c;
    }

    public void c(String str) {
        b(str, "");
    }

    public m d() {
        try {
            JSONObject jSONObjectB = com.mbridge.msdk.foundation.same.report.c.b();
            if (this.f35621a == null) {
                this.f35621a = m.a("metrics_sdk", com.mbridge.msdk.foundation.controller.c.m().d(), a());
                if (this.f35621a != null) {
                    this.f35621a.a(jSONObjectB);
                    this.f35621a.h();
                }
            } else {
                this.f35621a.a(jSONObjectB);
            }
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                e11.printStackTrace();
            }
        }
        return this.f35621a;
    }

    public void d(String str) {
        try {
            JSONObject jSONObjectA = com.mbridge.msdk.foundation.same.c.a(str);
            if (jSONObjectA != null && jSONObjectA.length() != 0) {
                String strOptString = jSONObjectA.optString("key");
                if (TextUtils.isEmpty(strOptString)) {
                    return;
                }
                com.mbridge.msdk.tracker.e eVar = new com.mbridge.msdk.tracker.e(strOptString);
                eVar.a(0);
                eVar.b(0);
                eVar.a(com.mbridge.msdk.foundation.same.report.c.d());
                eVar.a(jSONObjectA);
                m mVarD = b().d();
                if (mVarD == null || !mVarD.g()) {
                    return;
                }
                mVarD.d(eVar);
            }
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                o0.b("EventLibraryReport", "reportByTrackManager error: " + e11.getMessage());
            }
        }
    }
}
