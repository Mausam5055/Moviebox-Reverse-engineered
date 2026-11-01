package com.bytedance.adsdk.sP.HiB;

import android.util.JsonReader;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
class HiB {
    static com.bytedance.adsdk.sP.TKC.sP.Sj Sj(JsonReader jsonReader, com.bytedance.adsdk.sP.Jcg jcg) throws IOException {
        com.bytedance.adsdk.sP.TKC.sP.Sj sj2 = null;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            if (strNextName.equals("ef")) {
                jsonReader.beginArray();
                while (jsonReader.hasNext()) {
                    com.bytedance.adsdk.sP.TKC.sP.Sj sjSP = sP(jsonReader, jcg);
                    if (sjSP != null) {
                        sj2 = sjSP;
                    }
                }
                jsonReader.endArray();
            } else {
                jsonReader.skipValue();
            }
        }
        return sj2;
    }

    private static com.bytedance.adsdk.sP.TKC.sP.Sj sP(JsonReader jsonReader, com.bytedance.adsdk.sP.Jcg jcg) throws IOException {
        jsonReader.beginObject();
        com.bytedance.adsdk.sP.TKC.sP.Sj sj2 = null;
        while (true) {
            boolean z10 = false;
            while (true) {
                if (!jsonReader.hasNext()) {
                    jsonReader.endObject();
                    return sj2;
                }
                String strNextName = jsonReader.nextName();
                strNextName.hashCode();
                if (strNextName.equals("v")) {
                    if (z10) {
                        sj2 = new com.bytedance.adsdk.sP.TKC.sP.Sj(EjP.Sj(jsonReader, jcg));
                    } else {
                        jsonReader.skipValue();
                    }
                } else if (!strNextName.equals("ty")) {
                    jsonReader.skipValue();
                } else if (jsonReader.nextInt() == 0) {
                    z10 = true;
                }
            }
        }
    }
}
