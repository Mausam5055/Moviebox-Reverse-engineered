package com.transsion.ad.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.ad.R$styleable;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0014\n\u0002\b\u0003\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\u000b\u0010\fJ/\u0010\u0011\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u0013H\u0014¢\u0006\u0004\b\u0015\u0010\u0016R$\u0010\u001c\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00178\u0002@BX\u0082\u000e¢\u0006\f\n\u0004\b\u000b\u0010\u0019\"\u0004\b\u001a\u0010\u001bR*\u0010!\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00178\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\u001d\u0010\u0019\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010\u001bR*\u0010%\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00178\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\"\u0010\u0019\u001a\u0004\b#\u0010\u001f\"\u0004\b$\u0010\u001bR*\u0010)\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00178\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b&\u0010\u0019\u001a\u0004\b'\u0010\u001f\"\u0004\b(\u0010\u001bR*\u0010-\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00178\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b*\u0010\u0019\u001a\u0004\b+\u0010\u001f\"\u0004\b,\u0010\u001bR\u0014\u00101\u001a\u00020.8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b/\u00100R\u0014\u00105\u001a\u0002028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b3\u00104R\u0014\u00108\u001a\u0002068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u00107¨\u00069"}, d2 = {"Lcom/transsion/ad/view/CustomRoundCornerLayout;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", "a", "()V", "w", "h", "oldw", "oldh", "onSizeChanged", "(IIII)V", "Landroid/graphics/Canvas;", "canvas", "dispatchDraw", "(Landroid/graphics/Canvas;)V", "", AppMeasurementSdk.ConditionalUserProperty.VALUE, "F", "setAllCornerRadius", "(F)V", "allCornerRadius", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "getTopLeftRadius", "()F", "setTopLeftRadius", "topLeftRadius", "c", "getTopRightRadius", "setTopRightRadius", "topRightRadius", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "getBottomLeftRadius", "setBottomLeftRadius", "bottomLeftRadius", "e", "getBottomRightRadius", "setBottomRightRadius", "bottomRightRadius", "Landroid/graphics/Path;", "f", "Landroid/graphics/Path;", "path", "Landroid/graphics/RectF;", "g", "Landroid/graphics/RectF;", "rect", "", "[F", "radii", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class CustomRoundCornerLayout extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private float allCornerRadius;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private float topLeftRadius;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private float topRightRadius;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private float bottomLeftRadius;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private float bottomRightRadius;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private final Path path;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private final RectF rect;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private final float[] radii;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CustomRoundCornerLayout(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CustomRoundCornerLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CustomRoundCornerLayout(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        this.path = new Path();
        this.rect = new RectF();
        this.radii = new float[8];
        int[] CustomRoundCornerLayout = R$styleable.CustomRoundCornerLayout;
        Intrinsics.g(CustomRoundCornerLayout, "CustomRoundCornerLayout");
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, CustomRoundCornerLayout, 0, 0);
        setAllCornerRadius(typedArrayObtainStyledAttributes.getDimension(R$styleable.CustomRoundCornerLayout_allCornerRadius, 0.0f));
        setTopLeftRadius(typedArrayObtainStyledAttributes.getDimension(R$styleable.CustomRoundCornerLayout_topLeftRadius, this.allCornerRadius));
        setTopRightRadius(typedArrayObtainStyledAttributes.getDimension(R$styleable.CustomRoundCornerLayout_topRightRadius, this.allCornerRadius));
        setBottomLeftRadius(typedArrayObtainStyledAttributes.getDimension(R$styleable.CustomRoundCornerLayout_bottomLeftRadius, this.allCornerRadius));
        setBottomRightRadius(typedArrayObtainStyledAttributes.getDimension(R$styleable.CustomRoundCornerLayout_bottomRightRadius, this.allCornerRadius));
        typedArrayObtainStyledAttributes.recycle();
        a();
        setWillNotDraw(false);
    }

    public /* synthetic */ CustomRoundCornerLayout(Context context, AttributeSet attributeSet, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i12 & 2) != 0 ? null : attributeSet, (i12 & 4) != 0 ? 0 : i11);
    }

    private final void a() {
        float[] fArr = this.radii;
        float f11 = this.topLeftRadius;
        if (f11 <= 0.0f) {
            f11 = this.allCornerRadius;
        }
        fArr[0] = f11;
        fArr[1] = f11;
        float f12 = this.topRightRadius;
        if (f12 <= 0.0f) {
            f12 = this.allCornerRadius;
        }
        fArr[2] = f12;
        fArr[3] = f12;
        float f13 = this.bottomRightRadius;
        if (f13 <= 0.0f) {
            f13 = this.allCornerRadius;
        }
        fArr[4] = f13;
        fArr[5] = f13;
        float f14 = this.bottomLeftRadius;
        if (f14 <= 0.0f) {
            f14 = this.allCornerRadius;
        }
        fArr[6] = f14;
        fArr[7] = f14;
    }

    private final void setAllCornerRadius(float f11) {
        this.allCornerRadius = f11;
        a();
        invalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        Intrinsics.h(canvas, "canvas");
        int iSave = canvas.save();
        canvas.clipPath(this.path);
        super.dispatchDraw(canvas);
        canvas.restoreToCount(iSave);
    }

    public final float getBottomLeftRadius() {
        return this.bottomLeftRadius;
    }

    public final float getBottomRightRadius() {
        return this.bottomRightRadius;
    }

    public final float getTopLeftRadius() {
        return this.topLeftRadius;
    }

    public final float getTopRightRadius() {
        return this.topRightRadius;
    }

    @Override // android.view.View
    protected void onSizeChanged(int w11, int h11, int oldw, int oldh) {
        super.onSizeChanged(w11, h11, oldw, oldh);
        this.rect.set(0.0f, 0.0f, w11, h11);
        this.path.reset();
        this.path.addRoundRect(this.rect, this.radii, Path.Direction.CW);
        this.path.close();
    }

    public final void setBottomLeftRadius(float f11) {
        this.bottomLeftRadius = f11;
        a();
        invalidate();
    }

    public final void setBottomRightRadius(float f11) {
        this.bottomRightRadius = f11;
        a();
        invalidate();
    }

    public final void setTopLeftRadius(float f11) {
        this.topLeftRadius = f11;
        a();
        invalidate();
    }

    public final void setTopRightRadius(float f11) {
        this.topRightRadius = f11;
        a();
        invalidate();
    }
}
