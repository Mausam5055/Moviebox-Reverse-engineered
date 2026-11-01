package com.cloud.tmc.miniutils.util;

import android.graphics.Color;
import androidx.annotation.NonNull;
import androidx.core.view.InputDeviceCompat;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes3.dex */
public final class ColorUtils {
    private ColorUtils() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    public static int getColor(int i11) {
        return androidx.core.content.b.getColor(Utils.getApp(), i11);
    }

    public static int getRandomColor() {
        return getRandomColor(true);
    }

    public static int getRandomColor(boolean z10) {
        return (z10 ? ((int) (Math.random() * 256.0d)) << 24 : ViewCompat.MEASURED_STATE_MASK) | ((int) (Math.random() * 1.6777216E7d));
    }

    public static String int2ArgbString(int i11) {
        String hexString = Integer.toHexString(i11);
        while (hexString.length() < 6) {
            hexString = "0" + hexString;
        }
        while (hexString.length() < 8) {
            hexString = "f" + hexString;
        }
        return com.transsion.gslb.Utils.SEPARATOR + hexString;
    }

    public static String int2RgbString(int i11) {
        String hexString = Integer.toHexString(i11 & 16777215);
        while (hexString.length() < 6) {
            hexString = "0" + hexString;
        }
        return com.transsion.gslb.Utils.SEPARATOR + hexString;
    }

    public static boolean isLightColor(int i11) {
        return ((((double) Color.red(i11)) * 0.299d) + (((double) Color.green(i11)) * 0.587d)) + (((double) Color.blue(i11)) * 0.114d) >= 127.5d;
    }

    public static int setAlphaComponent(int i11, float f11) {
        return (i11 & 16777215) | (((int) ((f11 * 255.0f) + 0.5f)) << 24);
    }

    public static int setAlphaComponent(int i11, int i12) {
        return (i11 & 16777215) | (i12 << 24);
    }

    public static int setBlueComponent(int i11, float f11) {
        return (i11 & InputDeviceCompat.SOURCE_ANY) | ((int) ((f11 * 255.0f) + 0.5f));
    }

    public static int setBlueComponent(int i11, int i12) {
        return (i11 & InputDeviceCompat.SOURCE_ANY) | i12;
    }

    public static int setGreenComponent(int i11, float f11) {
        return (i11 & (-65281)) | (((int) ((f11 * 255.0f) + 0.5f)) << 8);
    }

    public static int setGreenComponent(int i11, int i12) {
        return (i11 & (-65281)) | (i12 << 8);
    }

    public static int setRedComponent(int i11, float f11) {
        return (i11 & (-16711681)) | (((int) ((f11 * 255.0f) + 0.5f)) << 16);
    }

    public static int setRedComponent(int i11, int i12) {
        return (i11 & (-16711681)) | (i12 << 16);
    }

    public static int string2Int(@NonNull String str) {
        return Color.parseColor(str);
    }
}
