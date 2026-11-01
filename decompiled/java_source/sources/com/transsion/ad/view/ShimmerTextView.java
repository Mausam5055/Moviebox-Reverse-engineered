package com.transsion.ad.view;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.LinearInterpolator;
import androidx.appcompat.widget.AppCompatTextView;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.ad.view.ShimmerTextView;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\u000b\u0010\fJ/\u0010\u0011\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u0013H\u0014¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\nH\u0014¢\u0006\u0004\b\u0017\u0010\fJ\u000f\u0010\u0018\u001a\u00020\nH\u0014¢\u0006\u0004\b\u0018\u0010\fJ\u001f\u0010\u001c\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u001c\u0010\u001dJ\u0017\u0010\u001e\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u001e\u0010\u001fR\u0014\u0010#\u001a\u00020 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\"R\u0014\u0010%\u001a\u00020 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010\"R\u0014\u0010&\u001a\u00020 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\"R\u0014\u0010*\u001a\u00020'8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b(\u0010)R\u0014\u0010,\u001a\u00020'8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b+\u0010)R\u0014\u00100\u001a\u00020-8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b.\u0010/R\u0016\u00102\u001a\u00020 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u0010\"R\u0016\u00103\u001a\u00020 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\"R\u0016\u00105\u001a\u00020 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u0010\"R\u001c\u0010:\u001a\n 7*\u0004\u0018\u000106068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b8\u00109¨\u0006;"}, d2 = {"Lcom/transsion/ad/view/ShimmerTextView;", "Landroidx/appcompat/widget/AppCompatTextView;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", "c", "()V", "w", "h", "oldw", "oldh", "onSizeChanged", "(IIII)V", "Landroid/graphics/Canvas;", "canvas", "onDraw", "(Landroid/graphics/Canvas;)V", "onAttachedToWindow", "onDetachedFromWindow", "Landroid/view/View;", "changedView", "visibility", "onVisibilityChanged", "(Landroid/view/View;I)V", "onWindowVisibilityChanged", "(I)V", "", "a", "F", "density", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "barWidthPx", "barHeightPx", "Landroid/graphics/Paint;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Landroid/graphics/Paint;", "corePaint", "e", "glowPaint", "Landroid/graphics/RectF;", "f", "Landroid/graphics/RectF;", "barRect", "g", "shimmerX", "startX", "i", "endX", "Landroid/animation/ValueAnimator;", "kotlin.jvm.PlatformType", "j", "Landroid/animation/ValueAnimator;", "shimmerAnimator", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ShimmerTextView extends AppCompatTextView {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final float density;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final float barWidthPx;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final float barHeightPx;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final Paint corePaint;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private final Paint glowPaint;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private final RectF barRect;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private float shimmerX;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private float startX;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private float endX;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private final ValueAnimator shimmerAnimator;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public ShimmerTextView(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public ShimmerTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public ShimmerTextView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        float f11 = context.getResources().getDisplayMetrics().density;
        this.density = f11;
        float f12 = 10.0f * f11;
        this.barWidthPx = f12;
        float f13 = 46.0f * f11;
        this.barHeightPx = f13;
        Paint paint = new Paint(1);
        paint.setColor(1308622847);
        PorterDuff.Mode mode = PorterDuff.Mode.ADD;
        paint.setXfermode(new PorterDuffXfermode(mode));
        BlurMaskFilter.Blur blur = BlurMaskFilter.Blur.NORMAL;
        paint.setMaskFilter(new BlurMaskFilter(8.0f * f11, blur));
        this.corePaint = paint;
        Paint paint2 = new Paint(1);
        paint2.setColor(1728053247);
        paint2.setXfermode(new PorterDuffXfermode(mode));
        paint2.setMaskFilter(new BlurMaskFilter(f11 * 4.0f, blur));
        this.glowPaint = paint2;
        this.barRect = new RectF((-f12) / 2.0f, (-f13) / 2.0f, f12 / 2.0f, f13 / 2.0f);
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.setDuration(3000L);
        valueAnimatorOfFloat.setRepeatCount(-1);
        valueAnimatorOfFloat.setInterpolator(new LinearInterpolator());
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: vi.b
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                ShimmerTextView.d(this.f77325a, valueAnimator);
            }
        });
        this.shimmerAnimator = valueAnimatorOfFloat;
        setLayerType(1, null);
    }

    public /* synthetic */ ShimmerTextView(Context context, AttributeSet attributeSet, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i12 & 2) != 0 ? null : attributeSet, (i12 & 4) != 0 ? 0 : i11);
    }

    private final void c() {
        if (this.shimmerAnimator.isPaused()) {
            this.shimmerAnimator.resume();
        } else {
            if (this.shimmerAnimator.isRunning()) {
                return;
            }
            this.shimmerAnimator.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(ShimmerTextView shimmerTextView, ValueAnimator va2) {
        Intrinsics.h(va2, "va");
        float fH = RangesKt.h(va2.getAnimatedFraction() * 3.0f, 1.0f);
        float f11 = shimmerTextView.startX;
        shimmerTextView.shimmerX = f11 + (fH * (shimmerTextView.endX - f11));
        shimmerTextView.invalidate();
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (isShown()) {
            this.shimmerAnimator.start();
        }
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.shimmerAnimator.cancel();
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        Intrinsics.h(canvas, "canvas");
        super.onDraw(canvas);
        canvas.save();
        canvas.translate(this.shimmerX, getHeight() / 2.0f);
        canvas.rotate(30.0f);
        canvas.drawRect(this.barRect, this.glowPaint);
        canvas.drawRect(this.barRect, this.corePaint);
        canvas.restore();
    }

    @Override // android.view.View
    protected void onSizeChanged(int w11, int h11, int oldw, int oldh) {
        super.onSizeChanged(w11, h11, oldw, oldh);
        float f11 = ((this.barWidthPx / 2.0f) * 0.866f) + ((this.barHeightPx / 2.0f) * 0.5f);
        this.startX = -f11;
        this.endX = w11 + f11;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onVisibilityChanged(View changedView, int visibility) {
        Intrinsics.h(changedView, "changedView");
        super.onVisibilityChanged(changedView, visibility);
        if (isAttachedToWindow()) {
            if (isShown()) {
                c();
            } else {
                this.shimmerAnimator.pause();
            }
        }
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int visibility) {
        super.onWindowVisibilityChanged(visibility);
        if (visibility != 0) {
            this.shimmerAnimator.pause();
        } else if (isShown()) {
            c();
        }
    }
}
