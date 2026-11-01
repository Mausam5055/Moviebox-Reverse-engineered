package com.mbridge.msdk.foundation.cache;

import android.text.TextUtils;
import com.cloud.config.utils.XLogUtil;
import com.cloud.tmc.kernel.framework.FrameworkConstants;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.j;
import com.mbridge.msdk.foundation.same.report.metrics.e;
import com.mbridge.msdk.foundation.tools.i0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.z0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static String f34962e = "BaseCandidateCache";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static int f34963f = 4;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected com.mbridge.msdk.foundation.db.c f34964a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private JSONArray f34965b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private JSONObject f34966c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f34967d;

    /* JADX INFO: renamed from: com.mbridge.msdk.foundation.cache.a$a, reason: collision with other inner class name */
    class C0479a implements Comparator<b> {
        C0479a() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(b bVar, b bVar2) {
            return Double.compare(bVar.f34970b, bVar2.f34970b);
        }
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private com.mbridge.msdk.foundation.cache.b f34969a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private double f34970b;

        public b(double d11, com.mbridge.msdk.foundation.cache.b bVar) {
            this.f34970b = d11;
            this.f34969a = bVar;
        }

        public com.mbridge.msdk.foundation.cache.b a() {
            return this.f34969a;
        }
    }

    private String a(String str, int i11, String str2, String str3) {
        if (TextUtils.isEmpty(str) || str.contains("ca_sce") || str.contains("real_rid") || str.contains("real_bp")) {
            return str;
        }
        if (z0.c(str) > 0) {
            return str + "&ca_sce=" + i11 + "&real_rid=" + str2 + "&real_bp=" + str3;
        }
        return str + "?ca_sce=" + i11 + "&real_rid=" + str2 + "&real_bp=" + str3;
    }

    private String a(Map<Integer, String> map, int i11, String str, String str2) {
        if (map == null || map.size() == 0) {
            return null;
        }
        JSONArray jSONArray = new JSONArray();
        try {
            for (Map.Entry<Integer, String> entry : map.entrySet()) {
                String value = entry.getValue();
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(CampaignEx.JSON_AD_IMP_KEY, entry.getKey());
                jSONObject.put("url", a(value, i11, str, str2));
                jSONArray.put(jSONObject);
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        if (jSONArray.length() == 0) {
            return null;
        }
        return jSONArray.toString();
    }

    private List<String> a(List<String> list, int i11, String str, String str2) {
        if (list == null || list.size() == 0) {
            return list;
        }
        ArrayList arrayList = new ArrayList();
        for (int i12 = 0; i12 < list.size(); i12++) {
            arrayList.add(a(list.get(i12), i11, str, str2));
        }
        return arrayList;
    }

    private String[] a(String[] strArr, int i11, String str, String str2) {
        if (strArr == null || strArr.length == 0) {
            return strArr;
        }
        String[] strArr2 = new String[strArr.length];
        for (int i12 = 0; i12 < strArr.length; i12++) {
            strArr2[i12] = a(strArr[i12], i11, str, str2);
        }
        return strArr2;
    }

    private List<Map<Integer, String>> b(List<Map<Integer, String>> list, int i11, String str, String str2) {
        if (list == null || list.size() == 0) {
            return list;
        }
        ArrayList arrayList = new ArrayList();
        for (int i12 = 0; i12 < list.size(); i12++) {
            Map<Integer, String> map = list.get(i12);
            if (map != null && map.size() > 0) {
                for (Map.Entry<Integer, String> entry : map.entrySet()) {
                    map.put(entry.getKey(), a(entry.getValue(), i11, str, str2));
                }
                arrayList.add(map);
            }
        }
        return arrayList;
    }

    public long a(List<CampaignEx> list, String str) {
        if (list == null || list.size() == 0) {
            return 0L;
        }
        String ecppv = list.get(0).getEcppv();
        if (TextUtils.isEmpty(ecppv)) {
            return 0L;
        }
        String strA = i0.a(ecppv);
        if (TextUtils.isEmpty(strA)) {
            return 0L;
        }
        try {
            if (Double.parseDouble(strA) <= 0.0d) {
                return 0L;
            }
            JSONObject jSONObjectC = c(d(str));
            int iOptInt = jSONObjectC != null ? jSONObjectC.optInt("max_cache_num", 20) : 20;
            com.mbridge.msdk.foundation.db.c cVar = this.f34964a;
            if (cVar == null || iOptInt <= 0) {
                return -1L;
            }
            return cVar.a(list, this.f34967d);
        } catch (Exception e11) {
            e11.printStackTrace();
            return -1L;
        }
    }

    public c a() {
        c cVar = new c();
        try {
            JSONArray jSONArray = this.f34965b;
            if (jSONArray != null && jSONArray.length() != 0) {
                if (this.f34964a == null) {
                    cVar.d("db error");
                    cVar.a(c.f34983k);
                    return cVar;
                }
                return cVar;
            }
            cVar.d("setting config is null");
            cVar.a(c.f34981i);
            return cVar;
        } catch (Exception unused) {
            cVar.d("checkConfigAndDB exception");
            cVar.a(c.f34983k);
        }
    }

    public c a(String str) {
        c cVar = new c();
        if (TextUtils.isEmpty(str) || str.split("_").length <= 3 || TextUtils.isEmpty(str.split("_")[3])) {
            cVar.d("bid token exception");
            cVar.a(c.f34981i);
            return cVar;
        }
        JSONArray jSONArray = this.f34965b;
        if (jSONArray == null || jSONArray.length() == 0) {
            cVar.d("config is empty");
            cVar.a(c.f34981i);
            return cVar;
        }
        String strA = i0.a(str.split("_")[3]);
        if (TextUtils.isEmpty(strA)) {
            cVar.d("bid token exception:decode error");
            cVar.a(c.f34981i);
            return cVar;
        }
        String[] strArrSplit = strA.split("\\|");
        if (strArrSplit.length == 0) {
            cVar.d("bid token can not get bid price");
            cVar.a(c.f34981i);
            return cVar;
        }
        if (strArrSplit.length > 0) {
            try {
                Double.parseDouble(strArrSplit[0]);
            } catch (Exception unused) {
                cVar.d("bid token can not cast bid price");
                cVar.a(c.f34981i);
                return cVar;
            }
        }
        if (TextUtils.isEmpty(this.f34967d)) {
            cVar.d("unitId is empty");
            cVar.a(c.f34983k);
        }
        return cVar;
    }

    public List<com.mbridge.msdk.foundation.cache.b> a(int i11, long j11) {
        if (i11 >= 0) {
            a(i11);
        }
        com.mbridge.msdk.foundation.db.c cVar = this.f34964a;
        if (cVar != null) {
            return cVar.a(this.f34967d, j11);
        }
        return null;
    }

    public void a(int i11) {
        com.mbridge.msdk.foundation.db.c cVar = this.f34964a;
        if (cVar != null) {
            cVar.a(this.f34967d, i11);
            a(f34963f, 1, null, true, "", "", i11, this.f34967d);
        }
    }

    public void a(int i11, int i12, List<CampaignEx> list, boolean z10, String str, String str2, int i13, String str3) {
        String currentLocalRid;
        com.mbridge.msdk.foundation.db.c cVar;
        JSONArray jSONArray;
        e eVar = new e();
        try {
            eVar.a(NativeComponentConstants.KEY_COMPONENT_TYPE, i12 + "");
            eVar.a("result", z10 ? "1" : "2");
            eVar.a("max_usage_limit", i13 + "");
            eVar.a(MBridgeConstans.PROPERTIES_UNIT_ID, str3 + "");
            eVar.a(FrameworkConstants.GLOBAL_DATA_KEY_SCENE, "db");
            JSONObject jSONObject = this.f34966c;
            if (jSONObject != null) {
                eVar.a(XLogUtil.TAG, jSONObject.toString());
            }
            if (i12 == 1 && TextUtils.isEmpty(str2) && (cVar = this.f34964a) != null) {
                try {
                    List<com.mbridge.msdk.foundation.cache.b> listA = cVar.a(str3, -1, -1L);
                    JSONArray jSONArray2 = new JSONArray();
                    if (listA != null && listA.size() > 0) {
                        int i14 = 0;
                        while (i14 < listA.size()) {
                            com.mbridge.msdk.foundation.cache.b bVar = listA.get(i14);
                            if (bVar != null) {
                                JSONObject jSONObject2 = new JSONObject();
                                jSONObject2.put("rid", bVar.e());
                                jSONObject2.put("ts", bVar.h());
                                jSONObject2.put("lrid", bVar.d());
                                jSONObject2.put("ecppv", i0.b(bVar.b() + ""));
                                jSONObject2.put("state", bVar.g());
                                jSONObject2.put("showCount", bVar.f());
                                jSONObject2.put("interval_ts", bVar.c());
                                jSONArray = jSONArray2;
                                jSONArray.put(jSONObject2);
                            } else {
                                jSONArray = jSONArray2;
                            }
                            i14++;
                            jSONArray2 = jSONArray;
                        }
                    }
                    eVar.a("cache", jSONArray2.toString());
                } catch (JSONException e11) {
                    e11.printStackTrace();
                }
            }
            com.mbridge.msdk.foundation.same.report.metrics.c cVar2 = null;
            if (list == null || list.size() <= 0) {
                currentLocalRid = str2;
            } else {
                try {
                    JSONArray jSONArray3 = new JSONArray();
                    CampaignEx campaignEx = list.get(0);
                    if (campaignEx != null) {
                        currentLocalRid = campaignEx.getCurrentLocalRid();
                        try {
                            cVar2 = com.mbridge.msdk.foundation.same.report.metrics.d.b().a(currentLocalRid);
                        } catch (JSONException e12) {
                            e = e12;
                            e.printStackTrace();
                        }
                    } else {
                        currentLocalRid = str2;
                    }
                    for (int i15 = 0; i15 < list.size(); i15++) {
                        CampaignEx campaignEx2 = list.get(i15);
                        if (campaignEx2 != null) {
                            JSONObject jSONObject3 = new JSONObject();
                            jSONObject3.put("rid", campaignEx2.getRequestId());
                            jSONObject3.put("rid_n", campaignEx2.getRequestIdNotice());
                            jSONArray3.put(jSONObject3);
                        }
                    }
                    eVar.a("c_info", jSONArray3.toString());
                } catch (JSONException e13) {
                    e = e13;
                    currentLocalRid = str2;
                }
            }
            eVar.a("rid", str);
            eVar.a("lrid", currentLocalRid);
            if (cVar2 == null) {
                cVar2 = new com.mbridge.msdk.foundation.same.report.metrics.c();
            }
            cVar2.m(str3);
            cVar2.a("m_candidate_db", eVar);
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("m_candidate_db", cVar2);
        } catch (Exception e14) {
            e14.printStackTrace();
        }
    }

    public void a(String str, String str2, int i11, String str3) {
        try {
            if (this.f34964a == null || TextUtils.isEmpty(str3)) {
                return;
            }
            if (i11 == 1) {
                this.f34964a.a(str2, str, this.f34967d, i11);
                a(f34963f, 3, null, true, str2, str, -1, this.f34967d);
            } else if (i11 == 2) {
                this.f34964a.a(this.f34967d, str2, str);
                a(f34963f, 1, null, true, str2, str, -1, this.f34967d);
            } else if (i11 == 3) {
                this.f34964a.b(str2, str, this.f34967d);
                a(f34963f, 4, null, true, str2, str, -1, this.f34967d);
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public void a(List<b> list, int i11) {
        if (list != null) {
            try {
                if (list.size() > 0) {
                    Collections.sort(list, new C0479a());
                    int size = list.size() - i11;
                    if (size > 0) {
                        List<b> listSubList = list.subList(0, size);
                        if (this.f34964a == null || listSubList.size() <= 0) {
                            return;
                        }
                        for (int i12 = 0; i12 < listSubList.size(); i12++) {
                            com.mbridge.msdk.foundation.cache.b bVar = listSubList.get(i12).f34969a;
                            this.f34964a.a(this.f34967d, bVar.e(), bVar.d());
                            a(f34963f, 1, null, true, bVar.e(), bVar.d(), -1, this.f34967d);
                        }
                    }
                }
            } catch (Exception e11) {
                o0.a(f34962e, e11);
            }
        }
    }

    public void a(List<CampaignEx> list, com.mbridge.msdk.foundation.same.report.metrics.c cVar, String str, int i11, String str2, int i12, double d11) {
        if (list != null) {
            try {
                if (list.size() > 0) {
                    for (int i13 = 0; i13 < list.size(); i13++) {
                        CampaignEx campaignEx = list.get(i13);
                        campaignEx.setReadyState(0);
                        if (cVar != null) {
                            campaignEx.setNLRid(cVar.o());
                        }
                        campaignEx.setNRid(str);
                        campaignEx.setReasond(str2);
                        campaignEx.setTyped(i11);
                        String strB = i0.b(d11 + "");
                        campaignEx.setNoticeUrl(a(campaignEx.getNoticeUrl(), i12, str, strB));
                        campaignEx.setClickURL(a(campaignEx.getClickURL(), i12, str, strB));
                        campaignEx.setImpressionURL(a(campaignEx.getImpressionURL(), i12, str, strB));
                        campaignEx.setOnlyImpressionURL(a(campaignEx.getOnlyImpressionURL(), i12, str, strB));
                        campaignEx.setAdvImp(a(campaignEx.getAdvImpList(), i12, str, strB));
                        j nativeVideoTracking = campaignEx.getNativeVideoTracking();
                        if (nativeVideoTracking != null) {
                            nativeVideoTracking.d(a(nativeVideoTracking.d(), i12, str, strB));
                            nativeVideoTracking.c(a(nativeVideoTracking.c(), i12, str, strB));
                            nativeVideoTracking.k(a(nativeVideoTracking.k(), i12, str, strB));
                            nativeVideoTracking.s(a(nativeVideoTracking.t(), i12, str, strB));
                            nativeVideoTracking.a(a(nativeVideoTracking.a(), i12, str, strB));
                            nativeVideoTracking.b(a(nativeVideoTracking.b(), i12, str, strB));
                            nativeVideoTracking.e(a(nativeVideoTracking.e(), i12, str, strB));
                            nativeVideoTracking.t(a(nativeVideoTracking.u(), i12, str, strB));
                            nativeVideoTracking.u(a(nativeVideoTracking.u(), i12, str, strB));
                            nativeVideoTracking.v(a(nativeVideoTracking.w(), i12, str, strB));
                            nativeVideoTracking.f(a(nativeVideoTracking.f(), i12, str, strB));
                            nativeVideoTracking.g(a(nativeVideoTracking.g(), i12, str, strB));
                            nativeVideoTracking.h(a(nativeVideoTracking.h(), i12, str, strB));
                            nativeVideoTracking.i(a(nativeVideoTracking.i(), i12, str, strB));
                            nativeVideoTracking.j(a(nativeVideoTracking.j(), i12, str, strB));
                            nativeVideoTracking.l(a(nativeVideoTracking.l(), i12, str, strB));
                            nativeVideoTracking.q(a(nativeVideoTracking.r(), i12, str, strB));
                            nativeVideoTracking.m(a(nativeVideoTracking.m(), i12, str, strB));
                            nativeVideoTracking.r(a(nativeVideoTracking.s(), i12, str, strB));
                            nativeVideoTracking.n(a(nativeVideoTracking.n(), i12, str, strB));
                            nativeVideoTracking.a(b(nativeVideoTracking.o(), i12, str, strB));
                            nativeVideoTracking.p(a(nativeVideoTracking.q(), i12, str, strB));
                            nativeVideoTracking.o(a(nativeVideoTracking.p(), i12, str, strB));
                            campaignEx.setNativeVideoTracking(nativeVideoTracking);
                            campaignEx.setNativeVideoTrackingString(CampaignEx.object2TrackingStr(nativeVideoTracking));
                        }
                        campaignEx.setPv_urls(a(campaignEx.getPv_urls(), i12, str, strB));
                    }
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
    }

    public void a(JSONArray jSONArray) {
        this.f34965b = jSONArray;
    }

    public double b(String str) {
        c cVarA = a(str);
        if (cVarA != null && cVarA.g() != c.f34983k && cVarA.g() != c.f34981i) {
            try {
                String[] strArrSplit = i0.a(str.split("_")[3]).split("\\|");
                if (strArrSplit.length > 0) {
                    return Double.parseDouble(strArrSplit[0]);
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
        return -1.0d;
    }

    public JSONObject c(String str) {
        JSONArray jSONArray = this.f34965b;
        if (jSONArray == null) {
            return null;
        }
        if (jSONArray.length() <= 1) {
            return this.f34965b.optJSONObject(0);
        }
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        for (int i11 = 0; i11 < this.f34965b.length(); i11++) {
            try {
                JSONObject jSONObjectOptJSONObject = this.f34965b.optJSONObject(i11);
                if (jSONObjectOptJSONObject != null && str.equals(jSONObjectOptJSONObject.getString("g"))) {
                    this.f34966c = jSONObjectOptJSONObject;
                    return jSONObjectOptJSONObject;
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
        return null;
    }

    public String d(String str) {
        c cVarA = a(str);
        if (cVarA != null && cVarA.g() != c.f34983k && cVarA.g() != c.f34981i) {
            String[] strArrSplit = i0.a(str.split("_")[3]).split("\\|");
            if (strArrSplit.length > 1) {
                return strArrSplit[1];
            }
        }
        return "";
    }

    public void e(String str) {
        this.f34967d = str;
    }
}
