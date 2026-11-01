package com.bytedance.adsdk.sP.HiB;

import android.graphics.PointF;
import android.util.JsonReader;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
class vS {
    static com.bytedance.adsdk.sP.TKC.sP.sP Sj(JsonReader jsonReader, com.bytedance.adsdk.sP.Jcg jcg, int i11) throws IOException {
        boolean z10 = i11 == 3;
        boolean zNextBoolean = false;
        String strNextString = null;
        com.bytedance.adsdk.sP.TKC.Sj.Fmk<PointF, PointF> fmkSP = null;
        com.bytedance.adsdk.sP.TKC.Sj.vS vSVarTKC = null;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "d":
                    if (jsonReader.nextInt() != 3) {
                        z10 = false;
                        break;
                    } else {
                        z10 = true;
                        break;
                    }
                    break;
                case "p":
                    fmkSP = Sj.sP(jsonReader, jcg);
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
        return new com.bytedance.adsdk.sP.TKC.sP.sP(strNextString, fmkSP, vSVarTKC, z10, zNextBoolean);
    }
}
