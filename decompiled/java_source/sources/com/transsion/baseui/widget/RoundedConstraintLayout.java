package com.transsion.baseui.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Path;
import android.util.AttributeSet;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.baseui.R$styleable;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\f\b\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bH\u0014¢\u0006\u0004\b\u000b\u0010\fR\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0014\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0016\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0013R\u0016\u0010\u0018\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0013R\u0016\u0010\u001a\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u0013R\u0016\u0010\u001c\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u0013¨\u0006\u001d"}, d2 = {"Lcom/transsion/baseui/widget/RoundedConstraintLayout;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "Landroid/graphics/Canvas;", "canvas", "", "dispatchDraw", "(Landroid/graphics/Canvas;)V", "Landroid/graphics/Path;", "a", "Landroid/graphics/Path;", "path", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "F", "radius", "c", "topLeftRadius", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "topRightRadius", "e", "bottomLeftRadius", "f", "bottomRightRadius", "BaseUI_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class RoundedConstraintLayout extends ConstraintLayout {
    public static final int $stable = 8;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final Path path;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private float radius;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private float topLeftRadius;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private float topRightRadius;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private float bottomLeftRadius;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private float bottomRightRadius;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RoundedConstraintLayout(Context context, AttributeSet attrs) {
        super(context, attrs);
        Intrinsics.h(context, "context");
        Intrinsics.h(attrs, "attrs");
        this.path = new Path();
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attrs, R$styleable.RoundedConstraintLayout, 0, 0);
        Intrinsics.g(typedArrayObtainStyledAttributes, "obtainStyledAttributes(...)");
        try {
            this.radius = typedArrayObtainStyledAttributes.getDimension(R$styleable.RoundedConstraintLayout_cornerRadius, 0.0f);
            this.topLeftRadius = typedArrayObtainStyledAttributes.getDimension(R$styleable.RoundedConstraintLayout_topLeftRadius, 0.0f);
            this.topRightRadius = typedArrayObtainStyledAttributes.getDimension(R$styleable.RoundedConstraintLayout_topRightRadius, 0.0f);
            this.bottomLeftRadius = typedArrayObtainStyledAttributes.getDimension(R$styleable.RoundedConstraintLayout_bottomLeftRadius, 0.0f);
            this.bottomRightRadius = typedArrayObtainStyledAttributes.getDimension(R$styleable.RoundedConstraintLayout_bottomRightRadius, 0.0f);
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        Intrinsics.h(canvas, "canvas");
        if (this.radius > 0.0f) {
            Path path = this.path;
            float width = getWidth();
            float height = getHeight();
            float f11 = this.radius;
            path.addRoundRect(0.0f, 0.0f, width, height, f11, f11, Path.Direction.CW);
            canvas.clipPath(this.path);
        } else {
            float f12 = this.topLeftRadius;
            float f13 = this.topRightRadius;
            float f14 = this.bottomRightRadius;
            float f15 = this.bottomLeftRadius;
            this.path.addRoundRect(0.0f, 0.0f, getWidth(), getHeight(), new float[]{f12, f12, f13, f13, f14, f14, f15, f15}, Path.Direction.CW);
            canvas.clipPath(this.path);
        }
        try {
            super.dispatchDraw(canvas);
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }
}
