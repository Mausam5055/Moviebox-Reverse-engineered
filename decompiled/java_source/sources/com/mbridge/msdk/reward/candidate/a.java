package com.mbridge.msdk.reward.candidate;

import android.text.TextUtils;
import com.cloud.config.utils.XLogUtil;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.framework.FrameworkConstants;
import com.mbridge.msdk.foundation.cache.d;
import com.mbridge.msdk.foundation.controller.b;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.metrics.e;
import com.mbridge.msdk.foundation.tools.i0;
import com.mbridge.msdk.foundation.tools.t0;
import com.vungle.ads.internal.presenter.MRAIDPresenter;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private d f37062a;

    public a(String str, boolean z10) {
        try {
            this.f37062a = b.a().b(str, com.mbridge.msdk.videocommon.setting.b.b().a(c.m().b(), str, z10).B());
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    private com.mbridge.msdk.foundation.cache.c a(double d11, String str, com.mbridge.msdk.reward.adapter.c cVar, com.mbridge.msdk.foundation.same.report.metrics.c cVar2, String str2, int i11) {
        com.mbridge.msdk.foundation.cache.c cVarA = this.f37062a.a();
        try {
            if (cVarA.g() > 0) {
                return cVarA;
            }
            JSONObject jSONObjectC = this.f37062a.c(str);
            if (jSONObjectC != null) {
                int iOptInt = jSONObjectC.optInt("max_usage_limit", 10);
                int iOptInt2 = jSONObjectC.optInt("max_cache_num", 20);
                if (iOptInt2 > 0) {
                    long j11 = 8640000;
                    long jOptLong = jSONObjectC.optLong("show_interval_time", 8640000L);
                    if (jOptLong != 0) {
                        j11 = jOptLong;
                    }
                    List<com.mbridge.msdk.foundation.cache.b> listA = this.f37062a.a(iOptInt, System.currentTimeMillis() - (j11 * 1000));
                    if (listA != null && listA.size() > 0) {
                        return a(listA, jSONObjectC, iOptInt2, d11, cVar, cVar2, str2, true, i11);
                    }
                    cVarA.d("no cache");
                    cVarA.a(com.mbridge.msdk.foundation.cache.c.f34983k);
                    a(cVar2, str2, cVarA, (List<com.mbridge.msdk.foundation.cache.a.b>) null, jSONObjectC, 2);
                } else {
                    cVarA.d("max cache num error");
                    cVarA.a(com.mbridge.msdk.foundation.cache.c.f34983k);
                }
            } else {
                cVarA.d("setting config not mapping");
                cVarA.a(com.mbridge.msdk.foundation.cache.c.f34983k);
            }
            return cVarA;
        } catch (Exception unused) {
            cVarA.d("getHighestCampaigns exception");
            cVarA.a(com.mbridge.msdk.foundation.cache.c.f34983k);
        }
    }

    private com.mbridge.msdk.foundation.cache.c a(String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar, String str2, com.mbridge.msdk.foundation.error.b bVar, int i11, com.mbridge.msdk.reward.adapter.c cVar2) {
        String strG;
        int i12;
        if (bVar != null) {
            int iC = bVar.c();
            strG = bVar.g();
            i12 = iC;
        } else {
            strG = null;
            i12 = 0;
        }
        String str3 = strG;
        d dVar = this.f37062a;
        if (dVar == null) {
            com.mbridge.msdk.foundation.cache.c cVar3 = new com.mbridge.msdk.foundation.cache.c();
            cVar3.d("can not get manager");
            cVar3.a(com.mbridge.msdk.foundation.cache.c.f34983k);
            return cVar3;
        }
        com.mbridge.msdk.foundation.cache.c cVarA = dVar.a(str);
        if (cVarA.g() > com.mbridge.msdk.foundation.cache.c.f34982j) {
            return cVarA;
        }
        String[] strArrSplit = i0.a(str.split("_")[3]).split("\\|");
        double d11 = Double.parseDouble(strArrSplit[0]);
        com.mbridge.msdk.foundation.cache.c cVarA2 = a(d11, strArrSplit.length > 1 ? strArrSplit[1] : "", cVar2, cVar, str, i11);
        this.f37062a.a(cVarA2.c(), cVar, str2, i12, str3, i11, d11);
        return cVarA2;
    }

    private com.mbridge.msdk.foundation.cache.c a(List<com.mbridge.msdk.foundation.cache.b> list, JSONObject jSONObject, int i11, double d11, com.mbridge.msdk.reward.adapter.c cVar, com.mbridge.msdk.foundation.same.report.metrics.c cVar2, String str, boolean z10, int i12) {
        ArrayList arrayList;
        int i13;
        com.mbridge.msdk.foundation.cache.c cVar3;
        a aVar = this;
        List<com.mbridge.msdk.foundation.cache.b> listA = list;
        com.mbridge.msdk.foundation.cache.c cVar4 = new com.mbridge.msdk.foundation.cache.c();
        if (jSONObject == null) {
            cVar4.d("config is null");
            cVar4.a(com.mbridge.msdk.foundation.cache.c.f34983k);
            return cVar4;
        }
        if (listA == null || list.size() == 0) {
            cVar4.d("candidate is null");
            cVar4.a(com.mbridge.msdk.foundation.cache.c.f34983k);
            return cVar4;
        }
        int i14 = 0;
        for (int i15 = 0; i15 < list.size(); i15++) {
            com.mbridge.msdk.foundation.cache.b bVar = listA.get(i15);
            if (bVar != null) {
                cVar4.a(bVar.e());
            }
        }
        if (list.size() > 0 && ((listA = aVar.a(listA, cVar4)) == null || listA.size() == 0)) {
            cVar4.d("existed");
            cVar4.a(com.mbridge.msdk.foundation.cache.c.f34983k);
        }
        if (listA.size() > 0 && ((listA = aVar.a(listA, cVar, cVar4)) == null || listA.size() == 0)) {
            cVar4.d("not ready");
            cVar4.a(com.mbridge.msdk.foundation.cache.c.f34983k);
        }
        com.mbridge.msdk.foundation.cache.b bVar2 = null;
        if (listA == null || listA.size() <= 0) {
            arrayList = null;
        } else {
            ArrayList arrayList2 = new ArrayList();
            double dOptDouble = jSONObject.optDouble("t_disc", 0.8d);
            double dOptDouble2 = jSONObject.optDouble("u_disc", 0.95d);
            double d12 = 0.0d;
            double dOptDouble3 = jSONObject.optDouble("max_ecppv_diff", 0.0d);
            int iOptInt = jSONObject.optInt("time_interval", 1800);
            int size = listA.size();
            while (i14 < size) {
                List<com.mbridge.msdk.foundation.cache.b> list2 = listA;
                com.mbridge.msdk.foundation.cache.b bVar3 = listA.get(i14);
                if (bVar3 != null) {
                    i13 = size;
                    cVar3 = cVar4;
                    double dPow = Math.pow(dOptDouble2, bVar3.f()) * bVar3.b() * Math.pow(dOptDouble, (System.currentTimeMillis() - bVar3.h()) / (((double) iOptInt) * 1000.0d));
                    arrayList2.add(new com.mbridge.msdk.foundation.cache.a.b(dPow, bVar3));
                    if (dPow >= d11 - dOptDouble3 && dPow > d12) {
                        bVar2 = bVar3;
                        d12 = dPow;
                    }
                } else {
                    i13 = size;
                    cVar3 = cVar4;
                }
                i14++;
                aVar = this;
                listA = list2;
                size = i13;
                cVar4 = cVar3;
            }
            com.mbridge.msdk.foundation.cache.c cVar5 = cVar4;
            d dVar = aVar.f37062a;
            if (dVar != null) {
                dVar.a(arrayList2, i11);
            }
            if (bVar2 != null) {
                cVar4 = cVar5;
                cVar4.a(bVar2.a());
                cVar4.a(com.mbridge.msdk.foundation.cache.c.f34984l);
            } else {
                cVar4 = cVar5;
                cVar4.d("no match campaign");
                cVar4.a(com.mbridge.msdk.foundation.cache.c.f34983k);
            }
            arrayList = arrayList2;
        }
        if (z10) {
            a(cVar2, str, cVar4, arrayList, jSONObject, 2);
        }
        return cVar4;
    }

    private List<com.mbridge.msdk.foundation.cache.b> a(List<com.mbridge.msdk.foundation.cache.b> list, com.mbridge.msdk.foundation.cache.c cVar) {
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayListA;
        if (list == null || list.size() == 0) {
            return list;
        }
        ArrayList arrayList = new ArrayList();
        for (int i11 = 0; i11 < list.size(); i11++) {
            com.mbridge.msdk.foundation.cache.b bVar = list.get(i11);
            if (bVar != null && (copyOnWriteArrayListA = bVar.a()) != null && copyOnWriteArrayListA.size() != 0) {
                int i12 = 0;
                boolean z10 = false;
                while (i12 < copyOnWriteArrayListA.size()) {
                    CampaignEx campaignEx = copyOnWriteArrayListA.get(i12);
                    boolean zC = t0.c(c.m().d(), campaignEx.getPackageName());
                    if (zC) {
                        cVar.b(bVar.e());
                        d dVar = this.f37062a;
                        if (dVar != null) {
                            dVar.a(bVar.d(), bVar.e(), 2, campaignEx.getEcppv());
                        }
                        z10 = zC;
                        break;
                    }
                    i12++;
                    z10 = zC;
                }
                if (!z10) {
                    arrayList.add(bVar);
                }
            }
        }
        return arrayList;
    }

    private List<com.mbridge.msdk.foundation.cache.b> a(List<com.mbridge.msdk.foundation.cache.b> list, com.mbridge.msdk.reward.adapter.c cVar, com.mbridge.msdk.foundation.cache.c cVar2) {
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayListA;
        if (list == null || list.size() == 0) {
            return list;
        }
        ArrayList arrayList = new ArrayList();
        for (int i11 = 0; i11 < list.size(); i11++) {
            com.mbridge.msdk.foundation.cache.b bVar = list.get(i11);
            if (bVar != null && (copyOnWriteArrayListA = bVar.a()) != null && copyOnWriteArrayListA.size() != 0) {
                boolean zA = false;
                for (int i12 = 0; i12 < copyOnWriteArrayListA.size(); i12++) {
                    CampaignEx campaignEx = copyOnWriteArrayListA.get(i12);
                    if (cVar != null && !(zA = cVar.a(copyOnWriteArrayListA, !TextUtils.isEmpty(campaignEx.getCMPTEntryUrl())))) {
                        cVar2.c(bVar.e());
                        d dVar = this.f37062a;
                        if (dVar == null) {
                            break;
                        }
                        dVar.a(bVar.d(), bVar.e(), 2, campaignEx.getEcppv());
                        break;
                    }
                }
                if (zA) {
                    arrayList.add(bVar);
                }
            }
        }
        return arrayList;
    }

    public com.mbridge.msdk.foundation.cache.c a(String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar, CampaignEx campaignEx, com.mbridge.msdk.foundation.error.b bVar, int i11, com.mbridge.msdk.reward.adapter.c cVar2) {
        String requestId;
        com.mbridge.msdk.foundation.cache.c cVar3 = new com.mbridge.msdk.foundation.cache.c();
        if (campaignEx == null) {
            requestId = "";
        } else {
            try {
                try {
                    requestId = campaignEx.getRequestId();
                } catch (Exception unused) {
                    cVar3.d("getRewardCandidateCampaignList result exception");
                    cVar3.a(com.mbridge.msdk.foundation.cache.c.f34983k);
                    return cVar3;
                }
            } catch (Exception unused2) {
                cVar3.d("getCandidateCampaignList result exception");
                cVar3.a(com.mbridge.msdk.foundation.cache.c.f34983k);
                return cVar3;
            }
        }
        return a(str, cVar, requestId, bVar, i11, cVar2);
    }

    public void a(com.mbridge.msdk.foundation.same.report.metrics.c cVar, String str, com.mbridge.msdk.foundation.cache.c cVar2, List<com.mbridge.msdk.foundation.cache.a.b> list, JSONObject jSONObject, int i11) {
        String str2;
        try {
            e eVar = new e();
            if (i11 == 1) {
                str2 = "cb";
            } else if (i11 != 2) {
                str2 = i11 != 3 ? TmcConstants.ROUTE_UNKNOWN : "track";
            } else {
                str2 = "candidate";
            }
            eVar.a(FrameworkConstants.GLOBAL_DATA_KEY_SCENE, str2);
            d dVar = this.f37062a;
            if (dVar != null) {
                double dB = dVar.b(str);
                if (dB >= 0.0d) {
                    eVar.a("bp", i0.b(dB + ""));
                }
                eVar.a("cb_state", a(str) ? MRAIDPresenter.OPEN : "close");
                try {
                    d dVar2 = this.f37062a;
                    JSONObject jSONObjectC = dVar2.c(dVar2.d(str));
                    if (jSONObjectC != null) {
                        eVar.a(XLogUtil.TAG, jSONObjectC.toString());
                    }
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
            }
            if (cVar2 != null) {
                if (cVar2.g() == com.mbridge.msdk.foundation.cache.c.f34984l) {
                    eVar.a("result", 1);
                } else {
                    eVar.a("result", 2);
                    eVar.a("reason", cVar2.e());
                }
                eVar.a("acr", cVar2.a());
                eVar.a("her", cVar2.d());
                eVar.a("nrr", cVar2.f());
                eVar.a("cer", cVar2.b());
            } else {
                eVar.a("result", 2);
                eVar.a("reason", "candidate result is null");
            }
            if (list != null && list.size() > 0) {
                JSONArray jSONArray = new JSONArray();
                for (int i12 = 0; i12 < list.size(); i12++) {
                    com.mbridge.msdk.foundation.cache.b bVarA = list.get(i12).a();
                    if (bVarA != null) {
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("ecppv", i0.b(bVarA.b() + ""));
                        jSONObject2.put("showCount", bVarA.f());
                        jSONObject2.put("intervalTime", System.currentTimeMillis() - bVarA.h());
                        jSONArray.put(jSONObject2);
                    }
                }
                eVar.a("data", jSONArray.toString());
            }
            if (cVar != null) {
                cVar.i("m_candidate_data");
                cVar.d("m_candidate_data");
                cVar.a("m_candidate_data", eVar);
                if (cVar2 != null && cVar2.c() != null) {
                    cVar.b(cVar2.c());
                }
            }
            com.mbridge.msdk.foundation.same.report.metrics.d.b().b("m_candidate_data", cVar, null);
        } catch (Exception e12) {
            e12.printStackTrace();
        }
    }

    public void a(String str, String str2, int i11, String str3) {
        d dVar = this.f37062a;
        if (dVar != null) {
            dVar.a(str, str2, i11, str3);
        }
    }

    public void a(List<CampaignEx> list, String str, com.mbridge.msdk.reward.adapter.c cVar, String str2) {
        try {
            if (this.f37062a == null || TextUtils.isEmpty(str)) {
                return;
            }
            this.f37062a.a(com.mbridge.msdk.foundation.cache.a.f34963f, 2, list, this.f37062a.a(list, str) > 0, "", "", -1, str2);
            d dVar = this.f37062a;
            JSONObject jSONObjectC = dVar.c(dVar.d(str));
            if (jSONObjectC == null || this.f37062a.b(str) <= 0.0d) {
                return;
            }
            a(this.f37062a.a(jSONObjectC.optInt("max_usage_limit", 10), 0L), jSONObjectC, jSONObjectC.optInt("max_cache_num", 20), -1.0d, cVar, new com.mbridge.msdk.foundation.same.report.metrics.c(), str, false, 0);
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public boolean a(String str) {
        JSONObject jSONObjectC;
        try {
            d dVar = this.f37062a;
            return (dVar == null || (jSONObjectC = dVar.c(dVar.d(str))) == null || jSONObjectC.optInt("c_cb", 0) != 1) ? false : true;
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        return false;
    }
}
