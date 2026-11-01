package uv;

import android.content.Context;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.text.TextPaint;
import android.text.style.ReplacementSpan;
import com.blankj.utilcode.util.a0;
import java.io.InputStream;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes7.dex */
public class a extends ReplacementSpan {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Uri f76920a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f76921b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f76922c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private WeakReference f76923d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f76924e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f76925f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f76926g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f76927h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f76928i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f76929j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final float f76930k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f76931l;

    public a(Context context, int i11, int i12, int i13, float f11, int i14, boolean z10) {
        this.f76922c = context;
        this.f76921b = i11;
        this.f76924e = i13;
        this.f76925f = i12;
        this.f76926g = a(context, i14);
        this.f76928i = a(context, 1.0f);
        this.f76929j = a(context, 1.0f);
        this.f76927h = a(context, 4.0f);
        this.f76930k = f11;
        this.f76931l = z10;
    }

    private static int a(Context context, float f11) {
        return a0.a(f11);
    }

    private Drawable b() {
        WeakReference weakReference = this.f76923d;
        Drawable drawable = weakReference != null ? (Drawable) weakReference.get() : null;
        if (drawable != null) {
            return drawable;
        }
        Drawable drawableC = c();
        this.f76923d = new WeakReference(drawableC);
        return drawableC;
    }

    private int d() {
        Drawable drawableB = b();
        if (drawableB == null) {
            return 0;
        }
        return drawableB.getIntrinsicWidth();
    }

    public Drawable c() {
        Drawable drawable = null;
        try {
            if (this.f76920a != null) {
                InputStream inputStreamOpenInputStream = this.f76922c.getContentResolver().openInputStream(this.f76920a);
                BitmapDrawable bitmapDrawable = new BitmapDrawable(this.f76922c.getResources(), BitmapFactory.decodeStream(inputStreamOpenInputStream));
                try {
                    bitmapDrawable.setBounds(0, 0, bitmapDrawable.getIntrinsicWidth(), bitmapDrawable.getIntrinsicHeight());
                    inputStreamOpenInputStream.close();
                    return bitmapDrawable;
                } catch (Exception unused) {
                    drawable = bitmapDrawable;
                }
            } else if (this.f76921b != -111) {
                drawable = this.f76922c.getResources().getDrawable(this.f76921b);
                drawable.setColorFilter(this.f76925f, PorterDuff.Mode.SRC_IN);
                drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
            }
        } catch (Exception unused2) {
        }
        return drawable;
    }

    @Override // android.text.style.ReplacementSpan
    public void draw(Canvas canvas, CharSequence charSequence, int i11, int i12, float f11, int i13, int i14, int i15, Paint paint) {
        int color = paint.getColor();
        float textSize = paint.getTextSize();
        paint.setColor(this.f76924e);
        boolean z10 = this.f76931l;
        int i16 = z10 ? 0 : 6;
        int i17 = z10 ? 6 : 0;
        float f12 = i16;
        float size = f11 + getSize(paint, charSequence, i11, i12, paint.getFontMetricsInt());
        RectF rectF = new RectF(f11 + f12, i13 + this.f76928i, size - i17, i15 - this.f76929j);
        int i18 = this.f76927h;
        canvas.drawRoundRect(rectF, i18, i18, paint);
        paint.setColor(this.f76925f);
        paint.setTextSize(this.f76930k);
        canvas.drawText(charSequence, i11, i12, f11 + this.f76926g, i14 - ((this.f76928i + this.f76929j) / 2), paint);
        paint.setColor(color);
        paint.setTextSize(textSize);
        Drawable drawableB = b();
        if (drawableB == null || i12 - i11 <= 2) {
            return;
        }
        Paint.FontMetricsInt fontMetricsInt = paint.getFontMetricsInt();
        int i19 = (i14 + ((fontMetricsInt.descent + fontMetricsInt.ascent) / 2)) - (drawableB.getBounds().bottom / 2);
        canvas.save();
        canvas.translate(((size - this.f76926g) - d()) + f12, i19);
        drawableB.draw(canvas);
        canvas.restore();
    }

    @Override // android.text.style.ReplacementSpan
    public int getSize(Paint paint, CharSequence charSequence, int i11, int i12, Paint.FontMetricsInt fontMetricsInt) {
        float textSize = paint.getTextSize();
        paint.setTextSize(this.f76930k);
        int iMeasureText = ((int) paint.measureText(charSequence, i11, i12)) + (this.f76926g * 2) + d();
        paint.setTextSize(textSize);
        return iMeasureText;
    }

    @Override // android.text.style.ReplacementSpan, android.text.style.CharacterStyle
    public void updateDrawState(TextPaint textPaint) {
        textPaint.setTextSize(this.f76930k * textPaint.density);
    }

    @Override // android.text.style.ReplacementSpan, android.text.style.MetricAffectingSpan
    public void updateMeasureState(TextPaint textPaint) {
        textPaint.setTextSize(this.f76930k * textPaint.density);
    }
}
