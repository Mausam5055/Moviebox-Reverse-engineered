package com.mbridge.msdk.videocommon.entity;

import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f39956a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f39957b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private a f39958c;

    public b(int i11, int i12, a aVar) {
        this.f39956a = i11;
        this.f39957b = i12;
        this.f39958c = aVar;
    }

    public static List<b> a(JSONArray jSONArray) {
        if (jSONArray != null && jSONArray.length() > 0) {
            ArrayList arrayList = new ArrayList();
            for (int i11 = 0; i11 < jSONArray.length(); i11++) {
                try {
                    JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i11);
                    int iOptInt = jSONObjectOptJSONObject.optInt("id");
                    int iOptInt2 = jSONObjectOptJSONObject.optInt("timeout");
                    JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("params");
                    arrayList.add(new b(iOptInt, iOptInt2, jSONObjectOptJSONObject2 != null ? a.a(jSONObjectOptJSONObject2) : null));
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
            }
            return arrayList;
        }
        return null;
    }

    public int a() {
        return this.f39956a;
    }

    public int b() {
        return this.f39957b;
    }
}
