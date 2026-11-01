package com.transsnet.login.widget;

import android.animation.ValueAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.ProgressBar;
import com.cloud.tmc.integration.event.EventConstants;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsnet.login.widget.LoginProgressBar;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0013\b\u0016\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u001d\b\u0016\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0004\u0010\bB%\b\u0016\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u0004\u0010\u000bB-\b\u0016\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\t¢\u0006\u0004\b\u0004\u0010\rJ\u001d\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\t¢\u0006\u0004\b\u0011\u0010\u0012J\r\u0010\u0013\u001a\u00020\u0010¢\u0006\u0004\b\u0013\u0010\u0014J\r\u0010\u0015\u001a\u00020\u0010¢\u0006\u0004\b\u0015\u0010\u0014J\u000f\u0010\u0016\u001a\u00020\u0010H\u0014¢\u0006\u0004\b\u0016\u0010\u0014R\"\u0010\u000e\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\"\u0010\u000f\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001d\u0010\u0018\u001a\u0004\b\u001e\u0010\u001a\"\u0004\b\u001f\u0010\u001cR\u0018\u0010#\u001a\u0004\u0018\u00010 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"R\u0016\u0010'\u001a\u00020$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010&¨\u0006("}, d2 = {"Lcom/transsnet/login/widget/LoginProgressBar;", "Landroid/widget/ProgressBar;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "defStyleRes", "(Landroid/content/Context;Landroid/util/AttributeSet;II)V", "startProgress", "endProgress", "", "setProgress", "(II)V", "startProgressReduce", "()V", "startProgressIncrease", "onDetachedFromWindow", "a", "I", "getStartProgress", "()I", "setStartProgress", "(I)V", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "getEndProgress", "setEndProgress", "Landroid/animation/ValueAnimator;", "c", "Landroid/animation/ValueAnimator;", "valueAnimator", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "J", EventConstants.KEY_TIME, "Login_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class LoginProgressBar extends ProgressBar {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private int startProgress;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private int endProgress;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private ValueAnimator valueAnimator;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private long time;

    public LoginProgressBar(Context context) {
        super(context);
        this.time = 400L;
    }

    public LoginProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.time = 400L;
    }

    public LoginProgressBar(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.time = 400L;
    }

    public LoginProgressBar(Context context, AttributeSet attributeSet, int i11, int i12) {
        super(context, attributeSet, i11, i12);
        this.time = 400L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(LoginProgressBar loginProgressBar, ValueAnimator it) {
        Intrinsics.h(it, "it");
        Object animatedValue = it.getAnimatedValue();
        Intrinsics.f(animatedValue, "null cannot be cast to non-null type kotlin.Int");
        loginProgressBar.setProgress(((Integer) animatedValue).intValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(LoginProgressBar loginProgressBar, ValueAnimator it) {
        Intrinsics.h(it, "it");
        Object animatedValue = it.getAnimatedValue();
        Intrinsics.f(animatedValue, "null cannot be cast to non-null type kotlin.Int");
        loginProgressBar.setProgress(((Integer) animatedValue).intValue());
    }

    public final int getEndProgress() {
        return this.endProgress;
    }

    public final int getStartProgress() {
        return this.startProgress;
    }

    @Override // android.widget.ProgressBar, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ValueAnimator valueAnimator = this.valueAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
    }

    public final void setEndProgress(int i11) {
        this.endProgress = i11;
    }

    public final void setProgress(int startProgress, int endProgress) {
        this.startProgress = startProgress;
        this.endProgress = endProgress;
        setProgress(startProgress);
    }

    public final void setStartProgress(int i11) {
        this.startProgress = i11;
    }

    public final void startProgressIncrease() {
        ValueAnimator valueAnimator = this.valueAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        setProgress(this.startProgress);
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(this.startProgress, this.endProgress);
        valueAnimatorOfInt.setDuration(this.time);
        valueAnimatorOfInt.setStartDelay(this.time);
        valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: cz.b
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                LoginProgressBar.c(this.f60961a, valueAnimator2);
            }
        });
        this.valueAnimator = valueAnimatorOfInt;
        valueAnimatorOfInt.start();
    }

    public final void startProgressReduce() {
        ValueAnimator valueAnimator = this.valueAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        setProgress(this.endProgress);
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(this.endProgress, this.startProgress);
        valueAnimatorOfInt.setDuration(this.time);
        valueAnimatorOfInt.setStartDelay(this.time);
        valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: cz.a
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                LoginProgressBar.d(this.f60960a, valueAnimator2);
            }
        });
        this.valueAnimator = valueAnimatorOfInt;
        valueAnimatorOfInt.start();
    }
}
