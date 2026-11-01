package com.mbridge.msdk.shake;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.RotateAnimation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.tools.t0;

/* JADX INFO: loaded from: classes5.dex */
public class MBShakeView extends LinearLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Animation f37356a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ImageView f37357b;

    public MBShakeView(Context context) {
        super(context);
    }

    public MBShakeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public MBShakeView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
    }

    public MBShakeView(Context context, AttributeSet attributeSet, int i11, int i12) {
        super(context, attributeSet, i11, i12);
    }

    private String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return getContext().getResources().getConfiguration().locale.getLanguage().contains("zh") ? "浏览第三方应用" : "Redirect to third party application";
        }
        return str;
    }

    private void a() {
        RotateAnimation rotateAnimation = new RotateAnimation(-10.0f, 10.0f, 1, 0.5f, 1, 0.5f);
        this.f37356a = rotateAnimation;
        rotateAnimation.setDuration(100L);
        this.f37356a.setRepeatMode(2);
        this.f37356a.setRepeatCount(-1);
        this.f37357b.startAnimation(this.f37356a);
    }

    private void setBgDrawable(View view) {
        int color = Color.parseColor("#80000000");
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(color);
        gradientDrawable.setCornerRadius(200);
        view.setBackground(gradientDrawable);
    }

    public void initView(String str) {
        initView(str, false);
    }

    public void initView(String str, boolean z10) {
        setOrientation(1);
        setGravity(1);
        View imageView = new ImageView(getContext());
        imageView.setLayoutParams(new LinearLayout.LayoutParams(t0.a(getContext(), z10 ? 60.0f : 80.0f), t0.a(getContext(), z10 ? 60.0f : 80.0f)));
        setBgDrawable(imageView);
        this.f37357b = new ImageView(getContext());
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(t0.a(getContext(), z10 ? 20.0f : 40.0f), t0.a(getContext(), z10 ? 20.0f : 40.0f));
        layoutParams.gravity = 17;
        this.f37357b.setLayoutParams(layoutParams);
        this.f37357b.setImageResource(getResources().getIdentifier("mbridge_cm_btn_shake", "drawable", c.m().h()));
        FrameLayout frameLayout = new FrameLayout(getContext());
        frameLayout.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        frameLayout.addView(imageView);
        frameLayout.addView(this.f37357b);
        TextView textView = new TextView(getContext());
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.topMargin = t0.a(getContext(), 10.0f);
        textView.setLayoutParams(layoutParams2);
        textView.setGravity(17);
        if (getContext().getResources().getConfiguration().locale.getLanguage().contains("zh")) {
            textView.setText("摇动手机 或 点击图标");
        } else {
            textView.setText("Shake your phone");
        }
        textView.setTextSize(z10 ? 16.0f : 20.0f);
        textView.setTextColor(-1);
        textView.setShadowLayer(8.0f, 3.0f, 3.0f, ViewCompat.MEASURED_STATE_MASK);
        String strA = a(str);
        TextView textView2 = new TextView(getContext());
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams3.topMargin = t0.a(getContext(), 5.0f);
        textView2.setLayoutParams(layoutParams3);
        textView2.setGravity(17);
        textView2.setText(strA);
        textView2.setTextSize(z10 ? 12.0f : 16.0f);
        textView2.setTextColor(-1);
        textView2.setShadowLayer(8.0f, 3.0f, 3.0f, ViewCompat.MEASURED_STATE_MASK);
        addView(frameLayout);
        addView(textView);
        addView(textView2);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        a();
    }
}
