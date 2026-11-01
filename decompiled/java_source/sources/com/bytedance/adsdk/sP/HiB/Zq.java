package com.bytedance.adsdk.sP.HiB;

import android.graphics.Color;
import android.util.JsonReader;
import android.util.JsonToken;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class Zq implements Ei<com.bytedance.adsdk.sP.TKC.sP.EjP> {
    private int Sj;

    public Zq(int i11) {
        this.Sj = i11;
    }

    private int Sj(float f11, int i11, float[] fArr, float[] fArr2) {
        float fSj;
        if (fArr2.length < 2 || f11 <= fArr[0]) {
            return Color.argb((int) (fArr2[0] * 255.0f), Color.red(i11), Color.green(i11), Color.blue(i11));
        }
        for (int i12 = 1; i12 < fArr.length; i12++) {
            float f12 = fArr[i12];
            if (f12 >= f11 || i12 == fArr.length - 1) {
                if (f12 <= f11) {
                    fSj = fArr2[i12];
                } else {
                    int i13 = i12 - 1;
                    float f13 = fArr[i13];
                    fSj = com.bytedance.adsdk.sP.vS.HiB.Sj(fArr2[i13], fArr2[i12], (f11 - f13) / (f12 - f13));
                }
                return Color.argb((int) (fSj * 255.0f), Color.red(i11), Color.green(i11), Color.blue(i11));
            }
        }
        throw new IllegalArgumentException("Unreachable code.");
    }

    private com.bytedance.adsdk.sP.TKC.sP.EjP Sj(com.bytedance.adsdk.sP.TKC.sP.EjP ejP, List<Float> list) {
        int i11 = this.Sj * 4;
        if (list.size() <= i11) {
            return ejP;
        }
        float[] fArrSj = ejP.Sj();
        int[] iArrSP = ejP.sP();
        int size = (list.size() - i11) / 2;
        float[] fArr = new float[size];
        float[] fArr2 = new float[size];
        int i12 = 0;
        while (i11 < list.size()) {
            if (i11 % 2 == 0) {
                fArr[i12] = list.get(i11).floatValue();
            } else {
                fArr2[i12] = list.get(i11).floatValue();
                i12++;
            }
            i11++;
        }
        float[] fArrSj2 = Sj(ejP.Sj(), fArr);
        int length = fArrSj2.length;
        int[] iArr = new int[length];
        for (int i13 = 0; i13 < length; i13++) {
            float f11 = fArrSj2[i13];
            int iBinarySearch = Arrays.binarySearch(fArrSj, f11);
            int iBinarySearch2 = Arrays.binarySearch(fArr, f11);
            if (iBinarySearch < 0 || iBinarySearch2 > 0) {
                if (iBinarySearch2 < 0) {
                    iBinarySearch2 = -(iBinarySearch2 + 1);
                }
                iArr[i13] = Sj(f11, fArr2[iBinarySearch2], fArrSj, iArrSP);
            } else {
                iArr[i13] = Sj(f11, iArrSP[iBinarySearch], fArr, fArr2);
            }
        }
        return new com.bytedance.adsdk.sP.TKC.sP.EjP(fArrSj2, iArr);
    }

    protected static float[] Sj(float[] fArr, float[] fArr2) {
        if (fArr.length == 0) {
            return fArr2;
        }
        if (fArr2.length == 0) {
            return fArr;
        }
        int length = fArr.length + fArr2.length;
        float[] fArr3 = new float[length];
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        for (int i14 = 0; i14 < length; i14++) {
            float f11 = i12 < fArr.length ? fArr[i12] : Float.NaN;
            float f12 = i13 < fArr2.length ? fArr2[i13] : Float.NaN;
            if (Float.isNaN(f12) || f11 < f12) {
                fArr3[i14] = f11;
                i12++;
            } else if (Float.isNaN(f11) || f12 < f11) {
                fArr3[i14] = f12;
                i13++;
            } else {
                fArr3[i14] = f11;
                i12++;
                i13++;
                i11++;
            }
        }
        return i11 == 0 ? fArr3 : Arrays.copyOf(fArr3, length - i11);
    }

    int Sj(float f11, float f12, float[] fArr, int[] iArr) {
        if (iArr.length < 2 || f11 == fArr[0]) {
            return iArr[0];
        }
        for (int i11 = 1; i11 < fArr.length; i11++) {
            float f13 = fArr[i11];
            if (f13 >= f11 || i11 == fArr.length - 1) {
                int i12 = i11 - 1;
                float f14 = fArr[i12];
                float f15 = (f11 - f14) / (f13 - f14);
                int i13 = iArr[i11];
                int i14 = iArr[i12];
                return Color.argb((int) (f12 * 255.0f), com.bytedance.adsdk.sP.vS.sP.Sj(f15, Color.red(i14), Color.red(i13)), com.bytedance.adsdk.sP.vS.sP.Sj(f15, Color.green(i14), Color.green(i13)), com.bytedance.adsdk.sP.vS.sP.Sj(f15, Color.blue(i14), Color.blue(i13)));
            }
        }
        throw new IllegalArgumentException("Unreachable code.");
    }

    /* JADX WARN: Code duplicated, block: B:38:0x00c9  */
    @Override // com.bytedance.adsdk.sP.HiB.Ei
    /* JADX INFO: renamed from: Sj, reason: merged with bridge method [inline-methods] */
    public com.bytedance.adsdk.sP.TKC.sP.EjP sP(JsonReader jsonReader, float f11) throws IOException {
        ArrayList arrayList = new ArrayList();
        boolean z10 = jsonReader.peek() == JsonToken.BEGIN_ARRAY;
        if (z10) {
            jsonReader.beginArray();
        }
        while (jsonReader.hasNext()) {
            arrayList.add(Float.valueOf((float) jsonReader.nextDouble()));
        }
        if (arrayList.size() == 4 && arrayList.get(0).floatValue() == 1.0f) {
            arrayList.set(0, Float.valueOf(0.0f));
            arrayList.add(Float.valueOf(1.0f));
            arrayList.add(arrayList.get(1));
            arrayList.add(arrayList.get(2));
            arrayList.add(arrayList.get(3));
            this.Sj = 2;
        }
        if (z10) {
            jsonReader.endArray();
        }
        if (this.Sj == -1) {
            this.Sj = arrayList.size() / 4;
        }
        int i11 = this.Sj;
        float[] fArr = new float[i11];
        int[] iArr = new int[i11];
        int i12 = 0;
        int i13 = 0;
        for (int i14 = 0; i14 < this.Sj * 4; i14++) {
            int i15 = i14 / 4;
            double dFloatValue = arrayList.get(i14).floatValue();
            int i16 = i14 % 4;
            if (i16 != 0) {
                if (i16 == 1) {
                    i12 = (int) (dFloatValue * 255.0d);
                } else if (i16 == 2) {
                    i13 = (int) (dFloatValue * 255.0d);
                } else if (i16 == 3) {
                    iArr[i15] = Color.argb(255, i12, i13, (int) (dFloatValue * 255.0d));
                }
            } else if (i15 > 0) {
                float f12 = (float) dFloatValue;
                if (fArr[i15 - 1] >= f12) {
                    fArr[i15] = f12 + 0.01f;
                } else {
                    fArr[i15] = (float) dFloatValue;
                }
            } else {
                fArr[i15] = (float) dFloatValue;
            }
        }
        return Sj(new com.bytedance.adsdk.sP.TKC.sP.EjP(fArr, iArr), arrayList);
    }
}
