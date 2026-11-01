package com.facebook.biddingkit.logging;

import android.os.AsyncTask;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f24123a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f24124b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map f24125c = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f24126d;

    class a extends AsyncTask {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void doInBackground(e... eVarArr) {
            f.g(eVarArr[0]);
            return null;
        }
    }

    public void a(String str) {
        this.f24124b = str;
    }

    public void b(String str, String str2) {
        if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str)) {
            return;
        }
        Map map = (Map) this.f24125c.get(str);
        if (map == null) {
            map = new HashMap();
            this.f24125c.put(str, map);
        }
        map.put("cpm_cents", str2);
    }

    protected void c(String str) {
        this.f24123a = str;
    }

    public void d(String str, String str2) {
        if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str)) {
            return;
        }
        Map map = (Map) this.f24125c.get(str);
        if (map == null) {
            map = new HashMap();
            this.f24125c.put(str, map);
        }
        map.put("error", str2);
    }

    public void e(String str) {
        this.f24126d = str;
    }

    public void f(String str, String str2) {
        if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str)) {
            return;
        }
        Map map = (Map) this.f24125c.get(str);
        if (map == null) {
            map = new HashMap();
            this.f24125c.put(str, map);
        }
        map.put("latency_ms", str2);
    }

    public void g(String str, String str2) {
        if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str)) {
            return;
        }
        Map map = (Map) this.f24125c.get(str);
        if (map == null) {
            map = new HashMap();
            this.f24125c.put(str, map);
        }
        map.put("result", str2);
    }

    protected JSONObject h() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        Iterator it = this.f24125c.entrySet().iterator();
        while (it.hasNext()) {
            String str = (String) ((Map.Entry) it.next()).getKey();
            jSONObject.put(str, j(str));
        }
        return jSONObject;
    }

    protected String i() {
        return TextUtils.isEmpty(this.f24124b) ? "" : this.f24124b;
    }

    protected JSONObject j(String str) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        if (!this.f24125c.containsKey(str)) {
            return jSONObject;
        }
        for (Map.Entry entry : ((Map) this.f24125c.get(str)).entrySet()) {
            if ("cpm_cents".equals(entry.getKey())) {
                jSONObject.put((String) entry.getKey(), Double.parseDouble((String) entry.getValue()));
            } else if ("latency_ms".equals(entry.getKey())) {
                jSONObject.put((String) entry.getKey(), Long.parseLong((String) entry.getValue()));
            } else {
                jSONObject.put((String) entry.getKey(), entry.getValue());
            }
        }
        return jSONObject;
    }

    protected String k() {
        return this.f24123a;
    }

    protected String l() {
        return TextUtils.isEmpty(this.f24126d) ? "" : this.f24126d;
    }

    protected JSONObject m() {
        JSONObject jSONObject = new JSONObject();
        try {
            if (!TextUtils.isEmpty(this.f24124b)) {
                jSONObject.put("auction_id", this.f24124b);
            }
            if (!TextUtils.isEmpty(this.f24126d)) {
                jSONObject.put("exception", this.f24126d);
            }
            Iterator it = this.f24125c.entrySet().iterator();
            while (it.hasNext()) {
                String str = (String) ((Map.Entry) it.next()).getKey();
                jSONObject.put(str, j(str));
            }
        } catch (JSONException e11) {
            b.d("EventLog", "Failed to create json data", e11);
        }
        return jSONObject;
    }

    public void n() {
        new a().execute(this);
    }
}
