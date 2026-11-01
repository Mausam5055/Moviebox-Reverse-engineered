package y5;

import android.text.TextUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import org.json.JSONObject;
import w5.c;

/* JADX INFO: loaded from: classes3.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f78904a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f78905b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f78906c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private double f78907d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f78908e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f78909f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f78910g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f78911h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f78912i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f78913j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private double f78914k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f78915l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f78916m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private float f78917n = -1.0f;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f78918o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f78919p = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f78920q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f78921r = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f78922s = 307200;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f78923t = 1;

    public int A() {
        return this.f78921r;
    }

    public boolean B() {
        return this.f78920q == 0;
    }

    public int C() {
        return this.f78904a;
    }

    public void D(int i11) {
        this.f78904a = i11;
    }

    public void E(String str) {
        this.f78909f = str;
    }

    public int F() {
        return this.f78919p;
    }

    public String G() {
        if (TextUtils.isEmpty(this.f78913j)) {
            this.f78913j = c.a(this.f78910g);
        }
        return this.f78913j;
    }

    public String H() {
        return this.f78908e;
    }

    public void I(int i11) {
        this.f78919p = i11;
    }

    public int J() {
        return this.f78920q;
    }

    public double K() {
        return this.f78907d;
    }

    public void L(int i11) {
        this.f78920q = i11;
    }

    public void M(String str) {
        this.f78913j = str;
    }

    public int N() {
        return this.f78923t;
    }

    public float a() {
        return this.f78917n;
    }

    public void b(int i11) {
        this.f78918o = i11;
    }

    public int c() {
        return this.f78916m;
    }

    public void d(int i11) {
        this.f78916m = i11;
    }

    public void e(String str) {
        this.f78911h = str;
    }

    public String f() {
        return this.f78912i;
    }

    public long g() {
        return this.f78906c;
    }

    public void h(int i11) {
        this.f78922s = i11;
    }

    public void i(String str) {
        this.f78912i = str;
    }

    public double j() {
        return this.f78914k;
    }

    public void k(int i11) {
        this.f78921r = i11;
    }

    public int l() {
        return this.f78918o;
    }

    public int m() {
        return this.f78915l;
    }

    public void n(double d11) {
        this.f78907d = d11;
    }

    public void o(int i11) {
        this.f78915l = i11;
    }

    public void p(long j11) {
        this.f78906c = j11;
    }

    public void q(String str) {
        this.f78908e = str;
    }

    public String r() {
        return this.f78909f;
    }

    public void s(int i11) {
        this.f78923t = Math.min(4, Math.max(1, i11));
    }

    public int t() {
        return this.f78905b;
    }

    public void u(int i11) {
        this.f78905b = i11;
    }

    public void v(String str) {
        this.f78910g = str;
    }

    public JSONObject w() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("cover_height", C());
            jSONObject.put("cover_url", r());
            jSONObject.put("cover_width", t());
            jSONObject.put(CampaignEx.JSON_NATIVE_VIDEO_ENDCARD, z());
            jSONObject.put("file_hash", G());
            jSONObject.put("resolution", H());
            jSONObject.put("size", g());
            jSONObject.put("video_duration", K());
            jSONObject.put(CampaignEx.JSON_KEY_VIDEO_URL, x());
            jSONObject.put("playable_download_url", f());
            jSONObject.put("if_playable_loading_show", l());
            jSONObject.put("remove_loading_page_type", F());
            jSONObject.put("fallback_endcard_judge", m());
            jSONObject.put("video_preload_size", y());
            jSONObject.put("reward_video_cached_type", J());
            jSONObject.put("execute_cached_type", A());
            jSONObject.put("endcard_render", c());
            jSONObject.put("replay_time", N());
            jSONObject.put("play_speed_ratio", a());
            if (j() > 0.0d) {
                jSONObject.put("start", j());
            }
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    public String x() {
        return this.f78910g;
    }

    public int y() {
        if (this.f78922s < 0) {
            this.f78922s = 307200;
        }
        long j11 = this.f78922s;
        long j12 = this.f78906c;
        if (j11 > j12) {
            this.f78922s = (int) j12;
        }
        return this.f78922s;
    }

    public String z() {
        return this.f78911h;
    }
}
