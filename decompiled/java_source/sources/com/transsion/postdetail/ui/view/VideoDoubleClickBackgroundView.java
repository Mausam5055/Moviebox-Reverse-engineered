package com.transsion.postdetail.ui.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.postdetail.R$color;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0004\u0010\bB#\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u0004\u0010\u000bB+\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\t¢\u0006\u0004\b\u0004\u0010\rJ)\u0010\u000f\u001a\u00020\u000e2\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\tH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u0015\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u0015H\u0014¢\u0006\u0004\b\u0017\u0010\u0018R\u0014\u0010\u001b\u001a\u00020\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u001aR\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0016\u0010\u0012\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010!¨\u0006\""}, d2 = {"Lcom/transsion/postdetail/ui/view/VideoDoubleClickBackgroundView;", "Landroid/view/View;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "defStyleRes", "(Landroid/content/Context;Landroid/util/AttributeSet;II)V", "", "a", "(Landroid/util/AttributeSet;II)V", "", "isLeft", "setLeftStyle", "(Z)V", "Landroid/graphics/Canvas;", "canvas", "onDraw", "(Landroid/graphics/Canvas;)V", "Landroid/graphics/Paint;", "Landroid/graphics/Paint;", "mPaint", "Landroid/graphics/RectF;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Landroid/graphics/RectF;", "rectF", "c", "Z", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class VideoDoubleClickBackgroundView extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final Paint mPaint;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private RectF rectF;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private boolean isLeft;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VideoDoubleClickBackgroundView(Context context) {
        super(context);
        Intrinsics.h(context, "context");
        this.mPaint = new Paint();
        this.isLeft = true;
        a(null, 0, 0);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VideoDoubleClickBackgroundView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.h(context, "context");
        this.mPaint = new Paint();
        this.isLeft = true;
        a(attributeSet, 0, 0);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VideoDoubleClickBackgroundView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        this.mPaint = new Paint();
        this.isLeft = true;
        a(attributeSet, i11, 0);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VideoDoubleClickBackgroundView(Context context, AttributeSet attributeSet, int i11, int i12) {
        super(context, attributeSet, i11, i12);
        Intrinsics.h(context, "context");
        this.mPaint = new Paint();
        this.isLeft = true;
        a(attributeSet, i11, i12);
    }

    private final void a(AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        this.mPaint.setAntiAlias(true);
        this.mPaint.setColor(androidx.core.content.b.getColor(getContext(), R$color.video_double_click_bg));
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        Intrinsics.h(canvas, "canvas");
        super.onDraw(canvas);
        float width = getWidth();
        float height = getHeight();
        float f11 = width / 2.0f;
        double d11 = 2;
        double d12 = f11;
        float degrees = (float) (Math.toDegrees(Math.asin((((double) height) / d11) / d12)) * d11);
        if (!this.isLeft) {
            if (this.rectF == null) {
                float f12 = height / 2;
                this.rectF = new RectF(f11, (-f11) + f12, width + f11, (f11 - f12) + height);
            }
            RectF rectF = this.rectF;
            Intrinsics.e(rectF);
            canvas.drawArc(rectF, 180 - (degrees / 2.0f), degrees, false, this.mPaint);
            canvas.drawRect(width - ((float) Math.sqrt((d12 * d12) - ((double) ((height * height) / 4)))), 0.0f, width, height, this.mPaint);
            return;
        }
        if (this.rectF == null) {
            float f13 = -f11;
            float f14 = height / 2;
            this.rectF = new RectF(f13, f13 + f14, f11, (f11 - f14) + height);
        }
        RectF rectF2 = this.rectF;
        Intrinsics.e(rectF2);
        canvas.drawArc(rectF2, (-degrees) / 2.0f, degrees, false, this.mPaint);
        canvas.drawRect(0.0f, 0.0f, (float) Math.sqrt((d12 * d12) - ((double) ((height * height) / 4))), height, this.mPaint);
    }

    public final void setLeftStyle(boolean isLeft) {
        if (this.isLeft == isLeft) {
            return;
        }
        this.isLeft = isLeft;
        this.rectF = null;
        invalidate();
    }
}
