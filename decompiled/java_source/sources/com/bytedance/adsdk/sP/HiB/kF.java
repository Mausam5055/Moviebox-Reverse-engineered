package com.bytedance.adsdk.sP.HiB;

import android.util.JsonReader;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
class kF {
    static com.bytedance.adsdk.sP.TKC.sP.Dq Sj(JsonReader jsonReader, com.bytedance.adsdk.sP.Jcg jcg) throws IOException {
        jsonReader.beginObject();
        com.bytedance.adsdk.sP.TKC.sP.Dq.Sj sj2 = null;
        com.bytedance.adsdk.sP.TKC.Sj.Dq dqHiB = null;
        com.bytedance.adsdk.sP.TKC.Sj.EjP ejPSP = null;
        boolean zNextBoolean = false;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "o":
                    ejPSP = EjP.sP(jsonReader, jcg);
                    break;
                case "pt":
                    dqHiB = EjP.HiB(jsonReader, jcg);
                    break;
                case "inv":
                    zNextBoolean = jsonReader.nextBoolean();
                    break;
                case "mode":
                    String strNextString = jsonReader.nextString();
                    strNextString.hashCode();
                    switch (strNextString) {
                        case "a":
                            sj2 = com.bytedance.adsdk.sP.TKC.sP.Dq.Sj.MASK_MODE_ADD;
                            break;
                        case "i":
                            jcg.Sj("Animation contains intersect masks. They are not supported but will be treated like add masks.");
                            sj2 = com.bytedance.adsdk.sP.TKC.sP.Dq.Sj.MASK_MODE_INTERSECT;
                            break;
                        case "n":
                            sj2 = com.bytedance.adsdk.sP.TKC.sP.Dq.Sj.MASK_MODE_NONE;
                            break;
                        case "s":
                            sj2 = com.bytedance.adsdk.sP.TKC.sP.Dq.Sj.MASK_MODE_SUBTRACT;
                            break;
                        default:
                            sj2 = com.bytedance.adsdk.sP.TKC.sP.Dq.Sj.MASK_MODE_ADD;
                            break;
                    }
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return new com.bytedance.adsdk.sP.TKC.sP.Dq(sj2, dqHiB, ejPSP, zNextBoolean);
    }
}
