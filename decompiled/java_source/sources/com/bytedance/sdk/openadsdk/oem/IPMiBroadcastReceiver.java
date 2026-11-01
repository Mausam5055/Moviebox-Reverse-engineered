package com.bytedance.sdk.openadsdk.oem;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.text.TextUtils;
import android.util.LruCache;
import androidx.core.app.NotificationCompat;
import com.bytedance.sdk.component.Dq.Dq;
import com.bytedance.sdk.openadsdk.EjP.TKC;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.model.kF;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.sef;
import com.bytedance.sdk.openadsdk.utils.JcM;
import com.bytedance.sdk.openadsdk.utils.Mts;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class IPMiBroadcastReceiver extends BroadcastReceiver {
    private static volatile IPMiBroadcastReceiver Sj;
    private int EjP = 0;
    private Sj TKC;
    private final LruCache<String, sU> sP;

    private IPMiBroadcastReceiver() {
        int i11 = 10;
        int iSj = com.bytedance.sdk.openadsdk.dx.Sj.Sj("ip_data_config", "ip_ad_cache_count", 10);
        if (iSj > 0 && iSj <= 200) {
            i11 = iSj;
        }
        this.sP = new LruCache<>(i11);
    }

    public static IPMiBroadcastReceiver Sj(Context context) {
        if (com.bytedance.sdk.openadsdk.dx.Sj.Sj("ip_data_config", "ip_link_listener", 0) == 0) {
            return null;
        }
        if (Sj == null) {
            synchronized (IPMiBroadcastReceiver.class) {
                try {
                    if (Sj == null) {
                        Sj = new IPMiBroadcastReceiver();
                        IntentFilter intentFilter = new IntentFilter("com.xiaomi.market.DOWNLOAD_INSTALL_RESULT");
                        if (Build.VERSION.SDK_INT < 34 || Mts.TEQ(context) < 34) {
                            context.registerReceiver(Sj, intentFilter);
                        } else {
                            context.registerReceiver(Sj, intentFilter, 2);
                        }
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return Sj;
    }

    public static void Sj(final Context context, sU sUVar) {
        kF kFVarENi;
        if (Sj == null && sUVar != null && (kFVarENi = sUVar.eNi()) != null && kFVarENi.Jcg()) {
            sef.sP().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.oem.IPMiBroadcastReceiver.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        IPMiBroadcastReceiver.Sj(dNu.Sj(context));
                    } catch (Throwable th2) {
                        com.bytedance.sdk.component.utils.sU.sP("IPMiBroadcastReceiver", th2.getMessage());
                    }
                }
            });
        }
    }

    public sU Sj(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return this.sP.get(str);
    }

    public void Sj() {
        this.TKC = null;
    }

    public void Sj(Sj sj2) {
        this.TKC = sj2;
    }

    public void Sj(String str, sU sUVar) {
        if (TextUtils.isEmpty(str) || sUVar == null || this.sP.get(str) != null) {
            return;
        }
        this.sP.put(str, sUVar);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, final Intent intent) {
        if ("com.xiaomi.market.DOWNLOAD_INSTALL_RESULT".equals(intent.getAction())) {
            JcM.TKC(new Dq("ip-mi") { // from class: com.bytedance.sdk.openadsdk.oem.IPMiBroadcastReceiver.1
                @Override // java.lang.Runnable
                public void run() {
                    final int i11;
                    final int i12;
                    final int i13;
                    try {
                        int intExtra = 0;
                        final int intExtra2 = intent.getIntExtra("errorCode", 0);
                        if (intExtra2 < 0) {
                            int intExtra3 = intent.getIntExtra("reason", 0);
                            if (intExtra2 == -4 && intExtra3 == -1) {
                                return;
                            } else {
                                i11 = intExtra3;
                            }
                        } else {
                            i11 = 0;
                        }
                        if (intExtra2 == 5) {
                            int intExtra4 = intent.getIntExtra(NotificationCompat.CATEGORY_STATUS, 0);
                            if (intExtra4 == -2) {
                                try {
                                    intExtra = intent.getIntExtra(NotificationCompat.CATEGORY_PROGRESS, 0);
                                } catch (Throwable unused) {
                                    IPMiBroadcastReceiver.this.EjP = 1;
                                }
                                if (intExtra < 100) {
                                    return;
                                }
                            }
                            i12 = intExtra4;
                            i13 = intExtra;
                        } else {
                            i12 = 0;
                            i13 = 0;
                        }
                        String stringExtra = intent.getStringExtra("packageName");
                        Sj sj2 = IPMiBroadcastReceiver.this.TKC;
                        if (intExtra2 > 0 && sj2 != null) {
                            sj2.Sj(stringExtra, intExtra2);
                        }
                        final sU sUVarSj = IPMiBroadcastReceiver.this.Sj(stringExtra);
                        if (sUVarSj != null) {
                            TKC.Sj(System.currentTimeMillis(), sUVarSj, Mts.Sj(sUVarSj), "ip_listener_log", new com.bytedance.sdk.openadsdk.Zq.TKC.Sj() { // from class: com.bytedance.sdk.openadsdk.oem.IPMiBroadcastReceiver.1.1
                                @Override // com.bytedance.sdk.openadsdk.Zq.TKC.Sj
                                public JSONObject Sj() {
                                    JSONObject jSONObject = new JSONObject();
                                    try {
                                        JSONObject jSONObject2 = new JSONObject();
                                        JSONObject jSONObject3 = new JSONObject();
                                        jSONObject3.put("ip_error_code", intExtra2);
                                        sU sUVar = sUVarSj;
                                        if (sUVar != null) {
                                            jSONObject3.put("ip_is_w2a", sUVar.Jcg());
                                        }
                                        int i14 = intExtra2;
                                        if (i14 > 0) {
                                            if (i14 == 5) {
                                                jSONObject3.put("ip_status", i12);
                                                jSONObject3.put("ip_exec_type", IPMiBroadcastReceiver.this.EjP);
                                            }
                                            if (i12 == -2) {
                                                jSONObject3.put("ip_progress", i13);
                                            }
                                        }
                                        if (intExtra2 < 0) {
                                            jSONObject3.put("ip_reason", i11);
                                        }
                                        jSONObject2.put("pag_json_data", jSONObject3.toString());
                                        jSONObject.put("ad_extra_data", jSONObject2);
                                    } catch (Throwable th2) {
                                        com.bytedance.sdk.component.utils.sU.sP("IPMiBroadcastReceiver", th2.getMessage());
                                    }
                                    return jSONObject;
                                }
                            });
                        }
                    } catch (Throwable th2) {
                        com.bytedance.sdk.component.utils.sU.sP("IPMiBroadcastReceiver", th2.getMessage());
                    }
                }
            });
        }
    }
}
