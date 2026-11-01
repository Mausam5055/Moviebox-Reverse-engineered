package com.bytedance.adsdk.sP.HiB;

import android.util.JsonReader;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class sP {
    public static com.bytedance.adsdk.sP.TKC.Sj.Ym Sj(JsonReader jsonReader, com.bytedance.adsdk.sP.Jcg jcg) throws IOException {
        jsonReader.beginObject();
        com.bytedance.adsdk.sP.TKC.Sj.Ym ymSP = null;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            if (strNextName.equals("a")) {
                ymSP = sP(jsonReader, jcg);
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        return ymSP == null ? new com.bytedance.adsdk.sP.TKC.Sj.Ym(null, null, null, null) : ymSP;
    }

    private static com.bytedance.adsdk.sP.TKC.Sj.Ym sP(JsonReader jsonReader, com.bytedance.adsdk.sP.Jcg jcg) throws IOException {
        jsonReader.beginObject();
        com.bytedance.adsdk.sP.TKC.Sj.Sj sjJcg = null;
        com.bytedance.adsdk.sP.TKC.Sj.Sj sjJcg2 = null;
        com.bytedance.adsdk.sP.TKC.Sj.sP sPVarSj = null;
        com.bytedance.adsdk.sP.TKC.Sj.sP sPVarSj2 = null;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "t":
                    sPVarSj2 = EjP.Sj(jsonReader, jcg);
                    break;
                case "fc":
                    sjJcg = EjP.Jcg(jsonReader, jcg);
                    break;
                case "sc":
                    sjJcg2 = EjP.Jcg(jsonReader, jcg);
                    break;
                case "sw":
                    sPVarSj = EjP.Sj(jsonReader, jcg);
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return new com.bytedance.adsdk.sP.TKC.Sj.Ym(sjJcg, sjJcg2, sPVarSj, sPVarSj2);
    }
}
