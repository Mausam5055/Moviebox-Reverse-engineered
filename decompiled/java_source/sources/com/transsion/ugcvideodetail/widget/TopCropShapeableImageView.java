package com.transsion.ugcvideodetail.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.widget.ImageView;
import com.google.android.material.imageview.ShapeableImageView;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.ugcvideodetail.R$styleable;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0006\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000e\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0015\u0010\u0010\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u0006¢\u0006\u0004\b\u0010\u0010\u0011J\u001f\u0010\u0014\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u0014\u0010\u0015J/\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u001b\u0010\u001cR\u0016\u0010\u001f\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001e¨\u0006 "}, d2 = {"Lcom/transsion/ugcvideodetail/widget/TopCropShapeableImageView;", "Lcom/google/android/material/imageview/ShapeableImageView;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", "i", "()V", "dp", "j", "(I)I", "setMaxHeightDp", "(I)V", "widthMeasureSpec", "heightMeasureSpec", "onMeasure", "(II)V", "l", "t", CampaignEx.JSON_KEY_AD_R, DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "", "setFrame", "(IIII)Z", "w", "I", "maxHeightPx", "UGCVideoDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class TopCropShapeableImageView extends ShapeableImageView {

    /* JADX INFO: renamed from: w, reason: collision with root package name and from kotlin metadata */
    private int maxHeightPx;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public TopCropShapeableImageView(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public TopCropShapeableImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public TopCropShapeableImageView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        setScaleType(ImageView.ScaleType.MATRIX);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.TopCropImageView);
        Intrinsics.g(typedArrayObtainStyledAttributes, "obtainStyledAttributes(...)");
        this.maxHeightPx = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.TopCropImageView_maxHeightDp, j(200));
        typedArrayObtainStyledAttributes.recycle();
    }

    public /* synthetic */ TopCropShapeableImageView(Context context, AttributeSet attributeSet, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i12 & 2) != 0 ? null : attributeSet, (i12 & 4) != 0 ? 0 : i11);
    }

    private final void i() {
        Drawable drawable = getDrawable();
        if (drawable == null) {
            return;
        }
        float intrinsicWidth = drawable.getIntrinsicWidth();
        drawable.getIntrinsicHeight();
        float width = getWidth() / intrinsicWidth;
        Matrix matrix = new Matrix();
        matrix.postScale(width, width);
        matrix.postTranslate(0.0f, 0.0f);
        setImageMatrix(matrix);
    }

    private final int j(int dp2) {
        return (int) TypedValue.applyDimension(1, dp2, getResources().getDisplayMetrics());
    }

    @Override // com.google.android.material.imageview.ShapeableImageView, android.widget.ImageView, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        Drawable drawable = getDrawable();
        if (drawable == null) {
            super.onMeasure(widthMeasureSpec, heightMeasureSpec);
            return;
        }
        float size = View.MeasureSpec.getSize(widthMeasureSpec);
        int intrinsicHeight = (int) (drawable.getIntrinsicHeight() * (size / drawable.getIntrinsicWidth()));
        int i11 = this.maxHeightPx;
        if (intrinsicHeight > i11) {
            intrinsicHeight = i11;
        }
        setMeasuredDimension((int) size, intrinsicHeight);
    }

    @Override // android.widget.ImageView
    protected boolean setFrame(int l11, int t11, int r11, int b11) {
        i();
        return super.setFrame(l11, t11, r11, b11);
    }

    public final void setMaxHeightDp(int dp2) {
        this.maxHeightPx = j(dp2);
        requestLayout();
    }
}
