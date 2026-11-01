package qh;

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
import android.text.TextUtils;
import android.text.style.ReplacementSpan;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import oh.h;

/* JADX INFO: loaded from: classes4.dex */
public class a extends ReplacementSpan {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Uri f73612a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f73613b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f73614c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private WeakReference f73615d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f73616e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f73617f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f73618g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f73619h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f73620i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f73621j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final float f73622k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f73623l;

    public a(Context context, int i11, int i12, int i13, float f11, int i14, boolean z10) {
        this.f73614c = context;
        this.f73613b = i11;
        this.f73616e = i13;
        this.f73617f = i12;
        this.f73618g = a(context, i14);
        this.f73620i = a(context, 1.0f);
        this.f73621j = a(context, 1.0f);
        this.f73619h = a(context, 4.0f);
        this.f73622k = f11;
        this.f73623l = z10;
    }

    private static int a(Context context, float f11) {
        return h.f71021a.a(context, f11);
    }

    private Drawable b() {
        WeakReference weakReference = this.f73615d;
        Drawable drawable = weakReference != null ? (Drawable) weakReference.get() : null;
        if (drawable != null) {
            return drawable;
        }
        Drawable drawableC = c();
        this.f73615d = new WeakReference(drawableC);
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
            if (this.f73612a != null) {
                InputStream inputStreamOpenInputStream = this.f73614c.getContentResolver().openInputStream(this.f73612a);
                BitmapDrawable bitmapDrawable = new BitmapDrawable(this.f73614c.getResources(), BitmapFactory.decodeStream(inputStreamOpenInputStream));
                try {
                    bitmapDrawable.setBounds(0, 0, bitmapDrawable.getIntrinsicWidth(), bitmapDrawable.getIntrinsicHeight());
                    inputStreamOpenInputStream.close();
                    return bitmapDrawable;
                } catch (Exception unused) {
                    drawable = bitmapDrawable;
                }
            } else if (this.f73613b != -111) {
                drawable = this.f73614c.getResources().getDrawable(this.f73613b);
                drawable.setColorFilter(this.f73617f, PorterDuff.Mode.SRC_IN);
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
        paint.setColor(this.f73616e);
        boolean z10 = this.f73623l;
        int i16 = z10 ? 0 : 6;
        int i17 = z10 ? 6 : 0;
        float f12 = i16;
        float size = f11 + getSize(paint, charSequence, i11, i12, paint.getFontMetricsInt());
        RectF rectF = new RectF(f11 + f12, i13 + this.f73620i, size - i17, i15 - this.f73621j);
        int i18 = this.f73619h;
        canvas.drawRoundRect(rectF, i18, i18, paint);
        paint.setColor(this.f73617f);
        paint.setTextSize(this.f73622k);
        canvas.drawText(charSequence, i11, i12, f11 + this.f73618g, i14 - ((this.f73620i + this.f73621j) / 2), paint);
        paint.setColor(color);
        paint.setTextSize(textSize);
        Drawable drawableB = b();
        if (drawableB != null) {
            Paint.FontMetricsInt fontMetricsInt = paint.getFontMetricsInt();
            int i19 = (i14 + ((fontMetricsInt.descent + fontMetricsInt.ascent) / 2)) - (drawableB.getBounds().bottom / 2);
            canvas.save();
            canvas.translate(((size - this.f73618g) - d()) + f12, i19);
            drawableB.draw(canvas);
            canvas.restore();
        }
    }

    public int e(Paint paint, CharSequence charSequence, CharSequence charSequence2) {
        int iD = (this.f73618g * 2) + d();
        if (!TextUtils.isEmpty(charSequence)) {
            iD += (int) paint.measureText(charSequence, 0, charSequence.length());
        }
        if (TextUtils.isEmpty(charSequence2)) {
            return iD;
        }
        float textSize = paint.getTextSize();
        paint.setTextSize(this.f73622k);
        int iMeasureText = iD + ((int) paint.measureText(charSequence2, 0, charSequence2.length()));
        paint.setTextSize(textSize);
        return iMeasureText;
    }

    @Override // android.text.style.ReplacementSpan
    public int getSize(Paint paint, CharSequence charSequence, int i11, int i12, Paint.FontMetricsInt fontMetricsInt) {
        float textSize = paint.getTextSize();
        paint.setTextSize(this.f73622k);
        int iMeasureText = ((int) paint.measureText(charSequence, i11, i12)) + (this.f73618g * 2) + d();
        paint.setTextSize(textSize);
        return iMeasureText;
    }

    @Override // android.text.style.ReplacementSpan, android.text.style.CharacterStyle
    public void updateDrawState(TextPaint textPaint) {
        textPaint.setTextSize(this.f73622k * textPaint.density);
    }

    @Override // android.text.style.ReplacementSpan, android.text.style.MetricAffectingSpan
    public void updateMeasureState(TextPaint textPaint) {
        textPaint.setTextSize(this.f73622k * textPaint.density);
    }
}
