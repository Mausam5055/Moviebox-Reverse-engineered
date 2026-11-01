package com.bytedance.adsdk.sP.HiB;

import android.util.JsonReader;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class Ym {
    private com.bytedance.adsdk.sP.TKC.Sj.sP EjP;
    private com.bytedance.adsdk.sP.TKC.Sj.sP HiB;
    private com.bytedance.adsdk.sP.TKC.Sj.Sj Sj;
    private com.bytedance.adsdk.sP.TKC.Sj.sP TKC;
    private com.bytedance.adsdk.sP.TKC.Sj.sP sP;

    private void sP(JsonReader jsonReader, com.bytedance.adsdk.sP.Jcg jcg) throws IOException {
        jsonReader.beginObject();
        String strNextString = "";
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            if (strNextName.equals("v")) {
                strNextString.hashCode();
                switch (strNextString) {
                    case "Distance":
                        this.EjP = EjP.Sj(jsonReader, jcg);
                        break;
                    case "Opacity":
                        this.sP = EjP.Sj(jsonReader, jcg, false);
                        break;
                    case "Direction":
                        this.TKC = EjP.Sj(jsonReader, jcg, false);
                        break;
                    case "Shadow Color":
                        this.Sj = EjP.Jcg(jsonReader, jcg);
                        break;
                    case "Softness":
                        this.HiB = EjP.Sj(jsonReader, jcg);
                        break;
                    default:
                        jsonReader.skipValue();
                        break;
                }
            } else if (strNextName.equals("nm")) {
                strNextString = jsonReader.nextString();
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
    }

    TEQ Sj(JsonReader jsonReader, com.bytedance.adsdk.sP.Jcg jcg) throws IOException {
        com.bytedance.adsdk.sP.TKC.Sj.sP sPVar;
        com.bytedance.adsdk.sP.TKC.Sj.sP sPVar2;
        com.bytedance.adsdk.sP.TKC.Sj.sP sPVar3;
        com.bytedance.adsdk.sP.TKC.Sj.sP sPVar4;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            if (strNextName.equals("ef")) {
                jsonReader.beginArray();
                while (jsonReader.hasNext()) {
                    sP(jsonReader, jcg);
                }
                jsonReader.endArray();
            } else {
                jsonReader.skipValue();
            }
        }
        com.bytedance.adsdk.sP.TKC.Sj.Sj sj2 = this.Sj;
        if (sj2 == null || (sPVar = this.sP) == null || (sPVar2 = this.TKC) == null || (sPVar3 = this.EjP) == null || (sPVar4 = this.HiB) == null) {
            return null;
        }
        return new TEQ(sj2, sPVar, sPVar2, sPVar3, sPVar4);
    }
}
