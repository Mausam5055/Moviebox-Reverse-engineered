package com.bytedance.sdk.openadsdk;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.util.Pair;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.apm.insight.AttachUserData;
import com.apm.insight.CrashType;
import com.apm.insight.CustomRequestHeader;
import com.apm.insight.ICrashCallback;
import com.apm.insight.MonitorCrash;
import com.apm.insight.Npth;
import com.bytedance.sdk.component.Dq.Dq;
import com.bytedance.sdk.component.embedapplog.PangleEncryptConstant;
import com.bytedance.sdk.component.embedapplog.PangleEncryptManager;
import com.bytedance.sdk.openadsdk.EjP.TKC;
import com.bytedance.sdk.openadsdk.core.aa;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.dx;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.settings.vS;
import com.bytedance.sdk.openadsdk.multipro.EjP.EjP;
import com.bytedance.sdk.openadsdk.utils.JcM;
import com.bytedance.sdk.openadsdk.utils.Mts;
import com.cloud.tmc.integration.net.UrlKt;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.mbbid.common.BidResponsedEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.pgl.ssdk.ces.out.PglSSConfig;
import java.net.HttpURLConnection;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class ApmHelper {
    private static boolean EjP;
    private static Sj Jcg;
    private static volatile boolean Sj;
    private static String TKC;
    private static sP vS;
    private static final AtomicBoolean sP = new AtomicBoolean(false);
    private static boolean HiB = false;

    private static class Sj {
        public final String Sj;
        public final Throwable TKC;
        public final String sP;

        public Sj(String str, String str2, Throwable th2) {
            this.Sj = str;
            this.sP = str2;
            this.TKC = th2;
        }
    }

    private interface sP {
        void Sj(String str, String str2, Throwable th2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void EjP(final String str) {
        final sU sUVarSj = com.bytedance.sdk.openadsdk.utils.sP.Sj();
        if (sUVarSj != null) {
            String strSj = Mts.Sj(sUVarSj);
            if (TextUtils.isEmpty(strSj)) {
                return;
            }
            TKC.Sj(System.currentTimeMillis(), sUVarSj, strSj, "sdk_crash_info", new com.bytedance.sdk.openadsdk.Zq.TKC.Sj() { // from class: com.bytedance.sdk.openadsdk.ApmHelper.2
                @Override // com.bytedance.sdk.openadsdk.Zq.TKC.Sj
                public JSONObject Sj() {
                    JSONObject jSONObject = new JSONObject();
                    try {
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put(NativeComponentConstants.KEY_COMPONENT_TYPE, str);
                        jSONObject2.put("material", com.bytedance.sdk.component.utils.Sj.Sj(sUVarSj.SP()).toString());
                        jSONObject.put("ad_extra_data", jSONObject2.toString());
                    } catch (JSONException unused) {
                    }
                    return jSONObject;
                }
            });
        }
    }

    private static JSONObject TKC(String str) {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        JSONObject jSONObject3 = new JSONObject();
        try {
            jSONObject3.put("sdk_version", BuildConfig.VERSION_NAME);
            jSONObject3.put("host_app_id", TKC);
            jSONObject2.putOpt("custom", jSONObject3);
            jSONObject2.put("os", "Android");
            jSONObject2.put("os_version", Build.VERSION.RELEASE);
            jSONObject2.put("device_model", Build.MODEL);
            jSONObject2.put("device_brand", Build.BRAND);
            jSONObject2.put("sdk_version_name", "0.0.5");
            jSONObject2.put("aid", "10000001");
            jSONObject2.put("update_version_code", BuildConfig.VERSION_CODE);
            jSONObject2.put("bd_did", str);
            jSONObject.putOpt("apm_id", "20000001");
            jSONObject.putOpt("header", jSONObject2);
            jSONObject.putOpt("local_time", Long.valueOf(System.currentTimeMillis()));
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(new JSONObject().put("local_time_ms", System.currentTimeMillis()));
            jSONObject.putOpt("launch", jSONArray);
        } catch (JSONException e11) {
            com.bytedance.sdk.component.utils.sU.sP("ApmHelper", e11.getMessage());
        }
        return jSONObject;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void TKC(String str, String str2) {
        sP(str, str2);
    }

    @NonNull
    public static Pair<String, String> generateRequestHeader() {
        String string = "";
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(UrlKt.KEY_MINI_GAID, com.bytedance.sdk.openadsdk.RiZ.Sj.sP.Sj.Sj().sP());
            jSONObject.put("ipv6", EjP.sP("ttopenadsdk", PglSSConfig.CUSTOMINFO_KEY_IPV6, ""));
            jSONObject.put(TtmlNode.TAG_REGION, dNu.EjP().FPG());
        } catch (JSONException unused) {
        }
        JSONObject jSONObjectEncryptType4WithNoWrapBase64 = PangleEncryptManager.encryptType4WithNoWrapBase64(jSONObject, new dx(PangleEncryptConstant.CryptDataScene.UNKNOWN));
        String str = "0";
        if (jSONObjectEncryptType4WithNoWrapBase64 != null) {
            int iOptInt = jSONObjectEncryptType4WithNoWrapBase64.optInt("cypher");
            if (iOptInt == 4) {
                string = jSONObjectEncryptType4WithNoWrapBase64.optString("message");
                str = "4";
            } else if (iOptInt == 3) {
                string = jSONObjectEncryptType4WithNoWrapBase64.optString("message");
                str = "3";
            } else {
                string = jSONObject.toString();
            }
        }
        return new Pair<>(str, string);
    }

    public static void initApm(final Context context, final InitConfig initConfig) {
        if (sP.compareAndSet(false, true) && !Sj) {
            JcM.Sj(new Dq("init-apm") { // from class: com.bytedance.sdk.openadsdk.ApmHelper.1
                @Override // java.lang.Runnable
                public void run() {
                    if (!ApmHelper.Sj) {
                        vS vSVarEjP = dNu.EjP();
                        boolean unused = ApmHelper.EjP = vSVarEjP.Ei();
                        String strFmk = Mts.Fmk();
                        if (ApmHelper.EjP && !TextUtils.isEmpty(strFmk)) {
                            String unused2 = ApmHelper.TKC = initConfig.getAppId();
                            String[] strArr = {"com.bytedance.sdk.component", "com.bytedance.sdk.mediation", BuildConfig.LIBRARY_PACKAGE_NAME, "com.com.bytedance.overseas.sdk", "com.pgl.ssdk", "com.bykv.vk", "com.iab.omid.library.bytedance2", "com.bytedance.adsdk"};
                            String strSj = aa.Sj(context);
                            try {
                                Npth.setCrashWaitTime(com.bytedance.sdk.openadsdk.dx.Sj.Sj("apm_crash_wait_time", 10000));
                                Npth.enableLoopMonitor(false);
                                Npth.enableAnrInfo(false);
                                Npth.enableNativeDump(false);
                                Npth.enableActivityDump(false);
                                Npth.enableMessageDump(false);
                                MonitorCrash.setCustomRequestHeaderCallback(new CustomRequestHeader() { // from class: com.bytedance.sdk.openadsdk.ApmHelper.1.1
                                    @Override // com.apm.insight.CustomRequestHeader
                                    public void addRequestHeader(HttpURLConnection httpURLConnection) {
                                        Pair<String, String> pairGenerateRequestHeader = ApmHelper.generateRequestHeader();
                                        httpURLConnection.setRequestProperty("cypher", (String) pairGenerateRequestHeader.first);
                                        httpURLConnection.setRequestProperty("transfer-param", (String) pairGenerateRequestHeader.second);
                                        httpURLConnection.setRequestProperty("x-pangle-target-idc", dNu.EjP().oWa());
                                    }
                                });
                                final MonitorCrash monitorCrashInitSDK = MonitorCrash.initSDK(context, "10000001", 7114L, BuildConfig.VERSION_NAME, strArr);
                                monitorCrashInitSDK.setCustomDataCallback(new AttachUserData() { // from class: com.bytedance.sdk.openadsdk.ApmHelper.1.2
                                    @Override // com.apm.insight.AttachUserData
                                    @Nullable
                                    public Map<? extends String, ? extends String> getUserData(CrashType crashType) {
                                        Map<? extends String, ? extends String> mapUA = ApmHelper.uA();
                                        if (mapUA.containsKey("render_type")) {
                                            monitorCrashInitSDK.addTags("render_type", mapUA.get("render_type"));
                                        } else {
                                            monitorCrashInitSDK.addTags("render_type", "-2");
                                        }
                                        return mapUA;
                                    }
                                });
                                if (vSVarEjP.Chv()) {
                                    monitorCrashInitSDK.config().setSoList(new String[]{"libnms.so", "libtobEmbedPagEncrypt.so", "tt_ugen_layout.so"});
                                }
                                monitorCrashInitSDK.config().setDeviceId(strSj);
                                monitorCrashInitSDK.setReportUrl(strFmk);
                                monitorCrashInitSDK.addTags("host_appid", ApmHelper.TKC);
                                monitorCrashInitSDK.addTags("sdk_version", BuildConfig.VERSION_NAME);
                                sP unused3 = ApmHelper.vS = new sP() { // from class: com.bytedance.sdk.openadsdk.ApmHelper.1.3
                                    @Override // com.bytedance.sdk.openadsdk.ApmHelper.sP
                                    public void Sj(String str, String str2, Throwable th2) {
                                        monitorCrashInitSDK.reportCustomErr(str, str2, th2);
                                    }
                                };
                                boolean unused4 = ApmHelper.Sj = true;
                                ApmHelper.TKC(strSj, strFmk);
                                monitorCrashInitSDK.registerCrashCallback(new ICrashCallback() { // from class: com.bytedance.sdk.openadsdk.ApmHelper.1.4
                                    @Override // com.apm.insight.ICrashCallback
                                    public void onCrash(@NonNull CrashType crashType, @Nullable String str, @Nullable Thread thread) {
                                        if (!ApmHelper.HiB) {
                                            ApmHelper.EjP(crashType.getName());
                                        }
                                        boolean unused5 = ApmHelper.HiB = true;
                                    }
                                }, CrashType.ALL);
                                Sj sj2 = ApmHelper.Jcg;
                                Sj unused5 = ApmHelper.Jcg = null;
                                if (sj2 != null) {
                                    ApmHelper.vS.Sj(sj2.Sj, sj2.sP, sj2.TKC);
                                }
                            } catch (Throwable unused6) {
                                boolean unused7 = ApmHelper.Sj = false;
                            }
                        }
                    }
                    ApmHelper.sP.set(false);
                }
            });
        }
    }

    public static boolean isIsInit() {
        return Sj;
    }

    public static void reportCustomError(String str, String str2, Throwable th2) {
        sP sPVar = vS;
        if (sPVar != null) {
            sPVar.Sj(str, str2, th2);
        } else {
            Jcg = new Sj(str, str2, th2);
        }
    }

    public static void reportPvFromBackGround() {
        if (EjP) {
            sP(aa.Sj(dNu.Sj()), Mts.Fmk());
        }
    }

    private static void sP(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        dNu.TKC().Sj(TKC(str), "https://" + str2 + "/monitor/collect/c/session?version_code=7114&device_platform=android&aid=10000001");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Map<String, String> uA() {
        HashMap map = new HashMap();
        sU sUVarSj = com.bytedance.sdk.openadsdk.utils.sP.Sj();
        if (sUVarSj != null) {
            map.put("adType", String.valueOf(sUVarSj.DKj()));
            map.put("aid", String.valueOf(sUVarSj.NPW()));
            map.put(BidResponsedEx.KEY_CID, sUVarSj.aZ());
            map.put("reqId", sUVarSj.cKW());
            map.put("rit", sUVarSj.uP(TmcConstants.COLD_OPEN_TYPE));
            int iFF = sUVarSj.fF();
            if (sUVarSj.ley() != 2) {
                iFF = -1;
            }
            map.put("render_type", String.valueOf(iFF));
        }
        return map;
    }
}
