package com.mbridge.msdk.tracker;

import java.io.Serializable;
import java.util.UUID;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class e implements Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f38501a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private JSONObject f38504d;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private h f38509i;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f38502b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f38503c = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f38507g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f38508h = 604800000;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f38510j = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f38511k = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f38506f = System.currentTimeMillis();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f38505e = UUID.randomUUID().toString();

    public e(String str) {
        this.f38501a = str;
    }

    public long a() {
        return this.f38507g;
    }

    public void a(int i11) {
        this.f38503c = i11;
    }

    public void a(long j11) {
        this.f38507g = j11;
    }

    public void a(h hVar) {
        this.f38509i = hVar;
    }

    void a(String str) {
        this.f38505e = str;
    }

    public void a(JSONObject jSONObject) {
        this.f38504d = jSONObject;
    }

    public void a(boolean z10) {
        this.f38511k = z10;
    }

    public String b() {
        return this.f38501a;
    }

    public void b(int i11) {
        this.f38502b = i11;
    }

    void b(long j11) {
        this.f38508h = j11;
    }

    public int c() {
        return this.f38503c;
    }

    public void c(long j11) {
        this.f38506f = j11;
    }

    public JSONObject d() {
        JSONObject jSONObject = this.f38504d;
        if (jSONObject != null) {
            return jSONObject;
        }
        JSONObject jSONObject2 = new JSONObject();
        this.f38504d = jSONObject2;
        return jSONObject2;
    }

    public h e() {
        return this.f38509i;
    }

    public long f() {
        return this.f38508h;
    }

    public long g() {
        return this.f38506f;
    }

    public int h() {
        return this.f38502b;
    }

    public String i() {
        return this.f38505e;
    }

    public boolean j() {
        return this.f38511k;
    }

    public boolean k() {
        return this.f38510j;
    }
}
