package com.mbridge.msdk.nativex.view.mbfullview;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.mbridge.msdk.foundation.tools.g0;
import com.mbridge.msdk.foundation.tools.t0;

/* JADX INFO: loaded from: classes5.dex */
public class StarLevelLayoutView extends LinearLayout {
    public StarLevelLayoutView(Context context) {
        super(context);
    }

    public StarLevelLayoutView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @SuppressLint({"NewApi"})
    public StarLevelLayoutView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
    }

    public void setRating(int i11) {
        removeAllViews();
        if (i11 == 0) {
            i11 = 5;
        }
        for (int i12 = 0; i12 < 5; i12++) {
            View imageView = new ImageView(getContext());
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            if (i12 < i11) {
                imageView.setBackgroundResource(g0.a(getContext(), "mbridge_demo_star_sel", "drawable"));
            } else {
                imageView.setBackgroundResource(g0.a(getContext(), "mbridge_demo_star_nor", "drawable"));
            }
            layoutParams.leftMargin = t0.a(getContext(), 7.0f);
            addView(imageView, layoutParams);
        }
    }
}
