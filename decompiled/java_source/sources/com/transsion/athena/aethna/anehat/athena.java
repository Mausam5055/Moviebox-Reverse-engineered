package com.transsion.athena.aethna.anehat;

import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import androidx.annotation.NonNull;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.transsion.athena.config.data.model.TidConfigBean;
import com.transsion.athena.config.data.model.aatnhe;
import com.transsion.athena.config.data.model.anateh;
import com.transsion.athena.config.data.model.anehat;
import com.transsion.athena.config.data.model.ehanat;
import com.transsion.athena.config.data.model.enatha;
import com.transsion.athena.hatnea.atenha;
import com.transsion.athena.hatnea.athaen;
import com.transsion.athena.taaneh.aethna;
import com.transsion.ga.AthenaAnalytics;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class athena {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile athena f42549a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.transsion.athena.aethna.anehat.aethna.athena f42550b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private anateh f42551c = new anateh();

    private athena(com.transsion.athena.aethna.anehat.aethna.athena athenaVar) {
        this.f42550b = athenaVar;
    }

    public static athena a(com.transsion.athena.aethna.anehat.aethna.athena athenaVar) {
        if (f42549a == null) {
            synchronized (athena.class) {
                try {
                    if (f42549a == null) {
                        f42549a = new athena(athenaVar);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f42549a;
    }

    private void c() {
        String str;
        try {
            this.f42550b.getClass();
            byte[] bArrA = anehat.a("63D4BEBEBC7ABCA4BC6A796B6AB06B766A6C7D706B6B756F70B07B6F71A4A5AEBCB2D4BEBEBC6A69BCA4BC7A6B69B16A796B6AB06B767D72726A6C65B07B6F71BCB2D4BEBEBC6A7BBCA4BC7A6B7BB16A796B6AB06B767D72726A6C65B07B6F71BCB2D4BEBEBC6F69BCA4BC7A6B69B06B767D72726A6C65B07B6F71BCB2D4BEBEBC6F7BBCA4BC7A6B7BB06B767D72726A6C65B07B6F71BCB2D4BEBEBC7BBCA4BCAF726F777B6F7078AF68A8AF696E726F7D7A7B6F7078BCB2D4BEBEBC77BCA4BCAF726F777B6F7078AF68ADAF6B797B6C796ABCB2D4BEBEBC69BCA4BCAF7D6A7679707DAF7B76797B736E6F75706AAF68ACAF696E726F7D7ABCB2D4BEBEBC787BBCA4BC68AEAC7BBCB2D4BEBEBC787ABCA4BC68AEAC7ABCB2D4BEBEBC7879BCA4BC68AEAC79BCB2D4BEBEBC7568BCA4BC7D7C7B7A79787776757473AD71706F6EBCB2D4BEBEBC67BCA4BCABA7ADA899A99B9CAD9CA5A6AC9BAEABA9AEADAB99A9ACADA8A79D9D98A9AA9DBCD461D4D4");
            if (bArrA == null) {
                str = "";
            } else {
                for (int i11 = 0; i11 < bArrA.length; i11++) {
                    bArrA[i11] = (byte) (222 - ((char) bArrA[i11]));
                }
                str = new String(bArrA);
            }
            ehanat.c(str);
        } catch (Exception e11) {
            aethna.b(Log.getStackTraceString(e11));
            com.transsion.ga.anateh.a("initSDKConfig", e11);
        } finally {
            this.f42550b.a(ehanat.f42609j);
            this.f42550b.a(ehanat.f42612m);
        }
    }

    public com.transsion.athena.config.data.model.aethna a(long j11) {
        com.transsion.athena.config.data.model.aethna aethnaVar = new com.transsion.athena.config.data.model.aethna();
        String strA = this.f42551c.a(j11);
        if (TextUtils.isEmpty(strA)) {
            strA = ehanat.a(true);
        }
        aethnaVar.f42584a = strA + ehanat.f42607h;
        aethnaVar.f42585b = e();
        aethnaVar.f42586c = this.f42551c.b().f();
        return aethnaVar;
    }

    public List<com.transsion.athena.config.data.model.athena> a() {
        return this.f42551c.a();
    }

    public void a(int i11) {
        List<com.transsion.athena.config.data.model.athena> listA = this.f42551c.a();
        Iterator<com.transsion.athena.config.data.model.athena> it = listA.iterator();
        while (it.hasNext()) {
            if (it.next().b() == i11) {
                return;
            }
        }
        com.transsion.athena.config.data.model.athena athenaVar = new com.transsion.athena.config.data.model.athena();
        athenaVar.a(i11);
        listA.add(athenaVar);
    }

    public void a(Handler handler, com.transsion.athena.aethna.aethna aethnaVar) {
        if (ehanat.r()) {
            enatha enathaVarB = this.f42551c.b();
            if (enathaVarB.a(32)) {
                com.transsion.athena.hatnea.athena.a().a(new atenha(handler, enathaVarB, aethnaVar));
            }
            for (com.transsion.athena.config.data.model.athena athenaVar : this.f42551c.a()) {
                int iE = athenaVar.e();
                long jC = iE > 0 ? ((long) iE) * 3600000 : enathaVarB.c();
                if (athenaVar.a(jC, 32)) {
                    com.transsion.athena.hatnea.athena.a().a(new athaen(athenaVar, jC, aethnaVar));
                }
            }
        }
    }

    public void a(@NonNull com.transsion.athena.config.data.model.athena athenaVar, @NonNull String str) {
        com.transsion.athena.config.data.model.athena athenaVar2 = athenaVar;
        String str2 = "cfg";
        String str3 = "iw";
        String str4 = "gpct";
        String str5 = "upct";
        String str6 = "pr";
        String str7 = "stats";
        String str8 = "cv";
        String str9 = "frq";
        try {
            String str10 = "ur";
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has("ver")) {
                athenaVar2.c(jSONObject.getLong("ver"));
            }
            if (jSONObject.has("url")) {
                athenaVar2.e(jSONObject.getString("url"));
            }
            if (jSONObject.has("interval")) {
                athenaVar2.c(jSONObject.getInt("interval"));
            }
            if (jSONObject.has(OfflineConstantsKt.OFFLINE)) {
                athenaVar2.d(jSONObject.getInt(OfflineConstantsKt.OFFLINE));
            }
            if (jSONObject.has("url_config")) {
                athenaVar2.c(jSONObject.getString("url_config"));
            }
            if (jSONObject.has("data")) {
                JSONArray jSONArray = jSONObject.getJSONArray("data");
                if (jSONArray.length() > 0) {
                    int i11 = 0;
                    JSONObject jSONObject2 = jSONArray.getJSONObject(0).getJSONObject("cfg");
                    int i12 = 0;
                    while (i12 < jSONArray.length()) {
                        JSONObject jSONObject3 = jSONArray.getJSONObject(i12).getJSONObject(str2);
                        JSONArray jSONArray2 = jSONArray.getJSONObject(i12).getJSONArray("tids");
                        int i13 = i11;
                        while (i13 < jSONArray2.length()) {
                            JSONObject jSONObject4 = jSONObject2;
                            long j11 = jSONArray2.getLong(i13);
                            TidConfigBean tidConfigBeanA = athenaVar2.a(j11);
                            if (tidConfigBeanA == null) {
                                TidConfigBean tidConfigBean = new TidConfigBean();
                                tidConfigBean.setTid(j11);
                                athenaVar2.a(tidConfigBean);
                                tidConfigBeanA = tidConfigBean;
                            }
                            int iOptInt = jSONObject4.optInt(str8, 0);
                            if (jSONObject3.has(str8)) {
                                iOptInt = jSONObject3.getInt(str8);
                            }
                            aatnhe tidConfig = tidConfigBeanA.getTidConfig();
                            String str11 = str8;
                            JSONObject jSONObject5 = jSONObject;
                            long j12 = iOptInt;
                            if (iOptInt > 0) {
                                j12 *= 60000;
                            }
                            tidConfig.b(j12);
                            int iOptInt2 = jSONObject4.optInt("gmin", 0);
                            if (jSONObject3.has("gmin")) {
                                iOptInt2 = jSONObject3.getInt("gmin");
                            }
                            tidConfigBeanA.getTidConfig().c(iOptInt2);
                            int iOptInt3 = jSONObject4.optInt("gmax", 100);
                            if (jSONObject3.has("gmax")) {
                                iOptInt3 = jSONObject3.getInt("gmax");
                            }
                            tidConfigBeanA.getTidConfig().b(iOptInt3);
                            int iOptInt4 = jSONObject4.optInt("num", 0);
                            if (jSONObject3.has("num")) {
                                iOptInt4 = jSONObject3.getInt("num");
                            }
                            tidConfigBeanA.getTidConfig().e(iOptInt4);
                            int iOptInt5 = jSONObject4.optInt("s", 10);
                            if (jSONObject3.has("s")) {
                                iOptInt5 = jSONObject3.getInt("s");
                            }
                            tidConfigBeanA.getTidConfig().d(((long) iOptInt5) * 60000);
                            String str12 = str3;
                            int iOptInt6 = jSONObject4.optInt(str12, 0);
                            if (jSONObject3.has(str12)) {
                                iOptInt6 = jSONObject3.getInt(str12);
                            }
                            tidConfigBeanA.getTidConfig().f(iOptInt6);
                            String str13 = str10;
                            int iOptInt7 = jSONObject4.optInt(str13, 100);
                            if (jSONObject3.has(str13)) {
                                iOptInt7 = jSONObject3.getInt(str13);
                            }
                            tidConfigBeanA.getTidConfig().j(iOptInt7);
                            String str14 = str9;
                            int iOptInt8 = jSONObject4.optInt(str14, 0);
                            if (jSONObject3.has(str14)) {
                                iOptInt8 = jSONObject3.getInt(str14);
                            }
                            str3 = str12;
                            tidConfigBeanA.getTidConfig().a(((long) (iOptInt8 * 60)) * 1000);
                            String str15 = str7;
                            int iOptInt9 = jSONObject4.optInt(str15, 0);
                            if (jSONObject3.has(str15)) {
                                iOptInt9 = jSONObject3.getInt(str15);
                            }
                            tidConfigBeanA.getTidConfig().h(iOptInt9);
                            String str16 = str6;
                            int iOptInt10 = jSONObject4.optInt(str16, 0);
                            if (jSONObject3.has(str16)) {
                                iOptInt10 = jSONObject3.getInt(str16);
                            }
                            str7 = str15;
                            tidConfigBeanA.getTidConfig().g(iOptInt10);
                            String str17 = str5;
                            int iOptInt11 = jSONObject4.optInt(str17, 1);
                            if (jSONObject3.has(str17)) {
                                iOptInt11 = jSONObject3.getInt(str17);
                            }
                            tidConfigBeanA.getTidConfig().i(iOptInt11);
                            String str18 = str4;
                            int iOptInt12 = jSONObject4.optInt(str18, 1);
                            if (jSONObject3.has(str18)) {
                                iOptInt12 = jSONObject3.getInt(str18);
                            }
                            str4 = str18;
                            tidConfigBeanA.getTidConfig().d(iOptInt12);
                            i13++;
                            athenaVar2 = athenaVar;
                            str9 = str14;
                            str10 = str13;
                            str8 = str11;
                            str6 = str16;
                            str2 = str2;
                            jSONObject2 = jSONObject4;
                            str5 = str17;
                            jSONObject = jSONObject5;
                        }
                        i12++;
                        athenaVar2 = athenaVar;
                        str8 = str8;
                        jSONObject2 = jSONObject2;
                        str5 = str5;
                        jSONObject = jSONObject;
                        i11 = 0;
                    }
                }
            }
            JSONObject jSONObject6 = jSONObject;
            if (jSONObject6.has("table")) {
                JSONObject jSONObject7 = jSONObject6.getJSONObject("table");
                for (TidConfigBean tidConfigBean2 : athenaVar.j()) {
                    String strOptString = jSONObject7.optString(String.valueOf(tidConfigBean2.getTid()), "");
                    if (strOptString.length() > 0) {
                        tidConfigBean2.setEvent(strOptString);
                    }
                }
            }
            try {
                com.transsion.athena.config.data.model.athena athenaVarA = this.f42551c.a(com.transsion.athena.data.athena.b());
                if (athenaVarA == null) {
                    return;
                }
                ehanat.a(athenaVarA.i());
            } catch (Exception e11) {
                e = e11;
                aethna.b(Log.getStackTraceString(e));
                com.transsion.ga.anateh.a("updateAppConfig", e);
            }
        } catch (Exception e12) {
            e = e12;
        }
    }

    public void a(@NonNull String str) {
        try {
            enatha enathaVarB = this.f42551c.b();
            JSONObject jSONObject = new JSONObject(str);
            enathaVarB.d(jSONObject.getLong("cv") * 3600000);
            enathaVarB.e(jSONObject.getLong("threshold"));
            enathaVarB.b(jSONObject.getInt("once") == 1);
            if (jSONObject.has("networks")) {
                JSONObject jSONObject2 = jSONObject.getJSONObject("networks");
                enathaVarB.c(jSONObject2.getString("url"));
                enathaVarB.b(jSONObject2.getJSONObject("tids"));
            }
            if (jSONObject.has(TtmlNode.TAG_P)) {
                enathaVarB.a(jSONObject.getJSONArray(TtmlNode.TAG_P));
            }
            if (jSONObject.has("ver")) {
                enathaVarB.f(jSONObject.getLong("ver"));
            }
            if (jSONObject.has("delays")) {
                String[] strArrSplit = jSONObject.getString("delays").split(",");
                enathaVarB.a(Integer.parseInt(strArrSplit[0]), Integer.parseInt(strArrSplit[1]));
            }
            if (jSONObject.has("tz")) {
                enathaVarB.b(jSONObject.getString("tz"));
            }
            if (jSONObject.has("dlt")) {
                enathaVarB.d(jSONObject.getInt("dlt"));
            }
            enathaVarB.b(jSONObject.optInt("geo", 6));
        } catch (Exception e11) {
            aethna.b(Log.getStackTraceString(e11));
            com.transsion.ga.anateh.a("updateGlobalConfig", e11);
        }
    }

    public void a(List<com.transsion.athena.config.data.model.athena> list) {
        this.f42551c.a(list);
    }

    public anateh b() {
        return this.f42551c;
    }

    public List<TidConfigBean> b(int i11) {
        if (i11 == -1) {
            return this.f42551c.c();
        }
        com.transsion.athena.config.data.model.athena athenaVarA = this.f42551c.a(i11);
        return athenaVarA != null ? athenaVarA.j() : Collections.emptyList();
    }

    public void d() {
        try {
            c();
            anateh anatehVarA = anateh.a(this.f42550b.c());
            if (anatehVarA == null) {
                this.f42550b.b(this.f42551c.e());
            } else {
                this.f42551c = anatehVarA;
            }
            com.transsion.athena.config.data.model.athena athenaVarA = this.f42551c.a(com.transsion.athena.data.athena.b());
            if (athenaVarA == null) {
                return;
            }
            ehanat.a(athenaVarA.i());
        } catch (Exception e11) {
            aethna.b(Log.getStackTraceString(e11));
        }
    }

    @NonNull
    public Pair<Integer, byte[]> e() {
        List<byte[]> listB = this.f42551c.b().b();
        if (!anehat.b(listB)) {
            return new Pair<>(0, ehanat.f42613n);
        }
        int iCurrentTimeMillis = (int) (System.currentTimeMillis() % ((long) listB.size()));
        return new Pair<>(Integer.valueOf(iCurrentTimeMillis), listB.get(iCurrentTimeMillis));
    }

    public void f() {
        this.f42551c.d();
        this.f42550b.b(this.f42551c.e());
    }

    public void g() {
        enatha enathaVarB = this.f42551c.b();
        enathaVarB.a(com.transsion.athena.taaneh.athena.j(AthenaAnalytics.J()));
        enathaVarB.a(true);
        this.f42550b.b(this.f42551c.e());
    }

    public void h() {
        com.transsion.athena.aethna.anehat.aethna.athena athenaVar = this.f42550b;
        if (athenaVar != null) {
            athenaVar.b(this.f42551c.e());
        }
    }
}
