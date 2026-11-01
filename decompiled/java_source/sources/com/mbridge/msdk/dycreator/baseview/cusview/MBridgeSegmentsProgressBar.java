package com.mbridge.msdk.dycreator.baseview.cusview;

import android.R;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ScaleDrawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.mbridge.msdk.foundation.tools.g0;
import com.mbridge.msdk.foundation.tools.o0;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class MBridgeSegmentsProgressBar extends LinearLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f34629a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f34630b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f34631c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f34632d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f34633e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f34634f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f34635g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f34636h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private List<ProgressBar> f34637i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private TextView f34638j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private String f34639k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f34640l;

    public MBridgeSegmentsProgressBar(Context context) {
        super(context);
        this.f34629a = "MBridgeSegmentsProgressBar";
        this.f34631c = 1;
        this.f34632d = 20;
        this.f34633e = 10;
        this.f34634f = 1;
        this.f34635g = -1711276033;
        this.f34636h = -1;
        this.f34637i = new ArrayList();
        this.f34640l = false;
    }

    public MBridgeSegmentsProgressBar(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f34629a = "MBridgeSegmentsProgressBar";
        this.f34631c = 1;
        this.f34632d = 20;
        this.f34633e = 10;
        this.f34634f = 1;
        this.f34635g = -1711276033;
        this.f34636h = -1;
        this.f34637i = new ArrayList();
        this.f34640l = false;
    }

    public MBridgeSegmentsProgressBar(Context context, @Nullable AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f34629a = "MBridgeSegmentsProgressBar";
        this.f34631c = 1;
        this.f34632d = 20;
        this.f34633e = 10;
        this.f34634f = 1;
        this.f34635g = -1711276033;
        this.f34636h = -1;
        this.f34637i = new ArrayList();
        this.f34640l = false;
    }

    public MBridgeSegmentsProgressBar(Context context, @Nullable AttributeSet attributeSet, int i11, int i12) {
        super(context, attributeSet, i11, i12);
        this.f34629a = "MBridgeSegmentsProgressBar";
        this.f34631c = 1;
        this.f34632d = 20;
        this.f34633e = 10;
        this.f34634f = 1;
        this.f34635g = -1711276033;
        this.f34636h = -1;
        this.f34637i = new ArrayList();
        this.f34640l = false;
    }

    private StringBuilder a(int i11) {
        StringBuilder sb2 = new StringBuilder();
        try {
            sb2.append(String.format(this.f34639k, Integer.valueOf(i11), Integer.valueOf(this.f34630b)));
        } catch (Throwable th2) {
            sb2.append(this.f34630b);
            sb2.append("videos, the");
            sb2.append(i11);
            sb2.append(" is playing.");
            o0.b("MBridgeSegmentsProgressBar", th2.getMessage());
        }
        return sb2;
    }

    private void a() {
        Drawable drawable;
        try {
            this.f34640l = getContext().getResources().getConfiguration().locale.getLanguage().contains("zh");
        } catch (Throwable th2) {
            o0.b("MBridgeSegmentsProgressBar", th2.getMessage());
        }
        try {
            if (this.f34631c == 1) {
                setOrientation(1);
                if (TextUtils.isEmpty(this.f34639k)) {
                    this.f34639k = this.f34640l ? "正在播放第%s个，共%s个视频" : "The %s is playing, %s videos.";
                }
            }
            if (this.f34631c == 2) {
                setOrientation(0);
                if (TextUtils.isEmpty(this.f34639k)) {
                    this.f34639k = this.f34640l ? "广告 %s/%s" : "ADS %s/%s";
                }
            }
            this.f34637i.clear();
            removeAllViews();
            setBackground(getBackgroundDrawable());
            TextView textView = new TextView(getContext());
            this.f34638j = textView;
            textView.setTextColor(-1);
            this.f34638j.setTextSize(12.0f);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            this.f34638j.setLayoutParams(layoutParams);
            if (this.f34631c == 1) {
                layoutParams.gravity = 5;
                TextView textView2 = this.f34638j;
                int i11 = this.f34632d;
                textView2.setPadding(i11 / 2, 15, i11 / 2, 5);
            }
            if (this.f34631c == 2) {
                this.f34638j.setGravity(16);
                TextView textView3 = this.f34638j;
                int i12 = this.f34632d;
                textView3.setPadding(i12 / 2, 0, i12 / 2, 0);
            }
            try {
                int iA = g0.a(getContext(), "mbridge_reward_video_icon", "drawable");
                if (g0.a(iA) && (drawable = getContext().getResources().getDrawable(iA)) != null) {
                    drawable.setBounds(0, 0, drawable.getMinimumWidth(), drawable.getMinimumHeight());
                    this.f34638j.setCompoundDrawables(drawable, null, null, null);
                    this.f34638j.setCompoundDrawablePadding(5);
                }
            } catch (Throwable th3) {
                o0.b("MBridgeSegmentsProgressBar", th3.getMessage());
            }
            this.f34638j.setText(a(this.f34634f));
            LinearLayout linearLayout = new LinearLayout(getContext());
            linearLayout.setOrientation(0);
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, 25);
            linearLayout.setLayoutParams(layoutParams2);
            for (int i13 = 0; i13 < this.f34630b; i13++) {
                ProgressBar progressBar = new ProgressBar(getContext(), null, R.attr.progressBarStyleHorizontal);
                progressBar.setMax(100);
                progressBar.setProgress(0);
                progressBar.setProgressDrawable(getSegmentLayerDrawable());
                LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(0, 20, 1.0f);
                int i14 = this.f34632d;
                layoutParams3.leftMargin = i14 / 2;
                layoutParams3.rightMargin = i14 / 2;
                progressBar.setLayoutParams(layoutParams3);
                linearLayout.addView(progressBar);
                this.f34637i.add(progressBar);
            }
            int i15 = this.f34631c;
            if (i15 == 1) {
                setPadding(15, 10, 15, 25);
                addView(this.f34638j);
                addView(linearLayout);
            } else {
                if (i15 != 2) {
                    addView(linearLayout);
                    return;
                }
                setPadding(15, 0, 15, 25);
                layoutParams2.gravity = 16;
                layoutParams2.weight = 1.0f;
                addView(linearLayout);
                addView(this.f34638j);
            }
        } catch (Throwable th4) {
            o0.b("MBridgeSegmentsProgressBar", th4.getMessage());
        }
    }

    private GradientDrawable getBackgroundDrawable() {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setGradientType(0);
        gradientDrawable.setOrientation(GradientDrawable.Orientation.TOP_BOTTOM);
        gradientDrawable.setDither(true);
        gradientDrawable.setColors(new int[]{0, 1291845632});
        return gradientDrawable;
    }

    private LayerDrawable getSegmentLayerDrawable() {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setCornerRadius(this.f34633e);
        gradientDrawable.setColor(this.f34635g);
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        gradientDrawable2.setShape(0);
        gradientDrawable2.setCornerRadius(this.f34633e);
        gradientDrawable2.setColor(this.f34636h);
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{gradientDrawable, new ScaleDrawable(gradientDrawable2, 3, 1.0f, -1.0f)});
        layerDrawable.setId(0, R.id.background);
        layerDrawable.setId(1, R.id.progress);
        return layerDrawable;
    }

    public void dismiss() {
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
        alphaAnimation.setDuration(1000L);
        alphaAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.mbridge.msdk.dycreator.baseview.cusview.MBridgeSegmentsProgressBar.1
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                MBridgeSegmentsProgressBar.this.setVisibility(8);
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }
        });
        startAnimation(alphaAnimation);
    }

    public void init(int i11, int i12) {
        this.f34630b = i11;
        this.f34631c = i12;
        a();
    }

    public void init(int i11, int i12, int i13, int i14) {
        this.f34630b = i11;
        this.f34631c = i12;
        this.f34636h = i13;
        this.f34635g = i14;
        a();
    }

    public void init(int i11, int i12, int i13, int i14, int i15, int i16) {
        this.f34630b = i11;
        this.f34631c = i12;
        this.f34636h = i13;
        this.f34635g = i14;
        this.f34632d = i15;
        this.f34633e = i16;
        a();
    }

    public void setIndicatorText(String str) {
        this.f34639k = str;
    }

    public void setProgress(int i11, int i12) {
        try {
            if (this.f34637i.size() == 0) {
                return;
            }
            if (i12 < this.f34637i.size()) {
                this.f34637i.get(i12).setProgress(i11);
            }
            int i13 = i12 + 1;
            if (i13 > this.f34634f) {
                this.f34634f = i13;
                TextView textView = this.f34638j;
                if (textView != null) {
                    textView.setText(a(i13));
                }
            }
        } catch (Throwable th2) {
            o0.b("MBridgeSegmentsProgressBar", th2.getMessage());
        }
    }
}
