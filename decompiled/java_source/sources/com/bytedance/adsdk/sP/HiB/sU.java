package com.bytedance.adsdk.sP.HiB;

import android.graphics.PointF;
import android.util.JsonReader;
import android.util.JsonToken;
import android.util.SparseArray;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import java.io.IOException;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes2.dex */
class sU {
    private static final Interpolator Sj = new LinearInterpolator();
    private static SparseArray<WeakReference<Interpolator>> sP;

    sU() {
    }

    private static SparseArray<WeakReference<Interpolator>> Sj() {
        if (sP == null) {
            sP = new SparseArray<>();
        }
        return sP;
    }

    private static Interpolator Sj(PointF pointF, PointF pointF2) {
        Interpolator interpolatorSj;
        pointF.x = com.bytedance.adsdk.sP.vS.HiB.sP(pointF.x, -1.0f, 1.0f);
        pointF.y = com.bytedance.adsdk.sP.vS.HiB.sP(pointF.y, -100.0f, 100.0f);
        pointF2.x = com.bytedance.adsdk.sP.vS.HiB.sP(pointF2.x, -1.0f, 1.0f);
        float fSP = com.bytedance.adsdk.sP.vS.HiB.sP(pointF2.y, -100.0f, 100.0f);
        pointF2.y = fSP;
        int iSj = com.bytedance.adsdk.sP.vS.vS.Sj(pointF.x, pointF.y, pointF2.x, fSP);
        WeakReference<Interpolator> weakReferenceSj = com.bytedance.adsdk.sP.HiB.Sj() ? null : Sj(iSj);
        Interpolator interpolator = weakReferenceSj != null ? weakReferenceSj.get() : null;
        if (weakReferenceSj == null || interpolator == null) {
            try {
                interpolatorSj = com.bytedance.adsdk.sP.dNu.Sj(pointF.x, pointF.y, pointF2.x, pointF2.y);
            } catch (IllegalArgumentException e11) {
                interpolatorSj = "The Path cannot loop back on itself.".equals(e11.getMessage()) ? com.bytedance.adsdk.sP.dNu.Sj(Math.min(pointF.x, 1.0f), pointF.y, Math.max(pointF2.x, 0.0f), pointF2.y) : new LinearInterpolator();
            }
            interpolator = interpolatorSj;
            if (!com.bytedance.adsdk.sP.HiB.Sj()) {
                try {
                    Sj(iSj, (WeakReference<Interpolator>) new WeakReference(interpolator));
                } catch (ArrayIndexOutOfBoundsException unused) {
                }
            }
        }
        return interpolator;
    }

    private static <T> com.bytedance.adsdk.sP.Jcg.Sj<T> Sj(JsonReader jsonReader, float f11, Ei<T> ei2) throws IOException {
        return new com.bytedance.adsdk.sP.Jcg.Sj<>(ei2.sP(jsonReader, f11));
    }

    static <T> com.bytedance.adsdk.sP.Jcg.Sj<T> Sj(JsonReader jsonReader, com.bytedance.adsdk.sP.Jcg jcg, float f11, Ei<T> ei2, boolean z10, boolean z11) throws IOException {
        if (z10 && z11) {
            return sP(jcg, jsonReader, f11, ei2);
        }
        return z10 ? Sj(jcg, jsonReader, f11, ei2) : Sj(jsonReader, f11, ei2);
    }

