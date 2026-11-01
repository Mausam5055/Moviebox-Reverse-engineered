package com.cloud.tmc.miniapp.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.RotateAnimation;
import android.view.animation.TranslateAnimation;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.cloud.tmc.integration.utils.ext.CommonExtKt;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.utils.ExecutorUtils;
import com.cloud.tmc.miniutils.util.SizeUtils;
import com.cloud.tmc.miniutils.util.ViewUtils;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class MiniappLaunchLoadingView extends ConstraintLayout {
    public TranslateAnimation OooO;
    public AppCompatImageView OooO00o;
    public LinearLayoutCompat OooO0O0;
    public Integer OooO0OO;
    public final String OooO0Oo;
    public boolean OooO0o;
    public int OooO0o0;
    public boolean OooO0oO;
    public AnimationSet OooO0oo;
    public final Runnable OooOO0;

    public static final class OooO00o implements Animation.AnimationListener {
        public OooO00o() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            if (MiniappLaunchLoadingView.this.getRepeatCount() >= 4) {
                MiniappLaunchLoadingView.this.setRepeatCount(1);
            } else {
                MiniappLaunchLoadingView miniappLaunchLoadingView = MiniappLaunchLoadingView.this;
                miniappLaunchLoadingView.setRepeatCount(miniappLaunchLoadingView.getRepeatCount() + 1);
            }
            if (MiniappLaunchLoadingView.this.getRepeatAnimation()) {
                ExecutorUtils.runOnMain(MiniappLaunchLoadingView.this.getAnimationRunnable(), 300L);
            }
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
            if (MiniappLaunchLoadingView.this.getRepeatCount() != 0) {
                float f11 = ViewUtils.isLayoutRtl() ? -90.0f : 90.0f;
                AppCompatImageView appCompatImageView = MiniappLaunchLoadingView.this.OooO00o;
                if (appCompatImageView == null) {
                    Intrinsics.z("mLoadingImg");
                    appCompatImageView = null;
                }
                appCompatImageView.setRotation(MiniappLaunchLoadingView.this.getRepeatCount() * f11);
            }
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public MiniappLaunchLoadingView(Context context) {
        this(context, null, 0, 0, 14, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public MiniappLaunchLoadingView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 0, 12, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public MiniappLaunchLoadingView(Context context, AttributeSet attributeSet, int i11) {
        this(context, attributeSet, i11, 0, 8, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public MiniappLaunchLoadingView(Context context, AttributeSet attributeSet, int i11, int i12) {
        super(context, attributeSet, i11, i12);
        Intrinsics.h(context, "context");
        this.OooO0OO = 1;
        this.OooO0Oo = "MiniappLaunchLoadingView";
        this.OooO0oO = true;
        this.OooOO0 = new Runnable() { // from class: com.cloud.tmc.miniapp.widget.i
            @Override // java.lang.Runnable
            public final void run() {
                MiniappLaunchLoadingView.OooO00o(this.f23875a);
            }
        };
    }

    public /* synthetic */ MiniappLaunchLoadingView(Context context, AttributeSet attributeSet, int i11, int i12, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i13 & 2) != 0 ? null : attributeSet, (i13 & 4) != 0 ? 0 : i11, (i13 & 8) != 0 ? 0 : i12);
    }

    public static final void OooO00o(MiniappLaunchLoadingView this$0) {
        Intrinsics.h(this$0, "this$0");
        this$0.OooO00o();
    }

    public static final void OooO0O0(MiniappLaunchLoadingView this$0) {
        float fDp2px;
        Intrinsics.h(this$0, "this$0");
        LinearLayoutCompat linearLayoutCompat = null;
        if (this$0.OooO0o0 == 0) {
            AppCompatImageView appCompatImageView = this$0.OooO00o;
            if (appCompatImageView == null) {
                Intrinsics.z("mLoadingImg");
                appCompatImageView = null;
            }
            appCompatImageView.setRotation(0.0f);
            this$0.OooO0oO = true;
        }
        this$0.OooO0o = true;
        if (this$0.OooO0oo == null) {
            this$0.OooO0oo = new AnimationSet(false);
            RotateAnimation rotateAnimation = new RotateAnimation(0.0f, ViewUtils.isLayoutRtl() ? -90.0f : 90.0f, 1, ViewUtils.isLayoutRtl() ? 0.0f : 1.0f, 1, 1.0f);
            AppCompatImageView appCompatImageView2 = this$0.OooO00o;
            if (appCompatImageView2 == null) {
                Intrinsics.z("mLoadingImg");
                appCompatImageView2 = null;
            }
            float width = appCompatImageView2.getWidth();
            if (width == 0.0f) {
                try {
                    fDp2px = SizeUtils.dp2px(72.0f);
                } catch (Throwable unused) {
                    fDp2px = 0.0f;
                }
            } else {
                fDp2px = width;
            }
            TmcLogger.d(this$0.OooO0Oo, "img width " + width + " is " + fDp2px);
            if (!ViewUtils.isLayoutRtl()) {
                fDp2px = -fDp2px;
            }
            TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, fDp2px, 0.0f, 0.0f);
            AnimationSet animationSet = this$0.OooO0oo;
            if (animationSet != null) {
                animationSet.setFillAfter(true);
            }
            AnimationSet animationSet2 = this$0.OooO0oo;
            if (animationSet2 != null) {
                animationSet2.setDuration(500L);
            }
            AnimationSet animationSet3 = this$0.OooO0oo;
            if (animationSet3 != null) {
                animationSet3.setInterpolator(new AccelerateDecelerateInterpolator());
            }
            AnimationSet animationSet4 = this$0.OooO0oo;
            if (animationSet4 != null) {
                animationSet4.addAnimation(rotateAnimation);
            }
            AnimationSet animationSet5 = this$0.OooO0oo;
            if (animationSet5 != null) {
                animationSet5.addAnimation(translateAnimation);
            }
            AnimationSet animationSet6 = this$0.OooO0oo;
            if (animationSet6 != null) {
                animationSet6.setAnimationListener(this$0.new OooO00o());
            }
        }
        AppCompatImageView appCompatImageView3 = this$0.OooO00o;
        if (appCompatImageView3 == null) {
            Intrinsics.z("mLoadingImg");
            appCompatImageView3 = null;
        }
        appCompatImageView3.startAnimation(this$0.OooO0oo);
        float dp2px = CommonExtKt.getDp2px(68.0f);
        if (this$0.OooO == null) {
            if (!ViewUtils.isLayoutRtl()) {
                dp2px = -dp2px;
            }
            TranslateAnimation translateAnimation2 = new TranslateAnimation(0.0f, dp2px, 0.0f, 0.0f);
            this$0.OooO = translateAnimation2;
            translateAnimation2.setInterpolator(new AccelerateDecelerateInterpolator());
            TranslateAnimation translateAnimation3 = this$0.OooO;
            if (translateAnimation3 != null) {
                translateAnimation3.setDuration(500L);
            }
            TranslateAnimation translateAnimation4 = this$0.OooO;
            if (translateAnimation4 != null) {
                translateAnimation4.setFillAfter(true);
            }
        }
        TranslateAnimation translateAnimation5 = this$0.OooO;
        if (translateAnimation5 != null) {
            translateAnimation5.start();
        }
        LinearLayoutCompat linearLayoutCompat2 = this$0.OooO0O0;
        if (linearLayoutCompat2 == null) {
            Intrinsics.z("llBottom");
        } else {
            linearLayoutCompat = linearLayoutCompat2;
        }
        linearLayoutCompat.startAnimation(this$0.OooO);
    }

    public final void OooO00o() {
        try {
            AppCompatImageView appCompatImageView = this.OooO00o;
            if (appCompatImageView == null) {
                Intrinsics.z("mLoadingImg");
                appCompatImageView = null;
            }
            appCompatImageView.post(new Runnable() { // from class: com.cloud.tmc.miniapp.widget.j
                @Override // java.lang.Runnable
                public final void run() {
                    MiniappLaunchLoadingView.OooO0O0(this.f23876a);
                }
            });
        } catch (Throwable th2) {
            TmcLogger.e(this.OooO0Oo, th2);
        }
    }

    public final Runnable getAnimationRunnable() {
        return this.OooOO0;
    }

    public final boolean getAnimationRunning() {
        return this.OooO0o;
    }

    public final AnimationSet getAnimationSet() {
        return this.OooO0oo;
    }

    public final boolean getRepeatAnimation() {
        return this.OooO0oO;
    }

    public final int getRepeatCount() {
        return this.OooO0o0;
    }

    public final TranslateAnimation getSquareTranslate() {
        return this.OooO;
    }

    public final void setAnimationRunning(boolean z10) {
        this.OooO0o = z10;
    }

    public final void setAnimationSet(AnimationSet animationSet) {
        this.OooO0oo = animationSet;
    }

    public final void setRepeatAnimation(boolean z10) {
        this.OooO0oO = z10;
    }

    public final void setRepeatCount(int i11) {
        this.OooO0o0 = i11;
    }

    public final void setSquareTranslate(TranslateAnimation translateAnimation) {
        this.OooO = translateAnimation;
    }
}
