package com.cloud.tmc.miniapp.widget.photoview;

import android.widget.ImageView;

/* JADX INFO: loaded from: classes3.dex */
public class OooOo00 {

    public static /* synthetic */ class OooO00o {
        public static final /* synthetic */ int[] OooO00o;

        static {
            int[] iArr = new int[ImageView.ScaleType.values().length];
            OooO00o = iArr;
            try {
                iArr[ImageView.ScaleType.MATRIX.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    public static void OooO00o(float f11, float f12, float f13) {
        if (f11 >= f12) {
            throw new IllegalArgumentException("Minimum zoom has to be less than Medium zoom. Call setMinimumZoom() with a more appropriate value");
        }
        if (f12 >= f13) {
            throw new IllegalArgumentException("Medium zoom has to be less than Maximum zoom. Call setMaximumZoom() with a more appropriate value");
        }
    }
}
