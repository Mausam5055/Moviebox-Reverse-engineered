package androidx.appcompat.graphics.drawable;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import androidx.appcompat.R$attr;
import androidx.appcompat.R$style;
import androidx.appcompat.R$styleable;

/* JADX INFO: loaded from: classes.dex */
public class c extends Drawable {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final float f1243m = (float) Math.toRadians(45.0d);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Paint f1244a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f1245b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f1246c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f1247d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f1248e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f1249f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Path f1250g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f1251h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f1252i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private float f1253j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private float f1254k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f1255l;

    public c(Context context) {
        Paint paint = new Paint();
        this.f1244a = paint;
        this.f1250g = new Path();
        this.f1252i = false;
        this.f1255l = 2;
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeJoin(Paint.Join.MITER);
        paint.setStrokeCap(Paint.Cap.BUTT);
        paint.setAntiAlias(true);
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(null, R$styleable.DrawerArrowToggle, R$attr.drawerArrowStyle, R$style.Base_Widget_AppCompat_DrawerArrowToggle);
        c(typedArrayObtainStyledAttributes.getColor(R$styleable.DrawerArrowToggle_color, 0));
        b(typedArrayObtainStyledAttributes.getDimension(R$styleable.DrawerArrowToggle_thickness, 0.0f));
        e(typedArrayObtainStyledAttributes.getBoolean(R$styleable.DrawerArrowToggle_spinBars, true));
        d(Math.round(typedArrayObtainStyledAttributes.getDimension(R$styleable.DrawerArrowToggle_gapBetweenBars, 0.0f)));
        this.f1251h = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.DrawerArrowToggle_drawableSize, 0);
        this.f1246c = Math.round(typedArrayObtainStyledAttributes.getDimension(R$styleable.DrawerArrowToggle_barLength, 0.0f));
        this.f1245b = Math.round(typedArrayObtainStyledAttributes.getDimension(R$styleable.DrawerArrowToggle_arrowHeadLength, 0.0f));
        this.f1247d = typedArrayObtainStyledAttributes.getDimension(R$styleable.DrawerArrowToggle_arrowShaftLength, 0.0f);
        typedArrayObtainStyledAttributes.recycle();
    }

    private static float a(float f11, float f12, float f13) {
        return f11 + ((f12 - f11) * f13);
    }

    public void b(float f11) {
        if (this.f1244a.getStrokeWidth() != f11) {
            this.f1244a.setStrokeWidth(f11);
            this.f1254k = (float) (((double) (f11 / 2.0f)) * Math.cos(f1243m));
            invalidateSelf();
        }
    }

    public void c(int i11) {
        if (i11 != this.f1244a.getColor()) {
            this.f1244a.setColor(i11);
            invalidateSelf();
        }
    }

    public void d(float f11) {
        if (f11 != this.f1248e) {
            this.f1248e = f11;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        int i11 = this.f1255l;
        boolean z10 = false;
        if (i11 != 0 && (i11 == 1 || (i11 == 3 ? a1.a.f(this) == 0 : a1.a.f(this) == 1))) {
            z10 = true;
        }
        float f11 = this.f1245b;
        float fA = a(this.f1246c, (float) Math.sqrt(f11 * f11 * 2.0f), this.f1253j);
        float fA2 = a(this.f1246c, this.f1247d, this.f1253j);
        float fRound = Math.round(a(0.0f, this.f1254k, this.f1253j));
        float fA3 = a(0.0f, f1243m, this.f1253j);
        float fA4 = a(z10 ? 0.0f : -180.0f, z10 ? 180.0f : 0.0f, this.f1253j);
        double d11 = fA;
        double d12 = fA3;
        boolean z11 = z10;
        float fRound2 = Math.round(Math.cos(d12) * d11);
        float fRound3 = Math.round(d11 * Math.sin(d12));
        this.f1250g.rewind();
        float fA5 = a(this.f1248e + this.f1244a.getStrokeWidth(), -this.f1254k, this.f1253j);
        float f12 = (-fA2) / 2.0f;
        this.f1250g.moveTo(f12 + fRound, 0.0f);
        this.f1250g.rLineTo(fA2 - (fRound * 2.0f), 0.0f);
        this.f1250g.moveTo(f12, fA5);
        this.f1250g.rLineTo(fRound2, fRound3);
        this.f1250g.moveTo(f12, -fA5);
        this.f1250g.rLineTo(fRound2, -fRound3);
        this.f1250g.close();
        canvas.save();
        float strokeWidth = this.f1244a.getStrokeWidth();
        float fHeight = bounds.height() - (3.0f * strokeWidth);
        float f13 = this.f1248e;
        canvas.translate(bounds.centerX(), ((((int) (fHeight - (2.0f * f13))) / 4) * 2) + (strokeWidth * 1.5f) + f13);
        if (this.f1249f) {
            canvas.rotate(fA4 * (this.f1252i ^ z11 ? -1 : 1));
        } else if (z11) {
            canvas.rotate(180.0f);
        }
        canvas.drawPath(this.f1250g, this.f1244a);
        canvas.restore();
    }

    public void e(boolean z10) {
        if (this.f1249f != z10) {
            this.f1249f = z10;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f1251h;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f1251h;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i11) {
        if (i11 != this.f1244a.getAlpha()) {
            this.f1244a.setAlpha(i11);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f1244a.setColorFilter(colorFilter);
        invalidateSelf();
    }

    public void setProgress(float f11) {
        if (this.f1253j != f11) {
            this.f1253j = f11;
            invalidateSelf();
        }
    }
}
