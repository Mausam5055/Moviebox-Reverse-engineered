package com.transsion.athena.config.data.model;

import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.Nullable;
import com.transsion.ga.AthenaAnalytics;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class TidConfigBean {
    public static final int REASON_ATHENA_DISABLE = 100;
    public static final int REASON_CONFIG_NOT_READY = 102;
    public static final int REASON_DB_EXCEPTION = 106;
    public static final int REASON_INITIALIZING = 101;
    public static final int REASON_NONE = 0;
    public static final int REASON_SAMPLING_RATE = 105;
    public static final int REASON_TID_DISABLE = 104;
    public static final int REASON_TID_NOT_EXIST = 103;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f42566a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f42567b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private aatnhe f42568c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f42569d;

    public TidConfigBean() {
        this.f42568c = new aatnhe();
    }

    public TidConfigBean(long j11, String str, aatnhe aatnheVar) {
        new aatnhe();
        this.f42566a = j11;
        this.f42567b = str;
        this.f42568c = aatnheVar;
    }

    @Nullable
    public static TidConfigBean fromJSON(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        try {
            TidConfigBean tidConfigBean = new TidConfigBean();
            tidConfigBean.setTid(jSONObject.getLong("tid"));
            tidConfigBean.setTidConfig(aatnhe.a(jSONObject.getJSONObject("tidConfig")));
            return tidConfigBean;
        } catch (Exception e11) {
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e11));
            return null;
        }
    }

    public boolean allowTrack(long j11) {
        return this.f42568c.b() == 0 || j11 >= this.f42569d + this.f42568c.b();
    }

    public boolean allowUpload(long j11) {
        long j12 = this.f42568c.j();
        long jI = this.f42568c.i();
        if (j12 == -1 || jI == -1) {
            return false;
        }
        boolean z10 = Math.abs(j11 - j12) >= jI;
        boolean z11 = this.f42568c.f() > 0 && this.f42568c.f() <= this.f42568c.a();
        int iG = this.f42568c.g();
        if (iG == 0 || (iG == 1 && com.transsion.athena.taaneh.aatnhe.d(AthenaAnalytics.J()))) {
            return z10 || z11;
        }
        return false;
    }

    public String getEvent() {
        return this.f42567b;
    }

    public long getTid() {
        return this.f42566a;
    }

    public aatnhe getTidConfig() {
        return this.f42568c;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x005b  */
    public boolean inSamplingRange() {
        boolean z10;
        int iD = this.f42568c.d();
        int iC = this.f42568c.c();
        int iE = this.f42568c.e();
        int iM = this.f42568c.m();
        int iL = this.f42568c.l();
        if (iM == 100 && iD == 0 && iC == 100 && iE == 1 && iL == 1) {
            return true;
        }
        String strA = !TextUtils.isEmpty(com.transsion.athena.taaneh.anehat.a()) ? com.transsion.athena.taaneh.anehat.a() : com.transsion.athena.taaneh.athena.b(AthenaAnalytics.J());
        if (TextUtils.isEmpty(strA)) {
            z10 = true;
        } else {
            int iAbs = Math.abs(strA.hashCode()) % (iE * 100);
            if (iAbs < iD || iAbs > iC) {
                z10 = false;
            } else {
                z10 = true;
            }
        }
        boolean z11 = Math.abs(com.transsion.athena.aethna.athena.f42553b.nextInt()) % (iL * 100) < iM;
        if (com.transsion.athena.taaneh.anehat.b()) {
            com.transsion.athena.taaneh.aethna.c("gaidHashHit: " + z10 + " eventHashHit: " + z11 + " gmin = " + iD + " gmax = " + iC);
        }
        return z10 && z11;
    }

    public boolean isCacheEnable() {
        return this.f42568c.h() == 0;
    }

    public boolean isEnable() {
        aatnhe aatnheVar = this.f42568c;
        return aatnheVar != null && aatnheVar.i() >= 0;
    }

    public void setEvent(String str) {
        this.f42567b = str;
    }

    public void setLastTTime(long j11) {
        this.f42569d = j11;
    }

    public void setTid(long j11) {
        this.f42566a = j11;
    }

    public void setTidConfig(aatnhe aatnheVar) {
        this.f42568c = aatnheVar;
    }

    public JSONObject toJSON() {
        try {
            return new JSONObject().put("tid", getTid()).put("tidConfig", this.f42568c.n());
        } catch (Exception e11) {
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e11));
            return null;
        }
    }
}
