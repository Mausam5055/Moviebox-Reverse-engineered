package ab;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Looper;
import android.util.AttributeSet;
import android.util.Log;
import com.google.android.material.R$attr;
import java.util.BitSet;

/* JADX INFO: loaded from: classes4.dex */
public class i extends Drawable implements q {

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final String f472x = "i";

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final Paint f473y;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private c f474a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final p.g[] f475b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final p.g[] f476c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final BitSet f477d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f478e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Matrix f479f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Path f480g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Path f481h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final RectF f482i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final RectF f483j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final Region f484k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final Region f485l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private n f486m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final Paint f487n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Paint f488o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final za.a f489p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final o.b f490q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final o f491r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private PorterDuffColorFilter f492s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private PorterDuffColorFilter f493t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f494u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final RectF f495v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f496w;

    class a implements o.b {
        a() {
        }

        @Override // ab.o.b
        public void a(p pVar, Matrix matrix, int i11) {
            i.this.f477d.set(i11 + 4, pVar.e());
            i.this.f476c[i11] = pVar.f(matrix);
        }

        @Override // ab.o.b
        public void b(p pVar, Matrix matrix, int i11) {
            i.this.f477d.set(i11, pVar.e());
            i.this.f475b[i11] = pVar.f(matrix);
        }
    }

    class b implements n.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ float f498a;

        b(float f11) {
            this.f498a = f11;
        }

