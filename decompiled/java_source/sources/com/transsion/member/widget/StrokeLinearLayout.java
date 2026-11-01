package com.transsion.member.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.transsion.member.R$styleable;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0018\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0014\n\u0002\b\u000b\b\u0007\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ/\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\nH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u001f\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\nH\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u001d\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\n2\u0006\u0010\u0019\u001a\u00020\u0006¢\u0006\u0004\b\u001a\u0010\u001bJ\u0015\u0010\u001c\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\n¢\u0006\u0004\b\u001c\u0010\u001dJ\u001d\u0010 \u001a\u00020\u000f2\u0006\u0010\u001e\u001a\u00020\n2\u0006\u0010\u001f\u001a\u00020\n¢\u0006\u0004\b \u0010\u0017J\u0015\u0010\"\u001a\u00020\u000f2\u0006\u0010!\u001a\u00020\n¢\u0006\u0004\b\"\u0010\u001dJ-\u0010#\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\n¢\u0006\u0004\b#\u0010\u0011J/\u0010&\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u00062\u0006\u0010$\u001a\u00020\u00062\u0006\u0010%\u001a\u00020\u0006H\u0014¢\u0006\u0004\b&\u0010'J\u0017\u0010*\u001a\u00020\u000f2\u0006\u0010)\u001a\u00020(H\u0016¢\u0006\u0004\b*\u0010+R\u0014\u0010.\u001a\u00020,8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010-R\u0014\u00101\u001a\u00020/8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u00100R\u0014\u00104\u001a\u0002028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u00103R\u0014\u00108\u001a\u0002058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b6\u00107R\u0016\u0010;\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u0010:R\u0016\u0010=\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b<\u0010:R\u0016\u0010?\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b>\u0010:¨\u0006@"}, d2 = {"Lcom/transsion/member/widget/StrokeLinearLayout;", "Landroid/widget/LinearLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", "tl", "tr", "bl", TtmlNode.TAG_BR, "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(FFFF)V", "a", "()V", "w", "h", "c", "(FF)V", "widthPx", TtmlNode.ATTR_TTS_COLOR, "setStroke", "(FI)V", "setStrokeWidth", "(F)V", "dashWidthPx", "dashGapPx", "setDash", "radiusPx", "setCornerRadius", "setCornerRadii", "oldw", "oldh", "onSizeChanged", "(IIII)V", "Landroid/graphics/Canvas;", "canvas", "draw", "(Landroid/graphics/Canvas;)V", "Landroid/graphics/Paint;", "Landroid/graphics/Paint;", "strokePaint", "Landroid/graphics/Path;", "Landroid/graphics/Path;", "strokePath", "Landroid/graphics/RectF;", "Landroid/graphics/RectF;", "strokeRect", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "[F", "cornerRadii", "e", "F", "strokeWidth", "f", "dashWidth", "g", "dashGap", "Member_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class StrokeLinearLayout extends LinearLayout {
    public static final int $stable = 8;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final Paint strokePaint;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final Path strokePath;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final RectF strokeRect;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final float[] cornerRadii;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private float strokeWidth;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private float dashWidth;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private float dashGap;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public StrokeLinearLayout(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public StrokeLinearLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public StrokeLinearLayout(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        Paint paint = new Paint(1);
        paint.setStyle(Paint.Style.STROKE);
        this.strokePaint = paint;
        this.strokePath = new Path();
        this.strokeRect = new RectF();
        this.cornerRadii = new float[8];
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.StrokeLinearLayout);
        Intrinsics.g(typedArrayObtainStyledAttributes, "obtainStyledAttributes(...)");
        float dimension = typedArrayObtainStyledAttributes.getDimension(R$styleable.StrokeLinearLayout_sll_cornerRadius, 0.0f);
        float dimension2 = typedArrayObtainStyledAttributes.getDimension(R$styleable.StrokeLinearLayout_sll_cornerTLRadius, dimension);
        float dimension3 = typedArrayObtainStyledAttributes.getDimension(R$styleable.StrokeLinearLayout_sll_cornerTRRadius, dimension);
        float dimension4 = typedArrayObtainStyledAttributes.getDimension(R$styleable.StrokeLinearLayout_sll_cornerBLRadius, dimension);
        float dimension5 = typedArrayObtainStyledAttributes.getDimension(R$styleable.StrokeLinearLayout_sll_cornerBRRadius, dimension);
        this.strokeWidth = typedArrayObtainStyledAttributes.getDimension(R$styleable.StrokeLinearLayout_sll_strokeWidth, 0.0f);
        paint.setColor(typedArrayObtainStyledAttributes.getColor(R$styleable.StrokeLinearLayout_sll_strokeColor, 0));
        this.dashWidth = typedArrayObtainStyledAttributes.getDimension(R$styleable.StrokeLinearLayout_sll_dashWidth, 0.0f);
        this.dashGap = typedArrayObtainStyledAttributes.getDimension(R$styleable.StrokeLinearLayout_sll_dashGap, 0.0f);
        typedArrayObtainStyledAttributes.recycle();
        b(dimension2, dimension3, dimension4, dimension5);
        a();
        setWillNotDraw(false);
    }

    public /* synthetic */ StrokeLinearLayout(Context context, AttributeSet attributeSet, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i12 & 2) != 0 ? null : attributeSet, (i12 & 4) != 0 ? 0 : i11);
    }

    private final void a() {
        this.strokePaint.setStrokeWidth(this.strokeWidth);
        this.strokePaint.setPathEffect((this.dashWidth <= 0.0f || this.dashGap <= 0.0f) ? null : new DashPathEffect(new float[]{this.dashWidth, this.dashGap}, 0.0f));
    }

    private final void b(float tl2, float tr2, float bl2, float br2) {
        float[] fArr = this.cornerRadii;
        fArr[0] = tl2;
        fArr[1] = tl2;
        fArr[2] = tr2;
        fArr[3] = tr2;
        fArr[4] = br2;
        fArr[5] = br2;
        fArr[6] = bl2;
        fArr[7] = bl2;
    }

    private final void c(float w11, float h11) {
        float f11 = this.strokeWidth;
        if (f11 <= 0.0f) {
            return;
        }
        float f12 = f11 / 2.0f;
        this.strokeRect.set(f12, f12, w11 - f12, h11 - f12);
        float[] fArr = new float[8];
        for (int i11 = 0; i11 < 8; i11++) {
            fArr[i11] = Math.max(this.cornerRadii[i11] - f12, 0.0f);
        }
        this.strokePath.reset();
        this.strokePath.addRoundRect(this.strokeRect, fArr, Path.Direction.CW);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        Intrinsics.h(canvas, "canvas");
        super.draw(canvas);
        if (this.strokeWidth <= 0.0f || (this.strokePaint.getColor() >>> 24) == 0) {
            return;
        }
        canvas.drawPath(this.strokePath, this.strokePaint);
    }

    @Override // android.view.View
    protected void onSizeChanged(int w11, int h11, int oldw, int oldh) {
        super.onSizeChanged(w11, h11, oldw, oldh);
        c(w11, h11);
    }

    public final void setCornerRadii(float tl2, float tr2, float bl2, float br2) {
        b(tl2, tr2, bl2, br2);
        c(getWidth(), getHeight());
        invalidate();
    }

    public final void setCornerRadius(float radiusPx) {
        b(radiusPx, radiusPx, radiusPx, radiusPx);
        c(getWidth(), getHeight());
        invalidate();
    }

    public final void setDash(float dashWidthPx, float dashGapPx) {
        this.dashWidth = dashWidthPx;
        this.dashGap = dashGapPx;
        a();
        invalidate();
    }

    public final void setStroke(float widthPx, int color) {
        this.strokeWidth = widthPx;
        this.strokePaint.setStrokeWidth(widthPx);
        this.strokePaint.setColor(color);
        a();
        c(getWidth(), getHeight());
        invalidate();
    }

    public final void setStrokeWidth(float widthPx) {
        this.strokeWidth = widthPx;
        this.strokePaint.setStrokeWidth(widthPx);
        a();
        c(getWidth(), getHeight());
        invalidate();
    }
}
