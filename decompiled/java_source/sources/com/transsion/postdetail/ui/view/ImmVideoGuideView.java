package com.transsion.postdetail.ui.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.LinearLayout;
import androidx.core.app.NotificationCompat;
import com.airbnb.lottie.LottieAnimationView;
import com.tn.lib.view.CustomLottieAnimationView;
import com.transsion.baseui.R$color;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.R$layout;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 \u001a2\u00020\u0001:\u0001\rB!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tB\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\nB\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\b\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\r\u0010\u0014\u001a\u00020\f¢\u0006\u0004\b\u0014\u0010\u000eJ\u000f\u0010\u0015\u001a\u00020\fH\u0014¢\u0006\u0004\b\u0015\u0010\u000eJ\u000f\u0010\u0016\u001a\u00020\fH\u0014¢\u0006\u0004\b\u0016\u0010\u000eR\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010\u0018¨\u0006\u001b"}, d2 = {"Lcom/transsion/postdetail/ui/view/ImmVideoGuideView;", "Landroid/widget/LinearLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "(Landroid/content/Context;)V", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "a", "()V", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "", "onTouchEvent", "(Landroid/view/MotionEvent;)Z", "removeGuide", "onDetachedFromWindow", "onAttachedToWindow", "Lcom/airbnb/lottie/LottieAnimationView;", "Lcom/airbnb/lottie/LottieAnimationView;", "mLavGuide", "Companion", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ImmVideoGuideView extends LinearLayout {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private LottieAnimationView mLavGuide;

    /* JADX INFO: renamed from: com.transsion.postdetail.ui.view.ImmVideoGuideView$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final ImmVideoGuideView a(ViewGroup parentView) {
            Intrinsics.h(parentView, "parentView");
            Context context = parentView.getContext();
            Intrinsics.g(context, "getContext(...)");
            ImmVideoGuideView immVideoGuideView = new ImmVideoGuideView(context);
            parentView.addView(immVideoGuideView, new ViewGroup.LayoutParams(-1, -1));
            return immVideoGuideView;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ImmVideoGuideView(Context context) {
        this(context, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ImmVideoGuideView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmVideoGuideView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        a();
    }

    private final void a() {
        setBackgroundColor(androidx.core.content.b.getColor(getContext(), R$color.base_black_30_p));
        setGravity(17);
        setOrientation(1);
        View.inflate(getContext(), R$layout.layout_post_imm_video_guide, this);
        View viewFindViewById = findViewById(R$id.lav_guide);
        CustomLottieAnimationView customLottieAnimationView = (CustomLottieAnimationView) viewFindViewById;
        customLottieAnimationView.setRepeatCount(-1);
        customLottieAnimationView.playAnimation();
        this.mLavGuide = (LottieAnimationView) viewFindViewById;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        LottieAnimationView lottieAnimationView;
        super.onAttachedToWindow();
        LottieAnimationView lottieAnimationView2 = this.mLavGuide;
        Boolean boolValueOf = lottieAnimationView2 != null ? Boolean.valueOf(lottieAnimationView2.isAnimating()) : null;
        Intrinsics.e(boolValueOf);
        if (boolValueOf.booleanValue() || (lottieAnimationView = this.mLavGuide) == null) {
            return;
        }
        lottieAnimationView.playAnimation();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        LottieAnimationView lottieAnimationView = this.mLavGuide;
        if (lottieAnimationView != null) {
            lottieAnimationView.cancelAnimation();
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        Intrinsics.h(event, "event");
        if (event.getAction() != 0) {
            return super.onTouchEvent(event);
        }
        removeGuide();
        return true;
    }

    public final void removeGuide() {
        if (getParent() != null) {
            ViewParent parent = getParent();
            Intrinsics.f(parent, "null cannot be cast to non-null type android.view.ViewGroup");
            ((ViewGroup) parent).removeView(this);
        }
        LottieAnimationView lottieAnimationView = this.mLavGuide;
        if (lottieAnimationView != null) {
            lottieAnimationView.cancelAnimation();
        }
    }
}
