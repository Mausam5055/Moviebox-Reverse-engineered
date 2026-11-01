package l0;

import android.graphics.Paint;
import android.text.style.LineHeightSpan;

/* JADX INFO: loaded from: classes2.dex */
public final class g implements LineHeightSpan {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float f68415a;

    public g(float f11) {
        this.f68415a = f11;
    }

    @Override // android.text.style.LineHeightSpan
    public void chooseHeight(CharSequence charSequence, int i11, int i12, int i13, int i14, Paint.FontMetricsInt fontMetricsInt) {
        int iA = i.a(fontMetricsInt);
        if (iA <= 0) {
            return;
        }
        int iCeil = (int) Math.ceil(this.f68415a);
        int iCeil2 = (int) Math.ceil(((double) fontMetricsInt.descent) * ((double) ((iCeil * 1.0f) / iA)));
        fontMetricsInt.descent = iCeil2;
        fontMetricsInt.ascent = iCeil2 - iCeil;
    }
}
