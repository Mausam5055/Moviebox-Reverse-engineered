package com.bytedance.adsdk.sP.HiB;

import android.util.JsonReader;
import android.util.JsonToken;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
class wE {
    static com.bytedance.adsdk.sP.Sj.sP.uA Sj(JsonReader jsonReader, com.bytedance.adsdk.sP.Jcg jcg) throws IOException {
        return new com.bytedance.adsdk.sP.Sj.sP.uA(jcg, sU.Sj(jsonReader, jcg, com.bytedance.adsdk.sP.vS.vS.Sj(), ley.Sj, jsonReader.peek() == JsonToken.BEGIN_OBJECT, false));
    }
}
