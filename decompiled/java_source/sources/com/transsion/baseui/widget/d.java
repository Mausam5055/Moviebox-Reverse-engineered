package com.transsion.baseui.widget;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.style.ImageSpan;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class d extends ImageSpan {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f43621a = new a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f43622b = 8;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(Drawable drawable, int i11) {
        super(drawable, i11);
        Intrinsics.e(drawable);
    }

    @Override // android.text.style.DynamicDrawableSpan, android.text.style.ReplacementSpan
    public void draw(Canvas canvas, CharSequence text, int i11, int i12, float f11, int i13, int i14, int i15, Paint paint) {
        Intrinsics.h(canvas, "canvas");
        Intrinsics.h(text, "text");
        Intrinsics.h(paint, "paint");
        Drawable drawable = getDrawable();
        canvas.save();
        Paint.FontMetricsInt fontMetricsInt = paint.getFontMetricsInt();
        int i16 = i15 - drawable.getBounds().bottom;
        int i17 = ((ImageSpan) this).mVerticalAlignment;
        if (i17 == 1) {
            i16 -= fontMetricsInt.descent;
        } else if (i17 == 2) {
            i16 = (((fontMetricsInt.descent + i14) + (i14 + fontMetricsInt.ascent)) / 2) - (drawable.getBounds().bottom / 2);
        }
        canvas.translate(f11, i16);
        drawable.draw(canvas);
        canvas.restore();
    }

    @Override // android.text.style.DynamicDrawableSpan, android.text.style.ReplacementSpan
    public int getSize(Paint paint, CharSequence text, int i11, int i12, Paint.FontMetricsInt fontMetricsInt) {
        Intrinsics.h(paint, "paint");
        Intrinsics.h(text, "text");
        Rect bounds = getDrawable().getBounds();
        Intrinsics.g(bounds, "getBounds(...)");
        if (fontMetricsInt != null) {
            Paint.FontMetricsInt fontMetricsInt2 = paint.getFontMetricsInt();
            int i13 = fontMetricsInt2.bottom - fontMetricsInt2.top;
            int i14 = (bounds.bottom - bounds.top) / 2;
            int i15 = i13 / 4;
            int i16 = i14 - i15;
            int i17 = -(i14 + i15);
            fontMetricsInt.ascent = i17;
            fontMetricsInt.top = i17;
            fontMetricsInt.bottom = i16;
            fontMetricsInt.descent = i16;
        }
        return bounds.right;
    }
}