    private static <T> com.bytedance.adsdk.sP.Jcg.Sj<T> Sj(com.bytedance.adsdk.sP.Jcg jcg, JsonReader jsonReader, float f11, Ei<T> ei2) throws IOException {
        Interpolator interpolatorSj;
        jsonReader.beginObject();
        PointF pointFSP = null;
        T tSP = null;
        T tSP2 = null;
        PointF pointFSP2 = null;
        PointF pointFSP3 = null;
        float fNextDouble = 0.0f;
        boolean z10 = false;
        PointF pointFSP4 = null;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "e":
                    tSP = ei2.sP(jsonReader, f11);
                    break;
                case "h":
                    if (jsonReader.nextInt() != 1) {
                        z10 = false;
                        break;
                    } else {
                        z10 = true;
                        break;
                    }
                    break;
                case "i":
                    pointFSP4 = RiZ.sP(jsonReader, 1.0f);
                    break;
                case "o":
                    pointFSP = RiZ.sP(jsonReader, 1.0f);
                    break;
                case "s":
                    tSP2 = ei2.sP(jsonReader, f11);
                    break;
                case "t":
                    fNextDouble = (float) jsonReader.nextDouble();
                    break;
                case "ti":
                    pointFSP3 = RiZ.sP(jsonReader, f11);
                    break;
                case "to":
                    pointFSP2 = RiZ.sP(jsonReader, f11);
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        if (!z10) {
            if (pointFSP != null && pointFSP4 != null) {
                interpolatorSj = Sj(pointFSP, pointFSP4);
            }
            com.bytedance.adsdk.sP.Jcg.Sj<T> sj2 = new com.bytedance.adsdk.sP.Jcg.Sj<>(jcg, tSP2, tSP, interpolatorSj, fNextDouble, null);
            sj2.Dq = pointFSP2;
            sj2.uA = pointFSP3;
            return sj2;
        }
        tSP = tSP2;
        interpolatorSj = Sj;
        com.bytedance.adsdk.sP.Jcg.Sj<T> sj3 = new com.bytedance.adsdk.sP.Jcg.Sj<>(jcg, tSP2, tSP, interpolatorSj, fNextDouble, null);
        sj3.Dq = pointFSP2;
        sj3.uA = pointFSP3;
        return sj3;
    }

    private static WeakReference<Interpolator> Sj(int i11) {
        WeakReference<Interpolator> weakReference;
        synchronized (sU.class) {
            weakReference = Sj().get(i11);
        }
        return weakReference;
    }

    private static void Sj(int i11, WeakReference<Interpolator> weakReference) {
        synchronized (sU.class) {
            sP.put(i11, weakReference);
        }
    }

