package com.cloud.tmc.integration.utils.ext;

import android.graphics.Typeface;
import android.text.TextPaint;
import android.text.style.TypefaceSpan;
import com.cloud.tmc.integration.BuildConfig;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u0010\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\bH\u0016J\u0014\u0010\u000b\u001a\u00020\u0006*\u00020\b2\u0006\u0010\f\u001a\u00020\u0003H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/cloud/tmc/integration/utils/ext/TypefaceSpanCompat;", "Landroid/text/style/TypefaceSpan;", "newType", "Landroid/graphics/Typeface;", "(Landroid/graphics/Typeface;)V", "updateDrawState", "", "ds", "Landroid/text/TextPaint;", "updateMeasureState", "paint", "applyTypeFace", "tf", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class TypefaceSpanCompat extends TypefaceSpan {
    private final Typeface newType;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TypefaceSpanCompat(Typeface newType) {
        super((String) null);
        Intrinsics.h(newType, "newType");
        this.newType = newType;
    }

    private final void applyTypeFace(TextPaint textPaint, Typeface typeface) {
        Typeface typeface2 = textPaint.getTypeface();
        int style = (typeface2 != null ? typeface2.getStyle() : 0) & (~typeface.getStyle());
        if ((style & 1) != 0) {
            textPaint.setFakeBoldText(true);
        }
        if ((style & 2) != 0) {
            textPaint.setTextSkewX(-0.25f);
        }
        textPaint.setTypeface(typeface);
    }

    @Override // android.text.style.TypefaceSpan, android.text.style.CharacterStyle
    public void updateDrawState(TextPaint ds2) {
        Intrinsics.h(ds2, "ds");
        applyTypeFace(ds2, this.newType);
    }

    @Override // android.text.style.TypefaceSpan, android.text.style.MetricAffectingSpan
    public void updateMeasureState(TextPaint paint) {
        Intrinsics.h(paint, "paint");
        applyTypeFace(paint, this.newType);
    }
}
