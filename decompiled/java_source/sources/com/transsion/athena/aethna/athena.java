package com.transsion.athena.aethna;

import android.os.Handler;
import android.util.Pair;
import androidx.core.app.NotificationCompat;
import com.transsion.api.gateway.utils.SafeStringUtils;
import com.transsion.athena.config.data.model.TidConfigBean;
import com.transsion.athena.config.data.model.anateh;
import com.transsion.athena.config.data.model.anehat;
import com.transsion.athena.config.data.model.ehanat;
import com.transsion.athena.config.data.model.enatha;
import java.security.SecureRandom;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class athena {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile athena f42552a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static SecureRandom f42553b = new SecureRandom();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.transsion.athena.aethna.anehat.athena f42554c = com.transsion.athena.aethna.anehat.athena.a(com.transsion.athena.aethna.anehat.aethna.athena.b());

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile boolean f42555d;

    private athena() {
    }

    private boolean a(float f11) {
        if (f11 == 1.0f) {
            return true;
        }
        int i11 = (int) (10000.0f * f11);
        int iAbs = Math.abs(f42553b.nextInt()) % 10000;
        boolean z10 = iAbs < i11;
        com.transsion.athena.taaneh.aethna.a("checkSamplingRate false, samplingRate : %f, samplingRateInTenThousand : %d, randomHash : %d", Float.valueOf(f11), Integer.valueOf(i11), Integer.valueOf(iAbs));
        return z10;
    }

    public static athena c() {
        if (f42552a == null) {
            synchronized (athena.class) {
                try {
                    if (f42552a == null) {
                        f42552a = new athena();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f42552a;
    }

    public int a(int i11, String str, float f11) {
        if (!this.f42555d) {
            com.transsion.athena.taaneh.aethna.a("isTidEnable init not completed");
            return 101;
        }
        if (!ehanat.r()) {
            com.transsion.athena.taaneh.aethna.a("isTidEnable sdk disable");
            return 100;
        }
        enatha enathaVarB = this.f42554c.b().b();
        com.transsion.athena.config.data.model.athena athenaVarA = this.f42554c.b().a(i11);
        if (anehat.a(enathaVarB.b()) || athenaVarA == null || athenaVarA.l()) {
            if (!ehanat.p() || "location#page_view#athena_anr_full#athena_crash_full".contains(str)) {
                return 102;
            }
            return a(f11) ? 0 : 105;
        }
        TidConfigBean tidConfigBeanB = athenaVarA.b(str);
        if (tidConfigBeanB != null) {
            if (!tidConfigBeanB.inSamplingRange()) {
                com.transsion.athena.taaneh.aethna.a("isTidEnable device is not in sampling range");
                return 105;
            }
            if (tidConfigBeanB.isEnable()) {
                return 0;
            }
            com.transsion.athena.taaneh.aethna.a("isTidEnable tid config is closed");
            return 104;
        }
        try {
            if (!com.transsion.athena.taaneh.anehat.b()) {
                return 103;
            }
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(SafeStringUtils.SP_APPID, i11);
            jSONObject.put(NotificationCompat.CATEGORY_EVENT, str);
            com.transsion.athena.taaneh.aethna.b("invalid or not registered:%s", jSONObject.toString());
            return 103;
        } catch (Exception e11) {
            com.transsion.athena.taaneh.aethna.b("checkTidEnable exception:%s", e11.getMessage());
            return 103;
        }
    }

    public int a(long j11, float f11) {
        if (!this.f42555d) {
            com.transsion.athena.taaneh.aethna.a("isTidEnable init not completed");
            return 101;
        }
        if (!ehanat.r()) {
            com.transsion.athena.taaneh.aethna.a("isTidEnable sdk disable");
            return 100;
        }
        enatha enathaVarB = this.f42554c.b().b();
        anateh anatehVarB = this.f42554c.b();
        anatehVarB.getClass();
        com.transsion.athena.config.data.model.athena athenaVarA = anatehVarB.a(com.transsion.athena.taaneh.anehat.a(j11));
        if (anehat.a(enathaVarB.b()) || athenaVarA == null || athenaVarA.l()) {
            if (ehanat.p()) {
                return a(f11) ? 0 : 105;
            }
            return 102;
        }
        TidConfigBean tidConfigBeanA = athenaVarA.a(j11);
        if (tidConfigBeanA == null) {
            com.transsion.athena.taaneh.aethna.a("isTidEnable tid config is null");
            return 103;
        }
        if (tidConfigBeanA.inSamplingRange()) {
            if (tidConfigBeanA.isEnable()) {
                return 0;
            }
            com.transsion.athena.taaneh.aethna.a("isTidEnable tid config is closed");
            return 104;
        }
        com.transsion.athena.taaneh.aethna.a("isTidEnable tid " + tidConfigBeanA.getTid() + " is not in sampling range");
        return 105;
    }

    public TidConfigBean a(int i11, String str) {
        com.transsion.athena.config.data.model.athena athenaVarA = this.f42554c.b().a(i11);
        if (athenaVarA != null) {
            return athenaVarA.b(str);
        }
        return null;
    }

    public com.transsion.athena.config.data.model.aethna a(long j11) {
        return this.f42554c.a(j11);
    }

    public List<com.transsion.athena.config.data.model.athena> a() {
        return this.f42554c.a();
    }

    public void a(int i11) {
        this.f42554c.a(i11);
    }

    public void a(Handler handler, aethna aethnaVar) {
        this.f42554c.a(handler, aethnaVar);
    }

    public void a(com.transsion.athena.config.data.model.athena athenaVar, String str) {
        this.f42554c.a(athenaVar, str);
    }

    public void a(String str) {
        this.f42554c.a(str);
    }

    public void a(List<com.transsion.athena.config.data.model.athena> list) {
        this.f42554c.a(list);
    }

    public int b() {
        return this.f42554c.b().b().a();
    }

    public TidConfigBean b(long j11) {
        anateh anatehVarB = this.f42554c.b();
        anatehVarB.getClass();
        com.transsion.athena.config.data.model.athena athenaVarA = anatehVarB.a(com.transsion.athena.taaneh.anehat.a(j11));
        if (athenaVarA == null) {
            return null;
        }
        for (TidConfigBean tidConfigBean : athenaVarA.j()) {
            if (tidConfigBean.getTid() == j11) {
                return tidConfigBean;
            }
        }
        return null;
    }

    public com.transsion.athena.config.data.model.athena b(int i11) {
        return this.f42554c.b().a(i11);
    }

    public List<TidConfigBean> c(int i11) {
        return this.f42554c.b(i11);
    }

    public List<byte[]> d() {
        return this.f42554c.b().b().b();
    }

    public int e() {
        return this.f42554c.b().b().e();
    }

    public String f() {
        return this.f42554c.b().b().g();
    }

    public int g() {
        return this.f42554c.b().b().h();
    }

    public void h() {
        this.f42554c.d();
        this.f42555d = true;
    }

    public Pair<Integer, byte[]> i() {
        return this.f42554c.e();
    }

    public void j() {
        this.f42554c.f();
    }

    public void k() {
        this.f42554c.g();
    }

    public void l() {
        this.f42554c.h();
    }
}
