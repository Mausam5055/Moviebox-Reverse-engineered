package com.mbridge.msdk.videocommon.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.mbridge.msdk.foundation.tools.g0;

/* JADX INFO: loaded from: classes5.dex */
public class StarLevelView extends LinearLayout {
    public StarLevelView(Context context) {
        super(context);
        setOrientation(0);
    }

    public StarLevelView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setOrientation(0);
    }

    @SuppressLint({"NewApi"})
    public StarLevelView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        setOrientation(0);
    }

    public void initScore(double d11) {
        for (int i11 = 0; i11 < ((int) d11); i11++) {
            ImageView imageView = new ImageView(getContext());
            imageView.setImageResource(g0.a(getContext(), "mbridge_video_common_full_star", "drawable"));
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            if (i11 != 0) {
                layoutParams.setMargins(5, 0, 5, 0);
            }
            addView(imageView, layoutParams);
        }
        int i12 = (int) (50.0d - (d11 * 10.0d));
        if (i12 <= 0) {
            return;
        }
        if (i12 > 1 && i12 < 10) {
            if (i12 <= 0 || i12 >= 5) {
                ImageView imageView2 = new ImageView(getContext());
                imageView2.setImageResource(g0.a(getContext(), "mbridge_video_common_full_star", "drawable"));
                LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
                layoutParams2.setMargins(5, 0, 5, 0);
                addView(imageView2, layoutParams2);
            } else {
                ImageView imageView3 = new ImageView(getContext());
                imageView3.setImageResource(g0.a(getContext(), "mbridge_video_common_full_star", "drawable"));
                LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
                layoutParams3.setMargins(5, 0, 5, 0);
                addView(imageView3, layoutParams3);
            }
        }
        int i13 = i12 / 10;
        if (i13 >= 1) {
            int i14 = i12 % (i13 * 10);
            if (i14 > 0 && i14 < 5) {
                ImageView imageView4 = new ImageView(getContext());
                imageView4.setImageResource(g0.a(getContext(), "mbridge_video_common_full_while_star", "drawable"));
                LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-2, -2);
                layoutParams4.setMargins(5, 0, 5, 0);
                addView(imageView4, layoutParams4);
            } else if (i14 >= 5 && i14 <= 9) {
                ImageView imageView5 = new ImageView(getContext());
                imageView5.setImageResource(g0.a(getContext(), "mbridge_video_common_half_star", "drawable"));
                LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-2, -2);
                layoutParams5.setMargins(5, 0, 5, 0);
                addView(imageView5, layoutParams5);
            }
            for (int i15 = 0; i15 < i13; i15++) {
                ImageView imageView6 = new ImageView(getContext());
                imageView6.setImageResource(g0.a(getContext(), "mbridge_video_common_full_while_star", "drawable"));
                LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(-2, -2);
                layoutParams6.setMargins(5, 0, 5, 0);
                addView(imageView6, layoutParams6);
            }
        }
    }
}
