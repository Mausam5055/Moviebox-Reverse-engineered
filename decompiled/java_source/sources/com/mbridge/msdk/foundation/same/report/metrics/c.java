package com.mbridge.msdk.foundation.same.report.metrics;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.io.Serializable;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes5.dex */
public class c implements Serializable, Cloneable {
    private int A;
    private CampaignEx B;
    private CopyOnWriteArrayList<CampaignEx> C;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f35594a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Map<String, Map<String, String>> f35595b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Map<String, Map<String, String>> f35596c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Map<String, Long> f35597d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.mbridge.msdk.foundation.error.b f35598e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f35599f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private CopyOnWriteArrayList<CampaignEx> f35600g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f35601h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f35602i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f35603j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private String f35604k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private String f35605l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private String f35606m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private String f35607n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private String f35608o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private String f35609p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private String f35610q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f35611r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f35612s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f35613t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f35614u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f35615v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f35616w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private int f35617x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f35618y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int f35619z;

    public c() {
        this.f35594a = false;
        this.f35595b = new HashMap();
        this.f35596c = new HashMap();
        this.f35597d = new HashMap();
        this.f35599f = "";
        this.f35600g = new CopyOnWriteArrayList<>();
        this.f35611r = -1;
        this.f35613t = false;
        this.f35615v = false;
        this.C = new CopyOnWriteArrayList<>();
    }

    public c(boolean z10) {
        this.f35594a = false;
        this.f35595b = new HashMap();
        this.f35596c = new HashMap();
        this.f35597d = new HashMap();
        this.f35599f = "";
        this.f35600g = new CopyOnWriteArrayList<>();
        this.f35611r = -1;
        this.f35613t = false;
        this.f35615v = false;
        this.C = new CopyOnWriteArrayList<>();
        this.f35594a = z10;
    }

    private void a(e eVar) {
        if ("2000126".equals(this.f35610q)) {
            String strA = com.mbridge.msdk.foundation.same.net.d.a(f());
            if (eVar != null) {
                eVar.a("dns_ty", Integer.valueOf(com.mbridge.msdk.setting.e.a().a(strA)));
                eVar.a("dns_hs", strA);
            }
        }
    }

    public boolean A() {
        return this.f35614u;
    }

    public boolean B() {
        return this.f35594a;
    }

    public int a() {
        return this.f35602i;
    }

    public long a(String str) {
        Map<String, Long> map;
        try {
            if (TextUtils.isEmpty(str) || (map = this.f35597d) == null || !map.containsKey(str)) {
                return 0L;
            }
            Long l11 = this.f35597d.get(str);
            return System.currentTimeMillis() - (l11 != null ? l11.longValue() : 0L);
        } catch (Exception e11) {
            if (!MBridgeConstans.DEBUG) {
                return 0L;
            }
            e11.printStackTrace();
            return 0L;
        }
    }

    public void a(int i11) {
        this.f35602i = i11;
    }

