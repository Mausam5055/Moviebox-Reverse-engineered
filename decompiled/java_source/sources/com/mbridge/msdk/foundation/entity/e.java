package com.mbridge.msdk.foundation.entity;

import android.text.TextUtils;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.mbbid.common.BidResponsedEx;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f35174a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f35175b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f35176c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f35177d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f35178e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f35179f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f35180g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f35181h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f35182i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f35183j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f35184k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private String f35185l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f35186m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private String f35187n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private String f35188o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f35189p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private String f35190q;

    public static ArrayList<JSONObject> a(List<e> list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        ArrayList<JSONObject> arrayList = new ArrayList<>();
        for (e eVar : list) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("rid", eVar.n());
                jSONObject.put("rid_n", eVar.o());
                jSONObject.put(BidResponsedEx.KEY_CID, eVar.a());
                jSONObject.put("click_type", eVar.c());
                jSONObject.put(NativeComponentConstants.KEY_COMPONENT_TYPE, eVar.p());
                jSONObject.put("click_duration", eVar.d());
                jSONObject.put("key", "2000013");
                jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, eVar.q());
                jSONObject.put("last_url", eVar.j());
                jSONObject.put("content", eVar.f());
                jSONObject.put("code", eVar.e());
                jSONObject.put("exception", eVar.g());
                jSONObject.put("header", eVar.h());
                jSONObject.put(CampaignEx.JSON_KEY_LANDING_TYPE, eVar.i());
                jSONObject.put(CampaignEx.JSON_KEY_LINK_TYPE, eVar.k());
                jSONObject.put(TrackingKey.CLICK_TIME, eVar.b());
                if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
                    jSONObject.put("network_type", eVar.m());
                    jSONObject.put("network_str", eVar.l());
                }
                String strQ = eVar.q();
                if (!TextUtils.isEmpty(strQ)) {
                    String str = com.mbridge.msdk.foundation.controller.a.f34994r.get(strQ);
                    if (str == null) {
                        str = "";
                    }
                    jSONObject.put("u_stid", str);
                }
                arrayList.add(jSONObject);
            } catch (Throwable th2) {
                o0.b("ClickTime", th2.getMessage());
            }
        }
        return arrayList;
    }

    public static JSONObject a(e eVar) {
        if (eVar == null) {
            return null;
        }
        String strJ = eVar.j();
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("rid", eVar.n());
            jSONObject.put("rid_n", eVar.o());
            jSONObject.put("click_type", eVar.c());
            jSONObject.put(NativeComponentConstants.KEY_COMPONENT_TYPE, eVar.p());
            jSONObject.put(BidResponsedEx.KEY_CID, eVar.a());
            jSONObject.put("click_duration", eVar.d());
            jSONObject.put("key", "2000012");
            jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, eVar.q());
            jSONObject.put("last_url", strJ);
            jSONObject.put("code", eVar.e());
            jSONObject.put("exception", eVar.g());
            jSONObject.put(CampaignEx.JSON_KEY_LANDING_TYPE, eVar.i());
            jSONObject.put(CampaignEx.JSON_KEY_LINK_TYPE, eVar.k());
            jSONObject.put(TrackingKey.CLICK_TIME, eVar.b());
            if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
                jSONObject.put("network_type", eVar.m());
                jSONObject.put("network_str", eVar.l());
            }
            return jSONObject;
        } catch (Throwable th2) {
            o0.b("ClickTime", th2.getMessage());
            return null;
        }
    }

    public String a() {
        return this.f35174a;
    }

    public void a(int i11) {
        this.f35177d = i11;
    }

    public void a(String str) {
        this.f35174a = str;
    }

    public String b() {
        return this.f35176c;
    }

    public void b(int i11) {
        this.f35178e = i11;
    }

    public void b(String str) {
        this.f35176c = str;
    }

    public int c() {
        return this.f35177d;
    }

    public void c(int i11) {
        this.f35182i = i11;
    }

    public void c(String str) {
        this.f35175b = str;
    }

    public String d() {
        return this.f35175b;
    }

    public void d(int i11) {
        this.f35184k = i11;
    }

    public void d(String str) {
        this.f35179f = str;
    }

    public int e() {
        return this.f35178e;
    }

    public void e(int i11) {
        this.f35186m = i11;
    }

    public void e(String str) {
        this.f35180g = str;
    }

    public String f() {
        return this.f35179f;
    }

    public void f(int i11) {
        this.f35189p = i11;
    }

    public void f(String str) {
        this.f35181h = str;
    }

    public String g() {
        return this.f35180g;
    }

    public void g(String str) {
        this.f35183j = str;
    }

    public String h() {
        return this.f35181h;
    }

    public void h(String str) {
        this.f35185l = str;
    }

    public int i() {
        return this.f35182i;
    }

    public void i(String str) {
        this.f35187n = str;
    }

    public String j() {
        return this.f35183j;
    }

    public void j(String str) {
        this.f35188o = str;
    }

    public int k() {
        return this.f35184k;
    }

    public void k(String str) {
        this.f35190q = str;
    }

    public String l() {
        return this.f35185l;
    }

    public int m() {
        return this.f35186m;
    }

    public String n() {
        return this.f35187n;
    }

    public String o() {
        return this.f35188o;
    }

    public int p() {
        return this.f35189p;
    }

    public String q() {
        return this.f35190q;
    }

    public String toString() {
        return "ClickTime [campaignId=" + this.f35174a + ", click_duration=" + this.f35175b + ", lastUrl=" + this.f35183j + ", code=" + this.f35178e + ", excepiton=" + this.f35180g + ", header=" + this.f35181h + ", content=" + this.f35179f + ", type=" + this.f35189p + ", click_type=" + this.f35177d + "]";
    }
}
