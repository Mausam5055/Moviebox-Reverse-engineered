package com.transsion.athena.config.data.model;

import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.transsion.ga.AthenaAnalytics;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class aatnhe {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f42570a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f42571b = 100;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f42572c = 1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f42573d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f42574e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f42575f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f42576g = 100;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f42577h = 1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f42578i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f42579j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f42580k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f42581l = 30000;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private long f42582m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f42583n;

    @Nullable
    static aatnhe a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        try {
            aatnhe aatnheVar = new aatnhe();
            aatnheVar.f42580k = jSONObject.getInt("ci");
            aatnheVar.f42576g = jSONObject.getInt("gmax");
            aatnheVar.f42575f = jSONObject.getInt("gmin");
            aatnheVar.f42579j = jSONObject.getInt("mi");
            aatnheVar.f42574e = jSONObject.getInt("nf");
            aatnheVar.f42573d = jSONObject.getLong("pd");
            aatnheVar.f42578i = jSONObject.getLong("pt");
            aatnheVar.f42581l = jSONObject.getLong("se");
            aatnheVar.f42571b = jSONObject.getInt("urhash");
            aatnheVar.f42583n = jSONObject.optInt("pr");
            aatnheVar.f42572c = jSONObject.optInt("upct");
            aatnheVar.f42577h = jSONObject.optInt("gpct");
            return aatnheVar;
        } catch (Exception e11) {
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e11));
            return null;
        }
    }

    public int a() {
        return this.f42580k;
    }

    public void a(int i11) {
        this.f42580k = i11;
    }

    public void a(long j11) {
        this.f42582m = j11;
    }

    public void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            this.f42576g = jSONObject.getInt("gmax");
            this.f42575f = jSONObject.getInt("gmin");
            this.f42579j = jSONObject.getInt("mi");
            this.f42574e = jSONObject.getInt("nf");
            this.f42573d = jSONObject.getLong("pd");
            this.f42581l = jSONObject.getLong("se");
            this.f42571b = jSONObject.getInt("urhash");
            this.f42582m = jSONObject.getInt("frq");
            this.f42570a = jSONObject.optInt("ct", 0);
            this.f42583n = jSONObject.optInt("pr", 0);
            this.f42572c = jSONObject.optInt("upct", 1);
            this.f42577h = jSONObject.optInt("gpct", 1);
        } catch (Exception e11) {
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e11));
        }
    }

    public long b() {
        return this.f42582m;
    }

    public void b(int i11) {
        this.f42576g = i11;
    }

    public void b(long j11) {
        this.f42573d = j11;
    }

    public int c() {
        return this.f42576g;
    }

    public void c(int i11) {
        this.f42575f = i11;
    }

    public void c(long j11) {
        this.f42578i = j11;
    }

    public int d() {
        return this.f42575f;
    }

    public void d(int i11) {
        this.f42577h = i11;
    }

    public void d(long j11) {
        this.f42581l = j11;
    }

    public int e() {
        return this.f42577h;
    }

    public void e(int i11) {
        this.f42579j = i11;
    }

    public int f() {
        return this.f42579j;
    }

    public void f(int i11) {
        this.f42574e = i11;
    }

    public int g() {
        return this.f42574e;
    }

    public void g(int i11) {
        this.f42583n = i11;
    }

    public int h() {
        return this.f42583n;
    }

    public void h(int i11) {
        this.f42570a = i11;
    }

    public long i() {
        long j11 = this.f42573d;
        try {
            if (!ehanat.v()) {
                return j11;
            }
            return anehat.a(AthenaAnalytics.J(), "debug.athena.push_during", this.f42573d).longValue();
        } catch (Exception e11) {
            com.transsion.athena.taaneh.aethna.b("SystemPropertiesProxy.getLong " + e11.getMessage());
            return j11;
        }
    }

    public void i(int i11) {
        this.f42572c = i11;
    }

    public long j() {
        return this.f42578i;
    }

    public void j(int i11) {
        this.f42571b = i11;
    }

    public long k() {
        return this.f42581l;
    }

    public int l() {
        return this.f42572c;
    }

    public int m() {
        return this.f42571b;
    }

    JSONObject n() {
        try {
            return new JSONObject().put("ci", this.f42580k).put("gmax", this.f42576g).put("gmin", this.f42575f).put("mi", this.f42579j).put("nf", this.f42574e).put("pd", i()).put("pt", this.f42578i).put("se", this.f42581l).put("urhash", this.f42571b).put("frq", this.f42582m).put("ct", this.f42570a).put("pr", this.f42583n).put("upct", this.f42572c).put("gpct", this.f42577h);
        } catch (Exception e11) {
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e11));
            return null;
        }
    }

    public String o() {
        try {
            return new JSONObject().put("gmax", this.f42576g).put("gmin", this.f42575f).put("mi", this.f42579j).put("nf", this.f42574e).put("pd", i()).put("se", this.f42581l).put("urhash", this.f42571b).put("frq", this.f42582m).put("ct", this.f42570a).put("pr", this.f42583n).put("upct", this.f42572c).put("gpct", this.f42577h).toString();
        } catch (Exception e11) {
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e11));
            return null;
        }
    }

    @NonNull
    public String toString() {
        return "TidConfig { pushTime=" + this.f42578i + ", pushDuration=" + this.f42573d + ", maxCachedItems=" + this.f42579j + ", cachedItems=" + this.f42580k + ", netWorkFlag=" + this.f42574e + '}';
    }
}
