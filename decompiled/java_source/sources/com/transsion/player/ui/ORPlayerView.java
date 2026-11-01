package com.transsion.player.ui;

import android.content.Context;
import android.graphics.Color;
import android.util.AttributeSet;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import bo.b;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.player.config.RenderType;
import com.transsion.player.ui.render.SurfaceRenderView;
import com.transsion.player.ui.render.TextureRenderView;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0004\u0010\bB%\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0004\u0010\u000bB-\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\r\u001a\u00020\f\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0004\u0010\u000eJ\u0015\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0015\u001a\u0004\u0018\u00010\u0014¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0018\u001a\u0004\u0018\u00010\u0017¢\u0006\u0004\b\u0018\u0010\u0019R\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0018\u0010!\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 ¨\u0006\""}, d2 = {"Lcom/transsion/player/ui/ORPlayerView;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Lcom/transsion/player/config/RenderType;", "renderType", "(Landroid/content/Context;Lcom/transsion/player/config/RenderType;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/transsion/player/config/RenderType;)V", "", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/transsion/player/config/RenderType;)V", "Landroid/view/ViewGroup$LayoutParams;", "lp", "", "updateSurface", "(Landroid/view/ViewGroup$LayoutParams;)V", "Landroid/view/SurfaceView;", "getSurface", "()Landroid/view/SurfaceView;", "Landroid/view/TextureView;", "getTextureView", "()Landroid/view/TextureView;", "Lcom/transsion/player/ui/render/TextureRenderView;", "a", "Lcom/transsion/player/ui/render/TextureRenderView;", "textureView", "Lcom/transsion/player/ui/render/SurfaceRenderView;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/player/ui/render/SurfaceRenderView;", "surfaceView", "LibPlayer_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ORPlayerView extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private TextureRenderView textureView;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private SurfaceRenderView surfaceView;

    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f48551a;

        static {
            int[] iArr = new int[RenderType.values().length];
            try {
                iArr[RenderType.SURFACE_VIEW.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[RenderType.TEXTURE_VIEW.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f48551a = iArr;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ORPlayerView(Context context) {
        this(context, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ORPlayerView(Context context, AttributeSet attributeSet, int i11, RenderType renderType) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        setBackgroundColor(Color.parseColor("#FF000000"));
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        int i12 = renderType != null ? a.f48551a[renderType.ordinal()] : -1;
        if (i12 == 1) {
            SurfaceRenderView surfaceRenderView = new SurfaceRenderView(context);
            this.surfaceView = surfaceRenderView;
            addView(surfaceRenderView, layoutParams);
        } else if (i12 == 2) {
            TextureRenderView textureRenderView = new TextureRenderView(context);
            this.textureView = textureRenderView;
            addView(textureRenderView, layoutParams);
        } else if (b.f16639a.b()) {
            SurfaceRenderView surfaceRenderView2 = new SurfaceRenderView(context);
            this.surfaceView = surfaceRenderView2;
            addView(surfaceRenderView2, layoutParams);
        } else {
            TextureRenderView textureRenderView2 = new TextureRenderView(context);
            this.textureView = textureRenderView2;
            addView(textureRenderView2, layoutParams);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ORPlayerView(Context context, AttributeSet attributeSet, RenderType renderType) {
        this(context, attributeSet, 0, renderType);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ORPlayerView(Context context, RenderType renderType) {
        this(context, null, renderType);
        Intrinsics.h(context, "context");
    }

    public final SurfaceView getSurface() {
        return this.surfaceView;
    }

    public final TextureView getTextureView() {
        return this.textureView;
    }

    public final void updateSurface(ViewGroup.LayoutParams lp2) {
        Intrinsics.h(lp2, "lp");
        if (b.f16639a.b()) {
            SurfaceRenderView surfaceRenderView = this.surfaceView;
            if (surfaceRenderView != null) {
                surfaceRenderView.setLayoutParams(lp2);
                return;
            }
            return;
        }
        TextureRenderView textureRenderView = this.textureView;
        if (textureRenderView != null) {
            textureRenderView.setLayoutParams(lp2);
        }
    }
}
