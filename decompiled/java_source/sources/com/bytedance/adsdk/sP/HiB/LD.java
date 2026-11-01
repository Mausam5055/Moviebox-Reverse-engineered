package com.bytedance.adsdk.sP.HiB;

import android.graphics.PointF;
import android.util.JsonReader;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
class LD {
    static com.bytedance.adsdk.sP.TKC.sP.Ym Sj(JsonReader jsonReader, com.bytedance.adsdk.sP.Jcg jcg) throws IOException {
        String strNextString = null;
        com.bytedance.adsdk.sP.TKC.Sj.Fmk<PointF, PointF> fmkSP = null;
        com.bytedance.adsdk.sP.TKC.Sj.vS vSVarTKC = null;
        com.bytedance.adsdk.sP.TKC.Sj.sP sPVarSj = null;
        boolean zNextBoolean = false;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "p":
                    fmkSP = Sj.sP(jsonReader, jcg);
                    break;
                case "r":
                    sPVarSj = EjP.Sj(jsonReader, jcg);
                    break;
                case "s":
                    vSVarTKC = EjP.TKC(jsonReader, jcg);
                    break;
                case "hd":
                    zNextBoolean = jsonReader.nextBoolean();
                    break;
                case "nm":
                    strNextString = jsonReader.nextString();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        return new com.bytedance.adsdk.sP.TKC.sP.Ym(strNextString, fmkSP, vSVarTKC, sPVarSj, zNextBoolean);
    }
}
