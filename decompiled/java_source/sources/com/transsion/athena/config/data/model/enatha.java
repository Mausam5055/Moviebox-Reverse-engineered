package com.transsion.athena.config.data.model;

import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class enatha {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private JSONObject f42630e;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f42635j;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private String f42639n;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f42626a = 86400000;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f42627b = 150000;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f42628c = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f42629d = "";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f42631f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f42632g = -1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f42633h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f42634i = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private List<String> f42636k = new ArrayList();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private List<byte[]> f42637l = new ArrayList();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private Pair<Integer, Integer> f42638m = new Pair<>(3, 6);

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f42640o = 6;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f42641p = 10;

    @Nullable
    public static enatha a(JSONObject jSONObject) {
        if (jSONObject != null) {
            try {
                enatha enathaVar = new enatha();
                enathaVar.f42626a = jSONObject.getLong("pd");
                enathaVar.f42627b = jSONObject.getLong("th");
                enathaVar.f42628c = jSONObject.getBoolean("once");
                if (jSONObject.has("url")) {
                    enathaVar.f42629d = jSONObject.getString("url");
                }
                if (jSONObject.has("tidUrls")) {
                    enathaVar.f42630e = jSONObject.getJSONObject("tidUrls");
                }
                enathaVar.f42631f = jSONObject.getLong("version");
                enathaVar.f42632g = jSONObject.getLong("npt");
                enathaVar.f42633h = jSONObject.getInt("rt");
                enathaVar.f42634i = jSONObject.getBoolean("dd");
                enathaVar.f42635j = jSONObject.optString("ddv", null);
                if (jSONObject.has(TtmlNode.TAG_P)) {
                    enathaVar.a(jSONObject.getJSONArray(TtmlNode.TAG_P));
                }
                if (jSONObject.has("delays")) {
                    String[] strArrSplit = jSONObject.getString("delays").split(",");
                    enathaVar.f42638m = new Pair<>(Integer.valueOf(Integer.parseInt(strArrSplit[0])), Integer.valueOf(Integer.parseInt(strArrSplit[1])));
                }
                if (jSONObject.has("tz")) {
                    enathaVar.f42639n = jSONObject.getString("tz");
                }
                int i11 = 6;
                int iOptInt = jSONObject.optInt("geo", 6);
                if (iOptInt > 0 && iOptInt < 12) {
                    i11 = iOptInt;
                }
                enathaVar.f42640o = i11;
                if (jSONObject.has("dlt")) {
                    enathaVar.f42641p = jSONObject.getInt("dlt");
                }
                return enathaVar;
            } catch (Exception e11) {
                com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e11));
            }
        }
        return null;
    }

    public int a() {
        return this.f42640o;
    }

    public String a(long j11) {
        String string;
        String strValueOf = String.valueOf(j11);
        JSONObject jSONObject = this.f42630e;
        if (jSONObject == null || !jSONObject.has(strValueOf)) {
            string = null;
        } else {
            try {
                string = this.f42630e.getString(strValueOf);
            } catch (Exception e11) {
                com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e11));
                string = null;
            }
        }
        return TextUtils.isEmpty(string) ? this.f42629d : string;
    }

    public void a(int i11, int i12) {
        this.f42638m = new Pair<>(Integer.valueOf(i11), Integer.valueOf(i12));
    }

    public void a(String str) {
        this.f42635j = str;
    }

    public void a(JSONArray jSONArray) throws JSONException {
        if (jSONArray == null || jSONArray.length() == 0) {
            return;
        }
        this.f42636k.clear();
        this.f42637l.clear();
        for (int i11 = 0; i11 < jSONArray.length(); i11++) {
            this.f42636k.add(jSONArray.getString(i11));
            this.f42637l.add(jSONArray.getString(i11).getBytes());
        }
    }

    public void a(boolean z10) {
        this.f42634i = z10;
    }

    public boolean a(int i11) {
        if (this.f42632g == -1 || this.f42626a == -1) {
            return true;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j11 = jCurrentTimeMillis - this.f42632g;
        if (Math.abs(j11) < this.f42626a) {
            return j11 >= 0 && this.f42633h < i11;
        }
        b(jCurrentTimeMillis);
        return true;
    }

    public List<byte[]> b() {
        return this.f42637l;
    }

    public void b(int i11) {
        if (i11 <= 0 || i11 >= 12) {
            i11 = 6;
        }
        this.f42640o = i11;
    }

    public void b(long j11) {
        this.f42632g = j11;
        this.f42633h = 0;
    }

    public void b(String str) {
        this.f42639n = str;
    }

    public void b(JSONObject jSONObject) {
        this.f42630e = jSONObject;
    }

    public void b(boolean z10) {
        this.f42628c = z10;
    }

    public long c() {
        return this.f42626a;
    }

    public void c(int i11) {
        this.f42633h = i11;
    }

    public void c(long j11) {
        this.f42632g = j11;
    }

    public void c(String str) {
        this.f42629d = str;
    }

    public int d() {
        return this.f42633h;
    }

    public void d(int i11) {
        this.f42641p = i11;
    }

    public void d(long j11) {
        this.f42626a = j11;
    }

    public int e() {
        try {
            int iIntValue = ((Integer) this.f42638m.first).intValue();
            int iIntValue2 = ((Integer) this.f42638m.second).intValue();
            int i11 = com.transsion.athena.taaneh.anehat.f42803e;
            return new Random().nextInt((iIntValue2 - iIntValue) + 1) + iIntValue;
        } catch (Exception e11) {
            e11.printStackTrace();
            return 6;
        }
    }

    public void e(long j11) {
        if (j11 <= 0) {
            return;
        }
        this.f42627b = j11;
    }

    public long f() {
        return this.f42627b;
    }

    public void f(long j11) {
        this.f42631f = j11;
    }

    public String g() {
        return TextUtils.isEmpty(this.f42639n) ? "Asia/Shanghai" : this.f42639n;
    }

    public int h() {
        return this.f42641p;
    }

    public long i() {
        return this.f42631f;
    }

    public JSONObject j() {
        try {
            JSONArray jSONArray = new JSONArray();
            Iterator<String> it = this.f42636k.iterator();
            while (it.hasNext()) {
                jSONArray.put(it.next());
            }
            return new JSONObject().put("pd", this.f42626a).put("dlt", this.f42641p).put("th", this.f42627b).put("once", this.f42628c).put("url", this.f42629d).put("tidUrls", this.f42630e).put("version", this.f42631f).put("npt", this.f42632g).put("rt", this.f42633h).put("dd", this.f42634i).put("ddv", this.f42635j).put(TtmlNode.TAG_P, jSONArray).put("tz", this.f42639n).put("geo", this.f42640o).put("delays", this.f42638m.first + "," + this.f42638m.second);
        } catch (Exception e11) {
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e11));
            return null;
        }
    }
}
