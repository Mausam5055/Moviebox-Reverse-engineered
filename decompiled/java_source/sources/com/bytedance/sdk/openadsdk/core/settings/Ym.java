package com.bytedance.sdk.openadsdk.core.settings;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.bytedance.sdk.component.utils.wE;
import com.bytedance.sdk.openadsdk.BuildConfig;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.multipro.aidl.BinderPoolService;
import com.bytedance.sdk.openadsdk.utils.DeviceUtils;
import com.bytedance.sdk.openadsdk.utils.Mts;
import com.bytedance.sdk.openadsdk.utils.ley;
import com.bytedance.sdk.openadsdk.utils.sU;
import com.cloud.tmc.integration.net.UrlKt;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.meituan.android.walle.ChannelReader;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;
import w5.c;

/* JADX INFO: loaded from: classes3.dex */
public class Ym extends com.bytedance.sdk.component.Dq.Dq {
    private final Sj Sj;
    private final Set<HiB> TKC;
    private final TEQ sP;

    public interface Sj {
        void Sj(boolean z10);
    }

    public Ym(Sj sj2, TEQ teq, HiB... hiBArr) {
        super("SetF");
        HashSet hashSet = new HashSet();
        this.TKC = hashSet;
        this.Sj = sj2;
        this.sP = teq;
        hashSet.addAll(Arrays.asList(hiBArr));
    }

