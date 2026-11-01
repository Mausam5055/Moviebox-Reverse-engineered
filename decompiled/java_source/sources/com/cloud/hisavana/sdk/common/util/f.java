package com.cloud.hisavana.sdk.common.util;

import android.graphics.Bitmap;
import android.util.Log;
import androidx.core.view.MotionEventCompat;
import androidx.core.view.ViewCompat;
import com.cloud.hisavana.sdk.e4;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes3.dex */
public class f {
    public static Bitmap a(Bitmap bitmap, int i11, boolean z10) {
        Bitmap bitmapCopy;
        int i12 = i11;
        if (z10) {
            bitmapCopy = bitmap;
        } else {
            try {
                bitmapCopy = bitmap.copy(bitmap.getConfig(), true);
            } catch (Throwable th2) {
                e4.b().e(Log.getStackTraceString(th2));
                return null;
            }
        }
        if (i12 < 1) {
            return null;
        }
        int width = bitmapCopy.getWidth();
        int height = bitmapCopy.getHeight();
        int i13 = width * height;
        int[] iArr = new int[i13];
        bitmapCopy.getPixels(iArr, 0, width, 0, 0, width, height);
        int i14 = width - 1;
        int i15 = height - 1;
        int i16 = i12 + i12;
        int i17 = i16 + 1;
        int[] iArr2 = new int[i13];
        int[] iArr3 = new int[i13];
        int[] iArr4 = new int[i13];
        int[] iArr5 = new int[Math.max(width, height)];
        int i18 = (i16 + 2) >> 1;
        int i19 = i18 * i18;
        int i20 = i19 * 256;
        int[] iArr6 = new int[i20];
        for (int i21 = 0; i21 < i20; i21++) {
            iArr6[i21] = i21 / i19;
        }
        int[][] iArr7 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, i17, 3);
        int i22 = i12 + 1;
        int i23 = 0;
        int i24 = 0;
        int i25 = 0;
        while (i23 < height) {
            Bitmap bitmap2 = bitmapCopy;
            int i26 = height;
            int i27 = 0;
            int i28 = 0;
            int i29 = 0;
            int i30 = 0;
            int i31 = 0;
            int i32 = 0;
            int i33 = 0;
            int i34 = 0;
            int i35 = -i12;
            int i36 = 0;
            while (i35 <= i12) {
                int i37 = i15;
                int[] iArr8 = iArr5;
                int i38 = iArr[i24 + Math.min(i14, Math.max(i35, 0))];
                int[] iArr9 = iArr7[i35 + i12];
                iArr9[0] = (i38 & 16711680) >> 16;
                iArr9[1] = (i38 & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8;
                iArr9[2] = i38 & 255;
                int iAbs = i22 - Math.abs(i35);
                int i39 = iArr9[0];
                i28 += i39 * iAbs;
                int i40 = iArr9[1];
                i27 += i40 * iAbs;
                int i41 = iArr9[2];
                i36 += iAbs * i41;
                if (i35 > 0) {
                    i32 += i39;
                    i34 += i40;
                    i33 += i41;
                } else {
                    i31 += i39;
                    i30 += i40;
                    i29 += i41;
                }
                i35++;
                i15 = i37;
                iArr5 = iArr8;
            }
            int i42 = i15;
            int[] iArr10 = iArr5;
            int i43 = i12;
            int i44 = i36;
            int i45 = 0;
            while (i45 < width) {
                iArr2[i24] = iArr6[i28];
                iArr3[i24] = iArr6[i27];
                iArr4[i24] = iArr6[i44];
                int i46 = i28 - i31;
                int i47 = i27 - i30;
                int i48 = i44 - i29;
                int[] iArr11 = iArr7[((i43 - i12) + i17) % i17];
                int i49 = i31 - iArr11[0];
                int i50 = i30 - iArr11[1];
                int i51 = i29 - iArr11[2];
                if (i23 == 0) {
                    iArr10[i45] = Math.min(i45 + i12 + 1, i14);
                }
                int i52 = iArr[i25 + iArr10[i45]];
                int i53 = (i52 & 16711680) >> 16;
                iArr11[0] = i53;
                int i54 = (i52 & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8;
                iArr11[1] = i54;
                int i55 = i52 & 255;
                iArr11[2] = i55;
                int i56 = i32 + i53;
                int i57 = i34 + i54;
                int i58 = i33 + i55;
                i28 = i46 + i56;
                i27 = i47 + i57;
                i44 = i48 + i58;
                i43 = (i43 + 1) % i17;
                int[] iArr12 = iArr7[i43 % i17];
                int i59 = iArr12[0];
                i31 = i49 + i59;
                int i60 = iArr12[1];
                i30 = i50 + i60;
                int i61 = iArr12[2];
                i29 = i51 + i61;
                i32 = i56 - i59;
                i34 = i57 - i60;
                i33 = i58 - i61;
                i24++;
                i45++;
                iArr6 = iArr6;
            }
            i25 += width;
            i23++;
            bitmapCopy = bitmap2;
            height = i26;
            i15 = i42;
            iArr5 = iArr10;
        }
        int[] iArr13 = iArr6;
        Bitmap bitmap3 = bitmapCopy;
        int i62 = i15;
        int[] iArr14 = iArr5;
        int i63 = height;
        int i64 = 0;
        while (i64 < width) {
            int i65 = -i12;
            int i66 = i17;
            int[] iArr15 = iArr;
            int i67 = 0;
            int i68 = 0;
            int i69 = 0;
            int i70 = 0;
            int i71 = 0;
            int i72 = 0;
            int i73 = 0;
            int i74 = i65;
            int i75 = i65 * width;
            int i76 = 0;
            int i77 = 0;
            while (i74 <= i12) {
                int i78 = width;
                int iMax = Math.max(0, i75) + i64;
                int[] iArr16 = iArr7[i74 + i12];
                iArr16[0] = iArr2[iMax];
                iArr16[1] = iArr3[iMax];
                iArr16[2] = iArr4[iMax];
                int iAbs2 = i22 - Math.abs(i74);
                i67 += iArr2[iMax] * iAbs2;
                i77 += iArr3[iMax] * iAbs2;
                i76 += iArr4[iMax] * iAbs2;
                if (i74 > 0) {
                    i73 += iArr16[0];
                    i72 += iArr16[1];
                    i71 += iArr16[2];
                } else {
                    i70 += iArr16[0];
                    i69 += iArr16[1];
                    i68 += iArr16[2];
                }
                int i79 = i62;
                if (i74 < i79) {
                    i75 += i78;
                }
                i74++;
                i62 = i79;
                width = i78;
            }
            int i80 = width;
            int i81 = i62;
            int i82 = i12;
            int i83 = i64;
            int i84 = i67;
            int i85 = i63;
            int i86 = i77;
            int i87 = i76;
            int i88 = 0;
            while (i88 < i85) {
                iArr15[i83] = (iArr15[i83] & ViewCompat.MEASURED_STATE_MASK) | (iArr13[i84] << 16) | (iArr13[i86] << 8) | iArr13[i87];
                int i89 = i84 - i70;
                int i90 = i86 - i69;
                int i91 = i87 - i68;
                int[] iArr17 = iArr7[((i82 - i12) + i66) % i66];
                int i92 = i70 - iArr17[0];
                int i93 = i69 - iArr17[1];
                int i94 = i68 - iArr17[2];
                if (i64 == 0) {
                    iArr14[i88] = Math.min(i88 + i22, i81) * i80;
                }
                int i95 = iArr14[i88] + i64;
                int i96 = iArr2[i95];
                iArr17[0] = i96;
                int i97 = iArr3[i95];
                iArr17[1] = i97;
                int i98 = iArr4[i95];
                iArr17[2] = i98;
                int i99 = i73 + i96;
                int i100 = i72 + i97;
                int i101 = i71 + i98;
                i84 = i89 + i99;
                i86 = i90 + i100;
                i87 = i91 + i101;
                i82 = (i82 + 1) % i66;
                int[] iArr18 = iArr7[i82];
                int i102 = iArr18[0];
                i70 = i92 + i102;
                int i103 = iArr18[1];
                i69 = i93 + i103;
                int i104 = iArr18[2];
                i68 = i94 + i104;
                i73 = i99 - i102;
                i72 = i100 - i103;
                i71 = i101 - i104;
                i83 += i80;
                i88++;
                i12 = i11;
            }
            i64++;
            i12 = i11;
            i62 = i81;
            i63 = i85;
            i17 = i66;
            iArr = iArr15;
            width = i80;
        }
        int i105 = width;
        bitmap3.setPixels(iArr, 0, i105, 0, 0, i105, i63);
        return bitmap3;
    }
}
