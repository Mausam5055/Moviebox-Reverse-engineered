package com.mbridge.msdk.dycreator.baseview;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import com.mbridge.msdk.foundation.tools.g0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.widget.FeedBackButton;

/* JADX INFO: loaded from: classes5.dex */
public class MBFeedBack extends MBTextView {
    public static String FEEDBACK_BTN_BACKGROUND_COLOR_STR = "#60000000";

    public MBFeedBack(Context context) {
        super(context);
        a();
    }

    public MBFeedBack(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a();
    }

    public MBFeedBack(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        a();
    }

    private void a() {
        setText(g0.a(getContext(), "mbridge_cm_feedback_btn_text", "string"));
        Context context = getContext();
        int iA = t0.a(context, 13.0f);
        setPadding(iA, 0, iA, 0);
        setTextIsSelectable(false);
        setGravity(17);
        setBackgroundColor(Color.parseColor(FEEDBACK_BTN_BACKGROUND_COLOR_STR));
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(t0.a(context, 20.0f));
        gradientDrawable.setColor(Color.parseColor(FeedBackButton.FEEDBACK_BTN_BACKGROUND_COLOR_STR));
        setBackground(gradientDrawable);
        setTextColor(-1);
    }
}
