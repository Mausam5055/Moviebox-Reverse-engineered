package com.mbridge.msdk.dycreator.baseview;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.ScaleAnimation;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.same.image.b;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;

/* JADX INFO: loaded from: classes5.dex */
public class MBSplashClickView extends MBRelativeLayout {
    public final int TYPE_SPLASH_BTN_CLICK;
    public final int TYPE_SPLASH_BTN_GO;
    public final int TYPE_SPLASH_BTN_OPEN;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f34503f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f34504g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final String f34505h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final String f34506i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final String f34507j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final String f34508k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final String f34509l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final String f34510m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final String f34511n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final String f34512o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final String f34513p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final String f34514q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private String f34515r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f34516s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private ImageView f34517t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private ImageView f34518u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final RectF f34519v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final Paint f34520w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final Paint f34521x;

    public MBSplashClickView(Context context) {
        super(context);
        this.f34503f = "浏览第三方应用";
        this.f34504g = "View";
        this.f34505h = "打开第三方应用";
        this.f34506i = "Open";
        this.f34507j = "下载第三方应用";
        this.f34508k = "Install";
        this.f34509l = "mbridge_splash_btn_arrow_right";
        this.f34510m = "mbridge_splash_btn_circle";
        this.f34511n = "mbridge_splash_btn_finger";
        this.f34512o = "mbridge_splash_btn_go";
        this.f34513p = "mbridge_splash_btn_light";
        this.f34514q = "mbridge_expand_data";
        this.TYPE_SPLASH_BTN_OPEN = 1;
        this.TYPE_SPLASH_BTN_GO = 2;
        this.TYPE_SPLASH_BTN_CLICK = 3;
        this.f34519v = new RectF();
        this.f34520w = new Paint();
        this.f34521x = new Paint();
        a();
    }

