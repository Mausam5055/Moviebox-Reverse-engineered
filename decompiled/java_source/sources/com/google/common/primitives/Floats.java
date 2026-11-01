package com.google.common.primitives;

import java.util.Comparator;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Floats extends b {

    private enum LexicographicalComparator implements Comparator<float[]> {
        INSTANCE;

        @Override // java.util.Comparator
        public int compare(float[] fArr, float[] fArr2) {
            int iMin = Math.min(fArr.length, fArr2.length);
            for (int i11 = 0; i11 < iMin; i11++) {
                int iCompare = Float.compare(fArr[i11], fArr2[i11]);
                if (iCompare != 0) {
                    return iCompare;
                }
            }
            return fArr.length - fArr2.length;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "Floats.lexicographicalComparator()";
        }
    }

    public static int a(float f11) {
        return Float.valueOf(f11).hashCode();
    }
}
