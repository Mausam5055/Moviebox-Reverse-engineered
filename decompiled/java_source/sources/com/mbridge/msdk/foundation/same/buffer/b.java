package com.mbridge.msdk.foundation.same.buffer;

import android.text.TextUtils;
import com.mbridge.msdk.foundation.db.e;
import com.mbridge.msdk.foundation.db.g;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.c;
import com.mbridge.msdk.foundation.entity.d;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.y0;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f35360a = "b";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static ConcurrentHashMap<String, ConcurrentHashMap<String, c>> f35364e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static ConcurrentHashMap<String, ConcurrentHashMap<String, String>> f35365f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static ConcurrentHashMap<String, CopyOnWriteArrayList<String>> f35366g;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Map<String, List<com.mbridge.msdk.foundation.same.metadata.a>> f35361b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Map<String, List<com.mbridge.msdk.foundation.same.metadata.a>> f35362c = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static Map<String, List<com.mbridge.msdk.foundation.same.metadata.a>> f35363d = new HashMap();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static Map<String, List<com.mbridge.msdk.foundation.same.metadata.a>> f35367h = new HashMap();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static Map<String, List<com.mbridge.msdk.foundation.same.metadata.a>> f35368i = new HashMap();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static Map<String, List<com.mbridge.msdk.foundation.same.metadata.a>> f35369j = new HashMap();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static Map<String, List<com.mbridge.msdk.foundation.same.metadata.a>> f35370k = new HashMap();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static Map<String, Long> f35371l = new HashMap();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static Map<String, List<com.mbridge.msdk.foundation.same.metadata.a>> f35372m = new HashMap();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static Map<String, List<com.mbridge.msdk.foundation.same.metadata.a>> f35373n = new HashMap();

    public static String a(String str, String str2) {
        List<com.mbridge.msdk.foundation.same.metadata.a> list;
        JSONArray jSONArray = new JSONArray();
        Map<String, List<com.mbridge.msdk.foundation.same.metadata.a>> mapA = TextUtils.isEmpty(str2) ? a(str) : b(str2);
        if (mapA != null) {
            try {
                if (y0.b(str) && mapA.containsKey(str) && (list = mapA.get(str)) != null && list.size() > 0) {
                    for (int i11 = 0; i11 < list.size(); i11++) {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("2", list.get(i11).a());
                        jSONObject.put("1", list.get(i11).c());
                        jSONArray.put(jSONObject);
                    }
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
        return jSONArray.toString();
    }

    private static Map<String, List<com.mbridge.msdk.foundation.same.metadata.a>> a(String str) {
        if (f35369j.containsKey(str)) {
            return f35369j;
        }
        if (f35370k.containsKey(str)) {
            return f35370k;
        }
        if (f35367h.containsKey(str)) {
            return f35367h;
        }
        if (f35373n.containsKey(str)) {
            return f35373n;
        }
        if (f35368i.containsKey(str)) {
            return f35368i;
        }
        if (f35362c.containsKey(str)) {
            return f35362c;
        }
        if (f35372m.containsKey(str)) {
            return f35372m;
        }
        if (f35363d.containsKey(str)) {
            return f35363d;
        }
        return null;
    }

    public static void a(String str, CampaignEx campaignEx, String str2) {
        Map<String, List<com.mbridge.msdk.foundation.same.metadata.a>> mapB = b(str2);
        if (campaignEx == null || mapB == null) {
            return;
        }
        try {
            if (TextUtils.isEmpty(campaignEx.getId())) {
                return;
            }
            com.mbridge.msdk.foundation.same.metadata.a aVar = new com.mbridge.msdk.foundation.same.metadata.a(campaignEx.getId(), campaignEx.getRequestIdNotice());
            if (!mapB.containsKey(str)) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(aVar);
                mapB.put(str, arrayList);
                return;
            }
            List<com.mbridge.msdk.foundation.same.metadata.a> list = mapB.get(str);
            if (list != null && list.size() == 20) {
                list.remove(0);
            }
            if (list != null) {
                list.add(aVar);
            }
        } catch (Throwable th2) {
            o0.b(f35360a, th2.getMessage(), th2);
        }
    }

    public static void a(String str, String str2, int i11) {
        CopyOnWriteArrayList<String> copyOnWriteArrayList;
        if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str)) {
            return;
        }
        if (f35366g == null) {
            f35366g = new ConcurrentHashMap<>();
        }
        try {
            if (f35366g.containsKey(str)) {
                copyOnWriteArrayList = f35366g.get(str);
                copyOnWriteArrayList.add(str2);
            } else {
                CopyOnWriteArrayList<String> copyOnWriteArrayList2 = new CopyOnWriteArrayList<>();
                copyOnWriteArrayList2.add(str2);
                f35366g.put(str, copyOnWriteArrayList2);
                copyOnWriteArrayList = copyOnWriteArrayList2;
            }
            int size = copyOnWriteArrayList.size() - i11;
            if (size >= 0) {
                for (int i12 = 0; i12 < size; i12++) {
                    copyOnWriteArrayList.remove(i12);
                }
            }
        } catch (Exception e11) {
            o0.a(f35360a, e11.getMessage());
        }
    }

    public static void a(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || TextUtils.isEmpty(str3)) {
            return;
        }
        try {
            if (f35365f == null) {
                f35365f = new ConcurrentHashMap<>();
            }
            if (!f35365f.containsKey(str)) {
                ConcurrentHashMap<String, String> concurrentHashMap = new ConcurrentHashMap<>();
                concurrentHashMap.put(str2, str3);
                f35365f.put(str, concurrentHashMap);
            } else if (f35365f.get(str) == null) {
                ConcurrentHashMap<String, String> concurrentHashMap2 = new ConcurrentHashMap<>();
                concurrentHashMap2.put(str2, str3);
                f35365f.put(str, concurrentHashMap2);
            }
        } catch (Exception e11) {
            o0.a(f35360a, e11.getMessage());
        }
    }

    public static void a(String str, String str2, String str3, long j11, long j12, long j13, String str4) {
        if (f35364e == null) {
            f35364e = new ConcurrentHashMap<>();
        }
        try {
            if (!f35364e.containsKey(str)) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(str3);
                ConcurrentHashMap<String, c> concurrentHashMap = new ConcurrentHashMap<>();
                c cVar = new c();
                cVar.a(arrayList);
                cVar.a(j11);
                cVar.b(j12);
                cVar.c(j13);
                cVar.c(str4);
                concurrentHashMap.put(str2, cVar);
                f35364e.put(str, concurrentHashMap);
                return;
            }
            ConcurrentHashMap<String, c> concurrentHashMap2 = f35364e.get(str);
            if (concurrentHashMap2 != null) {
                c cVar2 = concurrentHashMap2.get(str2);
                if (cVar2 != null) {
                    if (cVar2.c() != null) {
                        cVar2.a(j11);
                        cVar2.b(j12);
                        cVar2.c(j13);
                        cVar2.c().add(str3);
                        cVar2.c(str4);
                        return;
                    }
                    return;
                }
                c cVar3 = new c();
                ArrayList arrayList2 = new ArrayList();
                arrayList2.add(str3);
                cVar3.a(arrayList2);
                cVar3.a(j11);
                cVar3.b(j12);
                cVar3.c(j13);
                cVar3.c(str4);
                concurrentHashMap2.put(str2, cVar3);
            }
        } catch (Throwable th2) {
            o0.b(f35360a, th2.getMessage());
        }
    }

    public static d b(String str, String str2) {
        ConcurrentHashMap<String, String> concurrentHashMap;
        d dVar = new d();
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return dVar;
        }
        try {
            ConcurrentHashMap<String, ConcurrentHashMap<String, String>> concurrentHashMap2 = f35365f;
            if (concurrentHashMap2 != null && concurrentHashMap2.containsKey(str) && (concurrentHashMap = f35365f.get(str)) != null && concurrentHashMap.containsKey(str2)) {
                dVar.a(1);
                dVar.c(concurrentHashMap.get(str2));
            }
        } catch (Exception e11) {
            o0.a(f35360a, e11.getMessage());
        }
        return dVar;
    }

    private static Map<String, List<com.mbridge.msdk.foundation.same.metadata.a>> b(String str) {
        str.hashCode();
        switch (str) {
            case "banner":
                return f35362c;
            case "native":
                return f35369j;
            case "reward":
                return f35370k;
            case "splash":
                return f35372m;
            case "h5_native":
                return f35363d;
            case "interstitial":
                return f35368i;
            case "interactive":
                return f35367h;
            default:
                return null;
        }
    }

    public static ConcurrentHashMap<String, c> c(String str) {
        ConcurrentHashMap<String, ConcurrentHashMap<String, c>> concurrentHashMap = f35364e;
        if (concurrentHashMap == null) {
            e eVarA = e.a(g.a(com.mbridge.msdk.foundation.controller.c.m().d()));
            if (eVarA != null) {
                eVarA.b(str, "");
                f35364e = new ConcurrentHashMap<>();
            }
        } else if (concurrentHashMap.containsKey(str)) {
            return f35364e.get(str);
        }
        return null;
    }

    public static void c(String str, String str2) {
        ConcurrentHashMap<String, ConcurrentHashMap<String, c>> concurrentHashMap;
        c cVarRemove;
        if (TextUtils.isEmpty(str) || (concurrentHashMap = f35364e) == null || !concurrentHashMap.containsKey(str)) {
            return;
        }
        if (TextUtils.isEmpty(str2)) {
            f35364e.remove(str);
            return;
        }
        ConcurrentHashMap<String, c> concurrentHashMap2 = f35364e.get(str);
        if (concurrentHashMap2 == null || !concurrentHashMap2.containsKey(str2) || (cVarRemove = concurrentHashMap2.remove(str2)) == null) {
            return;
        }
        try {
            String strD = cVarRemove.d();
            if (TextUtils.isEmpty(strD)) {
                return;
            }
            Iterator<Map.Entry<String, c>> it = concurrentHashMap2.entrySet().iterator();
            while (it.hasNext()) {
                if (strD.equals(it.next().getValue().d())) {
                    it.remove();
                }
            }
        } catch (Exception e11) {
            o0.a(f35360a, e11.getMessage());
        }
    }

    public static String d(String str) {
        ConcurrentHashMap<String, CopyOnWriteArrayList<String>> concurrentHashMap;
        CopyOnWriteArrayList<String> copyOnWriteArrayList;
        return (TextUtils.isEmpty(str) || (concurrentHashMap = f35366g) == null || !concurrentHashMap.containsKey(str) || (copyOnWriteArrayList = f35366g.get(str)) == null || copyOnWriteArrayList.size() <= 0) ? "" : copyOnWriteArrayList.get(0);
    }

    public static void d(String str, String str2) {
        ConcurrentHashMap<String, String> concurrentHashMap;
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        try {
            ConcurrentHashMap<String, ConcurrentHashMap<String, String>> concurrentHashMap2 = f35365f;
            if (concurrentHashMap2 == null || !concurrentHashMap2.containsKey(str) || (concurrentHashMap = f35365f.get(str2)) == null || !concurrentHashMap.containsKey(str2)) {
                return;
            }
            concurrentHashMap.remove(str2);
        } catch (Exception e11) {
            o0.a(f35360a, e11.getMessage());
        }
    }

    public static void e(String str) {
        ConcurrentHashMap<String, CopyOnWriteArrayList<String>> concurrentHashMap;
        CopyOnWriteArrayList<String> copyOnWriteArrayList;
        if (TextUtils.isEmpty(str) || (concurrentHashMap = f35366g) == null || !concurrentHashMap.containsKey(str) || (copyOnWriteArrayList = f35366g.get(str)) == null || copyOnWriteArrayList.size() <= 0) {
            return;
        }
        copyOnWriteArrayList.remove(0);
    }
}
