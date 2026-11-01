package com.bytedance.adsdk.sP.HiB;

import android.graphics.PointF;
import android.util.JsonReader;
import android.util.JsonToken;
import java.io.IOException;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class Sj {
    public static com.bytedance.adsdk.sP.TKC.Sj.HiB Sj(JsonReader jsonReader, com.bytedance.adsdk.sP.Jcg jcg) throws IOException {
        ArrayList arrayList = new ArrayList();
        if (jsonReader.peek() == JsonToken.BEGIN_ARRAY) {
            jsonReader.beginArray();
            while (jsonReader.hasNext()) {
                arrayList.add(wE.Sj(jsonReader, jcg));
            }
            jsonReader.endArray();
            dx.Sj(arrayList);
        } else {
            arrayList.add(new com.bytedance.adsdk.sP.Jcg.Sj(RiZ.sP(jsonReader, com.bytedance.adsdk.sP.vS.vS.Sj())));
        }
        return new com.bytedance.adsdk.sP.TKC.Sj.HiB(arrayList);
    }

    static com.bytedance.adsdk.sP.TKC.Sj.Fmk<PointF, PointF> sP(JsonReader jsonReader, com.bytedance.adsdk.sP.Jcg jcg) throws IOException {
        jsonReader.beginObject();
        com.bytedance.adsdk.sP.TKC.Sj.HiB hiBSj = null;
        com.bytedance.adsdk.sP.TKC.Sj.sP sPVarSj = null;
        com.bytedance.adsdk.sP.TKC.Sj.sP sPVarSj2 = null;
        boolean z10 = false;
        while (jsonReader.peek() != JsonToken.END_OBJECT) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "k":
                    hiBSj = Sj(jsonReader, jcg);
                    break;
                case "x":
                    if (jsonReader.peek() != JsonToken.STRING) {
                        sPVarSj = EjP.Sj(jsonReader, jcg);
                        break;
                    } else {
                        z10 = true;
                        jsonReader.skipValue();
                        break;
                    }
                    break;
                case "y":
                    if (jsonReader.peek() != JsonToken.STRING) {
                        sPVarSj2 = EjP.Sj(jsonReader, jcg);
                        break;
                    } else {
                        z10 = true;
                        jsonReader.skipValue();
                        break;
                    }
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        if (z10) {
            jcg.Sj("Lottie doesn't support expressions.");
        }
        return hiBSj != null ? hiBSj : new com.bytedance.adsdk.sP.TKC.Sj.uA(sPVarSj, sPVarSj2);
    }
}
