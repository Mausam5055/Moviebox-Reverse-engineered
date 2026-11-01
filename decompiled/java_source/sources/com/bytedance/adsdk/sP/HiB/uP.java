package com.bytedance.adsdk.sP.HiB;

import android.util.JsonReader;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
class uP {
    static com.bytedance.adsdk.sP.TKC.sP.uA Sj(JsonReader jsonReader) throws IOException {
        String strNextString = null;
        com.bytedance.adsdk.sP.TKC.sP.uA.Sj Sj = null;
        boolean zNextBoolean = false;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "hd":
                    zNextBoolean = jsonReader.nextBoolean();
                    break;
                case "mm":
                    Sj = com.bytedance.adsdk.sP.TKC.sP.uA.Sj.Sj(jsonReader.nextInt());
                    break;
                case "nm":
                    strNextString = jsonReader.nextString();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        return new com.bytedance.adsdk.sP.TKC.sP.uA(strNextString, Sj, zNextBoolean);
    }
}
