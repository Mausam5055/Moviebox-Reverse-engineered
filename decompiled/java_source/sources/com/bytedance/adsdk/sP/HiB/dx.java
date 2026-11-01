package com.bytedance.adsdk.sP.HiB;

import android.util.JsonReader;
import android.util.JsonToken;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
class dx {
    static <T> List<com.bytedance.adsdk.sP.Jcg.Sj<T>> Sj(JsonReader jsonReader, com.bytedance.adsdk.sP.Jcg jcg, float f11, Ei<T> ei2, boolean z10) throws IOException {
        ArrayList arrayList = new ArrayList();
        if (jsonReader.peek() == JsonToken.STRING) {
            jcg.Sj("Lottie doesn't support expressions.");
            return arrayList;
        }
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            if (!strNextName.equals(CampaignEx.JSON_KEY_AD_K)) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() == JsonToken.BEGIN_ARRAY) {
                jsonReader.beginArray();
                if (jsonReader.peek() == JsonToken.NUMBER) {
                    arrayList.add(sU.Sj(jsonReader, jcg, f11, ei2, false, z10));
                } else {
                    while (jsonReader.hasNext()) {
                        arrayList.add(sU.Sj(jsonReader, jcg, f11, ei2, true, z10));
                    }
                }
                jsonReader.endArray();
            } else {
                arrayList.add(sU.Sj(jsonReader, jcg, f11, ei2, false, z10));
            }
        }
        jsonReader.endObject();
        Sj(arrayList);
        return arrayList;
    }

    public static <T> void Sj(List<? extends com.bytedance.adsdk.sP.Jcg.Sj<T>> list) {
        int i11;
        T t11;
        int size = list.size();
        int i12 = 0;
        while (true) {
            i11 = size - 1;
            if (i12 >= i11) {
                break;
            }
            com.bytedance.adsdk.sP.Jcg.Sj<T> sj2 = list.get(i12);
            i12++;
            com.bytedance.adsdk.sP.Jcg.Sj<T> sj3 = list.get(i12);
            sj2.Jcg = Float.valueOf(sj3.vS);
            if (sj2.sP == null && (t11 = sj3.Sj) != null) {
                sj2.sP = t11;
                if (sj2 instanceof com.bytedance.adsdk.sP.Sj.sP.uA) {
                    ((com.bytedance.adsdk.sP.Sj.sP.uA) sj2).Sj();
                }
            }
        }
        com.bytedance.adsdk.sP.Jcg.Sj<T> sj4 = list.get(i11);
        if ((sj4.Sj == null || sj4.sP == null) && list.size() > 1) {
            list.remove(sj4);
        }
    }
}
