package es;

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
import com.blankj.utilcode.util.a0;
import java.io.InputStream;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes7.dex */
public class a extends ReplacementSpan {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Uri f61976a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f61977b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f61978c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private WeakReference f61979d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f61980e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f61981f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f61982g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f61983h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f61984i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f61985j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final float f61986k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f61987l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f61988m;

    public a(Context context, int i11, int i12, int i13, float f11, int i14, boolean z10, int i15) {
        this.f61978c = context;
        this.f61977b = i11;
        this.f61980e = i13;
        this.f61981f = i12;
        this.f61982g = a(context, i14);
        this.f61984i = a(context, 1.0f);
        this.f61985j = a(context, 1.0f);
        this.f61983h = a(context, 4.0f);
        this.f61986k = f11;
        this.f61987l = z10;
        this.f61988m = i15 > 0 ? a(context, i15) : 0;
    }

    private static int a(Context context, float f11) {
        return a0.a(f11);
    }

    private Drawable b() {
        WeakReference weakReference = this.f61979d;
        Drawable drawable = weakReference != null ? (Drawable) weakReference.get() : null;
        if (drawable != null) {
            return drawable;
        }
        Drawable drawableC = c();
        this.f61979d = new WeakReference(drawableC);
        return drawableC;
    }

    private int d() {
        int i11 = this.f61988m;
        if (i11 > 0) {
            return i11;
        }
        Drawable drawableB = b();
        if (drawableB == null) {
            return 0;
        }
        return drawableB.getIntrinsicWidth();
    }

    public Drawable c() {
        Drawable drawable = null;
        try {
            if (this.f61976a != null) {
                InputStream inputStreamOpenInputStream = this.f61978c.getContentResolver().openInputStream(this.f61976a);
                BitmapDrawable bitmapDrawable = new BitmapDrawable(this.f61978c.getResources(), BitmapFactory.decodeStream(inputStreamOpenInputStream));
                try {
                    int intrinsicWidth = this.f61988m;
                    if (intrinsicWidth <= 0) {
                        intrinsicWidth = bitmapDrawable.getIntrinsicWidth();
                    }
                    int intrinsicHeight = this.f61988m;
                    if (intrinsicHeight <= 0) {
                        intrinsicHeight = bitmapDrawable.getIntrinsicHeight();
                    }
                    bitmapDrawable.setBounds(0, 0, intrinsicWidth, intrinsicHeight);
                    inputStreamOpenInputStream.close();
                    return bitmapDrawable;
                } catch (Exception unused) {
                    drawable = bitmapDrawable;
                }
            } else if (this.f61977b != -111) {
                drawable = this.f61978c.getResources().getDrawable(this.f61977b);
                drawable.setColorFilter(this.f61981f, PorterDuff.Mode.SRC_IN);
                int intrinsicWidth2 = this.f61988m;
                if (intrinsicWidth2 <= 0) {
                    intrinsicWidth2 = drawable.getIntrinsicWidth();
                }
                int intrinsicHeight2 = this.f61988m;
                if (intrinsicHeight2 <= 0) {
                    intrinsicHeight2 = drawable.getIntrinsicHeight();
                }
                drawable.setBounds(0, 0, intrinsicWidth2, intrinsicHeight2);
            }
        } catch (Exception unused2) {
        }
        return drawable;
    }

    @Override // android.text.style.ReplacementSpan
    public void draw(Canvas canvas, CharSequence charSequence, int i11, int i12, float f11, int i13, int i14, int i15, Paint paint) {
        int color = paint.getColor();
        float textSize = paint.getTextSize();
        paint.setColor(this.f61980e);
        boolean z10 = this.f61987l;
        int i16 = z10 ? 0 : 6;
        int i17 = z10 ? 6 : 0;
        float f12 = i16;
        float size = f11 + getSize(paint, charSequence, i11, i12, paint.getFontMetricsInt());
        RectF rectF = new RectF(f11 + f12, i13 + this.f61984i, size - i17, i15 - this.f61985j);
        int i18 = this.f61983h;
        canvas.drawRoundRect(rectF, i18, i18, paint);
        paint.setColor(this.f61981f);
        paint.setTextSize(this.f61986k);
        canvas.drawText(charSequence, i11, i12, f11 + this.f61982g, i14 - ((this.f61984i + this.f61985j) / 2), paint);
        paint.setColor(color);
        paint.setTextSize(textSize);
        Drawable drawableB = b();
        if (drawableB != null) {
            Paint.FontMetricsInt fontMetricsInt = paint.getFontMetricsInt();
            int i19 = (i14 + ((fontMetricsInt.descent + fontMetricsInt.ascent) / 2)) - (drawableB.getBounds().bottom / 2);
            canvas.save();
            canvas.translate(((size - this.f61982g) - d()) + f12, i19);
            drawableB.draw(canvas);
            canvas.restore();
        }
    }

    public int e(Paint paint, CharSequence charSequence, CharSequence charSequence2) {
        int iD = (this.f61982g * 2) + d();
        if (!TextUtils.isEmpty(charSequence)) {
            iD += (int) paint.measureText(charSequence, 0, charSequence.length());
        }
        if (TextUtils.isEmpty(charSequence2)) {
            return iD;
        }
        float textSize = paint.getTextSize();
        paint.setTextSize(this.f61986k);
        int iMeasureText = iD + ((int) paint.measureText(charSequence2, 0, charSequence2.length()));
        paint.setTextSize(textSize);
        return iMeasureText;
    }

    @Override // android.text.style.ReplacementSpan
    public int getSize(Paint paint, CharSequence charSequence, int i11, int i12, Paint.FontMetricsInt fontMetricsInt) {
        float textSize = paint.getTextSize();
        paint.setTextSize(this.f61986k);
        int iMeasureText = ((int) paint.measureText(charSequence, i11, i12)) + (this.f61982g * 2) + d();
        paint.setTextSize(textSize);
        return iMeasureText;
    }

    @Override // android.text.style.ReplacementSpan, android.text.style.CharacterStyle
    public void updateDrawState(TextPaint textPaint) {
        textPaint.setTextSize(this.f61986k * textPaint.density);
    }

    @Override // android.text.style.ReplacementSpan, android.text.style.MetricAffectingSpan
    public void updateMeasureState(TextPaint textPaint) {
        textPaint.setTextSize(this.f61986k * textPaint.density);
    }
}
