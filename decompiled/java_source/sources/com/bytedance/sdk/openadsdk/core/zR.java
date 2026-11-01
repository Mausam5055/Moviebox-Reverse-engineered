package com.bytedance.sdk.openadsdk.core;

import android.os.Build;
import androidx.annotation.Nullable;
import com.bytedance.sdk.component.embedapplog.PangleEncryptConstant;
import com.cloud.tmc.kernel.framework.FrameworkConstants;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class zR {
    private static final AtomicInteger EjP;
    private static final AtomicInteger Sj;
    private static final AtomicInteger TKC;
    private static final AtomicInteger sP;

    static {
        AtomicInteger atomicInteger = new AtomicInteger();
        Sj = atomicInteger;
        AtomicInteger atomicInteger2 = new AtomicInteger();
        sP = atomicInteger2;
        AtomicInteger atomicInteger3 = new AtomicInteger();
        TKC = atomicInteger3;
        AtomicInteger atomicInteger4 = new AtomicInteger();
        EjP = atomicInteger4;
        atomicInteger.addAndGet(com.bytedance.sdk.openadsdk.multipro.EjP.EjP.Sj("encrypt_statistics_file", "encrypt_success_count", 0));
        atomicInteger2.addAndGet(com.bytedance.sdk.openadsdk.multipro.EjP.EjP.Sj("encrypt_statistics_file", "encrypt_fail_count", 0));
        atomicInteger3.addAndGet(com.bytedance.sdk.openadsdk.multipro.EjP.EjP.Sj("encrypt_statistics_file", "decrypt_success_count", 0));
        atomicInteger4.addAndGet(com.bytedance.sdk.openadsdk.multipro.EjP.EjP.Sj("encrypt_statistics_file", "decrypt_fail_count", 0));
    }

    public static void Sj() {
        try {
            long jSj = com.bytedance.sdk.openadsdk.multipro.EjP.EjP.Sj("encrypt_statistics_file", "upload_time_key", 0L);
            if (jSj <= 0 || System.currentTimeMillis() - jSj < 86400000) {
                if (jSj <= 0 || jSj > System.currentTimeMillis()) {
                    com.bytedance.sdk.openadsdk.multipro.EjP.EjP.Sj("encrypt_statistics_file", "upload_time_key", Long.valueOf(System.currentTimeMillis()));
                    return;
                }
                return;
            }
            sP();
            synchronized (zR.class) {
                Sj.set(0);
                sP.set(0);
                TKC.set(0);
                EjP.set(0);
                com.bytedance.sdk.openadsdk.multipro.EjP.EjP.Sj("encrypt_statistics_file");
                com.bytedance.sdk.openadsdk.multipro.EjP.EjP.Sj("encrypt_statistics_file", "upload_time_key", Long.valueOf(System.currentTimeMillis()));
            }
        } catch (Throwable unused) {
        }
    }

    public static void Sj(final int i11, final PangleEncryptConstant.CryptDataScene cryptDataScene, final int i12) {
        com.bytedance.sdk.openadsdk.Zq.TKC.Sj("crypt_v4_fail", false, new com.bytedance.sdk.openadsdk.Zq.sP() { // from class: com.bytedance.sdk.openadsdk.core.zR.2
            @Override // com.bytedance.sdk.openadsdk.Zq.sP
            @Nullable
            public com.bytedance.sdk.openadsdk.Zq.Sj.TKC getLogStats() throws Exception {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("crypt", i11);
                    jSONObject.put(FrameworkConstants.GLOBAL_DATA_KEY_SCENE, cryptDataScene.value());
                    jSONObject.put("reason", i12);
                    if (i12 == 6) {
                        jSONObject.put("model", Build.MODEL);
                        jSONObject.put("vendor", Build.MANUFACTURER);
                    }
                } catch (Throwable unused) {
                }
                return com.bytedance.sdk.openadsdk.Zq.Sj.EjP.sP().Sj("crypt_v4_fail").sP(jSONObject.toString());
            }
        });
    }

    public static void Sj(JSONObject jSONObject) {
        sP(jSONObject != null && jSONObject.optInt("cypher") == 4);
    }

    public static synchronized void Sj(boolean z10) {
        try {
            if (z10) {
                com.bytedance.sdk.openadsdk.multipro.EjP.EjP.Sj("encrypt_statistics_file", "decrypt_success_count", Integer.valueOf(TKC.incrementAndGet()));
            } else {
                com.bytedance.sdk.openadsdk.multipro.EjP.EjP.Sj("encrypt_statistics_file", "decrypt_fail_count", Integer.valueOf(TKC.incrementAndGet()));
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private static void sP() {
        final int i11 = Sj.get();
        final int i12 = sP.get();
        final int i13 = TKC.get();
        final int i14 = EjP.get();
        com.bytedance.sdk.openadsdk.Zq.TKC.Sj("crypt_v4_statistics", false, new com.bytedance.sdk.openadsdk.Zq.sP() { // from class: com.bytedance.sdk.openadsdk.core.zR.1
            @Override // com.bytedance.sdk.openadsdk.Zq.sP
            @Nullable
            public com.bytedance.sdk.openadsdk.Zq.Sj.TKC getLogStats() throws Exception {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("encrypt_success_count", i11);
                    jSONObject.put("encrypt_fail_count", i12);
                    jSONObject.put("decrypt_success_count", i13);
                    jSONObject.put("decrypt_fail_count", i14);
                } catch (Throwable unused) {
                }
                return com.bytedance.sdk.openadsdk.Zq.Sj.EjP.sP().Sj("crypt_v4_statistics").sP(jSONObject.toString());
            }
        });
    }

    public static synchronized void sP(boolean z10) {
        try {
            if (z10) {
                com.bytedance.sdk.openadsdk.multipro.EjP.EjP.Sj("encrypt_statistics_file", "encrypt_success_count", Integer.valueOf(Sj.incrementAndGet()));
            } else {
                com.bytedance.sdk.openadsdk.multipro.EjP.EjP.Sj("encrypt_statistics_file", "encrypt_fail_count", Integer.valueOf(sP.incrementAndGet()));
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }
}
