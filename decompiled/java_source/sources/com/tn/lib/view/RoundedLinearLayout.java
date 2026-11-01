package com.tn.lib.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.widget.LinearLayout;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.widget.R$styleable;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0014\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u001f\u0010\u0010\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J-\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\r¢\u0006\u0004\b\u0016\u0010\u0017J\u0015\u0010\u0019\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\r¢\u0006\u0004\b\u0019\u0010\u001aJ/\u0010\u001d\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010!\u001a\u00020\n2\u0006\u0010 \u001a\u00020\u001fH\u0014¢\u0006\u0004\b!\u0010\"J\u0017\u0010#\u001a\u00020\n2\u0006\u0010 \u001a\u00020\u001fH\u0016¢\u0006\u0004\b#\u0010\"R\u0014\u0010&\u001a\u00020$8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010%R\u0014\u0010)\u001a\u00020'8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010(R\u0014\u0010-\u001a\u00020*8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b+\u0010,R\u0016\u00101\u001a\u00020.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u00100¨\u00062"}, d2 = {"Lcom/tn/lib/view/RoundedLinearLayout;", "Landroid/widget/LinearLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", "a", "()V", "", "w", "h", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(FF)V", "topLeft", "topRight", "bottomLeft", "bottomRight", "setCornerRadii", "(FFFF)V", "radius", "setCornerRadius", "(F)V", "oldw", "oldh", "onSizeChanged", "(IIII)V", "Landroid/graphics/Canvas;", "canvas", "dispatchDraw", "(Landroid/graphics/Canvas;)V", "draw", "", "[F", "cornerRadii", "Landroid/graphics/Path;", "Landroid/graphics/Path;", "clipPath", "Landroid/graphics/RectF;", "c", "Landroid/graphics/RectF;", "boundsRect", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Z", "isUniform", "UI_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class RoundedLinearLayout extends LinearLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final float[] cornerRadii;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final Path clipPath;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final RectF boundsRect;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private boolean isUniform;

    public static final class a extends ViewOutlineProvider {
        a() {
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            Intrinsics.h(view, "view");
            Intrinsics.h(outline, "outline");
            outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), RoundedLinearLayout.this.cornerRadii[0]);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public RoundedLinearLayout(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public RoundedLinearLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public RoundedLinearLayout(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        this.cornerRadii = new float[8];
        this.clipPath = new Path();
        this.boundsRect = new RectF();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.RoundedLinearLayout);
        Intrinsics.g(typedArrayObtainStyledAttributes, "obtainStyledAttributes(...)");
        float dimension = typedArrayObtainStyledAttributes.getDimension(R$styleable.RoundedLinearLayout_rl_cornerRadius, 0.0f);
        float dimension2 = typedArrayObtainStyledAttributes.getDimension(R$styleable.RoundedLinearLayout_rl_cornerTopLeftRadius, dimension);
        float dimension3 = typedArrayObtainStyledAttributes.getDimension(R$styleable.RoundedLinearLayout_rl_cornerTopRightRadius, dimension);
        float dimension4 = typedArrayObtainStyledAttributes.getDimension(R$styleable.RoundedLinearLayout_rl_cornerBottomLeftRadius, dimension);
        float dimension5 = typedArrayObtainStyledAttributes.getDimension(R$styleable.RoundedLinearLayout_rl_cornerBottomRightRadius, dimension);
        typedArrayObtainStyledAttributes.recycle();
        setCornerRadii(dimension2, dimension3, dimension4, dimension5);
    }

    public /* synthetic */ RoundedLinearLayout(Context context, AttributeSet attributeSet, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i12 & 2) != 0 ? null : attributeSet, (i12 & 4) != 0 ? 0 : i11);
    }

    private final void a() {
        if (this.isUniform) {
            setOutlineProvider(new a());
            setClipToOutline(true);
        } else {
            setOutlineProvider(ViewOutlineProvider.BACKGROUND);
            setClipToOutline(false);
        }
    }

    private final void b(float w11, float h11) {
        if (this.isUniform) {
            return;
        }
        this.boundsRect.set(0.0f, 0.0f, w11, h11);
        this.clipPath.reset();
        this.clipPath.addRoundRect(this.boundsRect, this.cornerRadii, Path.Direction.CW);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        Intrinsics.h(canvas, "canvas");
        if (this.isUniform) {
            super.dispatchDraw(canvas);
            return;
        }
        canvas.save();
        canvas.clipPath(this.clipPath);
        super.dispatchDraw(canvas);
        canvas.restore();
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        Intrinsics.h(canvas, "canvas");
        if (this.isUniform) {
            super.draw(canvas);
            return;
        }
        canvas.save();
        canvas.clipPath(this.clipPath);
        super.draw(canvas);
        canvas.restore();
    }

    @Override // android.view.View
    protected void onSizeChanged(int w11, int h11, int oldw, int oldh) {
        super.onSizeChanged(w11, h11, oldw, oldh);
        b(w11, h11);
        if (this.isUniform) {
            invalidateOutline();
        }
    }

    public final void setCornerRadii(float topLeft, float topRight, float bottomLeft, float bottomRight) {
        float[] fArr = this.cornerRadii;
        boolean z10 = false;
        fArr[0] = topLeft;
        fArr[1] = topLeft;
        fArr[2] = topRight;
        fArr[3] = topRight;
        fArr[4] = bottomRight;
        fArr[5] = bottomRight;
        fArr[6] = bottomLeft;
        fArr[7] = bottomLeft;
        if (topLeft == topRight && topLeft == bottomLeft && topLeft == bottomRight) {
            z10 = true;
        }
        this.isUniform = z10;
        a();
        invalidate();
    }

    public final void setCornerRadius(float radius) {
        setCornerRadii(radius, radius, radius, radius);
    }
}
