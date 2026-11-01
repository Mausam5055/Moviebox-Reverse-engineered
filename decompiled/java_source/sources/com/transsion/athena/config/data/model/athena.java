package com.transsion.athena.config.data.model;

import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.Nullable;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import java.util.Calendar;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class athena {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f42589a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f42592d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f42593e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f42595g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f42596h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f42597i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f42598j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private String f42599k;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f42590b = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f42591c = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final List<TidConfigBean> f42594f = new CopyOnWriteArrayList();

    @Nullable
    public static athena a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            athena athenaVar = new athena();
            athenaVar.f42590b = jSONObject.getLong("npt");
            athenaVar.f42591c = jSONObject.getInt("rt");
            athenaVar.f42592d = jSONObject.getLong("ver");
            athenaVar.f42593e = jSONObject.optInt("dim");
            athenaVar.f42596h = jSONObject.optString("url");
            athenaVar.f42599k = jSONObject.optString("url_config");
            athenaVar.f42595g = jSONObject.optString("opcode");
            athenaVar.f42597i = jSONObject.optInt("interval");
            athenaVar.f42598j = jSONObject.optInt(OfflineConstantsKt.OFFLINE);
            return athenaVar;
        } catch (Exception e11) {
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e11));
            return null;
        }
    }

    public TidConfigBean a(long j11) {
        for (TidConfigBean tidConfigBean : this.f42594f) {
            if (tidConfigBean.getTid() == j11) {
                return tidConfigBean;
            }
        }
        return null;
    }

    public void a(int i11) {
        this.f42589a = i11;
    }

    public void a(TidConfigBean tidConfigBean) {
        this.f42594f.add(tidConfigBean);
    }

    public boolean a() {
        return this.f42598j == 2;
    }

    public boolean a(long j11, int i11) {
        if (this.f42590b == -1 || j11 == -1) {
            return true;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j12 = jCurrentTimeMillis - this.f42590b;
        if (Math.abs(j12) >= j11) {
            b(jCurrentTimeMillis);
            return true;
        }
        if (j12 >= 0) {
            return this.f42591c < i11;
        }
        long j13 = this.f42590b;
        Calendar calendar = Calendar.getInstance();
        calendar.get(1);
        calendar.get(2);
        calendar.get(5);
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        long timeInMillis = calendar.getTimeInMillis();
        calendar.add(5, 1);
        return j13 >= timeInMillis && j13 < calendar.getTimeInMillis();
    }

    public int b() {
        return this.f42589a;
    }

    public TidConfigBean b(String str) {
        for (TidConfigBean tidConfigBean : this.f42594f) {
            if (TextUtils.equals(tidConfigBean.getEvent(), str)) {
                return tidConfigBean;
            }
        }
        return null;
    }

    public void b(int i11) {
        this.f42593e = i11;
    }

    public void b(long j11) {
        this.f42590b = j11;
        this.f42591c = 0;
    }

    public String c() {
        String str = this.f42599k;
        return str == null ? "" : str;
    }

    public void c(int i11) {
        this.f42597i = i11;
    }

    public void c(long j11) {
        this.f42592d = j11;
    }

    public void c(String str) {
        this.f42599k = str;
    }

    public int d() {
        return this.f42593e;
    }

    public void d(int i11) {
        this.f42598j = i11;
    }

    public void d(String str) {
        this.f42595g = str;
    }

    public int e() {
        return this.f42597i;
    }

    public void e(int i11) {
        this.f42591c = i11;
    }

    public void e(String str) {
        this.f42596h = str;
    }

    public String f() {
        return this.f42595g;
    }

    public int g() {
        return this.f42591c;
    }

    public String h() {
        return this.f42596h;
    }

    public long i() {
        if (anehat.a(this.f42594f)) {
            return 0L;
        }
        return this.f42594f.get(0).getTidConfig().k();
    }

    public List<TidConfigBean> j() {
        return this.f42594f;
    }

    public long k() {
        return this.f42592d;
    }

    public boolean l() {
        return anehat.a(this.f42594f);
    }

    public String m() {
        try {
            return new JSONObject().put("npt", this.f42590b).put("rt", this.f42591c).put("ver", this.f42592d).put("dim", this.f42593e).put("url", this.f42596h).put("url_config", this.f42599k).put("interval", this.f42597i).put(OfflineConstantsKt.OFFLINE, this.f42598j).put("opcode", this.f42595g).toString();
        } catch (Exception e11) {
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e11));
            return null;
        }
    }
}
