package com.transsion.player.ui.render;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.SurfaceTexture;
import android.util.AttributeSet;
import android.view.Surface;
import android.view.SurfaceView;
import android.view.View;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.player.config.RenderType;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import no.a;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u0011\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006B\u001b\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\u0005\u0010\tB%\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\u0005\u0010\fB\u001b\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0005\u0010\rB-\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\u0005\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u001f\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u0017\u0010\u001a\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u001e\u001a\u00020\u00162\u0006\u0010\u001d\u001a\u00020\u001cH\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u0011\u0010!\u001a\u0004\u0018\u00010 H\u0016¢\u0006\u0004\b!\u0010\"J\u000f\u0010#\u001a\u00020\u0016H\u0016¢\u0006\u0004\b#\u0010$J\u001f\u0010'\u001a\u00020\u00162\u0006\u0010%\u001a\u00020\u000e2\u0006\u0010&\u001a\u00020\u000eH\u0014¢\u0006\u0004\b'\u0010\u0018R\u0014\u0010+\u001a\u00020(8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010*R\u0018\u0010/\u001a\u0004\u0018\u00010,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010.R\u0018\u00103\u001a\u0004\u0018\u0001008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u00102¨\u00064"}, d2 = {"Lcom/transsion/player/ui/render/SurfaceRenderView;", "Landroid/view/SurfaceView;", "", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Lcom/transsion/player/config/RenderType;", "renderType", "(Landroid/content/Context;Lcom/transsion/player/config/RenderType;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/transsion/player/config/RenderType;)V", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/transsion/player/config/RenderType;)V", "Landroid/view/View;", "getView", "()Landroid/view/View;", "videoWidth", "videoHeight", "", "setVideoSize", "(II)V", "degree", "setVideoRotation", "(I)V", "Lcom/transsion/player/ui/render/RenderScaleMode;", "scaleType", "setScaleType", "(Lcom/transsion/player/ui/render/RenderScaleMode;)V", "Landroid/graphics/Bitmap;", "doScreenShot", "()Landroid/graphics/Bitmap;", "release", "()V", "widthMeasureSpec", "heightMeasureSpec", "onMeasure", "Lno/a;", "a", "Lno/a;", "mMeasureHelper", "Landroid/graphics/SurfaceTexture;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Landroid/graphics/SurfaceTexture;", "mSurfaceTexture", "Landroid/view/Surface;", "c", "Landroid/view/Surface;", "mSurface", "LibPlayer_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class SurfaceRenderView extends SurfaceView {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final a mMeasureHelper;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private SurfaceTexture mSurfaceTexture;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private Surface mSurface;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SurfaceRenderView(Context context) {
        this(context, null, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SurfaceRenderView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SurfaceRenderView(Context context, AttributeSet attributeSet, int i11, RenderType renderType) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        this.mMeasureHelper = new a();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SurfaceRenderView(Context context, AttributeSet attributeSet, RenderType renderType) {
        this(context, attributeSet, 0, renderType);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SurfaceRenderView(Context context, RenderType renderType) {
        this(context, null, renderType);
        Intrinsics.h(context, "context");
    }

    public Bitmap doScreenShot() {
        return null;
    }

    public View getView() {
        return this;
    }

    @Override // android.view.SurfaceView, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int[] iArrA = this.mMeasureHelper.a(widthMeasureSpec, heightMeasureSpec);
        setMeasuredDimension(iArrA[0], iArrA[1]);
    }

    public void release() {
        Surface surface = this.mSurface;
        if (surface != null) {
            surface.release();
        }
        SurfaceTexture surfaceTexture = this.mSurfaceTexture;
        if (surfaceTexture != null) {
            surfaceTexture.release();
        }
    }

    public void setScaleType(RenderScaleMode scaleType) {
        Intrinsics.h(scaleType, "scaleType");
        this.mMeasureHelper.b(scaleType);
        requestLayout();
    }

    public void setVideoRotation(int degree) {
        this.mMeasureHelper.c(degree);
        setRotation(degree);
    }

    public void setVideoSize(int videoWidth, int videoHeight) {
        if (videoWidth <= 0 || videoHeight <= 0) {
            return;
        }
        this.mMeasureHelper.d(videoWidth, videoHeight);
        requestLayout();
    }
}