        @Override // ab.n.c
        public d a(d dVar) {
            return dVar instanceof l ? dVar : new ab.b(this.f498a, dVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static class c extends Drawable.ConstantState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        n f500a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        ta.a f501b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        ColorFilter f502c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        ColorStateList f503d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        ColorStateList f504e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        ColorStateList f505f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        ColorStateList f506g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        PorterDuff.Mode f507h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        Rect f508i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        float f509j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        float f510k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        float f511l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        int f512m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        float f513n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        float f514o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        float f515p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        int f516q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        int f517r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        int f518s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        int f519t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        boolean f520u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        Paint.Style f521v;

        public c(c cVar) {
            this.f503d = null;
            this.f504e = null;
            this.f505f = null;
            this.f506g = null;
            this.f507h = PorterDuff.Mode.SRC_IN;
            this.f508i = null;
            this.f509j = 1.0f;
            this.f510k = 1.0f;
            this.f512m = 255;
            this.f513n = 0.0f;
            this.f514o = 0.0f;
            this.f515p = 0.0f;
            this.f516q = 0;
            this.f517r = 0;
            this.f518s = 0;
            this.f519t = 0;
            this.f520u = false;
            this.f521v = Paint.Style.FILL_AND_STROKE;
            this.f500a = cVar.f500a;
            this.f501b = cVar.f501b;
            this.f511l = cVar.f511l;
            this.f502c = cVar.f502c;
            this.f503d = cVar.f503d;
            this.f504e = cVar.f504e;
            this.f507h = cVar.f507h;
            this.f506g = cVar.f506g;
            this.f512m = cVar.f512m;
            this.f509j = cVar.f509j;
            this.f518s = cVar.f518s;
            this.f516q = cVar.f516q;
            this.f520u = cVar.f520u;
            this.f510k = cVar.f510k;
            this.f513n = cVar.f513n;
            this.f514o = cVar.f514o;
            this.f515p = cVar.f515p;
            this.f517r = cVar.f517r;
            this.f519t = cVar.f519t;
            this.f505f = cVar.f505f;
            this.f521v = cVar.f521v;
            if (cVar.f508i != null) {
                this.f508i = new Rect(cVar.f508i);
            }
        }

        public c(n nVar, ta.a aVar) {
            this.f503d = null;
            this.f504e = null;
            this.f505f = null;
            this.f506g = null;
            this.f507h = PorterDuff.Mode.SRC_IN;
            this.f508i = null;
            this.f509j = 1.0f;
            this.f510k = 1.0f;
            this.f512m = 255;
            this.f513n = 0.0f;
            this.f514o = 0.0f;
            this.f515p = 0.0f;
            this.f516q = 0;
            this.f517r = 0;
            this.f518s = 0;
            this.f519t = 0;
            this.f520u = false;
            this.f521v = Paint.Style.FILL_AND_STROKE;
            this.f500a = nVar;
            this.f501b = aVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            i iVar = new i(this);
            iVar.f478e = true;
            return iVar;
        }
    }

    static {
        Paint paint = new Paint(1);
        f473y = paint;
        paint.setColor(-1);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
    }

    public i() {
        this(new n());
    }

    protected i(c cVar) {
        this.f475b = new p.g[4];
        this.f476c = new p.g[4];
        this.f477d = new BitSet(8);
        this.f479f = new Matrix();
        this.f480g = new Path();
        this.f481h = new Path();
        this.f482i = new RectF();
        this.f483j = new RectF();
        this.f484k = new Region();
        this.f485l = new Region();
        Paint paint = new Paint(1);
        this.f487n = paint;
        Paint paint2 = new Paint(1);
        this.f488o = paint2;
        this.f489p = new za.a();
        this.f491r = Looper.getMainLooper().getThread() == Thread.currentThread() ? o.k() : new o();
        this.f495v = new RectF();
        this.f496w = true;
        this.f474a = cVar;
        paint2.setStyle(Paint.Style.STROKE);
        paint.setStyle(Paint.Style.FILL);
        q0();
        p0(getState());
        this.f490q = new a();
    }

    public i(n nVar) {
        this(new c(nVar, null));
    }

    public i(Context context, AttributeSet attributeSet, int i11, int i12) {
        this(n.e(context, attributeSet, i11, i12).m());
    }

    private float I() {
        if (R()) {
            return this.f488o.getStrokeWidth() / 2.0f;
        }
        return 0.0f;
    }

    private boolean P() {
        c cVar = this.f474a;
        int i11 = cVar.f516q;
        return i11 != 1 && cVar.f517r > 0 && (i11 == 2 || Z());
    }

    private boolean Q() {
        Paint.Style style = this.f474a.f521v;
        return style == Paint.Style.FILL_AND_STROKE || style == Paint.Style.FILL;
    }

    private boolean R() {
        Paint.Style style = this.f474a.f521v;
        return (style == Paint.Style.FILL_AND_STROKE || style == Paint.Style.STROKE) && this.f488o.getStrokeWidth() > 0.0f;
    }

    private void T() {
        super.invalidateSelf();
    }

    private void W(Canvas canvas) {
        if (P()) {
            canvas.save();
            Y(canvas);
            if (!this.f496w) {
                p(canvas);
                canvas.restore();
                return;
            }
            int iWidth = (int) (this.f495v.width() - getBounds().width());
            int iHeight = (int) (this.f495v.height() - getBounds().height());
            if (iWidth < 0 || iHeight < 0) {
                throw new IllegalStateException("Invalid shadow bounds. Check that the treatments result in a valid path.");
            }
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(((int) this.f495v.width()) + (this.f474a.f517r * 2) + iWidth, ((int) this.f495v.height()) + (this.f474a.f517r * 2) + iHeight, Bitmap.Config.ARGB_8888);
            Canvas canvas2 = new Canvas(bitmapCreateBitmap);
            float f11 = (getBounds().left - this.f474a.f517r) - iWidth;
            float f12 = (getBounds().top - this.f474a.f517r) - iHeight;
            canvas2.translate(-f11, -f12);
            p(canvas2);
            canvas.drawBitmap(bitmapCreateBitmap, f11, f12, (Paint) null);
            bitmapCreateBitmap.recycle();
            canvas.restore();
        }
    }

    private static int X(int i11, int i12) {
        return (i11 * (i12 + (i12 >>> 7))) >>> 8;
    }

    private void Y(Canvas canvas) {
        canvas.translate(D(), E());
    }

    private PorterDuffColorFilter f(Paint paint, boolean z10) {
        if (!z10) {
            return null;
        }
        int color = paint.getColor();
        int iL = l(color);
        this.f494u = iL;
        if (iL != color) {
            return new PorterDuffColorFilter(iL, PorterDuff.Mode.SRC_IN);
        }
        return null;
    }

    private void g(RectF rectF, Path path) {
        h(rectF, path);
        if (this.f474a.f509j != 1.0f) {
            this.f479f.reset();
            Matrix matrix = this.f479f;
            float f11 = this.f474a.f509j;
            matrix.setScale(f11, f11, rectF.width() / 2.0f, rectF.height() / 2.0f);
            path.transform(this.f479f);
        }
        path.computeBounds(this.f495v, true);
    }

    private void i() {
        n nVarY = G().y(new b(-I()));
        this.f486m = nVarY;
        this.f491r.e(nVarY, this.f474a.f510k, x(), this.f481h);
    }

    private PorterDuffColorFilter j(ColorStateList colorStateList, PorterDuff.Mode mode, boolean z10) {
        int colorForState = colorStateList.getColorForState(getState(), 0);
        if (z10) {
            colorForState = l(colorForState);
        }
        this.f494u = colorForState;
        return new PorterDuffColorFilter(colorForState, mode);
    }

    private PorterDuffColorFilter k(ColorStateList colorStateList, PorterDuff.Mode mode, Paint paint, boolean z10) {
        return (colorStateList == null || mode == null) ? f(paint, z10) : j(colorStateList, mode, z10);
    }

    public static i m(Context context) {
        return n(context, 0.0f);
    }

    public static i n(Context context, float f11) {
        return o(context, f11, null);
    }

    public static i o(Context context, float f11, ColorStateList colorStateList) {
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(com.google.android.material.color.b.c(context, R$attr.colorSurface, i.class.getSimpleName()));
        }
        i iVar = new i();
        iVar.S(context);
        iVar.d0(colorStateList);
        iVar.c0(f11);
        return iVar;
    }

