package com.bytedance.adsdk.sP.HiB;

import android.util.JsonReader;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
class fF {
    static com.bytedance.adsdk.sP.TKC.sP.aa Sj(JsonReader jsonReader, com.bytedance.adsdk.sP.Jcg jcg) throws IOException {
        String strNextString = null;
        com.bytedance.adsdk.sP.TKC.Sj.sP sPVarSj = null;
        com.bytedance.adsdk.sP.TKC.Sj.sP sPVarSj2 = null;
        com.bytedance.adsdk.sP.TKC.Sj.aa aaVarSj = null;
        boolean zNextBoolean = false;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "c":
                    sPVarSj = EjP.Sj(jsonReader, jcg, false);
                    break;
                case "o":
                    sPVarSj2 = EjP.Sj(jsonReader, jcg, false);
                    break;
                case "hd":
                    zNextBoolean = jsonReader.nextBoolean();
                    break;
                case "nm":
                    strNextString = jsonReader.nextString();
                    break;
                case "tr":
                    aaVarSj = TKC.Sj(jsonReader, jcg);
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        return new com.bytedance.adsdk.sP.TKC.sP.aa(strNextString, sPVarSj, sPVarSj2, aaVarSj, zNextBoolean);
    }
}
