package com.bytedance.adsdk.sP.HiB;

import android.graphics.PointF;
import android.util.JsonReader;
import android.util.JsonToken;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class LqL implements Ei<PointF> {
    public static final LqL Sj = new LqL();

    private LqL() {
    }

    @Override // com.bytedance.adsdk.sP.HiB.Ei
    /* JADX INFO: renamed from: Sj, reason: merged with bridge method [inline-methods] */
    public PointF sP(JsonReader jsonReader, float f11) throws IOException {
        JsonToken jsonTokenPeek = jsonReader.peek();
        if (jsonTokenPeek != JsonToken.BEGIN_ARRAY && jsonTokenPeek != JsonToken.BEGIN_OBJECT) {
            if (jsonTokenPeek != JsonToken.NUMBER) {
                throw new IllegalArgumentException("Cannot convert json to point. Next token is ".concat(String.valueOf(jsonTokenPeek)));
            }
            PointF pointF = new PointF(((float) jsonReader.nextDouble()) * f11, ((float) jsonReader.nextDouble()) * f11);
            while (jsonReader.hasNext()) {
                jsonReader.skipValue();
            }
            return pointF;
        }
        return RiZ.sP(jsonReader, f11);
    }
}
