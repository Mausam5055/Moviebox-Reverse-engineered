package ui;

import android.graphics.Paint;
import android.graphics.Typeface;
import android.text.TextPaint;
import android.text.style.MetricAffectingSpan;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class a extends MetricAffectingSpan {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Typeface f76755a;

    public a(Typeface typeface) {
        Intrinsics.h(typeface, "typeface");
        this.f76755a = typeface;
    }

    private final void a(Paint paint) {
        Typeface typeface = paint.getTypeface();
        int style = (typeface != null ? typeface.getStyle() : 0) & (~this.f76755a.getStyle());
        if ((style & 1) != 0) {
            paint.setFakeBoldText(true);
        }
        if ((style & 2) != 0) {
            paint.setTextSkewX(-0.25f);
        }
        paint.setTypeface(this.f76755a);
    }

    @Override // android.text.style.CharacterStyle
    public void updateDrawState(TextPaint tp2) {
        Intrinsics.h(tp2, "tp");
        a(tp2);
    }

    @Override // android.text.style.MetricAffectingSpan
    public void updateMeasureState(TextPaint tp2) {
        Intrinsics.h(tp2, "tp");
        a(tp2);
    }
}