    private void p(Canvas canvas) {
        if (this.f477d.cardinality() > 0) {
            Log.w(f472x, "Compatibility shadow requested but can't be drawn for all operations in this shape.");
        }
        if (this.f474a.f518s != 0) {
            canvas.drawPath(this.f480g, this.f489p.c());
        }
        for (int i11 = 0; i11 < 4; i11++) {
            this.f475b[i11].b(this.f489p, this.f474a.f517r, canvas);
            this.f476c[i11].b(this.f489p, this.f474a.f517r, canvas);
        }
        if (this.f496w) {
            int iD = D();
            int iE = E();
            canvas.translate(-iD, -iE);
            canvas.drawPath(this.f480g, f473y);
            canvas.translate(iD, iE);
        }
    }

    private boolean p0(int[] iArr) {
        boolean z10;
        int color;
        int colorForState;
        int color2;
        int colorForState2;
        if (this.f474a.f503d == null || color2 == (colorForState2 = this.f474a.f503d.getColorForState(iArr, (color2 = this.f487n.getColor())))) {
            z10 = false;
        } else {
            this.f487n.setColor(colorForState2);
            z10 = true;
        }
        if (this.f474a.f504e == null || color == (colorForState = this.f474a.f504e.getColorForState(iArr, (color = this.f488o.getColor())))) {
            return z10;
        }
        this.f488o.setColor(colorForState);
        return true;
    }

    private void q(Canvas canvas) {
        r(canvas, this.f487n, this.f480g, this.f474a.f500a, w());
    }

    private boolean q0() {
        PorterDuffColorFilter porterDuffColorFilter = this.f492s;
        PorterDuffColorFilter porterDuffColorFilter2 = this.f493t;
        c cVar = this.f474a;
        this.f492s = k(cVar.f506g, cVar.f507h, this.f487n, true);
        c cVar2 = this.f474a;
        this.f493t = k(cVar2.f505f, cVar2.f507h, this.f488o, false);
        c cVar3 = this.f474a;
        if (cVar3.f520u) {
            this.f489p.d(cVar3.f506g.getColorForState(getState(), 0));
        }
        return (androidx.core.util.d.a(porterDuffColorFilter, this.f492s) && androidx.core.util.d.a(porterDuffColorFilter2, this.f493t)) ? false : true;
    }

