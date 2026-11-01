package com.transsion.baseui.widget.text;

import android.content.Context;
import android.graphics.LinearGradient;
import android.graphics.Shader;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.content.b;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.tn.lib.widget.R$color;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\n\n\u0002\u0010\u0015\n\u0002\b\b\b\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J7\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\nH\u0014¢\u0006\u0004\b\u0010\u0010\u0011R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0019\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\"\u0010 \u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\"\u0010(\u001a\u00020!8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'¨\u0006)"}, d2 = {"Lcom/transsion/baseui/widget/text/GradientTextView;", "Landroidx/appcompat/widget/AppCompatTextView;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "changed", "", TtmlNode.LEFT, IntegrationConstants.TAB_BAR_POSITION_TOP, TtmlNode.RIGHT, IntegrationConstants.TAB_BAR_POSITION_DEFAULT, "", "onLayout", "(ZIIII)V", "Landroid/graphics/Shader;", "a", "Landroid/graphics/Shader;", "shader", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "F", "preWidth", "c", "Z", "getEnableGradientColor", "()Z", "setEnableGradientColor", "(Z)V", "enableGradientColor", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "[I", "getGradientColors", "()[I", "setGradientColors", "([I)V", "gradientColors", "BaseUI_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class GradientTextView extends AppCompatTextView {
    public static final int $stable = 8;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private Shader shader;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private float preWidth;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private boolean enableGradientColor;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private int[] gradientColors;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GradientTextView(Context context, AttributeSet attrs) {
        super(context, attrs);
        Intrinsics.h(context, "context");
        Intrinsics.h(attrs, "attrs");
        this.enableGradientColor = true;
        this.gradientColors = new int[]{b.getColor(Utils.a(), R$color.brand_new_gradient_start), b.getColor(Utils.a(), R$color.brand_new_gradient_center), b.getColor(Utils.a(), R$color.brand_new_gradient_end)};
    }

    public final boolean getEnableGradientColor() {
        return this.enableGradientColor;
    }

    public final int[] getGradientColors() {
        return this.gradientColors;
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView, android.view.View
    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
        super.onLayout(changed, left, top, right, bottom);
        if (this.enableGradientColor) {
            float fMeasureText = getPaint().measureText(getText().toString());
            if (this.shader == null || this.preWidth != fMeasureText) {
                this.shader = new LinearGradient(0.0f, 0.0f, fMeasureText, 0.0f, this.gradientColors, (float[]) null, Shader.TileMode.CLAMP);
            }
            getPaint().setShader(this.shader);
        }
    }

    public final void setEnableGradientColor(boolean z10) {
        this.enableGradientColor = z10;
    }

    public final void setGradientColors(int[] iArr) {
        Intrinsics.h(iArr, "<set-?>");
        this.gradientColors = iArr;
    }
}
