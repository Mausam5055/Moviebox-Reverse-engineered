package com.mbridge.msdk.dycreator.baseview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.tools.g0;
import com.mbridge.msdk.foundation.tools.o0;

/* JADX INFO: loaded from: classes5.dex */
public class MBStarLevelLayoutView extends MBLinearLayout {
    public MBStarLevelLayoutView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void setRating(int i11) {
        try {
            removeAllViews();
            if (i11 == 0) {
                i11 = 5;
            }
            for (int i12 = 0; i12 < 5; i12++) {
                ImageView imageView = new ImageView(getContext());
                ViewGroup.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                if (i12 < i11) {
                    imageView.setImageResource(g0.a(c.m().d(), "mbridge_download_message_dialog_star_sel", "drawable"));
                } else {
                    imageView.setImageResource(g0.a(c.m().d(), "mbridge_download_message_dilaog_star_nor", "drawable"));
                }
                addView(imageView, layoutParams);
            }
        } catch (Exception e11) {
            o0.b("MBStarLevelLayoutView", e11.getMessage());
        }
    }
}
