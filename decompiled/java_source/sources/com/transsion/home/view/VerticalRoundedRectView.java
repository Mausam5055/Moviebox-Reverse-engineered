package com.transsion.home.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.transsion.home.R$styleable;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u001c\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\nH\u0014¢\u0006\u0004\b\r\u0010\u000eJ\u0015\u0010\u0011\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0011\u0010\u0012J\u0015\u0010\u0014\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\u000f¢\u0006\u0004\b\u0014\u0010\u0012J\u0015\u0010\u0016\u001a\u00020\f2\u0006\u0010\u0015\u001a\u00020\u0006¢\u0006\u0004\b\u0016\u0010\u0017J\u0015\u0010\u0019\u001a\u00020\f2\u0006\u0010\u0018\u001a\u00020\u000f¢\u0006\u0004\b\u0019\u0010\u0012J\u0015\u0010\u001b\u001a\u00020\f2\u0006\u0010\u001a\u001a\u00020\u0006¢\u0006\u0004\b\u001b\u0010\u0017J\u0015\u0010\u001d\u001a\u00020\f2\u0006\u0010\u001c\u001a\u00020\u000f¢\u0006\u0004\b\u001d\u0010\u0012R\u0016\u0010 \u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0016\u0010\"\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\u001fR\u0016\u0010%\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010$R\u0016\u0010'\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010\u001fR\u0016\u0010)\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010$R\u0016\u0010+\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010\u001fR\u0014\u0010/\u001a\u00020,8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b-\u0010.¨\u00060"}, d2 = {"Lcom/transsion/home/view/VerticalRoundedRectView;", "Landroid/view/View;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Landroid/graphics/Canvas;", "canvas", "", "onDraw", "(Landroid/graphics/Canvas;)V", "", "width", "setRectWidth", "(F)V", "height", "setRectHeight", "count", "setRectCount", "(I)V", "spacing", "setRectSpacing", TtmlNode.ATTR_TTS_COLOR, "setRectColor", "radius", "setCornerRadius", "a", "F", "rectWidth", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "rectHeight", "c", "I", "rectCount", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "rectSpacing", "e", "rectColor", "f", "cornerRadius", "Landroid/graphics/Paint;", "g", "Landroid/graphics/Paint;", "paint", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class VerticalRoundedRectView extends View {
    public static final int $stable = 8;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private float rectWidth;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private float rectHeight;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private int rectCount;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private float rectSpacing;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private int rectColor;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private float cornerRadius;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private final Paint paint;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public VerticalRoundedRectView(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public VerticalRoundedRectView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public VerticalRoundedRectView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        this.rectWidth = 100.0f;
        this.rectHeight = 50.0f;
        this.rectCount = 5;
        this.rectSpacing = 20.0f;
        this.rectColor = -16776961;
        this.cornerRadius = 4.0f;
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setStyle(Paint.Style.FILL);
        this.paint = paint;
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.VerticalRoundedRectView);
            Intrinsics.g(typedArrayObtainStyledAttributes, "obtainStyledAttributes(...)");
            this.rectWidth = typedArrayObtainStyledAttributes.getDimension(R$styleable.VerticalRoundedRectView_rectWidth, this.rectWidth);
            this.rectHeight = typedArrayObtainStyledAttributes.getDimension(R$styleable.VerticalRoundedRectView_rectHeight, this.rectHeight);
            this.rectCount = typedArrayObtainStyledAttributes.getInt(R$styleable.VerticalRoundedRectView_rectCount, this.rectCount);
            this.rectSpacing = typedArrayObtainStyledAttributes.getDimension(R$styleable.VerticalRoundedRectView_rectSpacing, this.rectSpacing);
            this.rectColor = typedArrayObtainStyledAttributes.getColor(R$styleable.VerticalRoundedRectView_rectColor, this.rectColor);
            this.cornerRadius = typedArrayObtainStyledAttributes.getDimension(R$styleable.VerticalRoundedRectView_rectCorner, this.cornerRadius);
            typedArrayObtainStyledAttributes.recycle();
        }
        paint.setColor(this.rectColor);
    }

    public /* synthetic */ VerticalRoundedRectView(Context context, AttributeSet attributeSet, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i12 & 2) != 0 ? null : attributeSet, (i12 & 4) != 0 ? 0 : i11);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        Intrinsics.h(canvas, "canvas");
        super.onDraw(canvas);
        int i11 = this.rectCount;
        for (int i12 = 0; i12 < i11; i12++) {
            float f11 = i12 * (this.rectHeight + this.rectSpacing);
            RectF rectF = new RectF(0.0f, f11, this.rectWidth, this.rectHeight + f11);
            float f12 = this.cornerRadius;
            canvas.drawRoundRect(rectF, f12, f12, this.paint);
        }
    }

    public final void setCornerRadius(float radius) {
        this.cornerRadius = radius;
        invalidate();
    }

    public final void setRectColor(int color) {
        this.rectColor = color;
        this.paint.setColor(color);
        invalidate();
    }

    public final void setRectCount(int count) {
        this.rectCount = count;
        invalidate();
    }

    public final void setRectHeight(float height) {
        this.rectHeight = height;
        invalidate();
    }

    public final void setRectSpacing(float spacing) {
        this.rectSpacing = spacing;
        invalidate();
    }

    public final void setRectWidth(float width) {
        this.rectWidth = width;
        invalidate();
    }
}
