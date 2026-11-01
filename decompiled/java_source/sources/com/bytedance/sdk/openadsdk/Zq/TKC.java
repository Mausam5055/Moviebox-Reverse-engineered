package com.bytedance.sdk.openadsdk.Zq;

import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompat;
import com.bytedance.sdk.component.Dq.Dq;
import com.bytedance.sdk.openadsdk.CacheDirFactory;
import com.bytedance.sdk.openadsdk.Zq.Sj.EjP;
import com.bytedance.sdk.openadsdk.core.aa;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.sef;
import com.bytedance.sdk.openadsdk.core.settings.Fmk;
import com.bytedance.sdk.openadsdk.utils.JcM;
import com.bytedance.sdk.openadsdk.utils.Mts;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.hisavana.common.tracking.TrackingKey;
import java.io.File;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class TKC {
    private static volatile TKC Sj;

    private TKC() {
    }

    public static void EjP() {
        Sj("disk_log", false, new sP() { // from class: com.bytedance.sdk.openadsdk.Zq.TKC.11
            @Override // com.bytedance.sdk.openadsdk.Zq.sP
            public com.bytedance.sdk.openadsdk.Zq.Sj.TKC getLogStats() throws Exception {
                JSONObject jSONObject = new JSONObject();
                File file = new File(CacheDirFactory.getRootDir());
                long j11 = 0;
                if (file.exists() && file.isDirectory()) {
                    for (File file2 : file.listFiles()) {
                        long jSj = TKC.Sj(file2);
                        j11 += jSj;
                        jSONObject.put(file2.getName(), jSj);
                    }
                }
                if (j11 < 524288000) {
                    return null;
                }
                return EjP.sP().Sj("disk_log").sP(jSONObject.toString());
            }
        });
    }

    public static long Sj(File file) {
        if (file.isFile()) {
            return file.length();
        }
        long jSj = 0;
        for (File file2 : file.listFiles()) {
            jSj += Sj(file2);
        }
        return jSj;
    }

    public static TKC Sj() {
        if (Sj == null) {
            synchronized (TKC.class) {
                try {
                    if (Sj == null) {
                        Sj = new TKC();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return Sj;
    }

    public static void Sj(int i11, String str) {
        Sj(i11, str, 0, (String) null);
    }

    public static void Sj(final int i11, final String str, final int i12, final String str2) {
        Sj("ipv6_req", false, (sP) new sP<com.bytedance.sdk.openadsdk.Zq.Sj.TKC>() { // from class: com.bytedance.sdk.openadsdk.Zq.TKC.15
            @Override // com.bytedance.sdk.openadsdk.Zq.sP
            @Nullable
            public com.bytedance.sdk.openadsdk.Zq.Sj.TKC getLogStats() throws Exception {
                String str3;
                JSONObject jSONObject = new JSONObject();
                int i13 = i11;
                if (i13 == 1) {
                    str3 = NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS;
                } else if (i13 == -1) {
                    jSONObject.put("error_code", i12);
                    jSONObject.put(OfflineConstantsKt.TRACK_KEY_PRE_ERROR_MSG, str2);
                    str3 = "fail";
                } else {
                    str3 = "start";
                }
                if (!TextUtils.isEmpty(str)) {
                    jSONObject.put("url", str);
                }
                jSONObject.put(NotificationCompat.CATEGORY_STATUS, str3);
                return EjP.sP().Sj("ipv6_req").sP(jSONObject.toString());
            }
        });
    }

    public static void Sj(long j11, long j12, final String str, final int i11) {
        if (j11 == 0) {
            return;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        final long j13 = jElapsedRealtime - j11;
        final long j14 = jElapsedRealtime - j12;
        final long j15 = j12 - j11;
        Sj("ad_show_cost_time", false, new sP() { // from class: com.bytedance.sdk.openadsdk.Zq.TKC.14
            @Override // com.bytedance.sdk.openadsdk.Zq.sP
            public com.bytedance.sdk.openadsdk.Zq.Sj.TKC getLogStats() throws Exception {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("duration", j13);
                jSONObject.put("renderDuration", j14);
                jSONObject.put("showToRenderDuration", j15);
                jSONObject.put("tag", str);
                jSONObject.put("renderType", i11);
                return EjP.sP().Sj("ad_show_cost_time").sP(jSONObject.toString());
            }
        });
    }

    public static void Sj(final sU sUVar) {
        if (sUVar == null) {
            return;
        }
        final long jCurrentTimeMillis = System.currentTimeMillis();
        Sj("bidding_receive", false, new sP() { // from class: com.bytedance.sdk.openadsdk.Zq.TKC.1
            @Override // com.bytedance.sdk.openadsdk.Zq.sP
            @Nullable
            public com.bytedance.sdk.openadsdk.Zq.Sj.TKC getLogStats() throws Exception {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("reveice_ts", jCurrentTimeMillis);
                if (sUVar.DKj() == 3) {
                    jSONObject.put("is_icon_only", sUVar.yfI() ? 1 : 0);
                }
                return EjP.sP().Sj("bidding_receive").sP(jSONObject.toString());
            }
        });
    }

    public static void Sj(sU sUVar, final long j11) {
        if (sUVar == null) {
            return;
        }
        Sj("bidding_load", false, new sP() { // from class: com.bytedance.sdk.openadsdk.Zq.TKC.12
            @Override // com.bytedance.sdk.openadsdk.Zq.sP
            @Nullable
            public com.bytedance.sdk.openadsdk.Zq.Sj.TKC getLogStats() throws Exception {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("duration", j11);
                return EjP.sP().Sj("bidding_load").sP(jSONObject.toString());
            }
        });
    }

    public static void Sj(final sU sUVar, final JSONObject jSONObject) {
        if (Mts.Sj(sUVar) == null || TextUtils.isEmpty(sUVar.eMB())) {
            return;
        }
        Sj("download_gecko_end", false, new sP() { // from class: com.bytedance.sdk.openadsdk.Zq.TKC.19
            @Override // com.bytedance.sdk.openadsdk.Zq.sP
            @Nullable
            public com.bytedance.sdk.openadsdk.Zq.Sj.TKC getLogStats() throws Exception {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("url", sUVar.Chv());
                jSONObject2.put("channel_name", sUVar.eMB());
                jSONObject2.put("data", jSONObject);
                return EjP.sP().Sj("download_gecko_end").Sj(sUVar.DKj()).sP(jSONObject2.toString());
            }
        });
    }

    public static void Sj(final String str, final com.bytedance.sdk.openadsdk.EjP.HiB.sP.Sj sj2) {
        if (sj2 == null) {
            return;
        }
        Sj(str, false, new sP() { // from class: com.bytedance.sdk.openadsdk.Zq.TKC.17
            @Override // com.bytedance.sdk.openadsdk.Zq.sP
            @Nullable
            public com.bytedance.sdk.openadsdk.Zq.Sj.TKC getLogStats() throws Exception {
                JSONObject jSONObjectTKC = sj2.TKC();
                if (jSONObjectTKC == null) {
                    jSONObjectTKC = new JSONObject();
                }
                com.bytedance.sdk.openadsdk.EjP.HiB.sP.TKC tkcEjP = sj2.EjP();
                if (tkcEjP != null) {
                    tkcEjP.Sj(jSONObjectTKC);
                }
                return EjP.sP().Sj(str).Sj(sj2.Sj().DKj()).sP(jSONObjectTKC.toString());
            }
        });
    }

    public static void Sj(final String str, final boolean z10) {
        Sj("img_error_param", false, new sP() { // from class: com.bytedance.sdk.openadsdk.Zq.TKC.16
            @Override // com.bytedance.sdk.openadsdk.Zq.sP
            @Nullable
            public com.bytedance.sdk.openadsdk.Zq.Sj.TKC getLogStats() {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("is_new", z10 ? 1 : 0);
                    jSONObject.put(NotificationCompat.CATEGORY_MESSAGE, str);
                } catch (Throwable unused) {
                }
                return EjP.sP().Sj("img_error_param").sP(jSONObject.toString());
            }
        });
    }

    public static void Sj(String str, boolean z10, sP sPVar) {
        int iSP = Fmk.gq().sP(str);
        if (TextUtils.isEmpty(str) || iSP == 0 || sPVar == null) {
            return;
        }
        boolean z11 = iSP == 100;
        if (!z11) {
            z11 = ((int) ((Math.random() * 100.0d) + 1.0d)) <= iSP;
        }
        if (z11) {
            dNu.HiB().Sj(sPVar, z10);
        }
    }

    private boolean TKC(EjP ejP) {
        return ejP == null;
    }

    public static void sP() {
        JcM.TKC(new Dq("showFailLog") { // from class: com.bytedance.sdk.openadsdk.Zq.TKC.6
            @Override // java.lang.Runnable
            public void run() {
                try {
                    TKC.Sj().Sj("show_fail_log", new JSONObject());
                } catch (Throwable th2) {
                    com.bytedance.sdk.component.utils.sU.sP("StatsLogManager", th2.getMessage());
                }
            }
        });
    }

    public static void sP(final sU sUVar) {
        if (Mts.Sj(sUVar) == null || TextUtils.isEmpty(sUVar.eMB())) {
            return;
        }
        Sj("download_gecko_start", false, new sP() { // from class: com.bytedance.sdk.openadsdk.Zq.TKC.18
            @Override // com.bytedance.sdk.openadsdk.Zq.sP
            @Nullable
            public com.bytedance.sdk.openadsdk.Zq.Sj.TKC getLogStats() throws Exception {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("url", sUVar.Chv());
                jSONObject.put("channel_name", sUVar.eMB());
                return EjP.sP().Sj("download_gecko_start").Sj(sUVar.DKj()).sP(jSONObject.toString());
            }
        });
    }

    public static void sP(String str, String str2) {
        try {
            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
                final EjP ejPSP = EjP.sP().Sj(str).sP(str2);
                dNu.HiB().Sj(new sP() { // from class: com.bytedance.sdk.openadsdk.Zq.TKC.13
                    @Override // com.bytedance.sdk.openadsdk.Zq.sP
                    public com.bytedance.sdk.openadsdk.Zq.Sj.TKC getLogStats() throws Exception {
                        return ejPSP;
                    }
                }, false);
            }
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.sU.sP("StatsLogManager", th2.getMessage());
        }
    }

    public void Sj(final long j11, final long j12) {
        final long j13 = j12 - j11;
        Sj("general_label", false, new sP() { // from class: com.bytedance.sdk.openadsdk.Zq.TKC.5
            @Override // com.bytedance.sdk.openadsdk.Zq.sP
            public com.bytedance.sdk.openadsdk.Zq.Sj.TKC getLogStats() throws Exception {
                int i11 = !sef.sP.get() ? 1 : 0;
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("starttime", j11);
                    jSONObject.put("endtime", j12);
                    jSONObject.put("start_type", i11);
                } catch (Throwable unused) {
                }
                return EjP.sP().Sj("general_label").Dq(String.valueOf(j13)).sP(jSONObject.toString());
            }
        });
    }

    public void Sj(final EjP ejP) {
        if (TKC(ejP)) {
            return;
        }
        ejP.Sj("express_ad_render");
        dNu.HiB().Sj(new sP() { // from class: com.bytedance.sdk.openadsdk.Zq.TKC.20
            @Override // com.bytedance.sdk.openadsdk.Zq.sP
            public com.bytedance.sdk.openadsdk.Zq.Sj.TKC getLogStats() throws Exception {
                return ejP;
            }
        });
    }

    public void Sj(final String str) {
        Sj("click_playable_test_tool", false, new sP() { // from class: com.bytedance.sdk.openadsdk.Zq.TKC.2
            @Override // com.bytedance.sdk.openadsdk.Zq.sP
            public com.bytedance.sdk.openadsdk.Zq.Sj.TKC getLogStats() throws Exception {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("playable_url", str);
                } catch (Throwable unused) {
                }
                return EjP.sP().Sj("click_playable_test_tool").sP(jSONObject.toString());
            }
        });
    }

    public void Sj(final String str, final int i11, final String str2) {
        Sj("use_playable_test_tool_error", false, new sP() { // from class: com.bytedance.sdk.openadsdk.Zq.TKC.4
            @Override // com.bytedance.sdk.openadsdk.Zq.sP
            public com.bytedance.sdk.openadsdk.Zq.Sj.TKC getLogStats() throws Exception {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("playable_url", str);
                    jSONObject.put("error_code", i11);
                    jSONObject.put(TrackingKey.ERROR_MESSAGE, str2);
                } catch (Throwable unused) {
                }
                return EjP.sP().Sj("use_playable_test_tool_error").sP(jSONObject.toString());
            }
        });
    }

    public void Sj(final String str, final String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        Sj(str, false, new sP() { // from class: com.bytedance.sdk.openadsdk.Zq.TKC.8
            @Override // com.bytedance.sdk.openadsdk.Zq.sP
            public com.bytedance.sdk.openadsdk.Zq.Sj.TKC getLogStats() throws Exception {
                return EjP.sP().Sj(str).sP(str2);
            }
        });
    }

    public void Sj(final String str, final JSONObject jSONObject) {
        if (str == null || jSONObject == null) {
            return;
        }
        Sj(str, false, new sP() { // from class: com.bytedance.sdk.openadsdk.Zq.TKC.7
            @Override // com.bytedance.sdk.openadsdk.Zq.sP
            public com.bytedance.sdk.openadsdk.Zq.Sj.TKC getLogStats() throws Exception {
                return EjP.sP().Sj(str).sP(jSONObject.toString());
            }
        });
    }

    public void Sj(final JSONObject jSONObject) {
        if (jSONObject == null) {
            com.bytedance.sdk.component.utils.sU.Sj("adRevenuePangle", "You must pass adRevenue json to pangle");
            return;
        }
        Object objOpt = jSONObject.opt("device_ad_mediation_platform");
        if (!(objOpt instanceof String) || TextUtils.isEmpty((String) objOpt)) {
            com.bytedance.sdk.component.utils.sU.Sj("adRevenuePangle", "You must pass device_ad_mediation_platform to pangle");
        } else {
            com.bytedance.sdk.component.utils.sU.Sj("adRevenuePangle", "pangle", "You successfully passed the parameters to pangle. The parameters are:", jSONObject);
            Sj("ad_revenue", true, new sP() { // from class: com.bytedance.sdk.openadsdk.Zq.TKC.10
                @Override // com.bytedance.sdk.openadsdk.Zq.sP
                public com.bytedance.sdk.openadsdk.Zq.Sj.TKC getLogStats() throws Exception {
                    try {
                        jSONObject.put(NotificationCompat.CATEGORY_EVENT, 272);
                        jSONObject.put("uuid", aa.TKC(dNu.Sj()));
                        String strSj = "";
                        try {
                            if (aa.Sj(dNu.Sj()) != null) {
                                strSj = aa.Sj(dNu.Sj());
                            }
                        } catch (Throwable th2) {
                            th2.getMessage();
                        }
                        jSONObject.put("device_id", strSj);
                        jSONObject.put(TrackingKey.PLATFORM, "android");
                        jSONObject.put("partner", "PangleSDK");
                    } catch (Throwable th3) {
                        th3.getMessage();
                    }
                    return EjP.sP().Sj("ad_revenue").sP(jSONObject.toString());
                }
            });
        }
    }

    public void TKC() {
        Sj("blind_mode_status", true, new sP() { // from class: com.bytedance.sdk.openadsdk.Zq.TKC.9
            @Override // com.bytedance.sdk.openadsdk.Zq.sP
            public com.bytedance.sdk.openadsdk.Zq.Sj.TKC getLogStats() throws Exception {
                return EjP.sP().Sj("blind_mode_status");
            }
        });
    }

    public void sP(final EjP ejP) {
        if (TKC(ejP)) {
            return;
        }
        ejP.Sj("show_backup_endcard");
        dNu.HiB().Sj(new sP() { // from class: com.bytedance.sdk.openadsdk.Zq.TKC.21
            @Override // com.bytedance.sdk.openadsdk.Zq.sP
            public com.bytedance.sdk.openadsdk.Zq.Sj.TKC getLogStats() throws Exception {
                return ejP;
            }
        });
    }

    public void sP(final String str) {
        Sj("close_playable_test_tool", false, new sP() { // from class: com.bytedance.sdk.openadsdk.Zq.TKC.3
            @Override // com.bytedance.sdk.openadsdk.Zq.sP
            public com.bytedance.sdk.openadsdk.Zq.Sj.TKC getLogStats() throws Exception {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("playable_url", str);
                } catch (Throwable unused) {
                }
                return EjP.sP().Sj("close_playable_test_tool").sP(jSONObject.toString());
            }
        });
    }
}
