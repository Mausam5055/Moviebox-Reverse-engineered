package com.cloud.tmc.integration.utils.ext;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.style.ReplacementSpan;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005JV\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\r2\b\b\u0001\u0010\u000e\u001a\u00020\u00032\b\b\u0001\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J8\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010\f\u001a\u0004\u0018\u00010\r2\b\b\u0001\u0010\u000e\u001a\u00020\u00032\b\b\u0001\u0010\u000f\u001a\u00020\u00032\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/cloud/tmc/integration/utils/ext/SpaceSpan;", "Landroid/text/style/ReplacementSpan;", "width", "", TtmlNode.ATTR_TTS_COLOR, "(II)V", "paint", "Landroid/graphics/Paint;", "draw", "", "canvas", "Landroid/graphics/Canvas;", MimeTypes.BASE_TYPE_TEXT, "", "start", TtmlNode.END, "x", "", IntegrationConstants.TAB_BAR_POSITION_TOP, "y", IntegrationConstants.TAB_BAR_POSITION_DEFAULT, "getSize", "fm", "Landroid/graphics/Paint$FontMetricsInt;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class SpaceSpan extends ReplacementSpan {
    private final Paint paint;
    private final int width;

    public SpaceSpan(int i11, int i12) {
        this.width = i11;
        Paint paint = new Paint();
        paint.setColor(i12);
        paint.setStyle(Paint.Style.FILL);
        this.paint = paint;
    }

    public /* synthetic */ SpaceSpan(int i11, int i12, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this(i11, (i13 & 2) != 0 ? 0 : i12);
    }

    @Override // android.text.style.ReplacementSpan
    public void draw(Canvas canvas, CharSequence text, int start, int end, float x10, int top, int y10, int bottom, Paint paint) {
        Intrinsics.h(canvas, "canvas");
        Intrinsics.h(paint, "paint");
        canvas.drawRect(x10, top, x10 + this.width, bottom, this.paint);
    }

    @Override // android.text.style.ReplacementSpan
    public int getSize(Paint paint, CharSequence text, int start, int end, Paint.FontMetricsInt fm2) {
        Intrinsics.h(paint, "paint");
        return this.width;
    }
}