    public static JSONObject Sj(int i11) {
        JSONObject jSONObject = new JSONObject();
        try {
            vS vSVarEjP = dNu.EjP();
            jSONObject.put("model", Build.MODEL);
            jSONObject.put("device_city", Mts.TzV());
            if (vSVarEjP.LqL(UrlKt.KEY_MINI_GAID)) {
                jSONObject.put(UrlKt.KEY_MINI_GAID, com.bytedance.sdk.openadsdk.RiZ.Sj.sP.Sj.Sj().sP());
            }
            jSONObject.put("gdpr", com.bytedance.sdk.openadsdk.core.uA.sP().TEQ());
            jSONObject.put("pa_consent", com.bytedance.sdk.openadsdk.core.uA.sP().Ym());
            if (vSVarEjP.LqL("mcc")) {
                jSONObject.put("mcc", ley.sP());
            }
            Context contextSj = dNu.Sj();
            jSONObject.put("conn_type", Mts.Jcg(i11));
            jSONObject.put("os", 1);
            jSONObject.put("oversea_version_type", 1);
            jSONObject.put("os_version", Build.VERSION.RELEASE);
            jSONObject.put("aos_api_level", Build.VERSION.SDK_INT);
            jSONObject.put("sdk_version", BuildConfig.VERSION_NAME);
            jSONObject.put(TmcConstants.KEY_LANGUAGE, com.bytedance.sdk.openadsdk.core.aa.sP());
            jSONObject.put("time_zone", Mts.dx());
            jSONObject.put("package_name", Mts.HiB());
            jSONObject.put(RequestParameters.POSITION, Mts.Sj() ? 1 : 2);
            jSONObject.put("app_version", Mts.Jcg());
            jSONObject.put("vendor", Build.MANUFACTURER);
            jSONObject.put("uuid", com.bytedance.sdk.openadsdk.core.aa.TKC(contextSj));
            String strEjP = com.bytedance.sdk.openadsdk.core.uA.sP().EjP();
            if (strEjP != null) {
                jSONObject.put("app_id", strEjP);
            }
            long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
            jSONObject.put("ts", jCurrentTimeMillis);
            jSONObject.put("req_sign", com.bytedance.sdk.component.utils.HiB.Sj(strEjP != null ? strEjP.concat(String.valueOf(jCurrentTimeMillis)).concat(BuildConfig.VERSION_NAME) : ""));
            jSONObject.put("tcstring", Fmk.TKC(contextSj));
            jSONObject.put("tcf_gdpr", Fmk.sP(contextSj));
            jSONObject.put("lmt", DeviceUtils.TKC());
            jSONObject.put("locale_language", DeviceUtils.EjP());
            jSONObject.put(ChannelReader.CHANNEL_KEY, "main");
            JSONObject jSONObjectHiB = vSVarEjP.HiB();
            if (jSONObjectHiB != null) {
                jSONObject.put("digest", jSONObjectHiB);
            }
            jSONObject.put("data_time", vSVarEjP.vS());
            jSONObject.put("app_set_id_scope", EjP.sP());
            jSONObject.put("app_set_id", EjP.TKC());
            jSONObject.put("installed_source", EjP.EjP());
            if (vSVarEjP.LqL(UrlKt.KEY_MINI_GAID)) {
                jSONObject.put("did", com.bytedance.sdk.openadsdk.core.aa.Sj(dNu.Sj()));
            }
            jSONObject.put(UrlKt.KEY_MINI_GAID, com.bytedance.sdk.openadsdk.RiZ.Sj.sP.Sj.Sj().sP());
            String strJcg = com.bytedance.sdk.openadsdk.core.uA.sP().Jcg();
            if (!TextUtils.isEmpty(strJcg)) {
                jSONObject.put("mediation", strJcg);
            }
            jSONObject.put("device", DeviceUtils.Sj(contextSj, true));
            jSONObject.put("adx_id", com.bytedance.sdk.openadsdk.core.uA.sP().wE());
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Sj(String str, Map<String, String> map) {
        int i11 = 1;
        try {
            if (!TextUtils.isEmpty(str) && map != null) {
                HashMap map2 = new HashMap();
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    String key = entry.getKey();
                    if (key != null) {
                        map2.put(key.toLowerCase(Locale.US), entry.getValue());
                    }
                }
                int i12 = Integer.parseInt((String) map2.get("active-control"));
                long j11 = Long.parseLong((String) map2.get("ts"));
                String str2 = (String) map2.get("pst");
                String strA = c.a(str + i12 + j11);
                if (strA != null && strA.equalsIgnoreCase(str2)) {
                    i11 = i12;
                }
            }
        } catch (Throwable unused) {
        }
        uA.Sj(i11);
    }

    public static boolean Sj() {
        return BinderPoolService.Sj;
    }

    private JSONObject sP(JSONObject jSONObject) {
        return com.bytedance.sdk.component.utils.Sj.Sj(jSONObject);
    }

    public boolean Sj(@NonNull JSONObject jSONObject) throws Throwable {
        this.sP.Sj(jSONObject);
        for (HiB hiB : this.TKC) {
            if (hiB != null) {
                hiB.Sj(jSONObject);
            }
        }
        return this.sP.TKC;
    }

    @Override // java.lang.Runnable
    public void run() {
        int iSj = wE.Sj(dNu.Sj(), 0L);
        if (iSj == 0) {
            this.Sj.Sj(false);
            return;
        }
        JSONObject jSONObjectSj = Sj(iSj);
        com.bytedance.sdk.component.Jcg.sP.EjP ejPSP = com.bytedance.sdk.openadsdk.TzV.sP.Sj().sP().sP();
        try {
            ejPSP.sP(com.bytedance.sdk.openadsdk.Dq.EjP.Sj(ejPSP, Mts.Sj("/api/ad/union/sdk/settings/", false, true)));
            ejPSP.sP("User-Agent", Mts.TKC());
        } catch (Exception unused) {
        }
        String string = sP(jSONObjectSj).toString();
        if (dNu.EjP().db() && com.bytedance.sdk.openadsdk.core.ley.Sj().EjP() == 1) {
            Mts.Sj("Pangle_Debug_Mode", string, dNu.Sj());
        }
        ejPSP.Sj(string, dNu.EjP().uvD());
        ejPSP.Sj(6);
        ejPSP.Sj("setting");
        com.bytedance.sdk.openadsdk.dNu.TKC.Sj(new com.bytedance.sdk.openadsdk.dNu.EjP() { // from class: com.bytedance.sdk.openadsdk.core.settings.Ym.1
            @Override // com.bytedance.sdk.openadsdk.dNu.EjP
            public com.bytedance.sdk.openadsdk.dNu.sP.Sj generatorModel() {
                com.bytedance.sdk.openadsdk.dNu.sP.Sj sj2 = new com.bytedance.sdk.openadsdk.dNu.sP.Sj();
                sj2.sP("settings_fetch");
                return sj2;
            }
        });
        ejPSP.Sj(new com.bytedance.sdk.component.Jcg.Sj.Sj() { // from class: com.bytedance.sdk.openadsdk.core.settings.Ym.2
            @Override // com.bytedance.sdk.component.Jcg.Sj.Sj
            public void Sj(com.bytedance.sdk.component.Jcg.sP.TKC tkc, com.bytedance.sdk.component.Jcg.sP sPVar) {
                JSONObject jSONObject;
                int iOptInt;
                sPVar.Sj();
                String strEjP = sPVar.EjP();
                if (dNu.EjP().db() && com.bytedance.sdk.openadsdk.core.ley.Sj().EjP() == 1) {
                    Mts.Sj("Pangle_Debug_Mode", strEjP, dNu.Sj());
                }
                if (!sPVar.vS() || TextUtils.isEmpty(strEjP)) {
                    com.bytedance.sdk.openadsdk.dNu.TKC.TKC(new com.bytedance.sdk.openadsdk.dNu.EjP() { // from class: com.bytedance.sdk.openadsdk.core.settings.Ym.2.2
                        @Override // com.bytedance.sdk.openadsdk.dNu.EjP
                        public com.bytedance.sdk.openadsdk.dNu.sP.Sj generatorModel() {
                            com.bytedance.sdk.openadsdk.dNu.sP.Sj sj2 = new com.bytedance.sdk.openadsdk.dNu.sP.Sj();
                            sj2.sP("settings_fetch");
                            return sj2;
                        }
                    });
                    if (tkc != null) {
                        sU.Sj(tkc.EjP());
                    }
                } else {
                    String strTKC = null;
                    try {
                        jSONObject = new JSONObject(strEjP);
                    } catch (JSONException unused2) {
                        jSONObject = null;
                    }
                    if (jSONObject != null && (iOptInt = jSONObject.optInt("cypher", -1)) != -1) {
                        if (iOptInt == 3) {
                            strTKC = com.bytedance.sdk.component.utils.Sj.TKC(jSONObject.optString("message"));
                            if (!TextUtils.isEmpty(strTKC)) {
                                try {
                                    jSONObject = new JSONObject(strTKC);
                                } catch (Throwable unused3) {
                                }
                            }
                        }
                        try {
                            Ym.this.Sj(strTKC, sPVar.TKC());
                        } catch (Throwable unused4) {
                        }
                        try {
                            Ym.this.Sj(jSONObject);
                            dNu.EjP().Sj(System.currentTimeMillis());
                            com.bytedance.sdk.openadsdk.dNu.TKC.sP(new com.bytedance.sdk.openadsdk.dNu.EjP() { // from class: com.bytedance.sdk.openadsdk.core.settings.Ym.2.1
                                @Override // com.bytedance.sdk.openadsdk.dNu.EjP
                                public com.bytedance.sdk.openadsdk.dNu.sP.Sj generatorModel() {
                                    com.bytedance.sdk.openadsdk.dNu.sP.Sj sj2 = new com.bytedance.sdk.openadsdk.dNu.sP.Sj();
                                    sj2.sP("settings_fetch");
                                    return sj2;
                                }
                            });
                            sU.sP();
                        } catch (Throwable unused5) {
                        }
                        Ym.this.Sj.Sj(true);
                        return;
                    }
                }
                Ym.this.Sj.Sj(false);
            }

            @Override // com.bytedance.sdk.component.Jcg.Sj.Sj
            public void Sj(com.bytedance.sdk.component.Jcg.sP.TKC tkc, IOException iOException) {
                Ym.this.Sj.Sj(false);
                com.bytedance.sdk.openadsdk.dNu.TKC.TKC(new com.bytedance.sdk.openadsdk.dNu.EjP() { // from class: com.bytedance.sdk.openadsdk.core.settings.Ym.2.3
                    @Override // com.bytedance.sdk.openadsdk.dNu.EjP
                    public com.bytedance.sdk.openadsdk.dNu.sP.Sj generatorModel() {
                        com.bytedance.sdk.openadsdk.dNu.sP.Sj sj2 = new com.bytedance.sdk.openadsdk.dNu.sP.Sj();
                        sj2.sP("settings_fetch");
                        return sj2;
                    }
                });
                if (tkc != null) {
                    sU.Sj(tkc.EjP());
                }
            }
        });
        com.bytedance.sdk.openadsdk.core.Ym.sP(com.bytedance.sdk.openadsdk.core.aa.Sj(dNu.Sj()));
        DeviceUtils.Ym();
    }
}