    private void r(Canvas canvas, Paint paint, Path path, n nVar, RectF rectF) {
        if (!nVar.u(rectF)) {
            canvas.drawPath(path, paint);
        } else {
            float fA = nVar.t().a(rectF) * this.f474a.f510k;
            canvas.drawRoundRect(rectF, fA, fA, paint);
        }
    }

    private void r0() {
        float fO = O();
        this.f474a.f517r = (int) Math.ceil(0.75f * fO);
        this.f474a.f518s = (int) Math.ceil(fO * 0.25f);
        q0();
        T();
    }

    private RectF x() {
        this.f483j.set(w());
        float fI = I();
        this.f483j.inset(fI, fI);
        return this.f483j;
    }

    public float A() {
        return this.f474a.f510k;
    }

    public float B() {
        return this.f474a.f513n;
    }

    public int C() {
        return this.f494u;
    }

    public int D() {
        c cVar = this.f474a;
        return (int) (((double) cVar.f518s) * Math.sin(Math.toRadians(cVar.f519t)));
    }

    public int E() {
        c cVar = this.f474a;
        return (int) (((double) cVar.f518s) * Math.cos(Math.toRadians(cVar.f519t)));
    }

    public int F() {
        return this.f474a.f517r;
    }

    public n G() {
        return this.f474a.f500a;
    }

    public ColorStateList H() {
        return this.f474a.f504e;
    }

    public float J() {
        return this.f474a.f511l;
    }

    public ColorStateList K() {
        return this.f474a.f506g;
    }

    public float L() {
        return this.f474a.f500a.r().a(w());
    }

    public float M() {
        return this.f474a.f500a.t().a(w());
    }

    public float N() {
        return this.f474a.f515p;
    }

    public float O() {
        return y() + N();
    }

    public void S(Context context) {
        this.f474a.f501b = new ta.a(context);
        r0();
    }

    public boolean U() {
        ta.a aVar = this.f474a.f501b;
        return aVar != null && aVar.e();
    }

    public boolean V() {
        return this.f474a.f500a.u(w());
    }

    public boolean Z() {
        return (V() || this.f480g.isConvex() || Build.VERSION.SDK_INT >= 29) ? false : true;
    }

    public void a0(float f11) {
        setShapeAppearanceModel(this.f474a.f500a.w(f11));
    }

    public void b0(d dVar) {
        setShapeAppearanceModel(this.f474a.f500a.x(dVar));
    }

    public void c0(float f11) {
        c cVar = this.f474a;
        if (cVar.f514o != f11) {
            cVar.f514o = f11;
            r0();
        }
    }

