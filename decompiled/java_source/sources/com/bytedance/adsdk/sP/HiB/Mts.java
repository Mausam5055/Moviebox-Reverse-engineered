package com.bytedance.adsdk.sP.HiB;

import android.graphics.PointF;
import android.util.JsonReader;
import android.util.JsonToken;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class Mts implements Ei<com.bytedance.adsdk.sP.TKC.sP.sef> {
    public static final Mts Sj = new Mts();

    private Mts() {
    }

    @Override // com.bytedance.adsdk.sP.HiB.Ei
    /* JADX INFO: renamed from: Sj, reason: merged with bridge method [inline-methods] */
    public com.bytedance.adsdk.sP.TKC.sP.sef sP(JsonReader jsonReader, float f11) throws IOException {
        if (jsonReader.peek() == JsonToken.BEGIN_ARRAY) {
            jsonReader.beginArray();
        }
        jsonReader.beginObject();
        List<PointF> listSj = null;
        boolean zNextBoolean = false;
        List<PointF> listSj2 = null;
        List<PointF> listSj3 = null;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "c":
                    zNextBoolean = jsonReader.nextBoolean();
                    break;
                case "i":
                    listSj2 = RiZ.Sj(jsonReader, f11);
                    break;
                case "o":
                    listSj3 = RiZ.Sj(jsonReader, f11);
                    break;
                case "v":
                    listSj = RiZ.Sj(jsonReader, f11);
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        if (jsonReader.peek() == JsonToken.END_ARRAY) {
            jsonReader.endArray();
        }
        if (listSj == null || listSj2 == null || listSj3 == null) {
            throw new IllegalArgumentException("Shape data was missing information.");
        }
        if (listSj.isEmpty()) {
            return new com.bytedance.adsdk.sP.TKC.sP.sef(new PointF(), false, Collections.emptyList());
        }
        int size = listSj.size();
        PointF pointF = listSj.get(0);
        ArrayList arrayList = new ArrayList(size);
        for (int i11 = 1; i11 < size; i11++) {
            PointF pointF2 = listSj.get(i11);
            int i12 = i11 - 1;
            arrayList.add(new com.bytedance.adsdk.sP.TKC.Sj(com.bytedance.adsdk.sP.vS.HiB.Sj(listSj.get(i12), listSj3.get(i12)), com.bytedance.adsdk.sP.vS.HiB.Sj(pointF2, listSj2.get(i11)), pointF2));
        }
        if (zNextBoolean) {
            PointF pointF3 = listSj.get(0);
            int i13 = size - 1;
            arrayList.add(new com.bytedance.adsdk.sP.TKC.Sj(com.bytedance.adsdk.sP.vS.HiB.Sj(listSj.get(i13), listSj3.get(i13)), com.bytedance.adsdk.sP.vS.HiB.Sj(pointF3, listSj2.get(0)), pointF3));
        }
        return new com.bytedance.adsdk.sP.TKC.sP.sef(pointF, zNextBoolean, arrayList);
    }
}
