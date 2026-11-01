package com.tn.lib.view;

import android.animation.Animator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.tn.lib.widget.R$id;
import com.tn.lib.widget.R$layout;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0001\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tB\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\nB\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\b\u0010\u000bJ\r\u0010\r\u001a\u00020\f¢\u0006\u0004\b\r\u0010\u000eJ\r\u0010\u000f\u001a\u00020\f¢\u0006\u0004\b\u000f\u0010\u000eJ\u0017\u0010\u0012\u001a\u00020\f2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\u0012\u0010\u0013R$\u0010\u001b\u001a\u0004\u0018\u00010\u00148\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001a¨\u0006\u001c"}, d2 = {"Lcom/tn/lib/view/LoadingAnimView;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "(Landroid/content/Context;)V", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "playAnimation", "()V", "cancelAnimation", "Landroid/animation/Animator$AnimatorListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "addAnimatorListener", "(Landroid/animation/Animator$AnimatorListener;)V", "Lcom/tn/lib/view/CustomLottieAnimationView;", "a", "Lcom/tn/lib/view/CustomLottieAnimationView;", "getMLoadingView", "()Lcom/tn/lib/view/CustomLottieAnimationView;", "setMLoadingView", "(Lcom/tn/lib/view/CustomLottieAnimationView;)V", "mLoadingView", "UI_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class LoadingAnimView extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private CustomLottieAnimationView mLoadingView;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public LoadingAnimView(Context context) {
        this(context, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public LoadingAnimView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LoadingAnimView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        LayoutInflater.from(context).inflate(R$layout.libui_anim_loading, (ViewGroup) this, true);
        this.mLoadingView = (CustomLottieAnimationView) findViewById(R$id.loading_anim);
    }

    public final void addAnimatorListener(Animator.AnimatorListener listener) {
        CustomLottieAnimationView customLottieAnimationView = this.mLoadingView;
        if (customLottieAnimationView != null) {
            customLottieAnimationView.addAnimatorListener(listener);
        }
    }

    public final void cancelAnimation() {
        setVisibility(8);
        CustomLottieAnimationView customLottieAnimationView = this.mLoadingView;
        if (customLottieAnimationView != null) {
            customLottieAnimationView.cancelAnimation();
        }
    }

    public final CustomLottieAnimationView getMLoadingView() {
        return this.mLoadingView;
    }

    public final void playAnimation() {
        setVisibility(0);
        CustomLottieAnimationView customLottieAnimationView = this.mLoadingView;
        if (customLottieAnimationView != null) {
            customLottieAnimationView.playAnimation();
        }
    }

    public final void setMLoadingView(CustomLottieAnimationView customLottieAnimationView) {
        this.mLoadingView = customLottieAnimationView;
    }
}