    public void d0(ColorStateList colorStateList) {
        c cVar = this.f474a;
        if (cVar.f503d != colorStateList) {
            cVar.f503d = colorStateList;
            onStateChange(getState());
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.f487n.setColorFilter(this.f492s);
        int alpha = this.f487n.getAlpha();
        this.f487n.setAlpha(X(alpha, this.f474a.f512m));
        this.f488o.setColorFilter(this.f493t);
        this.f488o.setStrokeWidth(this.f474a.f511l);
        int alpha2 = this.f488o.getAlpha();
        this.f488o.setAlpha(X(alpha2, this.f474a.f512m));
        if (this.f478e) {
            i();
            g(w(), this.f480g);
            this.f478e = false;
        }
        W(canvas);
        if (Q()) {
            q(canvas);
        }
        if (R()) {
            t(canvas);
        }
        this.f487n.setAlpha(alpha);
        this.f488o.setAlpha(alpha2);
    }

    public void e0(float f11) {
        c cVar = this.f474a;
        if (cVar.f510k != f11) {
            cVar.f510k = f11;
            this.f478e = true;
            invalidateSelf();
        }
    }

    public void f0(int i11, int i12, int i13, int i14) {
        c cVar = this.f474a;
        if (cVar.f508i == null) {
            cVar.f508i = new Rect();
        }
        this.f474a.f508i.set(i11, i12, i13, i14);
        invalidateSelf();
    }

    public void g0(Paint.Style style) {
        this.f474a.f521v = style;
        T();
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f474a.f512m;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        return this.f474a;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        if (this.f474a.f516q == 2) {
            return;
        }
        if (V()) {
            outline.setRoundRect(getBounds(), L() * this.f474a.f510k);
        } else {
            g(w(), this.f480g);
            com.google.android.material.drawable.d.l(outline, this.f480g);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        Rect rect2 = this.f474a.f508i;
        if (rect2 == null) {
            return super.getPadding(rect);
        }
        rect.set(rect2);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public Region getTransparentRegion() {
        this.f484k.set(getBounds());
        g(w(), this.f480g);
        this.f485l.setPath(this.f480g, this.f484k);
        this.f484k.op(this.f485l, Region.Op.DIFFERENCE);
        return this.f484k;
    }

    protected final void h(RectF rectF, Path path) {
        o oVar = this.f491r;
        c cVar = this.f474a;
        oVar.d(cVar.f500a, cVar.f510k, rectF, this.f490q, path);
    }

    public void h0(float f11) {
        c cVar = this.f474a;
        if (cVar.f513n != f11) {
            cVar.f513n = f11;
            r0();
        }
    }

    public void i0(boolean z10) {
        this.f496w = z10;
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        this.f478e = true;
        super.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        ColorStateList colorStateList3;
        ColorStateList colorStateList4;
        return super.isStateful() || ((colorStateList = this.f474a.f506g) != null && colorStateList.isStateful()) || (((colorStateList2 = this.f474a.f505f) != null && colorStateList2.isStateful()) || (((colorStateList3 = this.f474a.f504e) != null && colorStateList3.isStateful()) || ((colorStateList4 = this.f474a.f503d) != null && colorStateList4.isStateful())));
    }

    public void j0(int i11) {
        this.f489p.d(i11);
        this.f474a.f520u = false;
        T();
    }

    public void k0(int i11) {
        c cVar = this.f474a;
        if (cVar.f516q != i11) {
            cVar.f516q = i11;
            T();
        }
    }

    protected int l(int i11) {
        float fO = O() + B();
        ta.a aVar = this.f474a.f501b;
        return aVar != null ? aVar.c(i11, fO) : i11;
    }

    public void l0(float f11, int i11) {
        o0(f11);
        n0(ColorStateList.valueOf(i11));
    }

    public void m0(float f11, ColorStateList colorStateList) {
        o0(f11);
        n0(colorStateList);
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        this.f474a = new c(this.f474a);
        return this;
    }

    public void n0(ColorStateList colorStateList) {
        c cVar = this.f474a;
        if (cVar.f504e != colorStateList) {
            cVar.f504e = colorStateList;
            onStateChange(getState());
        }
    }

    public void o0(float f11) {
        this.f474a.f511l = f11;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        this.f478e = true;
        super.onBoundsChange(rect);
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        boolean z10 = p0(iArr) || q0();
        if (z10) {
            invalidateSelf();
        }
        return z10;
    }

    protected void s(Canvas canvas, Paint paint, Path path, RectF rectF) {
        r(canvas, paint, path, this.f474a.f500a, rectF);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i11) {
        c cVar = this.f474a;
        if (cVar.f512m != i11) {
            cVar.f512m = i11;
            T();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f474a.f502c = colorFilter;
        T();
    }

    @Override // ab.q
    public void setShapeAppearanceModel(n nVar) {
        this.f474a.f500a = nVar;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setTint(int i11) {
        setTintList(ColorStateList.valueOf(i11));
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        this.f474a.f506g = colorStateList;
        q0();
        T();
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        c cVar = this.f474a;
        if (cVar.f507h != mode) {
            cVar.f507h = mode;
            q0();
            T();
        }
    }

    protected void t(Canvas canvas) {
        r(canvas, this.f488o, this.f481h, this.f486m, x());
    }

    public float u() {
        return this.f474a.f500a.j().a(w());
    }

    public float v() {
        return this.f474a.f500a.l().a(w());
    }

    protected RectF w() {
        this.f482i.set(getBounds());
        return this.f482i;
    }

    public float y() {
        return this.f474a.f514o;
    }

    public ColorStateList z() {
        return this.f474a.f503d;
    }
}
