package com.google.android.material.circularreveal;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.view.View;

/* JADX INFO: loaded from: classes4.dex */
public class b {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final int f28742j = 2;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a f28743a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final View f28744b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Path f28745c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Paint f28746d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Paint f28747e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private c.e f28748f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Drawable f28749g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f28750h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f28751i;

    public interface a {
        void actualDraw(Canvas canvas);

        boolean actualIsOpaque();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public b(a aVar) {
        this.f28743a = aVar;
        View view = (View) aVar;
        this.f28744b = view;
        view.setWillNotDraw(false);
        this.f28745c = new Path();
        this.f28746d = new Paint(7);
        Paint paint = new Paint(1);
        this.f28747e = paint;
        paint.setColor(0);
    }

    private void d(Canvas canvas) {
        if (o()) {
            Rect bounds = this.f28749g.getBounds();
            float fWidth = this.f28748f.f28756a - (bounds.width() / 2.0f);
            float fHeight = this.f28748f.f28757b - (bounds.height() / 2.0f);
            canvas.translate(fWidth, fHeight);
            this.f28749g.draw(canvas);
            canvas.translate(-fWidth, -fHeight);
        }
    }

    private float g(c.e eVar) {
        return va.a.b(eVar.f28756a, eVar.f28757b, 0.0f, 0.0f, this.f28744b.getWidth(), this.f28744b.getHeight());
    }

    private void i() {
        if (f28742j == 1) {
            this.f28745c.rewind();
            c.e eVar = this.f28748f;
            if (eVar != null) {
                this.f28745c.addCircle(eVar.f28756a, eVar.f28757b, eVar.f28758c, Path.Direction.CW);
            }
        }
        this.f28744b.invalidate();
    }

    private boolean n() {
        c.e eVar = this.f28748f;
        boolean z10 = eVar == null || eVar.a();
        if (f28742j == 0) {
            return !z10 && this.f28751i;
        }
        return !z10;
    }

    private boolean o() {
        return (this.f28750h || this.f28749g == null || this.f28748f == null) ? false : true;
    }

    private boolean p() {
        return (this.f28750h || Color.alpha(this.f28747e.getColor()) == 0) ? false : true;
    }

    public void a() {
        if (f28742j == 0) {
            this.f28750h = true;
            this.f28751i = false;
            this.f28744b.buildDrawingCache();
            Bitmap drawingCache = this.f28744b.getDrawingCache();
            if (drawingCache == null && this.f28744b.getWidth() != 0 && this.f28744b.getHeight() != 0) {
                drawingCache = Bitmap.createBitmap(this.f28744b.getWidth(), this.f28744b.getHeight(), Bitmap.Config.ARGB_8888);
                this.f28744b.draw(new Canvas(drawingCache));
            }
            if (drawingCache != null) {
                Paint paint = this.f28746d;
                Shader.TileMode tileMode = Shader.TileMode.CLAMP;
                paint.setShader(new BitmapShader(drawingCache, tileMode, tileMode));
            }
            this.f28750h = false;
            this.f28751i = true;
        }
    }

    public void b() {
        if (f28742j == 0) {
            this.f28751i = false;
            this.f28744b.destroyDrawingCache();
            this.f28746d.setShader(null);
            this.f28744b.invalidate();
        }
    }

    public void c(Canvas canvas) {
        if (n()) {
            int i11 = f28742j;
            if (i11 == 0) {
                c.e eVar = this.f28748f;
                canvas.drawCircle(eVar.f28756a, eVar.f28757b, eVar.f28758c, this.f28746d);
                if (p()) {
                    c.e eVar2 = this.f28748f;
                    canvas.drawCircle(eVar2.f28756a, eVar2.f28757b, eVar2.f28758c, this.f28747e);
                }
            } else if (i11 == 1) {
                int iSave = canvas.save();
                canvas.clipPath(this.f28745c);
                this.f28743a.actualDraw(canvas);
                if (p()) {
                    canvas.drawRect(0.0f, 0.0f, this.f28744b.getWidth(), this.f28744b.getHeight(), this.f28747e);
                }
                canvas.restoreToCount(iSave);
            } else {
                if (i11 != 2) {
                    throw new IllegalStateException("Unsupported strategy " + i11);
                }
                this.f28743a.actualDraw(canvas);
                if (p()) {
                    canvas.drawRect(0.0f, 0.0f, this.f28744b.getWidth(), this.f28744b.getHeight(), this.f28747e);
                }
            }
        } else {
            this.f28743a.actualDraw(canvas);
            if (p()) {
                canvas.drawRect(0.0f, 0.0f, this.f28744b.getWidth(), this.f28744b.getHeight(), this.f28747e);
            }
        }
        d(canvas);
    }

    public Drawable e() {
        return this.f28749g;
    }

    public int f() {
        return this.f28747e.getColor();
    }

    public c.e h() {
        c.e eVar = this.f28748f;
        if (eVar == null) {
            return null;
        }
        c.e eVar2 = new c.e(eVar);
        if (eVar2.a()) {
            eVar2.f28758c = g(eVar2);
        }
        return eVar2;
    }

    public boolean j() {
        return this.f28743a.actualIsOpaque() && !n();
    }

    public void k(Drawable drawable) {
        this.f28749g = drawable;
        this.f28744b.invalidate();
    }

    public void l(int i11) {
        this.f28747e.setColor(i11);
        this.f28744b.invalidate();
    }

    public void m(c.e eVar) {
        if (eVar == null) {
            this.f28748f = null;
        } else {
            c.e eVar2 = this.f28748f;
            if (eVar2 == null) {
                this.f28748f = new c.e(eVar);
            } else {
                eVar2.c(eVar);
            }
            if (va.a.c(eVar.f28758c, g(eVar), 1.0E-4f)) {
                this.f28748f.f28758c = Float.MAX_VALUE;
            }
        }
        i();
    }
}
