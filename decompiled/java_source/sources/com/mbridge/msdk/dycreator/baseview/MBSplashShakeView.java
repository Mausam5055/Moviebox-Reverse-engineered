package com.mbridge.msdk.dycreator.baseview;

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
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.tools.t0;

/* JADX INFO: loaded from: classes5.dex */
public class MBSplashShakeView extends MBLinearLayout {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f34533f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f34534g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final String f34535h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final String f34536i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final String f34537j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final String f34538k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private ImageView f34539l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private Animation f34540m;

    public MBSplashShakeView(Context context) {
        super(context);
        this.f34533f = "浏览第三方应用";
        this.f34534g = "View";
        this.f34535h = "打开第三方应用";
        this.f34536i = "Open";
        this.f34537j = "下载第三方应用";
        this.f34538k = "Install";
    }

    public MBSplashShakeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f34533f = "浏览第三方应用";
        this.f34534g = "View";
        this.f34535h = "打开第三方应用";
        this.f34536i = "Open";
        this.f34537j = "下载第三方应用";
        this.f34538k = "Install";
    }

    public MBSplashShakeView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f34533f = "浏览第三方应用";
        this.f34534g = "View";
        this.f34535h = "打开第三方应用";
        this.f34536i = "Open";
        this.f34537j = "下载第三方应用";
        this.f34538k = "Install";
    }

    private String a(String str) {
        if (!TextUtils.isEmpty(str)) {
            str.hashCode();
            switch (str) {
                case "Install":
                case "Open":
                case "View":
                case "下载第三方应用":
                case "打开第三方应用":
                case "浏览第三方应用":
                    return str;
            }
        }
        return getContext().getResources().getConfiguration().locale.getLanguage().contains("zh") ? "浏览第三方应用" : "View";
    }

    private void a() {
        RotateAnimation rotateAnimation = new RotateAnimation(-10.0f, 10.0f, 1, 0.5f, 1, 0.5f);
        this.f34540m = rotateAnimation;
        rotateAnimation.setDuration(100L);
        this.f34540m.setRepeatMode(2);
        this.f34540m.setRepeatCount(-1);
        this.f34539l.startAnimation(this.f34540m);
    }

    private void setBgDrawable(View view) {
        int color = Color.parseColor("#60000000");
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(color);
        gradientDrawable.setCornerRadius(200);
        view.setBackground(gradientDrawable);
    }

    public void initView(String str) {
        setOrientation(1);
        setGravity(1);
        View imageView = new ImageView(getContext());
        imageView.setLayoutParams(new LinearLayout.LayoutParams(t0.a(getContext(), 80.0f), t0.a(getContext(), 80.0f)));
        setBgDrawable(imageView);
        this.f34539l = new ImageView(getContext());
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(t0.a(getContext(), 40.0f), t0.a(getContext(), 40.0f));
        layoutParams.gravity = 17;
        this.f34539l.setLayoutParams(layoutParams);
        this.f34539l.setImageResource(getResources().getIdentifier("mbridge_cm_btn_shake", "drawable", c.m().h()));
        FrameLayout frameLayout = new FrameLayout(getContext());
        frameLayout.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        frameLayout.addView(imageView);
        frameLayout.addView(this.f34539l);
        TextView textView = new TextView(getContext());
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.topMargin = t0.a(getContext(), 10.0f);
        textView.setLayoutParams(layoutParams2);
        textView.setGravity(17);
        textView.setText("Shake your phone");
        textView.setTextSize(16.0f);
        textView.setTextColor(-1);
        String strA = a(str);
        TextView textView2 = new TextView(getContext());
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams3.topMargin = t0.a(getContext(), 5.0f);
        textView2.setLayoutParams(layoutParams3);
        textView2.setGravity(17);
        textView2.setText(strA);
        textView2.setTextSize(12.0f);
        textView2.setTextColor(-1);
        addView(frameLayout);
        addView(textView);
        addView(textView2);
    }

    @Override // com.mbridge.msdk.dycreator.baseview.MBLinearLayout, android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f34539l != null) {
            a();
        }
    }
}
