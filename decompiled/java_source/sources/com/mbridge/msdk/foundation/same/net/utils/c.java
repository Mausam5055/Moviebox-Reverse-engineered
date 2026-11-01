package com.mbridge.msdk.foundation.same.net.utils;

import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.same.net.e;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.setting.g;
import com.mbridge.msdk.setting.h;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f35454a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f35455b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ConcurrentHashMap<String, b> f35456c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ArrayList<Integer> f35457d;

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f35458a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f35459b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public long f35460c;

        public b(long j11, int i11, String str) {
            this.f35460c = j11;
            this.f35458a = i11;
            this.f35459b = str;
        }
    }

    /* JADX INFO: renamed from: com.mbridge.msdk.foundation.same.net.utils.c$c, reason: collision with other inner class name */
    private static class C0490c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final c f35461a = new c();
    }

    private c() {
        this.f35454a = "IDErrorUtil";
        this.f35456c = new ConcurrentHashMap<>();
        this.f35457d = new ArrayList<>();
        g gVarD = h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
        gVarD = gVarD == null ? h.b().a() : gVarD;
        this.f35455b = gVarD.t() * 1000;
        if (gVarD.x() == null || gVarD.x().size() <= 0) {
            o0.b("IDErrorUtil", "Setting ercd is EMPTY and use default code list.");
            this.f35457d.addAll(a());
        } else {
            o0.b("IDErrorUtil", "Setting ercd not EMPTY will use setting.");
            this.f35457d.addAll(gVarD.x());
        }
    }

    private e a(String str, String str2, String str3, String str4, String str5) {
        int i11;
        String str6 = str + "_" + str3 + "_" + str2 + "_" + str5;
        b bVarA = a(str6);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new com.mbridge.msdk.tracker.network.g("data_res_type", "1"));
        if (bVarA != null && !TextUtils.isEmpty(bVarA.f35459b)) {
            try {
                if (bVarA.f35458a != -1) {
                    return e.a(new JSONObject(bVarA.f35459b), new com.mbridge.msdk.foundation.same.net.toolbox.a(200, bVarA.f35459b.getBytes(), arrayList));
                }
                if (!TextUtils.isEmpty(str4)) {
                    return null;
                }
                if (str5 != null && !TextUtils.isEmpty(str5) && (i11 = Integer.parseInt(str5)) != 287 && i11 != 94) {
                    if (System.currentTimeMillis() < ((long) (h.b().c(str, str2).u() * 1000)) + bVarA.f35460c) {
                        return e.a(new JSONObject(bVarA.f35459b), new com.mbridge.msdk.foundation.same.net.toolbox.a(200, bVarA.f35459b.getBytes(), arrayList));
                    }
                    this.f35456c.remove(str6);
                    return null;
                }
            } catch (Exception e11) {
                o0.b("IDErrorUtil", e11.getMessage());
            }
        }
        o0.b("IDErrorUtil", "getErrorInfo RETURN NULL");
        return null;
    }

    private synchronized b a(String str) {
        b bVar;
        o0.b("IDErrorUtil", "getErrorInfo : " + str);
        if (!this.f35456c.containsKey(str) || (bVar = this.f35456c.get(str)) == null) {
            return null;
        }
        if (bVar.f35458a == -1) {
            return bVar;
        }
        if (System.currentTimeMillis() <= bVar.f35460c + ((long) this.f35455b)) {
            o0.b("IDErrorUtil", "getErrorInfo : " + bVar.f35459b);
            return bVar;
        }
        this.f35456c.remove(str);
        if (this.f35456c.size() > 0) {
            for (Map.Entry<String, b> entry : this.f35456c.entrySet()) {
                o0.b("IDErrorUtil", "getErrorInfo : delete timeout entry");
                if (System.currentTimeMillis() - entry.getValue().f35460c > this.f35455b) {
                    this.f35456c.remove(entry.getKey());
                }
            }
        }
        return null;
    }

    private List<Integer> a() {
        return Arrays.asList(-1, -10, -1201, -1202, -1203, -1205, -1206, -1208, -1301, -1302, -1305, -1306, -1307, -1915, 10602, 10603, 10604, 10609, 10610, 10616);
    }

    public static c b() {
        return C0490c.f35461a;
    }

    public e a(com.mbridge.msdk.foundation.same.net.wrapper.e eVar) {
        String str = eVar.a().get("app_id");
        String str2 = eVar.a().get("placement_id");
        String str3 = TextUtils.isEmpty(str2) ? "" : str2;
        String strReplace = eVar.a().get(MBridgeConstans.PROPERTIES_UNIT_ID);
        if (TextUtils.isEmpty(strReplace)) {
            strReplace = eVar.a().get("unit_ids");
            if (!TextUtils.isEmpty(strReplace)) {
                strReplace = strReplace.replace("[", "").replace("]", "");
            }
        }
        String str4 = strReplace;
        String str5 = eVar.a().get("ad_type");
        if (TextUtils.isEmpty(str5)) {
            str5 = "0";
        }
        return a(str, str4, str3, eVar.a().get("token"), str5);
    }

    public synchronized void a(String str, int i11, String str2, long j11) {
        if (this.f35456c.containsKey(str)) {
            return;
        }
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        if (this.f35457d.contains(Integer.valueOf(i11))) {
            o0.b("IDErrorUtil", "addErrorInfo : " + str + " " + str2);
            this.f35456c.put(str, new b(j11, i11, str2));
        }
    }
}
