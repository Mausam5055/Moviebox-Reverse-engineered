package com.tn.lib.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatImageView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.widget.R$styleable;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u0015\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0014¢\u0006\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0016\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0014\u0010\u001a\u001a\u00020\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001d\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0016\u0010\u001f\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001cR\u0016\u0010!\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010\u001cR\u0016\u0010#\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010\u001c¨\u0006$"}, d2 = {"Lcom/tn/lib/view/RoundedArrowImageView;", "Landroidx/appcompat/widget/AppCompatImageView;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", RequestParameters.POSITION, "", "setArrowPosition", "(F)V", "Landroid/graphics/Canvas;", "canvas", "onDraw", "(Landroid/graphics/Canvas;)V", "Landroid/graphics/Paint;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Landroid/graphics/Paint;", "paint", "Landroid/graphics/Path;", "e", "Landroid/graphics/Path;", "path", "f", "F", "arrowHeight", "g", "cornerRadius", "h", "arrowWidth", "i", "arrowPosition", "UI_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class RoundedArrowImageView extends AppCompatImageView {

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final Paint paint;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private final Path path;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private float arrowHeight;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private float cornerRadius;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private float arrowWidth;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private float arrowPosition;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public RoundedArrowImageView(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public RoundedArrowImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public RoundedArrowImageView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        Paint paint = new Paint(1);
        this.paint = paint;
        this.path = new Path();
        this.arrowHeight = com.blankj.utilcode.util.a0.a(8.0f);
        this.cornerRadius = com.blankj.utilcode.util.a0.a(8.0f);
        this.arrowWidth = com.blankj.utilcode.util.a0.a(16.0f);
        this.arrowPosition = com.blankj.utilcode.util.a0.a(200.0f);
        paint.setStyle(Paint.Style.FILL);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.RoundedArrowImageView, 0, 0);
            Intrinsics.g(typedArrayObtainStyledAttributes, "obtainStyledAttributes(...)");
            this.arrowHeight = typedArrayObtainStyledAttributes.getDimension(R$styleable.RoundedArrowImageView_arrowIVHeight, this.arrowHeight);
            this.cornerRadius = typedArrayObtainStyledAttributes.getDimension(R$styleable.RoundedArrowImageView_cornerRadius, this.cornerRadius);
            this.arrowWidth = typedArrayObtainStyledAttributes.getDimension(R$styleable.RoundedArrowImageView_arrowIVWidth, this.arrowWidth);
            this.arrowPosition = typedArrayObtainStyledAttributes.getDimension(R$styleable.RoundedArrowImageView_arrowIVPositionOffset, this.arrowPosition);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public /* synthetic */ RoundedArrowImageView(Context context, AttributeSet attributeSet, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i12 & 2) != 0 ? null : attributeSet, (i12 & 4) != 0 ? 0 : i11);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        Intrinsics.h(canvas, "canvas");
        float width = getWidth();
        float height = getHeight() - this.arrowHeight;
        float f11 = this.arrowPosition;
        this.path.reset();
        float f12 = 2;
        this.path.moveTo(f11 - (this.arrowWidth / f12), this.arrowHeight);
        this.path.lineTo(f11, 0.0f);
        this.path.lineTo(f11 + (this.arrowWidth / f12), this.arrowHeight);
        this.path.lineTo(width - this.cornerRadius, this.arrowHeight);
        Path path = this.path;
        float f13 = this.cornerRadius;
        float f14 = this.arrowHeight;
        path.arcTo(new RectF(width - (f13 * f12), f14, width, (f13 * f12) + f14), -90.0f, 90.0f);
        this.path.lineTo(width, (height - this.cornerRadius) + this.arrowHeight);
        Path path2 = this.path;
        float f15 = this.cornerRadius;
        float f16 = this.arrowHeight;
        path2.arcTo(new RectF(width - (f15 * f12), (height - (f15 * f12)) + f16, width, f16 + height), 0.0f, 90.0f);
        this.path.lineTo(this.cornerRadius, this.arrowHeight + height);
        Path path3 = this.path;
        float f17 = this.cornerRadius;
        float f18 = this.arrowHeight;
        path3.arcTo(new RectF(0.0f, (height - (f17 * f12)) + f18, f17 * f12, height + f18), 90.0f, 90.0f);
        this.path.lineTo(0.0f, this.cornerRadius + this.arrowHeight);
        Path path4 = this.path;
        float f19 = this.arrowHeight;
        float f20 = this.cornerRadius;
        path4.arcTo(new RectF(0.0f, f19, f20 * f12, (f20 * f12) + f19), 180.0f, 90.0f);
        this.path.close();
        canvas.save();
        canvas.clipPath(this.path);
        super.onDraw(canvas);
        canvas.restore();
    }

    public final void setArrowPosition(float position) {
        this.arrowPosition = RangesKt.l(position, 0.0f, getWidth());
        invalidate();
    }
}
