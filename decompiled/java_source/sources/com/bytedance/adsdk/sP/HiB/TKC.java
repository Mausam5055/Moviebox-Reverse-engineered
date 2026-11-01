package com.bytedance.adsdk.sP.HiB;

import android.graphics.PointF;
import android.util.JsonReader;
import android.util.JsonToken;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class TKC {
    public static com.bytedance.adsdk.sP.TKC.Sj.aa Sj(JsonReader jsonReader, com.bytedance.adsdk.sP.Jcg jcg) throws IOException {
        boolean z10 = jsonReader.peek() == JsonToken.BEGIN_OBJECT;
        if (z10) {
            jsonReader.beginObject();
        }
        com.bytedance.adsdk.sP.TKC.Sj.sP sPVar = null;
        com.bytedance.adsdk.sP.TKC.Sj.HiB hiBSj = null;
        com.bytedance.adsdk.sP.TKC.Sj.Fmk<PointF, PointF> fmkSP = null;
        com.bytedance.adsdk.sP.TKC.Sj.Jcg jcgEjP = null;
        com.bytedance.adsdk.sP.TKC.Sj.sP sPVarSj = null;
        com.bytedance.adsdk.sP.TKC.Sj.sP sPVarSj2 = null;
        com.bytedance.adsdk.sP.TKC.Sj.EjP ejPSP = null;
        com.bytedance.adsdk.sP.TKC.Sj.sP sPVarSj3 = null;
        com.bytedance.adsdk.sP.TKC.Sj.sP sPVarSj4 = null;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "a":
                    jsonReader.beginObject();
                    while (jsonReader.hasNext()) {
                        String strNextName2 = jsonReader.nextName();
                        strNextName2.hashCode();
                        if (strNextName2.equals(CampaignEx.JSON_KEY_AD_K)) {
                            hiBSj = Sj.Sj(jsonReader, jcg);
                        } else {
                            jsonReader.skipValue();
                        }
                    }
                    jsonReader.endObject();
                    continue;
                    break;
                case "o":
                    ejPSP = EjP.sP(jsonReader, jcg);
                    continue;
                    break;
                case "p":
                    fmkSP = Sj.sP(jsonReader, jcg);
                    continue;
                    break;
                case "r":
                    break;
                case "s":
                    jcgEjP = EjP.EjP(jsonReader, jcg);
                    continue;
                    break;
                case "eo":
                    sPVarSj4 = EjP.Sj(jsonReader, jcg, false);
                    continue;
                    break;
                case "rz":
                    jcg.Sj("Lottie doesn't support 3D layers.");
                    break;
                case "sa":
                    sPVarSj2 = EjP.Sj(jsonReader, jcg, false);
                    continue;
                    break;
                case "sk":
                    sPVarSj = EjP.Sj(jsonReader, jcg, false);
                    continue;
                    break;
                case "so":
                    sPVarSj3 = EjP.Sj(jsonReader, jcg, false);
                    continue;
                    break;
                default:
                    jsonReader.skipValue();
                    continue;
                    break;
            }
            com.bytedance.adsdk.sP.TKC.Sj.sP sPVarSj5 = EjP.Sj(jsonReader, jcg, false);
            if (sPVarSj5.TKC().isEmpty()) {
                sPVarSj5.TKC().add(new com.bytedance.adsdk.sP.Jcg.Sj(jcg, Float.valueOf(0.0f), Float.valueOf(0.0f), null, 0.0f, Float.valueOf(jcg.Jcg())));
            } else if (((com.bytedance.adsdk.sP.Jcg.Sj) sPVarSj5.TKC().get(0)).Sj == 0) {
                sPVarSj5.TKC().set(0, new com.bytedance.adsdk.sP.Jcg.Sj(jcg, Float.valueOf(0.0f), Float.valueOf(0.0f), null, 0.0f, Float.valueOf(jcg.Jcg())));
            }
            sPVar = sPVarSj5;
        }
        if (z10) {
            jsonReader.endObject();
        }
        com.bytedance.adsdk.sP.TKC.Sj.HiB hiB = Sj(hiBSj) ? null : hiBSj;
        if (Sj(fmkSP)) {
            fmkSP = null;
        }
        return new com.bytedance.adsdk.sP.TKC.Sj.aa(hiB, fmkSP, Sj(jcgEjP) ? null : jcgEjP, Sj(sPVar) ? null : sPVar, ejPSP, sPVarSj3, sPVarSj4, sP(sPVarSj) ? null : sPVarSj, TKC(sPVarSj2) ? null : sPVarSj2);
    }

    private static boolean Sj(com.bytedance.adsdk.sP.TKC.Sj.Fmk<PointF, PointF> fmk) {
        if (fmk != null) {
            return !(fmk instanceof com.bytedance.adsdk.sP.TKC.Sj.uA) && fmk.sP() && fmk.TKC().get(0).Sj.equals(0.0f, 0.0f);
        }
        return true;
    }

    private static boolean Sj(com.bytedance.adsdk.sP.TKC.Sj.HiB hiB) {
        if (hiB != null) {
            return hiB.sP() && hiB.TKC().get(0).Sj.equals(0.0f, 0.0f);
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static boolean Sj(com.bytedance.adsdk.sP.TKC.Sj.Jcg jcg) {
        if (jcg != null) {
            return jcg.sP() && ((com.bytedance.adsdk.sP.Jcg.TKC) ((com.bytedance.adsdk.sP.Jcg.Sj) jcg.TKC().get(0)).Sj).sP(1.0f, 1.0f);
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static boolean Sj(com.bytedance.adsdk.sP.TKC.Sj.sP sPVar) {
        if (sPVar != null) {
            return sPVar.sP() && ((Float) ((com.bytedance.adsdk.sP.Jcg.Sj) sPVar.TKC().get(0)).Sj).floatValue() == 0.0f;
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static boolean TKC(com.bytedance.adsdk.sP.TKC.Sj.sP sPVar) {
        if (sPVar != null) {
            return sPVar.sP() && ((Float) ((com.bytedance.adsdk.sP.Jcg.Sj) sPVar.TKC().get(0)).Sj).floatValue() == 0.0f;
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static boolean sP(com.bytedance.adsdk.sP.TKC.Sj.sP sPVar) {
        if (sPVar != null) {
            return sPVar.sP() && ((Float) ((com.bytedance.adsdk.sP.Jcg.Sj) sPVar.TKC().get(0)).Sj).floatValue() == 0.0f;
        }
        return true;
    }
}
