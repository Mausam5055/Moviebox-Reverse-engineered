package u4;

import android.graphics.Color;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class o implements n0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f76661a;

    public o(int i11) {
        this.f76661a = i11;
    }

    private r4.d b(r4.d dVar, List list) {
        int i11 = this.f76661a * 4;
        if (list.size() <= i11) {
            return dVar;
        }
        float[] fArrE = dVar.e();
        int[] iArrD = dVar.d();
        int size = (list.size() - i11) / 2;
        float[] fArr = new float[size];
        float[] fArr2 = new float[size];
        int i12 = 0;
        while (i11 < list.size()) {
            if (i11 % 2 == 0) {
                fArr[i12] = ((Float) list.get(i11)).floatValue();
            } else {
                fArr2[i12] = ((Float) list.get(i11)).floatValue();
                i12++;
            }
            i11++;
        }
        float[] fArrE2 = e(dVar.e(), fArr);
        int length = fArrE2.length;
        int[] iArr = new int[length];
        for (int i13 = 0; i13 < length; i13++) {
            float f11 = fArrE2[i13];
            int iBinarySearch = Arrays.binarySearch(fArrE, f11);
            int iBinarySearch2 = Arrays.binarySearch(fArr, f11);
            if (iBinarySearch < 0 || iBinarySearch2 > 0) {
                if (iBinarySearch2 < 0) {
                    iBinarySearch2 = -(iBinarySearch2 + 1);
                }
                iArr[i13] = c(f11, fArr2[iBinarySearch2], fArrE, iArrD);
            } else {
                iArr[i13] = d(f11, iArrD[iBinarySearch], fArr, fArr2);
            }
        }
        return new r4.d(fArrE2, iArr);
    }

    private int d(float f11, int i11, float[] fArr, float[] fArr2) {
        float fI;
        if (fArr2.length < 2 || f11 <= fArr[0]) {
            return Color.argb((int) (fArr2[0] * 255.0f), Color.red(i11), Color.green(i11), Color.blue(i11));
        }
        for (int i12 = 1; i12 < fArr.length; i12++) {
            float f12 = fArr[i12];
            if (f12 >= f11 || i12 == fArr.length - 1) {
                if (f12 <= f11) {
                    fI = fArr2[i12];
                } else {
                    int i13 = i12 - 1;
                    float f13 = fArr[i13];
                    fI = v4.k.i(fArr2[i13], fArr2[i12], (f11 - f13) / (f12 - f13));
                }
                return Color.argb((int) (fI * 255.0f), Color.red(i11), Color.green(i11), Color.blue(i11));
            }
        }
        throw new IllegalArgumentException("Unreachable code.");
    }

    protected static float[] e(float[] fArr, float[] fArr2) {
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

    int c(float f11, float f12, float[] fArr, int[] iArr) {
        if (iArr.length < 2 || f11 == fArr[0]) {
            return iArr[0];
        }
        for (int i11 = 1; i11 < fArr.length; i11++) {
            float f13 = fArr[i11];
            if (f13 >= f11 || i11 == fArr.length - 1) {
                if (i11 == fArr.length - 1 && f11 >= f13) {
                    return Color.argb((int) (f12 * 255.0f), Color.red(iArr[i11]), Color.green(iArr[i11]), Color.blue(iArr[i11]));
                }
                int i12 = i11 - 1;
                float f14 = fArr[i12];
                int iC = v4.d.c((f11 - f14) / (f13 - f14), iArr[i12], iArr[i11]);
                return Color.argb((int) (f12 * 255.0f), Color.red(iC), Color.green(iC), Color.blue(iC));
            }
        }
        throw new IllegalArgumentException("Unreachable code.");
    }

    /* JADX WARN: Code duplicated, block: B:38:0x00cf  */
    @Override // u4.n0
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public r4.d a(JsonReader jsonReader, float f11) {
        ArrayList arrayList = new ArrayList();
        boolean z10 = jsonReader.t() == JsonReader.Token.BEGIN_ARRAY;
        if (z10) {
            jsonReader.d();
        }
        while (jsonReader.m()) {
            arrayList.add(Float.valueOf((float) jsonReader.o()));
        }
        if (arrayList.size() == 4 && ((Float) arrayList.get(0)).floatValue() == 1.0f) {
            arrayList.set(0, Float.valueOf(0.0f));
            arrayList.add(Float.valueOf(1.0f));
            arrayList.add((Float) arrayList.get(1));
            arrayList.add((Float) arrayList.get(2));
            arrayList.add((Float) arrayList.get(3));
            this.f76661a = 2;
        }
        if (z10) {
            jsonReader.k();
        }
        if (this.f76661a == -1) {
            this.f76661a = arrayList.size() / 4;
        }
        int i11 = this.f76661a;
        float[] fArr = new float[i11];
        int[] iArr = new int[i11];
        int i12 = 0;
        int i13 = 0;
        for (int i14 = 0; i14 < this.f76661a * 4; i14++) {
            int i15 = i14 / 4;
            double dFloatValue = ((Float) arrayList.get(i14)).floatValue();
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
        return b(new r4.d(fArr, iArr), arrayList);
    }
}
