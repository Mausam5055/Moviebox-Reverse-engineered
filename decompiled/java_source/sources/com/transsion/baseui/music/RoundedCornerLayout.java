package com.transsion.baseui.music;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.baseui.R$styleable;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ/\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0011H\u0014¢\u0006\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0018\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0016\u0010\u001a\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u0017R\u0016\u0010\u001c\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u0017R\u0016\u0010\u001e\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u0017R\u0014\u0010\"\u001a\u00020\u001f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010!¨\u0006#"}, d2 = {"Lcom/transsion/baseui/music/RoundedCornerLayout;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "w", "h", "oldw", "oldh", "", "onSizeChanged", "(IIII)V", "Landroid/graphics/Canvas;", "canvas", "dispatchDraw", "(Landroid/graphics/Canvas;)V", "", "a", "F", "cornerRadiusTopLeft", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "cornerRadiusTopRight", "c", "cornerRadiusBottomLeft", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "cornerRadiusBottomRight", "Landroid/graphics/Path;", "e", "Landroid/graphics/Path;", "path", "BaseUI_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class RoundedCornerLayout extends ConstraintLayout {
    public static final int $stable = 8;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private float cornerRadiusTopLeft;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private float cornerRadiusTopRight;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private float cornerRadiusBottomLeft;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private float cornerRadiusBottomRight;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private final Path path;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public RoundedCornerLayout(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public RoundedCornerLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public RoundedCornerLayout(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        this.path = new Path();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.RoundedCornerLayout);
        Intrinsics.g(typedArrayObtainStyledAttributes, "obtainStyledAttributes(...)");
        this.cornerRadiusTopLeft = typedArrayObtainStyledAttributes.getDimension(R$styleable.RoundedCornerLayout_cornerRadiusTopLeft, 0.0f);
        this.cornerRadiusTopRight = typedArrayObtainStyledAttributes.getDimension(R$styleable.RoundedCornerLayout_cornerRadiusTopRight, 0.0f);
        this.cornerRadiusBottomLeft = typedArrayObtainStyledAttributes.getDimension(R$styleable.RoundedCornerLayout_cornerRadiusBottomLeft, 0.0f);
        this.cornerRadiusBottomRight = typedArrayObtainStyledAttributes.getDimension(R$styleable.RoundedCornerLayout_cornerRadiusBottomRight, 0.0f);
        typedArrayObtainStyledAttributes.recycle();
    }

    public /* synthetic */ RoundedCornerLayout(Context context, AttributeSet attributeSet, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i12 & 2) != 0 ? null : attributeSet, (i12 & 4) != 0 ? 0 : i11);
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        Intrinsics.h(canvas, "canvas");
        int iSave = canvas.save();
        canvas.clipPath(this.path);
        super.dispatchDraw(canvas);
        canvas.restoreToCount(iSave);
    }

    @Override // android.view.View
    protected void onSizeChanged(int w11, int h11, int oldw, int oldh) {
        super.onSizeChanged(w11, h11, oldw, oldh);
        this.path.reset();
        Path path = this.path;
        RectF rectF = new RectF(0.0f, 0.0f, w11, h11);
        float f11 = this.cornerRadiusTopLeft;
        float f12 = this.cornerRadiusTopRight;
        float f13 = this.cornerRadiusBottomRight;
        float f14 = this.cornerRadiusBottomLeft;
        path.addRoundRect(rectF, new float[]{f11, f11, f12, f12, f13, f13, f14, f14}, Path.Direction.CW);
    }
}
