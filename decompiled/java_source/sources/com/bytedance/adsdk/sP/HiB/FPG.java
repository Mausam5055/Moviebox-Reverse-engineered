package com.bytedance.adsdk.sP.HiB;

import android.graphics.Path;
import android.util.JsonReader;
import java.io.IOException;
import java.util.Collections;

/* JADX INFO: loaded from: classes2.dex */
class FPG {
    static com.bytedance.adsdk.sP.TKC.sP.Zq Sj(JsonReader jsonReader, com.bytedance.adsdk.sP.Jcg jcg) throws IOException {
        com.bytedance.adsdk.sP.TKC.Sj.EjP ejP = null;
        String strNextString = null;
        com.bytedance.adsdk.sP.TKC.Sj.Sj sjJcg = null;
        boolean zNextBoolean = false;
        boolean zNextBoolean2 = false;
        int iNextInt = 1;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "fillEnabled":
                    zNextBoolean = jsonReader.nextBoolean();
                    break;
                case "c":
                    sjJcg = EjP.Jcg(jsonReader, jcg);
                    break;
                case "o":
                    ejP = EjP.sP(jsonReader, jcg);
                    break;
                case "r":
                    iNextInt = jsonReader.nextInt();
                    break;
                case "hd":
                    zNextBoolean2 = jsonReader.nextBoolean();
                    break;
                case "nm":
                    strNextString = jsonReader.nextString();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        if (ejP == null) {
            ejP = new com.bytedance.adsdk.sP.TKC.Sj.EjP(Collections.singletonList(new com.bytedance.adsdk.sP.Jcg.Sj(100)));
        }
        return new com.bytedance.adsdk.sP.TKC.sP.Zq(strNextString, zNextBoolean, iNextInt == 1 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD, sjJcg, ejP, zNextBoolean2);
    }
}