    /* JADX WARN: Code duplicated, block: B:131:0x02c3  */
    private static <T> com.bytedance.adsdk.sP.Jcg.Sj<T> sP(com.bytedance.adsdk.sP.Jcg jcg, JsonReader jsonReader, float f11, Ei<T> ei2) throws IOException {
        Interpolator interpolatorSj;
        Interpolator interpolatorSj2;
        T t11;
        Interpolator interpolatorSj3;
        com.bytedance.adsdk.sP.Jcg.Sj<T> sj2;
        PointF pointF;
        String str;
        String str2;
        String str3;
        PointF pointF2;
        T t12;
        String str4 = "y";
        String str5 = "x";
        jsonReader.beginObject();
        PointF pointF3 = null;
        PointF pointFSP = null;
        PointF pointFSP2 = null;
        boolean z10 = false;
        PointF pointFSP3 = null;
        PointF pointFSP4 = null;
        PointF pointF4 = null;
        T tSP = null;
        PointF pointF5 = null;
        PointF pointF6 = null;
        float fNextDouble = 0.0f;
        T tSP2 = null;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            byte b11 = -1;
            switch (strNextName.hashCode()) {
                case 101:
                    pointF = pointFSP2;
                    if (strNextName.equals("e")) {
                        b11 = 0;
                    }
                    break;
                case 104:
                    pointF = pointFSP2;
                    if (strNextName.equals("h")) {
                        b11 = 1;
                    }
                    break;
                case 105:
                    pointF = pointFSP2;
                    if (strNextName.equals("i")) {
                        b11 = 2;
                    }
                    break;
                case 111:
                    pointF = pointFSP2;
                    if (strNextName.equals("o")) {
                        b11 = 3;
                    }
                    break;
                case INVALID_INDEX_URL_VALUE:
                    pointF = pointFSP2;
                    if (strNextName.equals("s")) {
                        b11 = 4;
                    }
                    break;
                case GZIP_ENCODE_ERROR_VALUE:
                    pointF = pointFSP2;
                    if (strNextName.equals("t")) {
                        b11 = 5;
                    }
                    break;
                case 3701:
                    pointF = pointFSP2;
                    if (strNextName.equals("ti")) {
                        b11 = 6;
                    }
                    break;
                case 3707:
                    pointF = pointFSP2;
                    if (strNextName.equals("to")) {
                        b11 = 7;
                    }
                    break;
                default:
                    pointF = pointFSP2;
                    break;
            }
            switch (b11) {
                case 0:
                    str = str4;
                    tSP2 = ei2.sP(jsonReader, f11);
                    pointFSP2 = pointF;
                    tSP = tSP;
                    str4 = str;
                    break;
                case 1:
                    String str6 = str4;
                    String str7 = str5;
                    PointF pointF7 = pointFSP;
                    T t13 = tSP;
                    PointF pointF8 = pointF5;
                    PointF pointF9 = pointF3;
                    z10 = jsonReader.nextInt() == 1;
                    pointF5 = pointF8;
                    pointF3 = pointF9;
                    pointFSP = pointF7;
                    pointFSP2 = pointF;
                    tSP = t13;
                    str4 = str6;
                    str5 = str7;
                    break;
                case 2:
                    PointF pointF10 = pointFSP;
                    PointF pointF11 = pointF3;
                    if (jsonReader.peek() == JsonToken.BEGIN_OBJECT) {
                        jsonReader.beginObject();
                        float fNextDouble2 = 0.0f;
                        float fNextDouble3 = 0.0f;
                        float fNextDouble4 = 0.0f;
                        float fNextDouble5 = 0.0f;
                        while (jsonReader.hasNext()) {
                            String strNextName2 = jsonReader.nextName();
                            strNextName2.hashCode();
                            if (strNextName2.equals(str5)) {
                                str2 = str4;
                                str3 = str5;
                                JsonToken jsonTokenPeek = jsonReader.peek();
                                JsonToken jsonToken = JsonToken.NUMBER;
                                if (jsonTokenPeek == jsonToken) {
                                    fNextDouble4 = (float) jsonReader.nextDouble();
                                    fNextDouble2 = fNextDouble4;
                                } else {
                                    jsonReader.beginArray();
                                    PointF pointF12 = pointF5;
                                    fNextDouble2 = (float) jsonReader.nextDouble();
                                    fNextDouble4 = jsonReader.peek() == jsonToken ? (float) jsonReader.nextDouble() : fNextDouble2;
                                    jsonReader.endArray();
                                    pointF5 = pointF12;
                                }
                            } else if (strNextName2.equals(str4)) {
                                JsonToken jsonTokenPeek2 = jsonReader.peek();
                                JsonToken jsonToken2 = JsonToken.NUMBER;
                                if (jsonTokenPeek2 == jsonToken2) {
                                    str2 = str4;
                                    str3 = str5;
                                    fNextDouble5 = (float) jsonReader.nextDouble();
                                    fNextDouble3 = fNextDouble5;
                                } else {
                                    str2 = str4;
                                    str3 = str5;
                                    jsonReader.beginArray();
                                    fNextDouble3 = (float) jsonReader.nextDouble();
                                    fNextDouble5 = jsonReader.peek() == jsonToken2 ? (float) jsonReader.nextDouble() : fNextDouble3;
                                    jsonReader.endArray();
                                }
                            } else {
                                jsonReader.skipValue();
                            }
                            str4 = str2;
                            str5 = str3;
                        }
                        str = str4;
                        pointF6 = new PointF(fNextDouble2, fNextDouble3);
                        pointF3 = new PointF(fNextDouble4, fNextDouble5);
                        jsonReader.endObject();
                    } else {
                        str = str4;
                        pointFSP4 = RiZ.sP(jsonReader, f11);
                        pointF3 = pointF11;
                    }
                    pointFSP = pointF10;
                    pointFSP2 = pointF;
                    tSP = tSP;
                    str4 = str;
                    break;
                case 3:
                    PointF pointF13 = pointFSP;
                    if (jsonReader.peek() == JsonToken.BEGIN_OBJECT) {
                        jsonReader.beginObject();
                        float fNextDouble6 = 0.0f;
                        float f12 = 0.0f;
                        float fNextDouble7 = 0.0f;
                        float fNextDouble8 = 0.0f;
                        while (jsonReader.hasNext()) {
                            pointF13 = pointF13;
                            String strNextName3 = jsonReader.nextName();
                            strNextName3.hashCode();
                            if (strNextName3.equals(str5)) {
                                T t14 = tSP;
                                JsonToken jsonTokenPeek3 = jsonReader.peek();
                                JsonToken jsonToken3 = JsonToken.NUMBER;
                                if (jsonTokenPeek3 == jsonToken3) {
                                    fNextDouble7 = (float) jsonReader.nextDouble();
                                    tSP = t14;
                                    fNextDouble6 = fNextDouble7;
                                } else {
                                    jsonReader.beginArray();
                                    PointF pointF14 = pointF3;
                                    fNextDouble6 = (float) jsonReader.nextDouble();
                                    fNextDouble7 = jsonReader.peek() == jsonToken3 ? (float) jsonReader.nextDouble() : fNextDouble6;
                                    jsonReader.endArray();
                                    pointF3 = pointF14;
                                    tSP = t14;
                                }
                            } else if (strNextName3.equals(str4)) {
                                JsonToken jsonTokenPeek4 = jsonReader.peek();
                                JsonToken jsonToken4 = JsonToken.NUMBER;
                                if (jsonTokenPeek4 == jsonToken4) {
                                    fNextDouble8 = (float) jsonReader.nextDouble();
                                    tSP = tSP;
                                    f12 = fNextDouble8;
                                } else {
                                    T t15 = tSP;
                                    jsonReader.beginArray();
                                    float fNextDouble9 = (float) jsonReader.nextDouble();
                                    if (jsonReader.peek() == jsonToken4) {
                                        f12 = fNextDouble9;
                                        fNextDouble8 = (float) jsonReader.nextDouble();
                                    } else {
                                        f12 = fNextDouble9;
                                        fNextDouble8 = f12;
                                    }
                                    jsonReader.endArray();
                                    tSP = t15;
                                }
                            } else {
                                jsonReader.skipValue();
                            }
                        }
                        pointF2 = pointF13;
                        t12 = tSP;
                        PointF pointF15 = pointF3;
                        PointF pointF16 = new PointF(fNextDouble6, f12);
                        PointF pointF17 = new PointF(fNextDouble7, fNextDouble8);
                        jsonReader.endObject();
                        pointF4 = pointF16;
                        pointF5 = pointF17;
                        pointF3 = pointF15;
                    } else {
                        pointF2 = pointF13;
                        t12 = tSP;
                        pointFSP3 = RiZ.sP(jsonReader, f11);
                    }
                    pointFSP = pointF2;
                    pointFSP2 = pointF;
                    tSP = t12;
                    break;
                case 4:
                    tSP = ei2.sP(jsonReader, f11);
                    pointFSP2 = pointF;
                    break;
                case 5:
                    fNextDouble = (float) jsonReader.nextDouble();
                    pointFSP2 = pointF;
                    pointFSP = pointFSP;
                    break;
                case 6:
                    pointFSP2 = RiZ.sP(jsonReader, f11);
                    break;
                case 7:
                    pointFSP = RiZ.sP(jsonReader, f11);
                    pointFSP2 = pointF;
                    break;
                default:
                    jsonReader.skipValue();
                    pointFSP2 = pointF;
                    break;
            }
        }
        PointF pointF18 = pointFSP;
        PointF pointF19 = pointFSP2;
        T t16 = tSP;
        PointF pointF20 = pointF5;
        PointF pointF21 = pointF3;
        jsonReader.endObject();
        if (!z10) {
            if (pointFSP3 != null && pointFSP4 != null) {
                interpolatorSj3 = Sj(pointFSP3, pointFSP4);
                t11 = tSP2;
                interpolatorSj = null;
                interpolatorSj2 = null;
            } else if (pointF4 != null && pointF20 != null && pointF6 != null && pointF21 != null) {
                interpolatorSj = Sj(pointF4, pointF6);
                interpolatorSj2 = Sj(pointF20, pointF21);
                t11 = tSP2;
                interpolatorSj3 = null;
            }
            if (interpolatorSj != null || interpolatorSj2 == null) {
                sj2 = new com.bytedance.adsdk.sP.Jcg.Sj<>(jcg, t16, t11, interpolatorSj3, fNextDouble, null);
            } else {
                sj2 = new com.bytedance.adsdk.sP.Jcg.Sj<>(jcg, t16, t11, interpolatorSj, interpolatorSj2, fNextDouble, null);
            }
            sj2.Dq = pointF18;
            sj2.uA = pointF19;
            return sj2;
        }
        tSP2 = t16;
        interpolatorSj3 = Sj;
        t11 = tSP2;
        interpolatorSj = null;
        interpolatorSj2 = null;
        if (interpolatorSj != null) {
            sj2 = new com.bytedance.adsdk.sP.Jcg.Sj<>(jcg, t16, t11, interpolatorSj3, fNextDouble, null);
        } else {
            sj2 = new com.bytedance.adsdk.sP.Jcg.Sj<>(jcg, t16, t11, interpolatorSj3, fNextDouble, null);
        }
        sj2.Dq = pointF18;
        sj2.uA = pointF19;
        return sj2;
    }
}
