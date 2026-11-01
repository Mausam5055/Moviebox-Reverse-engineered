package com.bytedance.adsdk.sP.HiB;

import android.util.JsonReader;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
class jb {
    static com.bytedance.adsdk.sP.TKC.sP.RiZ Sj(JsonReader jsonReader, com.bytedance.adsdk.sP.Jcg jcg) throws IOException {
        String strNextString = null;
        com.bytedance.adsdk.sP.TKC.sP.RiZ.Sj Sj = null;
        com.bytedance.adsdk.sP.TKC.Sj.sP sPVarSj = null;
        com.bytedance.adsdk.sP.TKC.Sj.sP sPVarSj2 = null;
        com.bytedance.adsdk.sP.TKC.Sj.sP sPVarSj3 = null;
        boolean zNextBoolean = false;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "e":
                    sPVarSj2 = EjP.Sj(jsonReader, jcg, false);
                    break;
                case "m":
                    Sj = com.bytedance.adsdk.sP.TKC.sP.RiZ.Sj.Sj(jsonReader.nextInt());
                    break;
                case "o":
                    sPVarSj3 = EjP.Sj(jsonReader, jcg, false);
                    break;
                case "s":
                    sPVarSj = EjP.Sj(jsonReader, jcg, false);
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
        return new com.bytedance.adsdk.sP.TKC.sP.RiZ(strNextString, Sj, sPVarSj, sPVarSj2, sPVarSj3, zNextBoolean);
    }
}
