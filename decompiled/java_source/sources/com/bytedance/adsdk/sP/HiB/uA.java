package com.bytedance.adsdk.sP.HiB;

import android.graphics.PointF;
import android.util.JsonReader;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class uA implements Ei<com.bytedance.adsdk.sP.TKC.sP> {
    public static final uA Sj = new uA();

    private uA() {
    }

    @Override // com.bytedance.adsdk.sP.HiB.Ei
    /* JADX INFO: renamed from: Sj, reason: merged with bridge method [inline-methods] */
    public com.bytedance.adsdk.sP.TKC.sP sP(JsonReader jsonReader, float f11) throws IOException {
        com.bytedance.adsdk.sP.TKC.sP.Sj sj2 = com.bytedance.adsdk.sP.TKC.sP.Sj.CENTER;
        jsonReader.beginObject();
        com.bytedance.adsdk.sP.TKC.sP.Sj sj3 = sj2;
        String strNextString = null;
        String strNextString2 = null;
        PointF pointF = null;
        PointF pointF2 = null;
        float fNextDouble = 0.0f;
        float fNextDouble2 = 0.0f;
        float fNextDouble3 = 0.0f;
        float fNextDouble4 = 0.0f;
        int iNextInt = 0;
        int iSj = 0;
        int iSj2 = 0;
        boolean zNextBoolean = true;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "f":
                    strNextString2 = jsonReader.nextString();
                    break;
                case "j":
                    int iNextInt2 = jsonReader.nextInt();
                    sj3 = com.bytedance.adsdk.sP.TKC.sP.Sj.CENTER;
                    if (iNextInt2 <= sj3.ordinal() && iNextInt2 >= 0) {
                        sj3 = com.bytedance.adsdk.sP.TKC.sP.Sj.values()[iNextInt2];
                        break;
                    } else {
                        break;
                    }
                    break;
                case "s":
                    fNextDouble = (float) jsonReader.nextDouble();
                    break;
                case "t":
                    strNextString = jsonReader.nextString();
                    break;
                case "fc":
                    iSj = RiZ.Sj(jsonReader);
                    break;
                case "lh":
                    fNextDouble2 = (float) jsonReader.nextDouble();
                    break;
                case "ls":
                    fNextDouble3 = (float) jsonReader.nextDouble();
                    break;
                case "of":
                    zNextBoolean = jsonReader.nextBoolean();
                    break;
                case "ps":
                    jsonReader.beginArray();
                    PointF pointF3 = new PointF(((float) jsonReader.nextDouble()) * f11, ((float) jsonReader.nextDouble()) * f11);
                    jsonReader.endArray();
                    pointF = pointF3;
                    break;
                case "sc":
                    iSj2 = RiZ.Sj(jsonReader);
                    break;
                case "sw":
                    fNextDouble4 = (float) jsonReader.nextDouble();
                    break;
                case "sz":
                    jsonReader.beginArray();
                    PointF pointF4 = new PointF(((float) jsonReader.nextDouble()) * f11, ((float) jsonReader.nextDouble()) * f11);
                    jsonReader.endArray();
                    pointF2 = pointF4;
                    break;
                case "tr":
                    iNextInt = jsonReader.nextInt();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return new com.bytedance.adsdk.sP.TKC.sP(strNextString, strNextString2, fNextDouble, sj3, iNextInt, fNextDouble2, fNextDouble3, iSj, iSj2, fNextDouble4, zNextBoolean, pointF, pointF2);
    }
}
