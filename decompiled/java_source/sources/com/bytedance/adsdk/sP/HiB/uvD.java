package com.bytedance.adsdk.sP.HiB;

import android.graphics.Path;
import android.util.JsonReader;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.io.IOException;
import java.util.Collections;

/* JADX INFO: loaded from: classes2.dex */
class uvD {
    static com.bytedance.adsdk.sP.TKC.sP.HiB Sj(JsonReader jsonReader, com.bytedance.adsdk.sP.Jcg jcg) throws IOException {
        com.bytedance.adsdk.sP.TKC.Sj.EjP ejPSP = null;
        Path.FillType fillType = Path.FillType.WINDING;
        String strNextString = null;
        com.bytedance.adsdk.sP.TKC.sP.Jcg jcg2 = null;
        com.bytedance.adsdk.sP.TKC.Sj.TKC tkcSj = null;
        com.bytedance.adsdk.sP.TKC.Sj.vS vSVarTKC = null;
        com.bytedance.adsdk.sP.TKC.Sj.vS vSVarTKC2 = null;
        boolean zNextBoolean = false;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "e":
                    vSVarTKC2 = EjP.TKC(jsonReader, jcg);
                    break;
                case "g":
                    jsonReader.beginObject();
                    int iNextInt = -1;
                    while (jsonReader.hasNext()) {
                        String strNextName2 = jsonReader.nextName();
                        strNextName2.hashCode();
                        if (strNextName2.equals(CampaignEx.JSON_KEY_AD_K)) {
                            tkcSj = EjP.Sj(jsonReader, jcg, iNextInt);
                        } else if (strNextName2.equals(TtmlNode.TAG_P)) {
                            iNextInt = jsonReader.nextInt();
                        } else {
                            jsonReader.skipValue();
                        }
                    }
                    jsonReader.endObject();
                    break;
                case "o":
                    ejPSP = EjP.sP(jsonReader, jcg);
                    break;
                case "r":
                    fillType = jsonReader.nextInt() == 1 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD;
                    break;
                case "s":
                    vSVarTKC = EjP.TKC(jsonReader, jcg);
                    break;
                case "t":
                    jcg2 = jsonReader.nextInt() == 1 ? com.bytedance.adsdk.sP.TKC.sP.Jcg.LINEAR : com.bytedance.adsdk.sP.TKC.sP.Jcg.RADIAL;
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
        return new com.bytedance.adsdk.sP.TKC.sP.HiB(strNextString, jcg2, fillType, tkcSj, ejPSP == null ? new com.bytedance.adsdk.sP.TKC.Sj.EjP(Collections.singletonList(new com.bytedance.adsdk.sP.Jcg.Sj(100))) : ejPSP, vSVarTKC, vSVarTKC2, null, null, zNextBoolean);
    }
}
