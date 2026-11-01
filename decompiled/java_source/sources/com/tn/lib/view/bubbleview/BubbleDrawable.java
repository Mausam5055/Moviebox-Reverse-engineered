package com.tn.lib.view.bubbleview;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes4.dex */
public class BubbleDrawable extends Drawable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private RectF f41114a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Path f41115b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Path f41116c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private BitmapShader f41117d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Paint f41118e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Paint f41119f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f41120g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f41121h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f41122i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private float f41123j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private float f41124k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private float f41125l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private float f41126m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private float f41127n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f41128o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private Bitmap f41129p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private ArrowLocation f41130q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private BubbleType f41131r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f41132s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f41133t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    float f41134u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    float f41135v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    float f41136w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    float f41137x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    int[] f41138y;

    public enum ArrowLocation {
        LEFT(0),
        RIGHT(1),
        TOP(2),
        BOTTOM(3),
        NONE(4);

        private int mValue;

        ArrowLocation(int i11) {
            this.mValue = i11;
        }

        public static ArrowLocation getDefault() {
            return LEFT;
        }

        public static ArrowLocation mapIntToValue(int i11) {
            for (ArrowLocation arrowLocation : values()) {
                if (i11 == arrowLocation.getIntValue()) {
                    return arrowLocation;
                }
            }
            return getDefault();
        }

        public int getIntValue() {
            return this.mValue;
        }
    }

    public enum BubbleType {
        COLOR,
        BITMAP,
        SHADER
    }

    public enum GradientDirection {
        VERTICAL(0),
        HORIZONTAL(1),
        TOP_LEFT_BOTTOM_RIGHT(2),
        TOP_RIGHT_BOTTOM_LEFT(3),
        BOTTOM_LEFT_TOP_RIGHT(4),
        BOTTOM_RIGHT_TOP_LEFT(5);

        private int mValue;

        GradientDirection(int i11) {
            this.mValue = i11;
        }

        public static GradientDirection getDefault() {
            return VERTICAL;
        }

        public static GradientDirection mapIntToValue(int i11) {
            for (GradientDirection gradientDirection : values()) {
                if (i11 == gradientDirection.getIntValue()) {
                    return gradientDirection;
                }
            }
            return getDefault();
        }

        public int getIntValue() {
            return this.mValue;
        }
    }

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f41139a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        static final /* synthetic */ int[] f41140b;

        static {
            int[] iArr = new int[BubbleType.values().length];
            f41140b = iArr;
            try {
                iArr[BubbleType.SHADER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f41140b[BubbleType.COLOR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f41140b[BubbleType.BITMAP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[ArrowLocation.values().length];
            f41139a = iArr2;
            try {
                iArr2[ArrowLocation.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f41139a[ArrowLocation.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f41139a[ArrowLocation.TOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f41139a[ArrowLocation.BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f41139a[ArrowLocation.NONE.ordinal()] = 5;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    public static class b {
        public static float A = 0.0f;
        public static int B = -1291845632;
        public static float C = 0.0f;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public static float f41141u = 25.0f;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        public static float f41142v = 25.0f;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        public static float f41143w = 20.0f;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public static float f41144x = 50.0f;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        public static int f41145y = -65536;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        public static int f41146z = 255;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private RectF f41147a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private float f41148b = A;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f41149c = B;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private float f41150d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private float f41151e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private float f41152f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private float f41153g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private float f41154h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private float f41155i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private int f41156j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private int f41157k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private Bitmap f41158l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private BubbleType f41159m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private ArrowLocation f41160n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private boolean f41161o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        float f41162p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        float f41163q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        float f41164r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        float f41165s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        int[] f41166t;

        public b() {
            float f11 = C;
            this.f41150d = f11;
            this.f41151e = f11;
            this.f41152f = f41141u;
            this.f41153g = f41143w;
            this.f41154h = f41142v;
            this.f41155i = f41144x;
            this.f41156j = f41145y;
            this.f41157k = f41146z;
            this.f41159m = BubbleType.COLOR;
            this.f41160n = ArrowLocation.LEFT;
        }

        public BubbleDrawable A() {
            if (this.f41147a != null) {
                return new BubbleDrawable(this);
            }
            throw new IllegalArgumentException("BubbleDrawable Rect can not be null");
        }

        public b B(RectF rectF) {
            this.f41147a = rectF;
            return this;
        }

        public b C(int i11) {
            this.f41149c = i11;
            return this;
        }

        public b D(float f11) {
            this.f41150d = f11;
            return this;
        }

        public b E(float f11) {
            this.f41151e = f11;
            return this;
        }

        public b F(float f11) {
            this.f41148b = f11;
            return this;
        }

        public b p(int i11) {
            this.f41157k = i11;
            return this;
        }

        public b q(float f11) {
            this.f41153g = f11 * 2.0f;
            return this;
        }

        public b r(boolean z10) {
            this.f41161o = z10;
            return this;
        }

        public b s(float f11) {
            this.f41154h = f11;
            return this;
        }

        public b t(ArrowLocation arrowLocation) {
            this.f41160n = arrowLocation;
            return this;
        }

        public b u(float f11) {
            this.f41155i = f11;
            return this;
        }

        public b v(float f11) {
            this.f41152f = f11;
            return this;
        }

        public b w(Bitmap bitmap) {
            this.f41158l = bitmap;
            z(BubbleType.BITMAP);
            return this;
        }

        public b x(int i11) {
            this.f41156j = i11;
            z(BubbleType.COLOR);
            return this;
        }

        public b y(float f11, float f12, float f13, float f14, int[] iArr) {
            this.f41162p = f11;
            this.f41163q = f12;
            this.f41164r = f13;
            this.f41165s = f14;
            this.f41166t = iArr;
            z(BubbleType.SHADER);
            return this;
        }

        public b z(BubbleType bubbleType) {
            this.f41159m = bubbleType;
            return this;
        }
    }

    private BubbleDrawable(b bVar) {
        this.f41115b = new Path();
        this.f41116c = new Path();
        this.f41118e = new Paint(1);
        this.f41119f = new Paint();
        this.f41133t = 255;
        this.f41120g = bVar.f41148b;
        this.f41121h = bVar.f41149c;
        this.f41122i = bVar.f41150d;
        this.f41123j = bVar.f41151e;
        this.f41114a = bVar.f41147a;
        this.f41125l = bVar.f41153g;
        this.f41133t = bVar.f41157k;
        this.f41126m = bVar.f41154h;
        this.f41124k = bVar.f41152f;
        this.f41127n = bVar.f41155i;
        this.f41128o = bVar.f41156j;
        this.f41129p = bVar.f41158l;
        this.f41130q = bVar.f41160n;
        this.f41131r = bVar.f41159m;
        this.f41132s = bVar.f41161o;
        this.f41134u = bVar.f41162p;
        this.f41135v = bVar.f41163q;
        this.f41136w = bVar.f41164r;
        this.f41137x = bVar.f41165s;
        this.f41138y = bVar.f41166t;
    }

    private void a(Canvas canvas) {
        int i11 = a.f41140b[this.f41131r.ordinal()];
        if (i11 == 1) {
            this.f41118e.setShader(new LinearGradient(this.f41134u, this.f41135v, this.f41136w, this.f41137x, this.f41138y, (float[]) null, Shader.TileMode.CLAMP));
        } else if (i11 == 2) {
            this.f41118e.setColor(this.f41128o);
        } else if (i11 == 3) {
            if (this.f41129p == null) {
                return;
            }
            if (this.f41117d == null) {
                Bitmap bitmap = this.f41129p;
                Shader.TileMode tileMode = Shader.TileMode.CLAMP;
                this.f41117d = new BitmapShader(bitmap, tileMode, tileMode);
            }
            this.f41118e.setShader(this.f41117d);
            g();
        }
        e(this.f41130q, this.f41115b);
        if (this.f41120g > 0.0f) {
            this.f41119f.setColor(0);
            this.f41119f.setAlpha(Math.abs(this.f41133t));
            this.f41119f.setAntiAlias(true);
            this.f41119f.setShadowLayer(this.f41120g, this.f41122i, this.f41123j, this.f41121h);
            this.f41119f.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_ATOP));
            canvas.drawPath(this.f41115b, this.f41119f);
        }
        canvas.drawPath(this.f41115b, this.f41118e);
    }

    private void b(RectF rectF, Path path) {
        if (this.f41132s) {
            this.f41127n = ((rectF.right - rectF.left) / 2.0f) - (this.f41124k / 2.0f);
        }
        path.moveTo(rectF.left + this.f41125l, rectF.top);
        path.lineTo(rectF.width() - this.f41125l, rectF.top);
        float f11 = rectF.right;
        float f12 = this.f41125l;
        float f13 = rectF.top;
        path.arcTo(new RectF(f11 - f12, f13, f11, f12 + f13), 270.0f, 90.0f);
        path.lineTo(rectF.right, (rectF.bottom - this.f41126m) - this.f41125l);
        float f14 = rectF.right;
        float f15 = this.f41125l;
        float f16 = rectF.bottom;
        float f17 = this.f41126m;
        path.arcTo(new RectF(f14 - f15, (f16 - f15) - f17, f14, f16 - f17), 0.0f, 90.0f);
        path.lineTo(rectF.left + this.f41124k + this.f41127n, rectF.bottom - this.f41126m);
        path.lineTo(rectF.left + this.f41127n + (this.f41124k / 2.0f), rectF.bottom);
        path.lineTo(rectF.left + this.f41127n, rectF.bottom - this.f41126m);
        path.lineTo(rectF.left + Math.min(this.f41125l, this.f41127n), rectF.bottom - this.f41126m);
        float f18 = rectF.left;
        float f19 = rectF.bottom;
        float f20 = this.f41125l;
        float f21 = this.f41126m;
        path.arcTo(new RectF(f18, (f19 - f20) - f21, f20 + f18, f19 - f21), 90.0f, 90.0f);
        path.lineTo(rectF.left, rectF.top + this.f41125l);
        float f22 = rectF.left;
        float f23 = rectF.top;
        float f24 = this.f41125l;
        path.arcTo(new RectF(f22, f23, f24 + f22, f24 + f23), 180.0f, 90.0f);
        path.close();
    }

    private void c(RectF rectF, Path path) {
        if (this.f41132s) {
            this.f41127n = ((rectF.bottom - rectF.top) / 2.0f) - (this.f41124k / 2.0f);
        }
        path.moveTo(this.f41124k + rectF.left + this.f41125l, rectF.top);
        path.lineTo(rectF.width() - this.f41125l, rectF.top);
        float f11 = rectF.right;
        float f12 = this.f41125l;
        float f13 = rectF.top;
        path.arcTo(new RectF(f11 - f12, f13, f11, f12 + f13), 270.0f, 90.0f);
        path.lineTo(rectF.right, rectF.bottom - this.f41125l);
        float f14 = rectF.right;
        float f15 = this.f41125l;
        float f16 = rectF.bottom;
        path.arcTo(new RectF(f14 - f15, f16 - f15, f14, f16), 0.0f, 90.0f);
        path.lineTo(rectF.left + this.f41124k + this.f41125l, rectF.bottom);
        float f17 = rectF.left;
        float f18 = this.f41124k;
        float f19 = rectF.bottom;
        float f20 = this.f41125l;
        path.arcTo(new RectF(f17 + f18, f19 - f20, f20 + f17 + f18, f19), 90.0f, 90.0f);
        path.lineTo(rectF.left + this.f41124k, this.f41126m + this.f41127n);
        path.lineTo(rectF.left, this.f41127n + (this.f41126m / 2.0f));
        path.lineTo(rectF.left + this.f41124k, this.f41127n);
        path.lineTo(rectF.left + this.f41124k, rectF.top + this.f41125l);
        float f21 = rectF.left;
        float f22 = this.f41124k;
        float f23 = rectF.top;
        float f24 = this.f41125l;
        path.arcTo(new RectF(f21 + f22, f23, f21 + f24 + f22, f24 + f23), 180.0f, 90.0f);
        path.close();
    }

    private void d(RectF rectF, Path path) {
        if (this.f41132s) {
            this.f41127n = ((rectF.right - rectF.left) / 2.0f) - (this.f41124k / 2.0f);
        }
        path.moveTo(rectF.left + this.f41125l, rectF.top);
        path.lineTo(rectF.width() - this.f41125l, rectF.top);
        float f11 = rectF.right;
        float f12 = this.f41125l;
        float f13 = rectF.top;
        path.arcTo(new RectF(f11 - f12, f13, f11, f12 + f13), 270.0f, 90.0f);
        path.lineTo(rectF.right, rectF.bottom - this.f41125l);
        float f14 = rectF.right;
        float f15 = this.f41125l;
        float f16 = rectF.bottom;
        path.arcTo(new RectF(f14 - f15, f16 - f15, f14, f16), 0.0f, 90.0f);
        path.lineTo(rectF.left + this.f41125l, rectF.bottom);
        float f17 = rectF.left;
        float f18 = rectF.bottom;
        float f19 = this.f41125l;
        path.arcTo(new RectF(f17, f18 - f19, f19 + f17, f18), 90.0f, 90.0f);
        path.lineTo(rectF.left, rectF.top + this.f41125l);
        float f20 = rectF.left;
        float f21 = rectF.top;
        float f22 = this.f41125l;
        path.arcTo(new RectF(f20, f21, f22 + f20, f22 + f21), 180.0f, 90.0f);
        path.close();
    }

    private void e(ArrowLocation arrowLocation, Path path) {
        int i11 = a.f41139a[arrowLocation.ordinal()];
        if (i11 == 1) {
            c(this.f41114a, path);
            return;
        }
        if (i11 == 2) {
            f(this.f41114a, path);
            return;
        }
        if (i11 == 3) {
            h(this.f41114a, path);
        } else if (i11 == 4) {
            b(this.f41114a, path);
        } else {
            if (i11 != 5) {
                return;
            }
            d(this.f41114a, path);
        }
    }

    private void f(RectF rectF, Path path) {
        if (this.f41132s) {
            this.f41127n = ((rectF.bottom - rectF.top) / 2.0f) - (this.f41124k / 2.0f);
        }
        path.moveTo(rectF.left + this.f41125l, rectF.top);
        path.lineTo((rectF.width() - this.f41125l) - this.f41124k, rectF.top);
        float f11 = rectF.right;
        float f12 = this.f41125l;
        float f13 = this.f41124k;
        float f14 = rectF.top;
        path.arcTo(new RectF((f11 - f12) - f13, f14, f11 - f13, f12 + f14), 270.0f, 90.0f);
        path.lineTo(rectF.right - this.f41124k, this.f41127n);
        path.lineTo(rectF.right, this.f41127n + (this.f41126m / 2.0f));
        path.lineTo(rectF.right - this.f41124k, this.f41127n + this.f41126m);
        path.lineTo(rectF.right - this.f41124k, rectF.bottom - this.f41125l);
        float f15 = rectF.right;
        float f16 = this.f41125l;
        float f17 = this.f41124k;
        float f18 = rectF.bottom;
        path.arcTo(new RectF((f15 - f16) - f17, f18 - f16, f15 - f17, f18), 0.0f, 90.0f);
        path.lineTo(rectF.left + this.f41124k, rectF.bottom);
        float f19 = rectF.left;
        float f20 = rectF.bottom;
        float f21 = this.f41125l;
        path.arcTo(new RectF(f19, f20 - f21, f21 + f19, f20), 90.0f, 90.0f);
        float f22 = rectF.left;
        float f23 = rectF.top;
        float f24 = this.f41125l;
        path.arcTo(new RectF(f22, f23, f24 + f22, f24 + f23), 180.0f, 90.0f);
        path.close();
    }

    private void g() {
        Matrix matrix = new Matrix();
        matrix.set(null);
        matrix.postScale(getIntrinsicWidth() / this.f41129p.getWidth(), getIntrinsicHeight() / this.f41129p.getHeight());
        RectF rectF = this.f41114a;
        matrix.postTranslate(rectF.left, rectF.top);
        this.f41117d.setLocalMatrix(matrix);
    }

    private void h(RectF rectF, Path path) {
        if (this.f41132s) {
            this.f41127n = ((rectF.right - rectF.left) / 2.0f) - (this.f41124k / 2.0f);
        }
        path.moveTo(rectF.left + Math.min(this.f41127n, this.f41125l), rectF.top + this.f41126m);
        path.lineTo(rectF.left + this.f41127n, rectF.top + this.f41126m);
        path.lineTo(rectF.left + (this.f41124k / 2.0f) + this.f41127n, rectF.top);
        path.lineTo(rectF.left + this.f41124k + this.f41127n, rectF.top + this.f41126m);
        path.lineTo(rectF.right - this.f41125l, rectF.top + this.f41126m);
        float f11 = rectF.right;
        float f12 = this.f41125l;
        float f13 = rectF.top;
        float f14 = this.f41126m;
        path.arcTo(new RectF(f11 - f12, f13 + f14, f11, f12 + f13 + f14), 270.0f, 90.0f);
        path.lineTo(rectF.right, rectF.bottom - this.f41125l);
        float f15 = rectF.right;
        float f16 = this.f41125l;
        float f17 = rectF.bottom;
        path.arcTo(new RectF(f15 - f16, f17 - f16, f15, f17), 0.0f, 90.0f);
        path.lineTo(rectF.left + this.f41125l, rectF.bottom);
        float f18 = rectF.left;
        float f19 = rectF.bottom;
        float f20 = this.f41125l;
        path.arcTo(new RectF(f18, f19 - f20, f20 + f18, f19), 90.0f, 90.0f);
        path.lineTo(rectF.left, rectF.top + this.f41126m + this.f41125l);
        float f21 = rectF.left;
        float f22 = rectF.top;
        float f23 = this.f41126m;
        float f24 = this.f41125l;
        path.arcTo(new RectF(f21, f22 + f23, f24 + f21, f24 + f22 + f23), 180.0f, 90.0f);
        path.close();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        a(canvas);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return (int) this.f41114a.height();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return (int) this.f41114a.width();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i11) {
        this.f41133t = i11;
        this.f41118e.setAlpha(i11);
        this.f41119f.setAlpha(i11);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f41118e.setColorFilter(colorFilter);
        this.f41119f.setColorFilter(colorFilter);
    }
}
