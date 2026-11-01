package com.bytedance.adsdk.sP.HiB;

import android.util.JsonReader;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
class xD {
    static com.bytedance.adsdk.sP.TKC.sP.dNu Sj(JsonReader jsonReader, com.bytedance.adsdk.sP.Jcg jcg) throws IOException {
        String strNextString = null;
        com.bytedance.adsdk.sP.TKC.Sj.Dq dqHiB = null;
        int iNextInt = 0;
        boolean zNextBoolean = false;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "hd":
                    zNextBoolean = jsonReader.nextBoolean();
                    break;
                case "ks":
                    dqHiB = EjP.HiB(jsonReader, jcg);
                    break;
                case "nm":
                    strNextString = jsonReader.nextString();
                    break;
                case "ind":
                    iNextInt = jsonReader.nextInt();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        return new com.bytedance.adsdk.sP.TKC.sP.dNu(strNextString, iNextInt, dqHiB, zNextBoolean);
    }
}
