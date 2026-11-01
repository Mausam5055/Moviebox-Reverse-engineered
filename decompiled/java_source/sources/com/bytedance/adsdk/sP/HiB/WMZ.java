package com.bytedance.adsdk.sP.HiB;

import android.util.JsonReader;
import android.util.JsonToken;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class WMZ implements Ei<com.bytedance.adsdk.sP.Jcg.TKC> {
    public static final WMZ Sj = new WMZ();

    private WMZ() {
    }

    @Override // com.bytedance.adsdk.sP.HiB.Ei
    /* JADX INFO: renamed from: Sj, reason: merged with bridge method [inline-methods] */
    public com.bytedance.adsdk.sP.Jcg.TKC sP(JsonReader jsonReader, float f11) throws IOException {
        boolean z10 = jsonReader.peek() == JsonToken.BEGIN_ARRAY;
        if (z10) {
            jsonReader.beginArray();
        }
        float fNextDouble = (float) jsonReader.nextDouble();
        float fNextDouble2 = (float) jsonReader.nextDouble();
        while (jsonReader.hasNext()) {
            jsonReader.skipValue();
        }
        if (z10) {
            jsonReader.endArray();
        }
        return new com.bytedance.adsdk.sP.Jcg.TKC((fNextDouble / 100.0f) * f11, (fNextDouble2 / 100.0f) * f11);
    }
}
