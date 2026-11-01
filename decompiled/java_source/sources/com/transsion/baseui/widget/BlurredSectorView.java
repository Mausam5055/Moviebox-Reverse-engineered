package com.transsion.baseui.widget;

import android.content.Context;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001B\u0013\b\u0016\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u001d\b\u0016\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0004\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\fH\u0014¢\u0006\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0012\u001a\u00020\u00108\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\n\u0010\u0011R\u0016\u0010\u0016\u001a\u00020\u00138\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0014\u0010\u001a\u001a\u00020\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0014\u0010\u001c\u001a\u00020\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u0019¨\u0006\u001d"}, d2 = {"Lcom/transsion/baseui/widget/BlurredSectorView;", "Landroid/view/View;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "a", "()V", "Landroid/graphics/Canvas;", "canvas", "onDraw", "(Landroid/graphics/Canvas;)V", "Landroid/graphics/Paint;", "Landroid/graphics/Paint;", "mPaint", "Landroid/graphics/RectF;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Landroid/graphics/RectF;", "mRectF", "", "c", "F", "mRadius", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "mBlurRadius", "BaseUI_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class BlurredSectorView extends View {
    public static final int $stable = 8;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private Paint mPaint;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private RectF mRectF;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final float mRadius;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final float mBlurRadius;

    public BlurredSectorView(Context context) {
        super(context);
        this.mRadius = 100 * getResources().getDisplayMetrics().density;
        this.mBlurRadius = 60 * getResources().getDisplayMetrics().density;
        a();
    }

    public BlurredSectorView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mRadius = 100 * getResources().getDisplayMetrics().density;
        this.mBlurRadius = 60 * getResources().getDisplayMetrics().density;
        a();
    }

    private final void a() {
        Paint paint = new Paint(1);
        this.mPaint = paint;
        paint.setColor(Color.parseColor("#9900512F"));
        Paint paint2 = this.mPaint;
        if (paint2 == null) {
            Intrinsics.z("mPaint");
            paint2 = null;
        }
        paint2.setStyle(Paint.Style.FILL);
        Paint paint3 = this.mPaint;
        if (paint3 == null) {
            Intrinsics.z("mPaint");
            paint3 = null;
        }
        paint3.setMaskFilter(new BlurMaskFilter(this.mBlurRadius, BlurMaskFilter.Blur.NORMAL));
        this.mRectF = new RectF();
        setLayerType(1, null);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        RectF rectF;
        Paint paint;
        Intrinsics.h(canvas, "canvas");
        super.onDraw(canvas);
        float f11 = this.mRadius;
        int height = getHeight();
        float f12 = this.mRadius;
        RectF rectF2 = this.mRectF;
        if (rectF2 == null) {
            Intrinsics.z("mRectF");
            rectF2 = null;
        }
        float f13 = height;
        rectF2.set(f11 - f12, f13 - f12, f11 + f12, f13 + f12);
        RectF rectF3 = this.mRectF;
        if (rectF3 == null) {
            Intrinsics.z("mRectF");
            rectF = null;
        } else {
            rectF = rectF3;
        }
        Paint paint2 = this.mPaint;
        if (paint2 == null) {
            Intrinsics.z("mPaint");
            paint = null;
        } else {
            paint = paint2;
        }
        canvas.drawArc(rectF, 180.0f, 180.0f, true, paint);
    }
}
