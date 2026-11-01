package androidx.emoji2.text;

import android.graphics.Paint;
import android.text.style.ReplacementSpan;

/* JADX INFO: loaded from: classes.dex */
public abstract class i extends ReplacementSpan {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final p f9108b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Paint.FontMetricsInt f9107a = new Paint.FontMetricsInt();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private short f9109c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private short f9110d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f9111e = 1.0f;

    i(p pVar) {
        androidx.core.util.i.h(pVar, "rasterizer cannot be null");
        this.f9108b = pVar;
    }

    public final p a() {
        return this.f9108b;
    }

    final int b() {
        return this.f9109c;
    }

    @Override // android.text.style.ReplacementSpan
    public int getSize(Paint paint, CharSequence charSequence, int i11, int i12, Paint.FontMetricsInt fontMetricsInt) {
        paint.getFontMetricsInt(this.f9107a);
        Paint.FontMetricsInt fontMetricsInt2 = this.f9107a;
        this.f9111e = (Math.abs(fontMetricsInt2.descent - fontMetricsInt2.ascent) * 1.0f) / this.f9108b.e();
        this.f9110d = (short) (this.f9108b.e() * this.f9111e);
        short sI = (short) (this.f9108b.i() * this.f9111e);
        this.f9109c = sI;
        if (fontMetricsInt != null) {
            Paint.FontMetricsInt fontMetricsInt3 = this.f9107a;
            fontMetricsInt.ascent = fontMetricsInt3.ascent;
            fontMetricsInt.descent = fontMetricsInt3.descent;
            fontMetricsInt.top = fontMetricsInt3.top;
            fontMetricsInt.bottom = fontMetricsInt3.bottom;
        }
        return sI;
    }
}
