package com.bytedance.sdk.openadsdk.uA;

import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.bytedance.sdk.component.HiB.Ym;
import com.bytedance.sdk.component.HiB.uvD;
import com.bytedance.sdk.openadsdk.ApmHelper;
import com.bytedance.sdk.openadsdk.BuildConfig;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.utils.Mts;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.hisavana.common.tracking.TrackingKey;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class sP<T> implements uvD<T> {
    private final sU EjP;
    private final long Sj = SystemClock.elapsedRealtime();
    private final uvD<T> TKC;
    private final String sP;

    public sP(final sU sUVar, String str, uvD<T> uvd) {
        this.TKC = uvd;
        this.EjP = sUVar;
        this.sP = str;
        if (EjP.sP()) {
            com.bytedance.sdk.openadsdk.dNu.TKC.Sj(new com.bytedance.sdk.openadsdk.dNu.EjP() { // from class: com.bytedance.sdk.openadsdk.uA.sP.1
                @Override // com.bytedance.sdk.openadsdk.dNu.EjP
                public com.bytedance.sdk.openadsdk.dNu.sP.Sj generatorModel() {
                    com.bytedance.sdk.openadsdk.dNu.sP.Sj sj2 = new com.bytedance.sdk.openadsdk.dNu.sP.Sj();
                    sj2.sP("load_img");
                    sU sUVar2 = sUVar;
                    if (sUVar2 != null) {
                        sj2.TKC(sUVar2.uP(TmcConstants.COLD_OPEN_TYPE));
                        sj2.EjP(Mts.TKC(sUVar.DKj()));
                    }
                    sj2.Sj(BuildConfig.VERSION_NAME);
                    return sj2;
                }
            });
        }
    }

    @Override // com.bytedance.sdk.component.HiB.uvD
    public void Sj(final int i11, final String str, @Nullable final Throwable th2) {
        uvD<T> uvd = this.TKC;
        if (uvd != null) {
            uvd.Sj(i11, str, th2);
        }
        sU sUVar = this.EjP;
        if (sUVar != null) {
            if (!TextUtils.isEmpty(Mts.Sj(sUVar))) {
                final long jElapsedRealtime = SystemClock.elapsedRealtime() - this.Sj;
                com.bytedance.sdk.openadsdk.Zq.TKC.Sj("load_image_error", false, new com.bytedance.sdk.openadsdk.Zq.sP() { // from class: com.bytedance.sdk.openadsdk.uA.sP.4
                    @Override // com.bytedance.sdk.openadsdk.Zq.sP
                    @Nullable
                    public com.bytedance.sdk.openadsdk.Zq.Sj.TKC getLogStats() throws Exception {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("duration", jElapsedRealtime);
                        jSONObject.put("url", sP.this.sP);
                        jSONObject.put("error_code", i11);
                        Throwable th3 = th2;
                        if (th3 instanceof NullPointerException) {
                            ApmHelper.reportCustomError("image load fail", "image_load", th3);
                        }
                        jSONObject.put(TrackingKey.ERROR_MESSAGE, str);
                        jSONObject.put("image_mode", sP.this.EjP.HcZ());
                        jSONObject.put("use_new_img", EjP.sP() ? 1 : 0);
                        return com.bytedance.sdk.openadsdk.Zq.Sj.EjP.sP().Sj("load_image_error").Sj(sP.this.EjP.DKj()).sP(jSONObject.toString());
                    }
                });
            }
            if (EjP.sP()) {
                com.bytedance.sdk.openadsdk.dNu.TKC.TKC(new com.bytedance.sdk.openadsdk.dNu.EjP() { // from class: com.bytedance.sdk.openadsdk.uA.sP.5
                    @Override // com.bytedance.sdk.openadsdk.dNu.EjP
                    public com.bytedance.sdk.openadsdk.dNu.sP.Sj generatorModel() {
                        com.bytedance.sdk.openadsdk.dNu.sP.Sj sj2 = new com.bytedance.sdk.openadsdk.dNu.sP.Sj();
                        sj2.sP("load_img");
                        if (sP.this.EjP != null) {
                            sj2.TKC(sP.this.EjP.uP(TmcConstants.COLD_OPEN_TYPE));
                            sj2.EjP(Mts.TKC(sP.this.EjP.DKj()));
                        }
                        sj2.Sj(BuildConfig.VERSION_NAME);
                        return sj2;
                    }
                });
            }
        }
    }

    @Override // com.bytedance.sdk.component.HiB.uvD
    public void Sj(Ym<T> ym2) {
        uvD<T> uvd = this.TKC;
        if (uvd != null) {
            uvd.Sj(ym2);
        }
        if (this.EjP != null) {
            final long jElapsedRealtime = SystemClock.elapsedRealtime() - this.Sj;
            final int iJcg = ym2.Jcg() / 1024;
            final int i11 = ym2.vS() ? 1 : 0;
            com.bytedance.sdk.openadsdk.Zq.TKC.Sj("load_image_success", false, new com.bytedance.sdk.openadsdk.Zq.sP() { // from class: com.bytedance.sdk.openadsdk.uA.sP.2
                @Override // com.bytedance.sdk.openadsdk.Zq.sP
                @Nullable
                public com.bytedance.sdk.openadsdk.Zq.Sj.TKC getLogStats() throws Exception {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("duration", jElapsedRealtime);
                    jSONObject.put("url", sP.this.sP);
                    jSONObject.put("preload_size", iJcg);
                    jSONObject.put("local_cache", i11);
                    jSONObject.put("image_mode", sP.this.EjP.HcZ());
                    jSONObject.put("use_new_img", EjP.sP() ? 1 : 0);
                    return com.bytedance.sdk.openadsdk.Zq.Sj.EjP.sP().Sj("load_image_success").Sj(sP.this.EjP.DKj()).sP(jSONObject.toString());
                }
            });
            if (EjP.sP()) {
                com.bytedance.sdk.openadsdk.dNu.TKC.sP(new com.bytedance.sdk.openadsdk.dNu.EjP() { // from class: com.bytedance.sdk.openadsdk.uA.sP.3
                    @Override // com.bytedance.sdk.openadsdk.dNu.EjP
                    public com.bytedance.sdk.openadsdk.dNu.sP.Sj generatorModel() {
                        com.bytedance.sdk.openadsdk.dNu.sP.Sj sj2 = new com.bytedance.sdk.openadsdk.dNu.sP.Sj();
                        sj2.sP("load_img");
                        if (sP.this.EjP != null) {
                            sj2.TKC(sP.this.EjP.uP(TmcConstants.COLD_OPEN_TYPE));
                            sj2.EjP(Mts.TKC(sP.this.EjP.DKj()));
                        }
                        sj2.Sj(BuildConfig.VERSION_NAME);
                        return sj2;
                    }
                });
            }
        }
    }
}
