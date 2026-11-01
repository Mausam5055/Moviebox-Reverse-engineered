package com.transsion.ugcvideodetail.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.transsion.ugcvideodetail.R$styleable;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0012\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\f\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000eH\u0014¢\u0006\u0004\b\u0011\u0010\u0012J\r\u0010\u0013\u001a\u00020\u0010¢\u0006\u0004\b\u0013\u0010\u0014J\r\u0010\u0015\u001a\u00020\u0010¢\u0006\u0004\b\u0015\u0010\u0014J\u000f\u0010\u0016\u001a\u00020\u0010H\u0014¢\u0006\u0004\b\u0016\u0010\u0014J\u000f\u0010\u0017\u001a\u00020\u0010H\u0014¢\u0006\u0004\b\u0017\u0010\u0014J\u0017\u0010\u0019\u001a\u00020\u00102\b\b\u0001\u0010\u0018\u001a\u00020\u0006¢\u0006\u0004\b\u0019\u0010\u001aJ\u0015\u0010\u001c\u001a\u00020\u00102\u0006\u0010\u001b\u001a\u00020\n¢\u0006\u0004\b\u001c\u0010\u001dJ\u0015\u0010\u001e\u001a\u00020\u00102\u0006\u0010\u001b\u001a\u00020\n¢\u0006\u0004\b\u001e\u0010\u001dR\u0016\u0010!\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010 R\u0014\u0010%\u001a\u00020\"8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010$R\u0016\u0010(\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010'R\u0016\u0010+\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010*R\u0016\u0010-\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010'R\u0016\u0010/\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010'R\u0016\u00101\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u0010'R\u0016\u00103\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u0010'¨\u00064"}, d2 = {"Lcom/transsion/ugcvideodetail/widget/UGCImmRingLoadingView;", "Landroid/view/View;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", "dp", "a", "(F)F", "Landroid/graphics/Canvas;", "canvas", "", "onDraw", "(Landroid/graphics/Canvas;)V", "start", "()V", "stop", "onDetachedFromWindow", "onAttachedToWindow", "newColor", "setColor", "(I)V", "px", "setStrokeWidthPx", "(F)V", "setCirclePaddingPx", "", "Z", "running", "Landroid/graphics/Paint;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Landroid/graphics/Paint;", "paint", "c", "F", "strokeWidthPx", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "I", TtmlNode.ATTR_TTS_COLOR, "e", "sweepAngle", "f", "speed", "g", "angle", "h", "circlePaddingPx", "UGCVideoDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class UGCImmRingLoadingView extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private boolean running;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final Paint paint;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private float strokeWidthPx;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private int color;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private float sweepAngle;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private float speed;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private float angle;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private float circlePaddingPx;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public UGCImmRingLoadingView(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public UGCImmRingLoadingView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public UGCImmRingLoadingView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        Paint paint = new Paint(1);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeCap(Paint.Cap.ROUND);
        this.paint = paint;
        this.strokeWidthPx = a(3.0f);
        this.color = -1;
        this.sweepAngle = 270.0f;
        this.speed = 6.0f;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.UGCImmRingLoadingView);
        this.strokeWidthPx = typedArrayObtainStyledAttributes.getDimension(R$styleable.UGCImmRingLoadingView_rlv_strokeWidth, this.strokeWidthPx);
        this.color = typedArrayObtainStyledAttributes.getColor(R$styleable.UGCImmRingLoadingView_rlv_color, this.color);
        this.sweepAngle = typedArrayObtainStyledAttributes.getFloat(R$styleable.UGCImmRingLoadingView_rlv_sweepAngle, this.sweepAngle);
        this.speed = typedArrayObtainStyledAttributes.getFloat(R$styleable.UGCImmRingLoadingView_rlv_speed, this.speed);
        this.circlePaddingPx = typedArrayObtainStyledAttributes.getDimension(R$styleable.UGCImmRingLoadingView_rlv_circlePadding, 0.0f);
        typedArrayObtainStyledAttributes.recycle();
        paint.setStrokeWidth(this.strokeWidthPx);
        paint.setColor(this.color);
    }

    public /* synthetic */ UGCImmRingLoadingView(Context context, AttributeSet attributeSet, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i12 & 2) != 0 ? null : attributeSet, (i12 & 4) != 0 ? 0 : i11);
    }

    private final float a(float dp2) {
        return dp2 * getResources().getDisplayMetrics().density;
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (getVisibility() == 0) {
            start();
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        stop();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        Intrinsics.h(canvas, "canvas");
        super.onDraw(canvas);
        float fI = ((RangesKt.i(getWidth(), getHeight()) / 2.0f) - this.strokeWidthPx) - this.circlePaddingPx;
        canvas.drawArc(new RectF((getWidth() / 2.0f) - fI, (getHeight() / 2.0f) - fI, (getWidth() / 2.0f) + fI, (getHeight() / 2.0f) + fI), this.angle, this.sweepAngle, false, this.paint);
        float f11 = this.angle + this.speed;
        this.angle = f11;
        if (f11 >= 360.0f) {
            this.angle = 0.0f;
        }
        postInvalidateOnAnimation();
    }

    public final void setCirclePaddingPx(float px2) {
        this.circlePaddingPx = px2;
        invalidate();
    }

    public final void setColor(int newColor) {
        this.paint.setColor(newColor);
        invalidate();
    }

    public final void setStrokeWidthPx(float px2) {
        this.strokeWidthPx = px2;
        this.paint.setStrokeWidth(px2);
        invalidate();
    }

    public final void start() {
        if (this.running) {
            return;
        }
        this.running = true;
        invalidate();
    }

    public final void stop() {
        this.running = false;
    }
}
