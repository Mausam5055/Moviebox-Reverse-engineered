package com.transsion.baseui.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.noober.background.BackgroundFactory;
import com.tn.lib.widget.TnTextView;
import com.transsion.baseui.R$styleable;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\f\b\u0007\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u0015\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\r\u0010\u000eJ\r\u0010\u000f\u001a\u00020\n¢\u0006\u0004\b\u000f\u0010\u0010J\u001d\u0010\u0013\u001a\u00020\f2\u0006\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\n¢\u0006\u0004\b\u0013\u0010\u0014J\u0015\u0010\u0015\u001a\u00020\f2\u0006\u0010\u0011\u001a\u00020\u0006¢\u0006\u0004\b\u0015\u0010\u0016J\u0015\u0010\u0017\u001a\u00020\f2\u0006\u0010\u0012\u001a\u00020\n¢\u0006\u0004\b\u0017\u0010\u000eJ\r\u0010\u0018\u001a\u00020\u0006¢\u0006\u0004\b\u0018\u0010\u0019J\r\u0010\u001a\u001a\u00020\n¢\u0006\u0004\b\u001a\u0010\u0010J\u0017\u0010\u001d\u001a\u00020\f2\u0006\u0010\u001c\u001a\u00020\u001bH\u0014¢\u0006\u0004\b\u001d\u0010\u001eR\u0016\u0010!\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0016\u0010$\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#R\u0016\u0010&\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010 ¨\u0006'"}, d2 = {"Lcom/transsion/baseui/widget/AlphaTextView;", "Lcom/tn/lib/widget/TnTextView;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", "alpha", "", "setTextAlpha", "(F)V", "getTextAlpha", "()F", TtmlNode.ATTR_TTS_COLOR, "widthPx", "setStroke", "(IF)V", "setStrokeColor", "(I)V", "setStrokeWidth", "getStrokeColor", "()I", "getStrokeWidth", "Landroid/graphics/Canvas;", "canvas", "onDraw", "(Landroid/graphics/Canvas;)V", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "F", "textAlpha", "c", "I", "strokeColor", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "strokeWidth", "BaseUI_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class AlphaTextView extends TnTextView {
    public static final int $stable = 8;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private float textAlpha;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private int strokeColor;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private float strokeWidth;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public AlphaTextView(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public AlphaTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public AlphaTextView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        this.textAlpha = 1.0f;
        BackgroundFactory.setViewBackground(context, attributeSet, this);
        int[] AlphaTextView = R$styleable.AlphaTextView;
        Intrinsics.g(AlphaTextView, "AlphaTextView");
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AlphaTextView, 0, 0);
        this.textAlpha = RangesKt.l(typedArrayObtainStyledAttributes.getFloat(R$styleable.AlphaTextView_textAlpha, 1.0f), 0.0f, 1.0f);
        this.strokeColor = typedArrayObtainStyledAttributes.getColor(R$styleable.AlphaTextView_strokeColor, 0);
        this.strokeWidth = typedArrayObtainStyledAttributes.getDimension(R$styleable.AlphaTextView_strokeWidth, 0.0f);
        typedArrayObtainStyledAttributes.recycle();
    }

    public /* synthetic */ AlphaTextView(Context context, AttributeSet attributeSet, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i12 & 2) != 0 ? null : attributeSet, (i12 & 4) != 0 ? 0 : i11);
    }

    public final int getStrokeColor() {
        return this.strokeColor;
    }

    public final float getStrokeWidth() {
        return this.strokeWidth;
    }

    public final float getTextAlpha() {
        return this.textAlpha;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        Intrinsics.h(canvas, "canvas");
        boolean z10 = this.strokeWidth > 0.0f && this.strokeColor != 0;
        int i11 = (int) (this.textAlpha * 255);
        if (!z10) {
            int alpha = getPaint().getAlpha();
            getPaint().setAlpha(i11);
            super.onDraw(canvas);
            getPaint().setAlpha(alpha);
            return;
        }
        getPaint().setStyle(Paint.Style.STROKE);
        getPaint().setStrokeWidth(this.strokeWidth);
        int color = getPaint().getColor();
        int alpha2 = getPaint().getAlpha();
        getPaint().setColor(this.strokeColor);
        getPaint().setAlpha(i11);
        super.onDraw(canvas);
        getPaint().setStyle(Paint.Style.FILL);
        getPaint().setStrokeWidth(0.0f);
        getPaint().setColor(color);
        getPaint().setAlpha(i11);
        super.onDraw(canvas);
        getPaint().setAlpha(alpha2);
    }

    public final void setStroke(int color, float widthPx) {
        this.strokeColor = color;
        this.strokeWidth = RangesKt.e(widthPx, 0.0f);
        invalidate();
    }

    public final void setStrokeColor(int color) {
        if (this.strokeColor == color) {
            return;
        }
        this.strokeColor = color;
        invalidate();
    }

    public final void setStrokeWidth(float widthPx) {
        float fE = RangesKt.e(widthPx, 0.0f);
        if (this.strokeWidth == fE) {
            return;
        }
        this.strokeWidth = fE;
        invalidate();
    }

    public final void setTextAlpha(float alpha) {
        float fL = RangesKt.l(alpha, 0.0f, 1.0f);
        if (this.textAlpha == fL) {
            return;
        }
        this.textAlpha = fL;
        invalidate();
    }
}
