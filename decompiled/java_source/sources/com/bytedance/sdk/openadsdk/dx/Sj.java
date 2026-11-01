package com.bytedance.sdk.openadsdk.dx;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.text.TextUtils;
import com.bytedance.sdk.component.embedapplog.PangleEncryptConstant;
import com.bytedance.sdk.component.embedapplog.PangleEncryptManager;
import com.bytedance.sdk.component.utils.Dq;
import com.bytedance.sdk.component.utils.sU;
import com.bytedance.sdk.component.utils.wE;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.dx;
import com.bytedance.sdk.openadsdk.core.sef;
import com.bytedance.sdk.openadsdk.core.settings.Fmk;
import com.bytedance.sdk.openadsdk.core.settings.Ym;
import com.bytedance.sdk.openadsdk.core.uA;
import com.bytedance.sdk.openadsdk.core.uA.sP;
import com.bytedance.sdk.openadsdk.utils.JcM;
import com.bytedance.sdk.openadsdk.utils.Mts;
import com.bytedance.sdk.openadsdk.zR.EjP;
import com.bytedance.sdk.openadsdk.zR.TKC;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.pgl.ssdk.ces.out.PglSSConfig;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class Sj {
    public static final ConcurrentHashMap<String, Object> Sj = new ConcurrentHashMap<>();
    private static volatile TKC TKC;
    public static String sP;

    public static boolean EjP() {
        return sP() && Sj("ad_load_and_render_opt", "sync_barrier_switch_opt", 0) == 1;
    }

    public static int HiB() {
        if (sP()) {
            return Sj("ad_load_and_render_opt", "webview_preload_cache", 0);
        }
        return 0;
    }

    private static TKC Jcg() {
        return Sj(dNu.Sj(), uA.sP().EjP());
    }

    public static int Sj(String str, int i11) {
        TKC tkcJcg = Jcg();
        return tkcJcg != null ? tkcJcg.Sj(str, i11) : i11;
    }

    public static int Sj(String str, String str2, int i11) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            String str3 = str + "_" + str2;
            ConcurrentHashMap<String, Object> concurrentHashMap = Sj;
            Object obj = concurrentHashMap.get(str3);
            if (obj != null && (obj instanceof Integer)) {
                return ((Integer) obj).intValue();
            }
            try {
                String strSj = Jcg().Sj(str, "");
                if (TextUtils.isEmpty(strSj)) {
                    return i11;
                }
                int iOptInt = new JSONObject(strSj).optInt(str2, i11);
                concurrentHashMap.put(str3, Integer.valueOf(iOptInt));
                return iOptInt;
            } catch (Throwable th2) {
                sU.sP("StrategyUtils", th2.getMessage());
            }
        }
        return i11;
    }

    public static TKC Sj(final Context context, final String str) {
        if (TKC == null) {
            synchronized (Sj.class) {
                try {
                    if (TKC == null) {
                        try {
                            TKC tkc = new TKC(new EjP() { // from class: com.bytedance.sdk.openadsdk.dx.Sj.1
                                @Override // com.bytedance.sdk.openadsdk.zR.EjP
                                public Handler EjP() {
                                    return sef.sP();
                                }

                                @Override // com.bytedance.sdk.openadsdk.zR.EjP
                                public String HiB() {
                                    String strSj = Mts.Sj("/api/ad/union/sdk/strategies/adn", false, true);
                                    Sj.sP = strSj;
                                    return strSj;
                                }

                                @Override // com.bytedance.sdk.openadsdk.zR.EjP
                                public Map<String, String> Jcg() {
                                    HashMap map = new HashMap();
                                    map.put("User-Agent", Mts.TKC());
                                    String strSP = com.bytedance.sdk.openadsdk.multipro.EjP.EjP.sP("ttopenadsdk", PglSSConfig.CUSTOMINFO_KEY_IPV6, "");
                                    if (!strSP.isEmpty()) {
                                        JSONObject jSONObject = new JSONObject();
                                        try {
                                            jSONObject.put("ipv6", strSP);
                                        } catch (JSONException unused) {
                                        }
                                        JSONObject jSONObjectEncryptType4 = PangleEncryptManager.encryptType4(jSONObject, new dx(PangleEncryptConstant.CryptDataScene.UNKNOWN));
                                        if (jSONObjectEncryptType4 != null) {
                                            map.put("transfer-param", jSONObjectEncryptType4.optString("message"));
                                            if (jSONObjectEncryptType4.optInt("cypher") == 4) {
                                                map.put("cypher", "4");
                                            } else {
                                                map.put("cypher", "3");
                                            }
                                        }
                                    }
                                    try {
                                        map.put("x-pangle-target-idc", Fmk.gq().oWa());
                                    } catch (Throwable unused2) {
                                    }
                                    return map;
                                }

                                @Override // com.bytedance.sdk.openadsdk.zR.EjP
                                public HandlerThread Sj(String str2, int i11) {
                                    return Dq.Sj(str2, i11);
                                }

                                @Override // com.bytedance.sdk.openadsdk.zR.EjP
                                public ExecutorService Sj() {
                                    return JcM.HiB();
                                }

                                @Override // com.bytedance.sdk.openadsdk.zR.EjP
                                public JSONObject Sj(JSONObject jSONObject) {
                                    int iOptInt = jSONObject.optInt("cypher", -1);
                                    if (iOptInt == -1 || iOptInt != 3) {
                                        return jSONObject;
                                    }
                                    String strTKC = com.bytedance.sdk.component.utils.Sj.TKC(jSONObject.optString("message"));
                                    if (TextUtils.isEmpty(strTKC)) {
                                        return jSONObject;
                                    }
                                    try {
                                        return new JSONObject(strTKC);
                                    } catch (Throwable unused) {
                                        return jSONObject;
                                    }
                                }

                                @Override // com.bytedance.sdk.openadsdk.zR.EjP
                                public String TKC() {
                                    return "pag_adn_strategy_center";
                                }

                                @Override // com.bytedance.sdk.openadsdk.zR.EjP
                                public Context sP() {
                                    Context context2 = context;
                                    return context2 != null ? context2 : dNu.Sj();
                                }

                                @Override // com.bytedance.sdk.openadsdk.zR.EjP
                                public JSONObject vS() {
                                    try {
                                        JSONObject jSONObjectSj = Ym.Sj(wE.Sj(dNu.Sj(), 0L));
                                        if (!jSONObjectSj.has("app_id")) {
                                            if (!TextUtils.isEmpty(str)) {
                                                jSONObjectSj.put("app_id", str);
                                            } else {
                                                if (TextUtils.isEmpty(uA.sP().EjP())) {
                                                    return null;
                                                }
                                                jSONObjectSj.put("app_id", uA.sP().EjP());
                                            }
                                        }
                                        return com.bytedance.sdk.component.utils.Sj.Sj(jSONObjectSj);
                                    } catch (Throwable th2) {
                                        sU.sP("StrategyUtils", th2.getMessage());
                                        return null;
                                    }
                                }
                            });
                            TKC = tkc;
                            tkc.Sj(new com.bytedance.sdk.openadsdk.zR.Sj() { // from class: com.bytedance.sdk.openadsdk.dx.Sj.2
                                @Override // com.bytedance.sdk.openadsdk.zR.Sj
                                public void Sj() {
                                    com.bytedance.sdk.openadsdk.dNu.TKC.Sj(new com.bytedance.sdk.openadsdk.dNu.EjP() { // from class: com.bytedance.sdk.openadsdk.dx.Sj.2.1
                                        @Override // com.bytedance.sdk.openadsdk.dNu.EjP
                                        public com.bytedance.sdk.openadsdk.dNu.sP.Sj generatorModel() {
                                            com.bytedance.sdk.openadsdk.dNu.sP.Sj sj2 = new com.bytedance.sdk.openadsdk.dNu.sP.Sj();
                                            sj2.sP("strategy_fetch");
                                            return sj2;
                                        }
                                    });
                                }

                                @Override // com.bytedance.sdk.openadsdk.zR.Sj
                                public void Sj(int i11, String str2) {
                                    com.bytedance.sdk.openadsdk.dNu.TKC.TKC(new com.bytedance.sdk.openadsdk.dNu.EjP() { // from class: com.bytedance.sdk.openadsdk.dx.Sj.2.3
                                        @Override // com.bytedance.sdk.openadsdk.dNu.EjP
                                        public com.bytedance.sdk.openadsdk.dNu.sP.Sj generatorModel() {
                                            com.bytedance.sdk.openadsdk.dNu.sP.Sj sj2 = new com.bytedance.sdk.openadsdk.dNu.sP.Sj();
                                            sj2.sP("strategy_fetch");
                                            return sj2;
                                        }
                                    });
                                    com.bytedance.sdk.openadsdk.utils.sU.Sj(Sj.sP);
                                }

                                @Override // com.bytedance.sdk.openadsdk.zR.Sj
                                public void sP() {
                                    com.bytedance.sdk.openadsdk.dNu.TKC.sP(new com.bytedance.sdk.openadsdk.dNu.EjP() { // from class: com.bytedance.sdk.openadsdk.dx.Sj.2.2
                                        @Override // com.bytedance.sdk.openadsdk.dNu.EjP
                                        public com.bytedance.sdk.openadsdk.dNu.sP.Sj generatorModel() {
                                            com.bytedance.sdk.openadsdk.dNu.sP.Sj sj2 = new com.bytedance.sdk.openadsdk.dNu.sP.Sj();
                                            sj2.sP("strategy_fetch");
                                            return sj2;
                                        }
                                    });
                                    com.bytedance.sdk.openadsdk.vS.Sj.Sj().sP();
                                    com.bytedance.sdk.openadsdk.sU.Sj.TKC.Sj().sP();
                                    com.bykv.vk.openvk.Sj.Sj.sP.EjP.EjP.TKC(!com.bytedance.sdk.openadsdk.core.aa.HiB.Sj.Sj());
                                    com.bytedance.sdk.openadsdk.utils.sU.sP();
                                    HashMap map = new HashMap();
                                    String strSj = Sj.Sj(PglSSConfig.CUSTOMINFO_KEY_SEC_CONFIG_STR, "");
                                    if (!TextUtils.isEmpty(strSj)) {
                                        map.put(PglSSConfig.CUSTOMINFO_KEY_SEC_CONFIG_STR, strSj);
                                    }
                                    sP.sP().Sj(map);
                                }
                            });
                        } catch (Throwable th2) {
                            th2.getMessage();
                        }
                    }
                } catch (Throwable th3) {
                    throw th3;
                }
            }
        }
        return TKC;
    }

    public static String Sj(String str, String str2) {
        TKC tkcJcg = Jcg();
        return tkcJcg != null ? tkcJcg.Sj(str, str2) : str2;
    }

    public static String Sj(String str, String str2, String str3) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            String str4 = str + "_" + str2;
            ConcurrentHashMap<String, Object> concurrentHashMap = Sj;
            Object obj = concurrentHashMap.get(str4);
            if (obj != null && (obj instanceof String)) {
                return (String) obj;
            }
            try {
                String strSj = Jcg().Sj(str, "");
                if (TextUtils.isEmpty(strSj)) {
                    return str3;
                }
                String strOptString = new JSONObject(strSj).optString(str2, str3);
                concurrentHashMap.put(str4, strOptString);
                return strOptString;
            } catch (Throwable th2) {
                sU.sP("StrategyUtils", th2.getMessage());
            }
        }
        return str3;
    }

    public static void Sj() {
        TKC tkcJcg = Jcg();
        if (tkcJcg != null) {
            tkcJcg.Sj();
        }
    }

    public static boolean Sj(String str, boolean z10) {
        TKC tkcJcg = Jcg();
        return tkcJcg != null ? tkcJcg.Sj(str, z10) : z10;
    }

    public static boolean TKC() {
        return sP() && Sj("ad_load_and_render_opt", "thread_switch_opt", 0) == 1;
    }

    public static boolean sP() {
        return Sj("ad_load_and_render_opt", OfflineConstantsKt.OFFLINE_CONFIG_ENABLE, 0) == 1;
    }

    public static int vS() {
        if (sP()) {
            return Sj("ad_load_and_render_opt", "webview_preload_cache_v3", 0);
        }
        return 0;
    }
}
