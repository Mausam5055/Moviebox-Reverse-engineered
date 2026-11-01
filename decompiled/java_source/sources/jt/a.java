package jt;

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
    private Uri f66279a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f66280b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f66281c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private WeakReference f66282d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f66283e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f66284f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f66285g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f66286h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f66287i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f66288j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final float f66289k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f66290l;

    public a(Context context, int i11, int i12, int i13, float f11, int i14, boolean z10) {
        this.f66281c = context;
        this.f66280b = i11;
        this.f66283e = i13;
        this.f66284f = i12;
        this.f66285g = a(context, i14);
        this.f66287i = a(context, 1.0f);
        this.f66288j = a(context, 1.0f);
        this.f66286h = a(context, 4.0f);
        this.f66289k = f11;
        this.f66290l = z10;
    }

    private static int a(Context context, float f11) {
        return a0.a(f11);
    }

    private Drawable b() {
        WeakReference weakReference = this.f66282d;
        Drawable drawable = weakReference != null ? (Drawable) weakReference.get() : null;
        if (drawable != null) {
            return drawable;
        }
        Drawable drawableC = c();
        this.f66282d = new WeakReference(drawableC);
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
            if (this.f66279a != null) {
                InputStream inputStreamOpenInputStream = this.f66281c.getContentResolver().openInputStream(this.f66279a);
                BitmapDrawable bitmapDrawable = new BitmapDrawable(this.f66281c.getResources(), BitmapFactory.decodeStream(inputStreamOpenInputStream));
                try {
                    bitmapDrawable.setBounds(0, 0, bitmapDrawable.getIntrinsicWidth(), bitmapDrawable.getIntrinsicHeight());
                    inputStreamOpenInputStream.close();
                    return bitmapDrawable;
                } catch (Exception unused) {
                    drawable = bitmapDrawable;
                }
            } else if (this.f66280b != -111) {
                drawable = this.f66281c.getResources().getDrawable(this.f66280b);
                drawable.setColorFilter(this.f66284f, PorterDuff.Mode.SRC_IN);
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
        paint.setColor(this.f66283e);
        boolean z10 = this.f66290l;
        int i16 = z10 ? 0 : 6;
        int i17 = z10 ? 6 : 0;
        float f12 = i16;
        float size = f11 + getSize(paint, charSequence, i11, i12, paint.getFontMetricsInt());
        RectF rectF = new RectF(f11 + f12, i13 + this.f66287i, size - i17, i15 - this.f66288j);
        int i18 = this.f66286h;
        canvas.drawRoundRect(rectF, i18, i18, paint);
        paint.setColor(this.f66284f);
        paint.setTextSize(this.f66289k);
        canvas.drawText(charSequence, i11, i12, f11 + this.f66285g, i14 - ((this.f66287i + this.f66288j) / 2), paint);
        paint.setColor(color);
        paint.setTextSize(textSize);
        Drawable drawableB = b();
        if (drawableB == null || i12 - i11 <= 2) {
            return;
        }
        Paint.FontMetricsInt fontMetricsInt = paint.getFontMetricsInt();
        int i19 = (i14 + ((fontMetricsInt.descent + fontMetricsInt.ascent) / 2)) - (drawableB.getBounds().bottom / 2);
        canvas.save();
        canvas.translate(((size - this.f66285g) - d()) + f12, i19);
        drawableB.draw(canvas);
        canvas.restore();
    }

    @Override // android.text.style.ReplacementSpan
    public int getSize(Paint paint, CharSequence charSequence, int i11, int i12, Paint.FontMetricsInt fontMetricsInt) {
        float textSize = paint.getTextSize();
        paint.setTextSize(this.f66289k);
        int iMeasureText = ((int) paint.measureText(charSequence, i11, i12)) + (this.f66285g * 2) + d();
        paint.setTextSize(textSize);
        return iMeasureText;
    }

    @Override // android.text.style.ReplacementSpan, android.text.style.CharacterStyle
    public void updateDrawState(TextPaint textPaint) {
        textPaint.setTextSize(this.f66289k * textPaint.density);
    }

    @Override // android.text.style.ReplacementSpan, android.text.style.MetricAffectingSpan
    public void updateMeasureState(TextPaint textPaint) {
        textPaint.setTextSize(this.f66289k * textPaint.density);
    }
}
