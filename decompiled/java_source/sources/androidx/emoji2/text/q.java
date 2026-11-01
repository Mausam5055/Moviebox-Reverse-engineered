package androidx.emoji2.text;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.Spanned;
import android.text.TextPaint;
import android.text.style.CharacterStyle;

/* JADX INFO: loaded from: classes.dex */
public final class q extends i {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static Paint f9144g;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private TextPaint f9145f;

    public q(p pVar) {
        super(pVar);
    }

    private TextPaint c(CharSequence charSequence, int i11, int i12, Paint paint) {
        if (!(charSequence instanceof Spanned)) {
            if (paint instanceof TextPaint) {
                return (TextPaint) paint;
            }
            return null;
        }
        CharacterStyle[] characterStyleArr = (CharacterStyle[]) ((Spanned) charSequence).getSpans(i11, i12, CharacterStyle.class);
        if (characterStyleArr.length != 0) {
            if (characterStyleArr.length != 1 || characterStyleArr[0] != this) {
                TextPaint textPaint = this.f9145f;
                if (textPaint == null) {
                    textPaint = new TextPaint();
                    this.f9145f = textPaint;
                }
                textPaint.set(paint);
                for (CharacterStyle characterStyle : characterStyleArr) {
                    characterStyle.updateDrawState(textPaint);
                }
                return textPaint;
            }
        }
        if (paint instanceof TextPaint) {
            return (TextPaint) paint;
        }
        return null;
    }

    private static Paint e() {
        if (f9144g == null) {
            TextPaint textPaint = new TextPaint();
            f9144g = textPaint;
            textPaint.setColor(EmojiCompat.c().d());
            f9144g.setStyle(Paint.Style.FILL);
        }
        return f9144g;
    }

    void d(Canvas canvas, TextPaint textPaint, float f11, float f12, float f13, float f14) {
        int color = textPaint.getColor();
        Paint.Style style = textPaint.getStyle();
        textPaint.setColor(textPaint.bgColor);
        textPaint.setStyle(Paint.Style.FILL);
        canvas.drawRect(f11, f13, f12, f14, textPaint);
        textPaint.setStyle(style);
        textPaint.setColor(color);
    }

    @Override // android.text.style.ReplacementSpan
    public void draw(Canvas canvas, CharSequence charSequence, int i11, int i12, float f11, int i13, int i14, int i15, Paint paint) {
        Paint paint2 = paint;
        TextPaint textPaintC = c(charSequence, i11, i12, paint2);
        if (textPaintC != null && textPaintC.bgColor != 0) {
            d(canvas, textPaintC, f11, f11 + b(), i13, i15);
        }
        if (EmojiCompat.c().j()) {
            canvas.drawRect(f11, i13, f11 + b(), i15, e());
        }
        p pVarA = a();
        float f12 = i14;
        if (textPaintC != null) {
            paint2 = textPaintC;
        }
        pVarA.a(canvas, f11, f12, paint2);
    }
}
