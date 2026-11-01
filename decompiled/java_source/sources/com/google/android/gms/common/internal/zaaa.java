package com.google.android.gms.common.internal;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.Button;
import androidx.annotation.Nullable;
import com.google.android.gms.common.util.DeviceProperties;

/* JADX INFO: loaded from: classes3.dex */
public final class zaaa extends Button {
    public zaaa(Context context, @Nullable AttributeSet attributeSet) {
        super(context, null, R.attr.buttonStyle);
    }

    private static final int zab(int i11, int i12, int i13, int i14) {
        if (i11 == 0) {
            return i12;
        }
        if (i11 == 1) {
            return i13;
        }
        if (i11 == 2) {
            return i14;
        }
        throw new IllegalStateException("Unknown color scheme: " + i11);
    }

    public final void zaa(Resources resources, int i11, int i12) {
        setTypeface(Typeface.DEFAULT_BOLD);
        setTextSize(14.0f);
        int i13 = (int) ((resources.getDisplayMetrics().density * 48.0f) + 0.5f);
        setMinHeight(i13);
        setMinWidth(i13);
        int i14 = com.google.android.gms.base.R.drawable.common_google_signin_btn_icon_dark;
        int i15 = com.google.android.gms.base.R.drawable.common_google_signin_btn_icon_light;
        int iZab = zab(i12, i14, i15, i15);
        int i16 = com.google.android.gms.base.R.drawable.common_google_signin_btn_text_dark;
        int i17 = com.google.android.gms.base.R.drawable.common_google_signin_btn_text_light;
        int iZab2 = zab(i12, i16, i17, i17);
        if (i11 == 0 || i11 == 1) {
            iZab = iZab2;
        } else if (i11 != 2) {
            throw new IllegalStateException("Unknown button size: " + i11);
        }
        Drawable drawableR = a1.a.r(resources.getDrawable(iZab));
        a1.a.o(drawableR, resources.getColorStateList(com.google.android.gms.base.R.color.common_google_signin_btn_tint));
        a1.a.p(drawableR, PorterDuff.Mode.SRC_ATOP);
        setBackgroundDrawable(drawableR);
        int i18 = com.google.android.gms.base.R.color.common_google_signin_btn_text_dark;
        int i19 = com.google.android.gms.base.R.color.common_google_signin_btn_text_light;
        setTextColor((ColorStateList) Preconditions.checkNotNull(resources.getColorStateList(zab(i12, i18, i19, i19))));
        if (i11 == 0) {
            setText(resources.getString(com.google.android.gms.base.R.string.common_signin_button_text));
        } else if (i11 == 1) {
            setText(resources.getString(com.google.android.gms.base.R.string.common_signin_button_text_long));
        } else {
            if (i11 != 2) {
                throw new IllegalStateException("Unknown button size: " + i11);
            }
            setText((CharSequence) null);
        }
        setTransformationMethod(null);
        if (DeviceProperties.isWearable(getContext())) {
            setGravity(19);
        }
    }
}