    public MBSplashClickView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f34503f = "浏览第三方应用";
        this.f34504g = "View";
        this.f34505h = "打开第三方应用";
        this.f34506i = "Open";
        this.f34507j = "下载第三方应用";
        this.f34508k = "Install";
        this.f34509l = "mbridge_splash_btn_arrow_right";
        this.f34510m = "mbridge_splash_btn_circle";
        this.f34511n = "mbridge_splash_btn_finger";
        this.f34512o = "mbridge_splash_btn_go";
        this.f34513p = "mbridge_splash_btn_light";
        this.f34514q = "mbridge_expand_data";
        this.TYPE_SPLASH_BTN_OPEN = 1;
        this.TYPE_SPLASH_BTN_GO = 2;
        this.TYPE_SPLASH_BTN_CLICK = 3;
        this.f34519v = new RectF();
        this.f34520w = new Paint();
        this.f34521x = new Paint();
        a();
    }

    public MBSplashClickView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f34503f = "浏览第三方应用";
        this.f34504g = "View";
        this.f34505h = "打开第三方应用";
        this.f34506i = "Open";
        this.f34507j = "下载第三方应用";
        this.f34508k = "Install";
        this.f34509l = "mbridge_splash_btn_arrow_right";
        this.f34510m = "mbridge_splash_btn_circle";
        this.f34511n = "mbridge_splash_btn_finger";
        this.f34512o = "mbridge_splash_btn_go";
        this.f34513p = "mbridge_splash_btn_light";
        this.f34514q = "mbridge_expand_data";
        this.TYPE_SPLASH_BTN_OPEN = 1;
        this.TYPE_SPLASH_BTN_GO = 2;
        this.TYPE_SPLASH_BTN_CLICK = 3;
        this.f34519v = new RectF();
        this.f34520w = new Paint();
        this.f34521x = new Paint();
        a();
    }

    private View a(ViewGroup viewGroup, String str) {
        if (viewGroup != null) {
            try {
                if (!TextUtils.isEmpty(str)) {
                    if (viewGroup.getId() == str.hashCode()) {
                        return viewGroup;
                    }
                    int childCount = viewGroup.getChildCount();
                    for (int i11 = 0; i11 < childCount; i11++) {
                        View childAt = viewGroup.getChildAt(i11);
                        if (childAt.getId() == str.hashCode()) {
                            return childAt;
                        }
                        if (childAt instanceof ViewGroup) {
                            a((ViewGroup) childAt, str);
                        }
                    }
                    return null;
                }
            } catch (Exception e11) {
                o0.b("MBSplashClickView", e11.getMessage());
            }
        }
        return null;
    }

    private void a() {
        this.f34520w.setAntiAlias(true);
        this.f34520w.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        this.f34521x.setAntiAlias(true);
        this.f34521x.setColor(-1);
    }

    private void a(final ImageView imageView, String str, final int i11) {
        if (imageView == null) {
            return;
        }
        try {
            if (TextUtils.isEmpty(str)) {
                imageView.setBackgroundResource(i11);
            }
            b.a(c.m().d()).a(str, new com.mbridge.msdk.foundation.same.image.c() { // from class: com.mbridge.msdk.dycreator.baseview.MBSplashClickView.4
                @Override // com.mbridge.msdk.foundation.same.image.c
                public void onFailedLoad(String str2, String str3) {
                    ImageView imageView2 = imageView;
                    if (imageView2 != null) {
                        imageView2.setBackgroundResource(i11);
                    }
                }

                @Override // com.mbridge.msdk.foundation.same.image.c
                public void onSuccessLoad(Bitmap bitmap, String str2) {
                    if (imageView != null) {
                        if (bitmap == null || bitmap.isRecycled()) {
                            imageView.setBackgroundResource(i11);
                            return;
                        }
                        if (MBSplashClickView.this.f34518u != null) {
                            MBSplashClickView mBSplashClickView = MBSplashClickView.this;
                            mBSplashClickView.removeView(mBSplashClickView.f34518u);
                        }
                        imageView.setImageBitmap(bitmap);
                    }
                }
            });
        } catch (Exception e11) {
            o0.a("MBSplashClickView", e11.getMessage());
            imageView.setBackgroundResource(i11);
        }
    }

    private boolean a(String str) {
        str.hashCode();
        switch (str) {
            case "Install":
            case "下载第三方应用":
                this.f34516s = 3;
                break;
            case "Open":
            case "打开第三方应用":
                this.f34516s = 1;
                break;
            case "View":
            case "浏览第三方应用":
                this.f34516s = 2;
                break;
            default:
                return false;
        }
        return true;
    }

    private void b() {
        RelativeLayout.LayoutParams layoutParams;
        int identifier;
        View viewA;
        if (!a(this.f34515r)) {
            boolean zContains = getContext().getResources().getConfiguration().locale.getLanguage().contains("zh");
            if (TextUtils.isEmpty(this.f34515r)) {
                this.f34515r = zContains ? "浏览第三方应用" : "View";
            }
            this.f34516s = 2;
        }
        ViewGroup viewGroup = (ViewGroup) getParent();
        String string = (viewGroup == null || (viewA = a(viewGroup, "mbridge_expand_data")) == null || !(viewA instanceof TextView)) ? "" : ((TextView) viewA).getText().toString();
        setBgDrawable(this.f34516s);
        TextView textView = new TextView(getContext());
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams2.addRule(15);
        textView.setLayoutParams(layoutParams2);
        textView.setGravity(17);
        textView.setTextSize(20.0f);
        textView.setTextColor(-1);
        textView.setText(this.f34515r);
        this.f34517t = new ImageView(getContext());
        int i11 = this.f34516s;
        if (i11 == 2) {
            identifier = getResources().getIdentifier("mbridge_splash_btn_go", "drawable", c.m().h());
            layoutParams = new RelativeLayout.LayoutParams(t0.a(getContext(), 35.0f), t0.a(getContext(), 35.0f));
            layoutParams.addRule(11);
            layoutParams.addRule(15);
            layoutParams.rightMargin = t0.a(getContext(), 10.0f);
        } else if (i11 == 1) {
            identifier = getResources().getIdentifier("mbridge_splash_btn_light", "drawable", c.m().h());
            layoutParams = new RelativeLayout.LayoutParams(-2, -1);
            layoutParams.leftMargin = 20;
            layoutParams.rightMargin = 20;
            ImageView imageView = new ImageView(getContext());
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -1);
            layoutParams3.addRule(11);
            layoutParams3.addRule(15);
            layoutParams3.rightMargin = t0.a(getContext(), 50.0f);
            imageView.setImageResource(getResources().getIdentifier("mbridge_splash_btn_arrow_right", "drawable", c.m().h()));
            imageView.setScaleType(ImageView.ScaleType.CENTER);
            imageView.setLayoutParams(layoutParams3);
            addView(imageView);
        } else if (i11 == 3) {
            identifier = getResources().getIdentifier("mbridge_splash_btn_finger", "drawable", c.m().h());
            layoutParams = new RelativeLayout.LayoutParams(t0.a(getContext(), 25.0f), t0.a(getContext(), 25.0f));
            layoutParams.addRule(11);
            layoutParams.rightMargin = t0.a(getContext(), 50.0f);
            layoutParams.topMargin = t0.a(getContext(), 18.0f);
            this.f34518u = new ImageView(getContext());
            RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(t0.a(getContext(), 30.0f), t0.a(getContext(), 30.0f));
            layoutParams4.addRule(11);
            layoutParams4.rightMargin = t0.a(getContext(), 50.0f);
            layoutParams4.topMargin = t0.a(getContext(), 5.0f);
            this.f34518u.setLayoutParams(layoutParams4);
            this.f34518u.setImageResource(getResources().getIdentifier("mbridge_splash_btn_circle", "drawable", c.m().h()));
            addView(this.f34518u);
        } else {
            layoutParams = null;
            identifier = 0;
        }
        this.f34517t.setLayoutParams(layoutParams);
        if (TextUtils.isEmpty(string)) {
            this.f34517t.setImageResource(identifier);
        } else {
            a(this.f34517t, string, identifier);
        }
        addView(textView);
        addView(this.f34517t);
        invalidate();
    }

    private void c() {
        ScaleAnimation scaleAnimation = new ScaleAnimation(1.0f, 0.7f, 1.0f, 0.7f, 1, 0.5f, 1, 0.5f);
        scaleAnimation.setDuration(1000L);
        scaleAnimation.setRepeatCount(-1);
        scaleAnimation.setRepeatMode(2);
        final ScaleAnimation scaleAnimation2 = new ScaleAnimation(0.0f, 0.5f, 0.0f, 0.5f, 1, 0.5f, 1, 0.5f);
        scaleAnimation2.setDuration(400L);
        scaleAnimation2.setAnimationListener(new Animation.AnimationListener() { // from class: com.mbridge.msdk.dycreator.baseview.MBSplashClickView.1
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                MBSplashClickView.this.f34518u.setVisibility(4);
                MBSplashClickView.this.f34518u.postDelayed(new Runnable() { // from class: com.mbridge.msdk.dycreator.baseview.MBSplashClickView.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        MBSplashClickView.this.f34518u.startAnimation(scaleAnimation2);
                    }
                }, 1600L);
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
                MBSplashClickView.this.f34518u.setVisibility(0);
            }
        });
        this.f34518u.setVisibility(4);
        this.f34517t.startAnimation(scaleAnimation);
        this.f34518u.postDelayed(new Runnable() { // from class: com.mbridge.msdk.dycreator.baseview.MBSplashClickView.2
            @Override // java.lang.Runnable
            public void run() {
                MBSplashClickView.this.f34518u.startAnimation(scaleAnimation2);
            }
        }, 800L);
    }

    private void d() {
        ScaleAnimation scaleAnimation = new ScaleAnimation(0.8f, 1.0f, 0.8f, 1.0f, 1, 0.5f, 1, 0.5f);
        scaleAnimation.setDuration(500L);
        scaleAnimation.setRepeatCount(-1);
        scaleAnimation.setRepeatMode(2);
        this.f34517t.startAnimation(scaleAnimation);
    }

    private void e() {
        TranslateAnimation translateAnimation = new TranslateAnimation(0, -100.0f, 0, 1000.0f, 0, 0.0f, 0, 0.0f);
        translateAnimation.setDuration(1000L);
        translateAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.mbridge.msdk.dycreator.baseview.MBSplashClickView.3
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(final Animation animation) {
                MBSplashClickView.this.f34517t.setVisibility(4);
                MBSplashClickView.this.f34517t.postDelayed(new Runnable() { // from class: com.mbridge.msdk.dycreator.baseview.MBSplashClickView.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        MBSplashClickView.this.f34517t.startAnimation(animation);
                    }
                }, 2000L);
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
                MBSplashClickView.this.f34517t.setVisibility(0);
            }
        });
        this.f34517t.startAnimation(translateAnimation);
    }

    private void setBgDrawable(int i11) {
        int color = Color.parseColor("#666666");
        int color2 = Color.parseColor("#8FC31F");
        int color3 = Color.parseColor("#000000");
        GradientDrawable gradientDrawable = new GradientDrawable();
        if (i11 == 2) {
            gradientDrawable.setColor(color2);
        } else {
            gradientDrawable.setColor(color3);
            gradientDrawable.setStroke(2, color);
        }
        gradientDrawable.setCornerRadius(200);
        setBackground(gradientDrawable);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        canvas.saveLayer(this.f34519v, this.f34521x, 31);
        canvas.drawRoundRect(this.f34519v, 200.0f, 200.0f, this.f34521x);
        canvas.saveLayer(this.f34519v, this.f34520w, 31);
        super.draw(canvas);
        canvas.restore();
    }

    public void initView(String str) {
        this.f34515r = str;
        b();
    }

    @Override // com.mbridge.msdk.dycreator.baseview.MBRelativeLayout, android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        int i11 = this.f34516s;
        if (i11 == 2) {
            d();
        } else if (i11 == 1) {
            e();
        } else if (i11 == 3) {
            c();
        }
    }

    @Override // com.mbridge.msdk.dycreator.baseview.MBRelativeLayout, android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i11, int i12, int i13, int i14) {
        super.onLayout(z10, i11, i12, i13, i14);
        this.f34519v.set(0.0f, 0.0f, getWidth(), getHeight());
    }
}
