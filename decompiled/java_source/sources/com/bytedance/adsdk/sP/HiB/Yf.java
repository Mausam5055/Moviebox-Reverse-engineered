package com.bytedance.adsdk.sP.HiB;

import android.graphics.PointF;
import android.util.JsonReader;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
class Yf {
    static com.bytedance.adsdk.sP.TKC.sP.TEQ Sj(JsonReader jsonReader, com.bytedance.adsdk.sP.Jcg jcg, int i11) throws IOException {
        boolean zNextBoolean = false;
        boolean z10 = i11 == 3;
        String strNextString = null;
        com.bytedance.adsdk.sP.TKC.sP.TEQ.Sj Sj = null;
        com.bytedance.adsdk.sP.TKC.Sj.sP sPVarSj = null;
        com.bytedance.adsdk.sP.TKC.Sj.Fmk<PointF, PointF> fmkSP = null;
        com.bytedance.adsdk.sP.TKC.Sj.sP sPVarSj2 = null;
        com.bytedance.adsdk.sP.TKC.Sj.sP sPVarSj3 = null;
        com.bytedance.adsdk.sP.TKC.Sj.sP sPVarSj4 = null;
        com.bytedance.adsdk.sP.TKC.Sj.sP sPVarSj5 = null;
        com.bytedance.adsdk.sP.TKC.Sj.sP sPVarSj6 = null;
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
                case "r":
                    sPVarSj2 = EjP.Sj(jsonReader, jcg, false);
                    break;
                case "hd":
                    zNextBoolean = jsonReader.nextBoolean();
                    break;
                case "ir":
                    sPVarSj3 = EjP.Sj(jsonReader, jcg);
                    break;
                case "is":
                    sPVarSj5 = EjP.Sj(jsonReader, jcg, false);
                    break;
                case "nm":
                    strNextString = jsonReader.nextString();
                    break;
                case "or":
                    sPVarSj4 = EjP.Sj(jsonReader, jcg);
                    break;
                case "os":
                    sPVarSj6 = EjP.Sj(jsonReader, jcg, false);
                    break;
                case "pt":
                    sPVarSj = EjP.Sj(jsonReader, jcg, false);
                    break;
                case "sy":
                    Sj = com.bytedance.adsdk.sP.TKC.sP.TEQ.Sj.Sj(jsonReader.nextInt());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        return new com.bytedance.adsdk.sP.TKC.sP.TEQ(strNextString, Sj, sPVarSj, fmkSP, sPVarSj2, sPVarSj3, sPVarSj4, sPVarSj5, sPVarSj6, zNextBoolean, z10);
    }
}
