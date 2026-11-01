package com.transsion.baseui.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.LinearGradient;
import android.graphics.Shader;
import android.util.AttributeSet;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.noober.background.BackgroundFactory;
import com.tn.lib.view.FlowLayout;
import com.tn.lib.widget.TnTextView;
import com.transsion.baseui.R$styleable;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u000b\b\u0007\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\u000b\u0010\fJ%\u0010\u0010\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0006¢\u0006\u0004\b\u0010\u0010\u0011J7\u0010\u0018\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u0018\u0010\u0019R\u0016\u0010\r\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0016\u0010\u000e\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010\u001bR\u0016\u0010\u000f\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001b¨\u0006\u001d"}, d2 = {"Lcom/transsion/baseui/widget/GradientTextView;", "Lcom/tn/lib/widget/TnTextView;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", "c", "()V", "startColor", "centerColor", "endColor", "setGradientColors", "(III)V", "", "changed", TtmlNode.LEFT, IntegrationConstants.TAB_BAR_POSITION_TOP, TtmlNode.RIGHT, IntegrationConstants.TAB_BAR_POSITION_DEFAULT, "onLayout", "(ZIIII)V", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "I", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "BaseUI_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class GradientTextView extends TnTextView {
    public static final int $stable = 8;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private int startColor;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private int centerColor;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private int endColor;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public GradientTextView(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public GradientTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public GradientTextView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        this.startColor = FlowLayout.SPACING_AUTO;
        this.endColor = -16776961;
        BackgroundFactory.setViewBackground(context, attributeSet, this);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.GradientTextView, 0, 0);
        Intrinsics.g(typedArrayObtainStyledAttributes, "obtainStyledAttributes(...)");
        this.startColor = typedArrayObtainStyledAttributes.getColor(R$styleable.GradientTextView_gradientTvStartColor, -1);
        this.centerColor = typedArrayObtainStyledAttributes.getColor(R$styleable.GradientTextView_gradientTvCenterColor, 0);
        this.endColor = typedArrayObtainStyledAttributes.getColor(R$styleable.GradientTextView_gradientTvEndColor, -1);
        typedArrayObtainStyledAttributes.recycle();
    }

    public /* synthetic */ GradientTextView(Context context, AttributeSet attributeSet, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i12 & 2) != 0 ? null : attributeSet, (i12 & 4) != 0 ? 0 : i11);
    }

    private final void c() {
        int i11 = this.centerColor;
        getPaint().setShader(new LinearGradient(0.0f, 0.0f, getWidth(), 0.0f, i11 == 0 ? new int[]{this.startColor, this.endColor} : new int[]{this.startColor, i11, this.endColor}, (float[]) null, Shader.TileMode.CLAMP));
        invalidate();
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView, android.view.View
    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
        super.onLayout(changed, left, top, right, bottom);
        if (changed) {
            c();
        }
    }

    public final void setGradientColors(int startColor, int centerColor, int endColor) {
        this.startColor = startColor;
        this.centerColor = centerColor;
        this.endColor = endColor;
        c();
    }
}
