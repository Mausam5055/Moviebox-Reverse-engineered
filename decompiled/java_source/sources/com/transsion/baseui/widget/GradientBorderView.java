package com.transsion.baseui.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Shader;
import android.util.AttributeSet;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.view.ViewCompat;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.baseui.R$styleable;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0010\u0014\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\nH\u0014¢\u0006\u0004\b\r\u0010\u000eR\u0016\u0010\u0011\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0013\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0010R\u0016\u0010\u0017\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0016\u0010\u001b\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0016\u0010\u001d\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u0010¨\u0006\u001e"}, d2 = {"Lcom/transsion/baseui/widget/GradientBorderView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Landroid/graphics/Canvas;", "canvas", "", "dispatchDraw", "(Landroid/graphics/Canvas;)V", "a", "I", "startColor", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "endColor", "", "c", "[F", "cornerRadii", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "F", "borderWidth", "e", "gradientOrientation", "BaseUI_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class GradientBorderView extends ConstraintLayout {
    public static final int $stable = 8;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private int startColor;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private int endColor;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private float[] cornerRadii;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private float borderWidth;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private int gradientOrientation;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public GradientBorderView(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public GradientBorderView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public GradientBorderView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        this.startColor = ViewCompat.MEASURED_STATE_MASK;
        this.endColor = ViewCompat.MEASURED_STATE_MASK;
        this.cornerRadii = new float[]{0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f};
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.GradientBorderView);
        Intrinsics.g(typedArrayObtainStyledAttributes, "obtainStyledAttributes(...)");
        this.startColor = typedArrayObtainStyledAttributes.getColor(R$styleable.GradientBorderView_borderViewStartColor, ViewCompat.MEASURED_STATE_MASK);
        this.endColor = typedArrayObtainStyledAttributes.getColor(R$styleable.GradientBorderView_borderViewEndColor, ViewCompat.MEASURED_STATE_MASK);
        this.borderWidth = typedArrayObtainStyledAttributes.getDimension(R$styleable.GradientBorderView_borderWidth, 0.0f);
        this.gradientOrientation = typedArrayObtainStyledAttributes.getInt(R$styleable.GradientBorderView_gradientOrientation, 0);
        this.cornerRadii = new float[]{typedArrayObtainStyledAttributes.getDimension(R$styleable.GradientBorderView_topLeftCornerRadius, 0.0f), typedArrayObtainStyledAttributes.getDimension(R$styleable.GradientBorderView_topLeftCornerRadius, 0.0f), typedArrayObtainStyledAttributes.getDimension(R$styleable.GradientBorderView_topRightCornerRadius, 0.0f), typedArrayObtainStyledAttributes.getDimension(R$styleable.GradientBorderView_topRightCornerRadius, 0.0f), typedArrayObtainStyledAttributes.getDimension(R$styleable.GradientBorderView_bottomRightCornerRadius, 0.0f), typedArrayObtainStyledAttributes.getDimension(R$styleable.GradientBorderView_bottomRightCornerRadius, 0.0f), typedArrayObtainStyledAttributes.getDimension(R$styleable.GradientBorderView_bottomLeftCornerRadius, 0.0f), typedArrayObtainStyledAttributes.getDimension(R$styleable.GradientBorderView_bottomLeftCornerRadius, 0.0f)};
        typedArrayObtainStyledAttributes.recycle();
        setWillNotDraw(false);
    }

    public /* synthetic */ GradientBorderView(Context context, AttributeSet attributeSet, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i12 & 2) != 0 ? null : attributeSet, (i12 & 4) != 0 ? 0 : i11);
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        Intrinsics.h(canvas, "canvas");
        if (getWidth() <= 0 || getHeight() <= 0 || this.borderWidth <= 0.0f) {
            super.dispatchDraw(canvas);
            return;
        }
        Paint paint = new Paint();
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(this.borderWidth);
        paint.setShader(this.gradientOrientation == 1 ? new LinearGradient(0.0f, 0.0f, 0.0f, getHeight(), this.startColor, this.endColor, Shader.TileMode.CLAMP) : new LinearGradient(0.0f, 0.0f, getWidth(), 0.0f, this.startColor, this.endColor, Shader.TileMode.CLAMP));
        float f11 = this.borderWidth;
        float f12 = 2;
        RectF rectF = new RectF(f11 / f12, f11 / f12, getWidth() - (this.borderWidth / f12), getHeight() - (this.borderWidth / f12));
        Path path = new Path();
        path.addRoundRect(rectF, this.cornerRadii, Path.Direction.CW);
        canvas.drawPath(path, paint);
        try {
            super.dispatchDraw(canvas);
        } catch (IllegalArgumentException unused) {
        }
    }
}
