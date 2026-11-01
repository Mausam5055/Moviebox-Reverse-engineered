package com.bytedance.sdk.component.adexpress.vS;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Interpolator;
import android.view.animation.RotateAnimation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class RiZ extends LinearLayout {
    private LinearLayout Dq;
    private com.bytedance.sdk.component.utils.kF EjP;
    private TextView HiB;
    private Sj Jcg;
    private TextView Sj;
    private int TEQ;
    private ImageView TKC;
    private int Ym;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private JSONObject f20906aa;
    private TextView sP;
    private int uA;
    private TextView vS;

    /* JADX INFO: renamed from: com.bytedance.sdk.component.adexpress.vS.RiZ$1, reason: invalid class name */
    class AnonymousClass1 implements Runnable {
        AnonymousClass1() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (RiZ.this.TKC != null) {
                final RotateAnimation rotateAnimation = new RotateAnimation(-14.0f, 14.0f, 1, 0.9f, 1, 0.9f);
                rotateAnimation.setInterpolator(new sP(null));
                rotateAnimation.setDuration(1000L);
                rotateAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.bytedance.sdk.component.adexpress.vS.RiZ.1.1
                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationEnd(Animation animation) {
                        RiZ.this.postDelayed(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.vS.RiZ.1.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                RiZ.this.TKC.startAnimation(rotateAnimation);
                            }
                        }, 250L);
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationRepeat(Animation animation) {
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationStart(Animation animation) {
                    }
                });
                RiZ.this.TKC.startAnimation(rotateAnimation);
            }
        }
    }

    public interface Sj {
    }

    private static class sP implements Interpolator {
        private sP() {
        }

        /* synthetic */ sP(AnonymousClass1 anonymousClass1) {
            this();
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f11) {
            if (f11 <= 0.25f) {
                return (f11 * (-2.0f)) + 0.5f;
            }
            if (f11 <= 0.5f) {
                return (f11 * 4.0f) - 1.0f;
            }
            return f11 <= 0.75f ? (f11 * (-4.0f)) + 3.0f : (f11 * 2.0f) - 1.5f;
        }
    }

    public RiZ(@NonNull Context context, View view, int i11, int i12, int i13, JSONObject jSONObject) {
        super(context);
        this.uA = i11;
        this.TEQ = i12;
        this.Ym = i13;
        this.f20906aa = jSONObject;
        Sj(context, view);
    }

    public void Sj() {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, "alpha", 0.0f, 1.0f);
        objectAnimatorOfFloat.setDuration(300L);
        objectAnimatorOfFloat.start();
        postDelayed(new AnonymousClass1(), 500L);
    }

    protected void Sj(Context context, View view) {
        addView(view);
        this.Dq = (LinearLayout) findViewById(2097610727);
        this.TKC = (ImageView) findViewById(2097610725);
        this.Sj = (TextView) findViewById(2097610724);
        this.sP = (TextView) findViewById(2097610726);
        this.HiB = (TextView) findViewById(2097610723);
        this.vS = (TextView) findViewById(2097610728);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        gradientDrawable.setColor(Color.parseColor("#57000000"));
        this.Dq.setBackground(gradientDrawable);
    }

    public LinearLayout getShakeLayout() {
        return this.Dq;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (isShown()) {
            if (this.EjP == null) {
                this.EjP = new com.bytedance.sdk.component.utils.kF(getContext().getApplicationContext(), 1);
            }
            new Object() { // from class: com.bytedance.sdk.component.adexpress.vS.RiZ.2
            };
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z10) {
    }

    public void setOnShakeViewListener(Sj sj2) {
        this.Jcg = sj2;
    }

    public void setShakeText(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.HiB.setText(str);
        } else {
            this.HiB.setVisibility(8);
            this.vS.setVisibility(8);
        }
    }
}
