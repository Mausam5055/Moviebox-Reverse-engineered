package com.transsion.ad.view;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.util.Property;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.ad.scene.a;
import com.transsion.ad.strategy.r;
import com.transsion.ad.view.SwipeUpOrTapForDetailsView;
import com.vungle.ads.internal.presenter.MRAIDPresenter;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import ji.d0;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u00012\u00020\u0002B'\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\u001f\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u000fH\u0014¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u0011\u0010\u0018\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\r\u0010\u001a\u001a\u00020\u000f¢\u0006\u0004\b\u001a\u0010\u0013J\r\u0010\u001b\u001a\u00020\u000f¢\u0006\u0004\b\u001b\u0010\u0013J\u0015\u0010\u001e\u001a\u00020\u000f2\u0006\u0010\u001d\u001a\u00020\u001c¢\u0006\u0004\b\u001e\u0010\u001fR\u0014\u0010#\u001a\u00020 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\"R\u0018\u0010'\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010&R\u0018\u0010+\u001a\u0004\u0018\u00010(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010*R\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010-¨\u0006."}, d2 = {"Lcom/transsion/ad/view/SwipeUpOrTapForDetailsView;", "Landroid/widget/FrameLayout;", "Lcom/transsion/ad/strategy/r$a;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Landroid/view/View;", "targetView", "Landroid/widget/ImageView;", "imageView", "", "g", "(Landroid/view/View;Landroid/widget/ImageView;)V", "onDetachedFromWindow", "()V", "", "isVisible", "onVisibilityChanged", "(Z)V", "getVisibilityView", "()Landroid/view/View;", MRAIDPresenter.OPEN, "close", "", "sceneId", "setSceneID", "(Ljava/lang/String;)V", "Lji/d0;", "a", "Lji/d0;", "binding", "Landroid/animation/AnimatorSet;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Landroid/animation/AnimatorSet;", "animatorSet", "Ljava/lang/Runnable;", "c", "Ljava/lang/Runnable;", "pendingStartRunnable", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Ljava/lang/String;", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class SwipeUpOrTapForDetailsView extends FrameLayout implements r.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final d0 binding;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private AnimatorSet animatorSet;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private Runnable pendingStartRunnable;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private String sceneId;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public SwipeUpOrTapForDetailsView(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public SwipeUpOrTapForDetailsView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public SwipeUpOrTapForDetailsView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        d0 d0VarC = d0.c(LayoutInflater.from(context), this, true);
        Intrinsics.g(d0VarC, "inflate(...)");
        this.binding = d0VarC;
        this.sceneId = "";
    }

    public /* synthetic */ SwipeUpOrTapForDetailsView(Context context, AttributeSet attributeSet, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i12 & 2) != 0 ? null : attributeSet, (i12 & 4) != 0 ? 0 : i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(SwipeUpOrTapForDetailsView swipeUpOrTapForDetailsView) {
        AnimatorSet animatorSet = swipeUpOrTapForDetailsView.animatorSet;
        if (animatorSet != null) {
            animatorSet.resume();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(SwipeUpOrTapForDetailsView swipeUpOrTapForDetailsView) {
        AnimatorSet animatorSet = swipeUpOrTapForDetailsView.animatorSet;
        if (animatorSet != null) {
            animatorSet.pause();
        }
    }

    private final void g(final View targetView, final ImageView imageView) {
        Runnable runnable = new Runnable() { // from class: vi.e
            @Override // java.lang.Runnable
            public final void run() {
                SwipeUpOrTapForDetailsView.h(this.f77328a, targetView, imageView);
            }
        };
        this.pendingStartRunnable = runnable;
        targetView.post(runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(SwipeUpOrTapForDetailsView swipeUpOrTapForDetailsView, final View view, ImageView imageView) {
        swipeUpOrTapForDetailsView.pendingStartRunnable = null;
        AnimatorSet animatorSet = swipeUpOrTapForDetailsView.animatorSet;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        int height = view.getHeight();
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(height, height + 100);
        valueAnimatorOfInt.setDuration(1000L);
        valueAnimatorOfInt.setRepeatCount(-1);
        valueAnimatorOfInt.setRepeatMode(2);
        valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: vi.f
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                SwipeUpOrTapForDetailsView.i(view, valueAnimator);
            }
        });
        imageView.setPivotX((imageView.getWidth() * 4) / 5);
        imageView.setPivotY(imageView.getHeight() / 2.0f);
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(imageView, (Property<ImageView, Float>) View.ROTATION, 0.0f, 50.0f);
        objectAnimatorOfFloat.setDuration(1000L);
        objectAnimatorOfFloat.setRepeatCount(-1);
        objectAnimatorOfFloat.setRepeatMode(2);
        AnimatorSet animatorSet2 = new AnimatorSet();
        animatorSet2.playTogether(valueAnimatorOfInt, objectAnimatorOfFloat);
        animatorSet2.start();
        swipeUpOrTapForDetailsView.animatorSet = animatorSet2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(View view, ValueAnimator animation) {
        Intrinsics.h(animation, "animation");
        Object animatedValue = animation.getAnimatedValue();
        Intrinsics.f(animatedValue, "null cannot be cast to non-null type kotlin.Int");
        int iIntValue = ((Integer) animatedValue).intValue();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.height = iIntValue;
        view.setLayoutParams(layoutParams);
        view.requestLayout();
    }

    public final void close() {
        Runnable runnable = this.pendingStartRunnable;
        if (runnable != null) {
            this.binding.f66049b.removeCallbacks(runnable);
        }
        this.pendingStartRunnable = null;
        AnimatorSet animatorSet = this.animatorSet;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        this.animatorSet = null;
    }

    @Override // com.transsion.ad.strategy.r.a
    public double getVisibilityThreshold() {
        return r.a.C0599a.a(this);
    }

    @Override // com.transsion.ad.strategy.r.a
    public View getVisibilityView() {
        return this;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        close();
        r.f42240a.n(this);
    }

    @Override // com.transsion.ad.strategy.r.a
    public void onVisibilityChanged(boolean isVisible) {
        if (isVisible) {
            AnimatorSet animatorSet = this.animatorSet;
            if (animatorSet == null || !animatorSet.isPaused()) {
                return;
            }
            post(new Runnable() { // from class: vi.c
                @Override // java.lang.Runnable
                public final void run() {
                    SwipeUpOrTapForDetailsView.e(this.f77326a);
                }
            });
            return;
        }
        AnimatorSet animatorSet2 = this.animatorSet;
        if (animatorSet2 == null || !animatorSet2.isRunning()) {
            return;
        }
        post(new Runnable() { // from class: vi.d
            @Override // java.lang.Runnable
            public final void run() {
                SwipeUpOrTapForDetailsView.f(this.f77327a);
            }
        });
    }

    public final void open() {
        if (a.f42201a.v(this.sceneId)) {
            AnimatorSet animatorSet = this.animatorSet;
            if (animatorSet == null || !animatorSet.isRunning()) {
                Runnable runnable = this.pendingStartRunnable;
                if (runnable != null) {
                    this.binding.f66049b.removeCallbacks(runnable);
                }
                ArcConstraintLayout ArcViewGroup = this.binding.f66049b;
                Intrinsics.g(ArcViewGroup, "ArcViewGroup");
                AppCompatImageView ivIndicator = this.binding.f66050c;
                Intrinsics.g(ivIndicator, "ivIndicator");
                g(ArcViewGroup, ivIndicator);
            }
        }
    }

    public final void setSceneID(String sceneId) {
        Intrinsics.h(sceneId, "sceneId");
        this.sceneId = sceneId;
        if (!a.f42201a.v(sceneId)) {
            setVisibility(8);
        } else {
            r.f42240a.g(this);
            setVisibility(0);
        }
    }
}