    public void a(CampaignEx campaignEx) {
        this.B = campaignEx;
        if (campaignEx == null) {
            return;
        }
        try {
            CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList = this.C;
            if (copyOnWriteArrayList != null && !copyOnWriteArrayList.isEmpty()) {
                for (int i11 = 0; i11 < this.C.size(); i11++) {
                    if (this.C.get(i11) != null && this.C.get(i11).getId().equals(campaignEx.getId())) {
                        this.C.set(i11, campaignEx);
                        break;
                    }
                }
            }
            CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList2 = this.f35600g;
            if (copyOnWriteArrayList2 == null || copyOnWriteArrayList2.isEmpty()) {
                return;
            }
            for (int i12 = 0; i12 < this.f35600g.size(); i12++) {
                if (this.f35600g.get(i12) != null && this.f35600g.get(i12).getId().equals(campaignEx.getId())) {
                    this.f35600g.set(i12, campaignEx);
                    return;
                }
            }
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                e11.printStackTrace();
            }
        }
    }

    public void a(com.mbridge.msdk.foundation.error.b bVar) {
        this.f35598e = bVar;
    }

    public void a(String str, e eVar) {
        Map<String, String> map;
        if (TextUtils.isEmpty(str) || eVar == null) {
            return;
        }
        try {
            String str2 = this.f35599f + str;
            Map<String, Map<String, String>> map2 = this.f35595b;
            if (map2 != null) {
                if (!map2.containsKey(str2) || (map = this.f35595b.get(str2)) == null) {
                    this.f35595b.put(str2, eVar.a());
                } else {
                    map.putAll(eVar.a());
                }
            }
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                e11.printStackTrace();
            }
        }
    }

    public void a(List<CampaignEx> list) {
        if (list != null) {
            try {
                if (list.isEmpty()) {
                    return;
                }
                if (!this.f35600g.isEmpty()) {
                    this.f35600g.clear();
                }
                this.f35600g.addAll(list);
            } catch (Exception e11) {
                if (MBridgeConstans.DEBUG) {
                    e11.printStackTrace();
                }
            }
        }
    }

    public void a(boolean z10) {
        this.f35613t = z10;
    }

    public int b() {
        return this.f35617x;
    }

    public Map<String, String> b(String str) {
        com.mbridge.msdk.foundation.error.b bVarP;
        com.mbridge.msdk.foundation.error.b bVarP2;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        e eVar = new e();
        try {
            this.f35610q = str;
            eVar.a("ts", Long.valueOf(System.currentTimeMillis()));
            if (!TextUtils.isEmpty(w())) {
                eVar.a(MBridgeConstans.PROPERTIES_UNIT_ID, w());
            }
            if (this.f35602i != 0) {
                eVar.a("adtp", Integer.valueOf(a()));
            }
            if (!TextUtils.isEmpty(n())) {
                eVar.a(CampaignEx.JSON_KEY_HB, n());
            }
            if (!TextUtils.isEmpty(f())) {
                eVar.a("bid_tk", f());
            }
            if (!TextUtils.isEmpty(str)) {
                eVar.a("key", str);
            }
            if (Arrays.asList(b.f35581a).contains(str)) {
                eVar.a("from_cache", y() ? "1" : "2");
            }
            if ("2000047".contains(str) && (bVarP2 = p()) != null) {
                eVar.a(NativeComponentConstants.KEY_COMPONENT_TYPE, Integer.valueOf(bVarP2.c()));
                eVar.a("reason", bVarP2.g());
                if (!TextUtils.isEmpty(bVarP2.h())) {
                    eVar.a("reason_d", bVarP2.h());
                    eVar.a("type_d", Integer.valueOf(bVarP2.i()));
                }
            }
            if ("2000048".contains(str) && (bVarP = p()) != null && !TextUtils.isEmpty(bVarP.h())) {
                eVar.a(NativeComponentConstants.KEY_COMPONENT_TYPE, Integer.valueOf(bVarP.i()));
                eVar.a("reason", bVarP.h());
            }
            if (this.f35602i == 296) {
                eVar.a("auto_load", c());
                eVar.a("auto_refresh", Integer.valueOf(b()));
                eVar.a("auto_refresh_interval", Integer.valueOf(e()));
                eVar.a("content_type", Integer.valueOf(k()));
                eVar.a("temp_display_type", Integer.valueOf(v()));
            }
            a(eVar);
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                e11.printStackTrace();
            }
        }
        return eVar.a();
    }

    public void b(int i11) {
        this.f35617x = i11;
    }

    public void b(List<CampaignEx> list) {
        if (list != null) {
            try {
                if (list.size() > 0) {
                    if (!this.C.isEmpty()) {
                        this.C.clear();
                    }
                    this.C.addAll(list);
                }
            } catch (Exception e11) {
                if (MBridgeConstans.DEBUG) {
                    e11.printStackTrace();
                }
            }
        }
    }

    public void b(boolean z10) {
        this.f35615v = z10;
    }

    public String c() {
        return this.f35609p;
    }

    public void c(int i11) {
        this.f35618y = i11;
    }

    public void c(String str) {
        if (this.f35597d == null || TextUtils.isEmpty(str)) {
            return;
        }
        this.f35597d.put(str, Long.valueOf(System.currentTimeMillis()));
    }

    public void c(boolean z10) {
        this.f35614u = z10;
    }

    @NonNull
    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    public void d(int i11) {
        this.f35619z = i11;
    }

    public void d(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            String str2 = this.f35599f + str;
            Map<String, Map<String, String>> map = this.f35595b;
            if (map == null || !map.containsKey(str2)) {
                return;
            }
            this.f35595b.remove(str2);
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                e11.printStackTrace();
            }
        }
    }

    public void d(boolean z10) {
        this.f35616w = z10;
    }

    public int e() {
        return this.f35618y;
    }

    public void e(int i11) {
        this.f35611r = i11;
    }

    public void e(String str) {
        this.f35609p = str;
    }

    public String f() {
        return this.f35603j;
    }

    public void f(int i11) {
        this.f35612s = i11;
    }

    public void f(String str) {
        this.f35603j = str;
    }

    public List<CampaignEx> g() {
        return this.f35600g;
    }

    public void g(int i11) {
        this.A = i11;
    }

    public void g(String str) {
        this.f35608o = str;
    }

    public void h(String str) {
        this.f35599f = str;
    }

    public CampaignEx i() {
        return this.B;
    }

    public void i(String str) {
        this.f35610q = str;
    }

    public List<CampaignEx> j() {
        return this.C;
    }

    public void j(String str) {
        this.f35604k = str;
    }

    public int k() {
        return this.f35619z;
    }

    public void k(String str) {
        this.f35607n = str;
    }

    public int l() {
        return this.f35611r;
    }

    public void l(String str) {
        this.f35605l = str;
    }

    public int m() {
        return this.f35612s;
    }

    public void m(String str) {
        this.f35601h = str;
    }

    public String n() {
        return this.f35608o;
    }

    public void n(String str) {
        this.f35606m = str;
    }

    public String o() {
        return this.f35599f;
    }

    public com.mbridge.msdk.foundation.error.b p() {
        return this.f35598e;
    }

    public Map<String, Map<String, String>> q() {
        return this.f35596c;
    }

    public Map<String, Map<String, String>> r() {
        return this.f35595b;
    }

    public String s() {
        return this.f35604k;
    }

    public String t() {
        return this.f35607n;
    }

    public String u() {
        return this.f35605l;
    }

    public int v() {
        return this.A;
    }

    public String w() {
        Map<String, String> map;
        if (!TextUtils.isEmpty(this.f35601h)) {
            return this.f35601h;
        }
        try {
            if (TextUtils.isEmpty(this.f35601h)) {
                String str = this.f35599f + this.f35610q;
                Map<String, Map<String, String>> map2 = this.f35595b;
                if (map2 != null && map2.containsKey(str) && (map = this.f35595b.get(str)) != null && map.containsKey(MBridgeConstans.PROPERTIES_UNIT_ID)) {
                    this.f35601h = map.get(MBridgeConstans.PROPERTIES_UNIT_ID);
                }
            }
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                e11.printStackTrace();
            }
        }
        return this.f35601h;
    }

    public String x() {
        return this.f35606m;
    }

    public boolean y() {
        return this.f35613t;
    }

    public boolean z() {
        return this.f35615v;
    }
}
