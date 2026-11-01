package com.mbridge.msdk.splash.view.nativeview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.animation.Animation;
import android.view.animation.ScaleAnimation;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.mbridge.msdk.foundation.tools.t0;

/* JADX INFO: loaded from: classes5.dex */
public class MBSplashClickView extends RelativeLayout {
    public final int TYPE_SPLASH_BTN_CLICK;
    public final int TYPE_SPLASH_BTN_GO;
    public final int TYPE_SPLASH_BTN_OPEN;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f37720a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f37721b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f37722c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f37723d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f37724e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f37725f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f37726g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final String f37727h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final String f37728i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final String f37729j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final String f37730k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private String f37731l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f37732m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private ImageView f37733n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private ImageView f37734o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final RectF f37735p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final Paint f37736q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final Paint f37737r;

    class a implements Animation.AnimationListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ScaleAnimation f37738a;

        /* JADX INFO: renamed from: com.mbridge.msdk.splash.view.nativeview.MBSplashClickView$a$a, reason: collision with other inner class name */
        class RunnableC0547a implements Runnable {
            RunnableC0547a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                MBSplashClickView.this.f37734o.startAnimation(a.this.f37738a);
            }
        }

        a(ScaleAnimation scaleAnimation) {
            this.f37738a = scaleAnimation;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            MBSplashClickView.this.f37734o.setVisibility(4);
            MBSplashClickView.this.f37734o.postDelayed(new RunnableC0547a(), 700L);
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
            MBSplashClickView.this.f37734o.setVisibility(0);
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ScaleAnimation f37741a;

        b(ScaleAnimation scaleAnimation) {
            this.f37741a = scaleAnimation;
        }

        @Override // java.lang.Runnable
        public void run() {
            MBSplashClickView.this.f37734o.startAnimation(this.f37741a);
        }
    }

    class c implements Animation.AnimationListener {

        class a implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ Animation f37744a;

            a(Animation animation) {
                this.f37744a = animation;
            }

            @Override // java.lang.Runnable
            public void run() {
                MBSplashClickView.this.f37733n.startAnimation(this.f37744a);
            }
        }

        c() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            MBSplashClickView.this.f37733n.setVisibility(4);
            MBSplashClickView.this.f37733n.postDelayed(new a(animation), 2000L);
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
            MBSplashClickView.this.f37733n.setVisibility(0);
        }
    }

    public MBSplashClickView(Context context) {
        super(context);
        this.f37720a = "浏览第三方应用";
        this.f37721b = "View";
        this.f37722c = "打开第三方应用";
        this.f37723d = "Open";
        this.f37724e = "下载第三方应用";
        this.f37725f = "Install";
        this.f37726g = "mbridge_splash_btn_arrow_right";
        this.f37727h = "mbridge_splash_btn_circle";
        this.f37728i = "mbridge_splash_btn_finger";
        this.f37729j = "mbridge_splash_btn_go";
        this.f37730k = "mbridge_splash_btn_light";
        this.TYPE_SPLASH_BTN_OPEN = 1;
        this.TYPE_SPLASH_BTN_GO = 2;
        this.TYPE_SPLASH_BTN_CLICK = 3;
        this.f37735p = new RectF();
        this.f37736q = new Paint();
        this.f37737r = new Paint();
        a();
    }

    public MBSplashClickView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f37720a = "浏览第三方应用";
        this.f37721b = "View";
        this.f37722c = "打开第三方应用";
        this.f37723d = "Open";
        this.f37724e = "下载第三方应用";
        this.f37725f = "Install";
        this.f37726g = "mbridge_splash_btn_arrow_right";
        this.f37727h = "mbridge_splash_btn_circle";
        this.f37728i = "mbridge_splash_btn_finger";
        this.f37729j = "mbridge_splash_btn_go";
        this.f37730k = "mbridge_splash_btn_light";
        this.TYPE_SPLASH_BTN_OPEN = 1;
        this.TYPE_SPLASH_BTN_GO = 2;
        this.TYPE_SPLASH_BTN_CLICK = 3;
        this.f37735p = new RectF();
        this.f37736q = new Paint();
        this.f37737r = new Paint();
        a();
    }

    public MBSplashClickView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f37720a = "浏览第三方应用";
        this.f37721b = "View";
        this.f37722c = "打开第三方应用";
        this.f37723d = "Open";
        this.f37724e = "下载第三方应用";
        this.f37725f = "Install";
        this.f37726g = "mbridge_splash_btn_arrow_right";
        this.f37727h = "mbridge_splash_btn_circle";
        this.f37728i = "mbridge_splash_btn_finger";
        this.f37729j = "mbridge_splash_btn_go";
        this.f37730k = "mbridge_splash_btn_light";
        this.TYPE_SPLASH_BTN_OPEN = 1;
        this.TYPE_SPLASH_BTN_GO = 2;
        this.TYPE_SPLASH_BTN_CLICK = 3;
        this.f37735p = new RectF();
        this.f37736q = new Paint();
        this.f37737r = new Paint();
        a();
    }

    public MBSplashClickView(Context context, AttributeSet attributeSet, int i11, int i12) {
        super(context, attributeSet, i11, i12);
        this.f37720a = "浏览第三方应用";
        this.f37721b = "View";
        this.f37722c = "打开第三方应用";
        this.f37723d = "Open";
        this.f37724e = "下载第三方应用";
        this.f37725f = "Install";
        this.f37726g = "mbridge_splash_btn_arrow_right";
        this.f37727h = "mbridge_splash_btn_circle";
        this.f37728i = "mbridge_splash_btn_finger";
        this.f37729j = "mbridge_splash_btn_go";
        this.f37730k = "mbridge_splash_btn_light";
        this.TYPE_SPLASH_BTN_OPEN = 1;
        this.TYPE_SPLASH_BTN_GO = 2;
        this.TYPE_SPLASH_BTN_CLICK = 3;
        this.f37735p = new RectF();
        this.f37736q = new Paint();
        this.f37737r = new Paint();
    }

    private void a() {
        this.f37736q.setAntiAlias(true);
        this.f37736q.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        this.f37737r.setAntiAlias(true);
        this.f37737r.setColor(-1);
    }

    private boolean a(String str) {
        str.hashCode();
        switch (str) {
            case "Install":
            case "下载第三方应用":
                this.f37732m = 3;
                break;
            case "Open":
            case "打开第三方应用":
                this.f37732m = 1;
                break;
            case "View":
            case "浏览第三方应用":
                this.f37732m = 2;
                break;
            default:
                return false;
        }
        return true;
    }

    private void b() {
        RelativeLayout.LayoutParams layoutParams;
        int identifier;
        if (!a(this.f37731l)) {
            boolean zContains = getContext().getResources().getConfiguration().locale.getLanguage().contains("zh");
            if (TextUtils.isEmpty(this.f37731l)) {
                this.f37731l = zContains ? "浏览第三方应用" : "View";
            }
            this.f37732m = 2;
        }
        setBgDrawable(this.f37732m);
        TextView textView = new TextView(getContext());
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams2.addRule(15);
        textView.setLayoutParams(layoutParams2);
        textView.setGravity(17);
        textView.setTextSize(20.0f);
        textView.setTextColor(-1);
        textView.setText(this.f37731l);
        this.f37733n = new ImageView(getContext());
        int i11 = this.f37732m;
        if (i11 == 2) {
            identifier = getResources().getIdentifier("mbridge_splash_btn_go", "drawable", com.mbridge.msdk.foundation.controller.c.m().h());
            layoutParams = new RelativeLayout.LayoutParams(t0.a(getContext(), 35.0f), t0.a(getContext(), 35.0f));
            layoutParams.addRule(11);
            layoutParams.addRule(15);
            layoutParams.rightMargin = t0.a(getContext(), 10.0f);
        } else if (i11 == 1) {
            identifier = getResources().getIdentifier("mbridge_splash_btn_light", "drawable", com.mbridge.msdk.foundation.controller.c.m().h());
            layoutParams = new RelativeLayout.LayoutParams(-2, -1);
            layoutParams.leftMargin = 20;
            layoutParams.rightMargin = 20;
            ImageView imageView = new ImageView(getContext());
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -1);
            layoutParams3.addRule(11);
            layoutParams3.addRule(15);
            layoutParams3.rightMargin = t0.a(getContext(), 50.0f);
            imageView.setImageResource(getResources().getIdentifier("mbridge_splash_btn_arrow_right", "drawable", com.mbridge.msdk.foundation.controller.c.m().h()));
            imageView.setScaleType(ImageView.ScaleType.CENTER);
            imageView.setLayoutParams(layoutParams3);
            addView(imageView);
        } else if (i11 == 3) {
            identifier = getResources().getIdentifier("mbridge_splash_btn_finger", "drawable", com.mbridge.msdk.foundation.controller.c.m().h());
            layoutParams = new RelativeLayout.LayoutParams(t0.a(getContext(), 25.0f), t0.a(getContext(), 25.0f));
            layoutParams.addRule(11);
            layoutParams.rightMargin = t0.a(getContext(), 50.0f);
            layoutParams.topMargin = t0.a(getContext(), 18.0f);
            this.f37734o = new ImageView(getContext());
            RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(t0.a(getContext(), 30.0f), t0.a(getContext(), 30.0f));
            layoutParams4.addRule(11);
            layoutParams4.rightMargin = t0.a(getContext(), 50.0f);
            layoutParams4.topMargin = t0.a(getContext(), 5.0f);
            this.f37734o.setLayoutParams(layoutParams4);
            this.f37734o.setImageResource(getResources().getIdentifier("mbridge_splash_btn_circle", "drawable", com.mbridge.msdk.foundation.controller.c.m().h()));
            addView(this.f37734o);
        } else {
            layoutParams = null;
            identifier = 0;
        }
        this.f37733n.setLayoutParams(layoutParams);
        this.f37733n.setImageResource(identifier);
        addView(textView);
        addView(this.f37733n);
        invalidate();
    }

    private void c() {
        ScaleAnimation scaleAnimation = new ScaleAnimation(1.0f, 0.7f, 1.0f, 0.7f, 1, 0.5f, 1, 0.5f);
        scaleAnimation.setDuration(400L);
        scaleAnimation.setRepeatCount(-1);
        scaleAnimation.setRepeatMode(2);
        ScaleAnimation scaleAnimation2 = new ScaleAnimation(0.0f, 0.5f, 0.0f, 0.5f, 1, 0.5f, 1, 0.5f);
        scaleAnimation2.setDuration(200L);
        scaleAnimation2.setAnimationListener(new a(scaleAnimation2));
        this.f37734o.setVisibility(4);
        this.f37733n.startAnimation(scaleAnimation);
        this.f37734o.postDelayed(new b(scaleAnimation2), 500L);
    }

    private void d() {
        ScaleAnimation scaleAnimation = new ScaleAnimation(0.8f, 1.0f, 0.8f, 1.0f, 1, 0.5f, 1, 0.5f);
        scaleAnimation.setDuration(500L);
        scaleAnimation.setRepeatCount(-1);
        scaleAnimation.setRepeatMode(2);
        this.f37733n.startAnimation(scaleAnimation);
    }

    private void e() {
        TranslateAnimation translateAnimation = new TranslateAnimation(0, -100.0f, 0, 1000.0f, 0, 0.0f, 0, 0.0f);
        translateAnimation.setDuration(1000L);
        translateAnimation.setAnimationListener(new c());
        this.f37733n.startAnimation(translateAnimation);
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
        canvas.saveLayer(this.f37735p, this.f37737r, 31);
        canvas.drawRoundRect(this.f37735p, 200.0f, 200.0f, this.f37737r);
        canvas.saveLayer(this.f37735p, this.f37736q, 31);
        super.draw(canvas);
        canvas.restore();
    }

    public void initView(String str) {
        this.f37731l = str;
        b();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        int i11 = this.f37732m;
        if (i11 == 2) {
            d();
        } else if (i11 == 1) {
            e();
        } else if (i11 == 3) {
            c();
        }
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i11, int i12, int i13, int i14) {
        super.onLayout(z10, i11, i12, i13, i14);
        this.f37735p.set(0.0f, 0.0f, getWidth(), getHeight());
    }
}
