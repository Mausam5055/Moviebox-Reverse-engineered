package com.bytedance.sdk.openadsdk.EjP.Sj;

import androidx.core.app.NotificationCompat;
import com.bytedance.sdk.openadsdk.BuildConfig;
import com.bytedance.sdk.openadsdk.utils.DeviceUtils;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class vS {
    public static AtomicInteger Sj = new AtomicInteger(0);
    public static AtomicInteger sP = new AtomicInteger(0);
    public static AtomicInteger TKC = new AtomicInteger(0);
    public static AtomicInteger EjP = new AtomicInteger(0);
    public static AtomicInteger HiB = new AtomicInteger(0);
    public static AtomicInteger vS = new AtomicInteger(0);
    public static AtomicInteger Jcg = new AtomicInteger(0);
    public static AtomicInteger Dq = new AtomicInteger(0);
    public static AtomicInteger uA = new AtomicInteger(0);

    public static JSONObject EjP() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("load_times", Sj.get());
            jSONObject.put("load_success", sP.get());
            jSONObject.put("load_fail", TKC.get());
            jSONObject.put("load_fail_in_background", uA.get());
            jSONObject.put("load_success_and_parse_success", EjP.get());
            jSONObject.put("load_success_and_parse_fail", HiB.get());
            jSONObject.put("load_success_and_no_ad", vS.get());
            jSONObject.put("load_fail_by_no_net", Jcg.get());
            jSONObject.put("load_fail_by_io", Dq.get());
            jSONObject.put("load_get_ad_version", BuildConfig.VERSION_CODE);
            return jSONObject;
        } catch (Throwable unused) {
            return new JSONObject();
        }
    }

    public static void HiB() {
        try {
            if (DeviceUtils.sP()) {
                return;
            }
            uA.incrementAndGet();
        } catch (Throwable unused) {
        }
    }

    public static void Sj() {
        try {
            long jSj = com.bytedance.sdk.openadsdk.multipro.EjP.Sj.Sj("tt_sdk_event_get_ad", "get_ad_event_time_key", 0L);
            if (jSj > 0 && System.currentTimeMillis() - jSj >= 86400000) {
                sP();
                com.bytedance.sdk.openadsdk.multipro.EjP.Sj.Sj("tt_sdk_event_get_ad", "get_ad_event_time_key", Long.valueOf(System.currentTimeMillis()));
                return;
            }
            if (jSj <= 0 || jSj > System.currentTimeMillis()) {
                com.bytedance.sdk.openadsdk.multipro.EjP.Sj.Sj("tt_sdk_event_get_ad", "get_ad_event_time_key", Long.valueOf(System.currentTimeMillis()));
            }
            JSONObject jSONObject = new JSONObject(com.bytedance.sdk.openadsdk.multipro.EjP.Sj.sP("tt_sdk_event_get_ad", "get_ad_event_key", ""));
            int iOptInt = jSONObject.optInt("load_get_ad_version", 0);
            if (iOptInt >= 5702 && (iOptInt < 5800 || iOptInt >= 5802)) {
                Sj.addAndGet(jSONObject.optInt("load_times"));
                sP.addAndGet(jSONObject.optInt("load_success"));
                TKC.addAndGet(jSONObject.optInt("load_fail"));
                EjP.addAndGet(jSONObject.optInt("load_success_and_parse_success"));
                HiB.addAndGet(jSONObject.optInt("load_success_and_parse_fail"));
                vS.addAndGet(jSONObject.optInt("load_success_and_no_ad"));
                Jcg.addAndGet(jSONObject.optInt("load_fail_by_no_net"));
                Dq.addAndGet(jSONObject.optInt("load_fail_by_io"));
                uA.addAndGet(jSONObject.optInt("load_fail_in_background"));
                return;
            }
            com.bytedance.sdk.openadsdk.multipro.EjP.Sj.Sj("tt_sdk_event_get_ad");
        } catch (Throwable unused) {
        }
    }

    public static void Sj(int i11, String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("code", i11);
            jSONObject.put(NotificationCompat.CATEGORY_MESSAGE, str);
            com.bytedance.sdk.openadsdk.Zq.TKC.Sj().Sj("pangle_sdk_client_load_error", jSONObject);
        } catch (Throwable unused) {
        }
    }

    public static void TKC() {
        try {
            com.bytedance.sdk.openadsdk.multipro.EjP.Sj.Sj("tt_sdk_event_get_ad", "get_ad_event_key", EjP().toString());
        } catch (Throwable unused) {
        }
    }

    public static void sP() {
        try {
            com.bytedance.sdk.openadsdk.Zq.TKC.Sj().Sj("pangle_sdk_get_ad_track", com.bytedance.sdk.openadsdk.multipro.EjP.Sj.sP("tt_sdk_event_get_ad", "get_ad_event_key", ""));
            com.bytedance.sdk.openadsdk.multipro.EjP.Sj.Sj("tt_sdk_event_get_ad");
        } catch (Throwable unused) {
        }
    }
}
