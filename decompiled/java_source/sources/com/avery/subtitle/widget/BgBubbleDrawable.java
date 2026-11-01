package com.avery.subtitle.widget;

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

/* JADX INFO: loaded from: classes2.dex */
public class BgBubbleDrawable extends Drawable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private RectF f19884a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Path f19885b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Path f19886c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private BitmapShader f19887d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Paint f19888e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Paint f19889f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f19890g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f19891h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f19892i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private float f19893j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private float f19894k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private float f19895l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private float f19896m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private float f19897n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f19898o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private Bitmap f19899p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private ArrowLocation f19900q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private BubbleType f19901r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f19902s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f19903t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    float f19904u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    float f19905v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    float f19906w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    float f19907x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    int[] f19908y;

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
        HORIZONTAL(1),
        VERTICAL(0);

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
        static final /* synthetic */ int[] f19909a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        static final /* synthetic */ int[] f19910b;

        static {
            int[] iArr = new int[BubbleType.values().length];
            f19910b = iArr;
            try {
                iArr[BubbleType.SHADER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f19910b[BubbleType.COLOR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f19910b[BubbleType.BITMAP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[ArrowLocation.values().length];
            f19909a = iArr2;
            try {
                iArr2[ArrowLocation.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f19909a[ArrowLocation.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f19909a[ArrowLocation.TOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f19909a[ArrowLocation.BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f19909a[ArrowLocation.NONE.ordinal()] = 5;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    public static class b {
        public static float A = 0.0f;
        public static int B = -1291845632;
        public static float C = 0.0f;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public static float f19911u = 25.0f;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        public static float f19912v = 25.0f;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        public static float f19913w = 20.0f;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public static float f19914x = 50.0f;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        public static int f19915y = -65536;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        public static int f19916z = 255;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private RectF f19917a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private float f19918b = A;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f19919c = B;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private float f19920d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private float f19921e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private float f19922f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private float f19923g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private float f19924h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private float f19925i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private int f19926j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private int f19927k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private Bitmap f19928l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private BubbleType f19929m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private ArrowLocation f19930n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private boolean f19931o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        float f19932p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        float f19933q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        float f19934r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        float f19935s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        int[] f19936t;

        public b() {
            float f11 = C;
            this.f19920d = f11;
            this.f19921e = f11;
            this.f19922f = f19911u;
            this.f19923g = f19913w;
            this.f19924h = f19912v;
            this.f19925i = f19914x;
            this.f19926j = f19915y;
            this.f19927k = f19916z;
            this.f19929m = BubbleType.COLOR;
            this.f19930n = ArrowLocation.LEFT;
        }

        public b p(float f11) {
            this.f19923g = f11 * 2.0f;
            return this;
        }

        public b q(ArrowLocation arrowLocation) {
            this.f19930n = arrowLocation;
            return this;
        }

        public b r(int i11) {
            this.f19926j = i11;
            s(BubbleType.COLOR);
            return this;
        }

        public b s(BubbleType bubbleType) {
            this.f19929m = bubbleType;
            return this;
        }

        public BgBubbleDrawable t() {
            if (this.f19917a != null) {
                return new BgBubbleDrawable(this);
            }
            throw new IllegalArgumentException("BubbleDrawable Rect can not be null");
        }

        public b u(RectF rectF) {
            this.f19917a = rectF;
            return this;
        }
    }

    private BgBubbleDrawable(b bVar) {
        this.f19885b = new Path();
        this.f19886c = new Path();
        this.f19888e = new Paint(1);
        this.f19889f = new Paint();
        this.f19903t = 255;
        this.f19890g = bVar.f19918b;
        this.f19891h = bVar.f19919c;
        this.f19892i = bVar.f19920d;
        this.f19893j = bVar.f19921e;
        this.f19884a = bVar.f19917a;
        this.f19895l = bVar.f19923g;
        this.f19903t = bVar.f19927k;
        this.f19896m = bVar.f19924h;
        this.f19894k = bVar.f19922f;
        this.f19897n = bVar.f19925i;
        this.f19898o = bVar.f19926j;
        this.f19899p = bVar.f19928l;
        this.f19900q = bVar.f19930n;
        this.f19901r = bVar.f19929m;
        this.f19902s = bVar.f19931o;
        this.f19904u = bVar.f19932p;
        this.f19905v = bVar.f19933q;
        this.f19906w = bVar.f19934r;
        this.f19907x = bVar.f19935s;
        this.f19908y = bVar.f19936t;
    }

    private void a(Canvas canvas) {
        int i11 = a.f19910b[this.f19901r.ordinal()];
        if (i11 == 1) {
            this.f19888e.setShader(new LinearGradient(this.f19904u, this.f19905v, this.f19906w, this.f19907x, this.f19908y, (float[]) null, Shader.TileMode.CLAMP));
        } else if (i11 == 2) {
            this.f19888e.setColor(this.f19898o);
        } else if (i11 == 3) {
            if (this.f19899p == null) {
                return;
            }
            if (this.f19887d == null) {
                Bitmap bitmap = this.f19899p;
                Shader.TileMode tileMode = Shader.TileMode.CLAMP;
                this.f19887d = new BitmapShader(bitmap, tileMode, tileMode);
            }
            this.f19888e.setShader(this.f19887d);
            g();
        }
        e(this.f19900q, this.f19885b);
        this.f19888e.setAlpha(Math.abs(this.f19903t));
        if (this.f19890g > 0.0f) {
            this.f19889f.setColor(0);
            this.f19889f.setAlpha(Math.abs(this.f19903t));
            this.f19889f.setAntiAlias(true);
            this.f19889f.setShadowLayer(this.f19890g, this.f19892i, this.f19893j, this.f19891h);
            this.f19889f.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_ATOP));
            canvas.drawPath(this.f19885b, this.f19889f);
        }
        canvas.drawPath(this.f19885b, this.f19888e);
    }

    private void b(RectF rectF, Path path) {
        if (this.f19902s) {
            this.f19897n = ((rectF.right - rectF.left) / 2.0f) - (this.f19894k / 2.0f);
        }
        path.moveTo(rectF.left + this.f19895l, rectF.top);
        path.lineTo(rectF.width() - this.f19895l, rectF.top);
        float f11 = rectF.right;
        float f12 = this.f19895l;
        float f13 = rectF.top;
        path.arcTo(new RectF(f11 - f12, f13, f11, f12 + f13), 270.0f, 90.0f);
        path.lineTo(rectF.right, (rectF.bottom - this.f19896m) - this.f19895l);
        float f14 = rectF.right;
        float f15 = this.f19895l;
        float f16 = rectF.bottom;
        float f17 = this.f19896m;
        path.arcTo(new RectF(f14 - f15, (f16 - f15) - f17, f14, f16 - f17), 0.0f, 90.0f);
        path.lineTo(rectF.left + this.f19894k + this.f19897n, rectF.bottom - this.f19896m);
        path.lineTo(rectF.left + this.f19897n + (this.f19894k / 2.0f), rectF.bottom);
        path.lineTo(rectF.left + this.f19897n, rectF.bottom - this.f19896m);
        path.lineTo(rectF.left + Math.min(this.f19895l, this.f19897n), rectF.bottom - this.f19896m);
        float f18 = rectF.left;
        float f19 = rectF.bottom;
        float f20 = this.f19895l;
        float f21 = this.f19896m;
        path.arcTo(new RectF(f18, (f19 - f20) - f21, f20 + f18, f19 - f21), 90.0f, 90.0f);
        path.lineTo(rectF.left, rectF.top + this.f19895l);
        float f22 = rectF.left;
        float f23 = rectF.top;
        float f24 = this.f19895l;
        path.arcTo(new RectF(f22, f23, f24 + f22, f24 + f23), 180.0f, 90.0f);
        path.close();
    }

    private void c(RectF rectF, Path path) {
        if (this.f19902s) {
            this.f19897n = ((rectF.bottom - rectF.top) / 2.0f) - (this.f19894k / 2.0f);
        }
        path.moveTo(this.f19894k + rectF.left + this.f19895l, rectF.top);
        path.lineTo(rectF.width() - this.f19895l, rectF.top);
        float f11 = rectF.right;
        float f12 = this.f19895l;
        float f13 = rectF.top;
        path.arcTo(new RectF(f11 - f12, f13, f11, f12 + f13), 270.0f, 90.0f);
        path.lineTo(rectF.right, rectF.bottom - this.f19895l);
        float f14 = rectF.right;
        float f15 = this.f19895l;
        float f16 = rectF.bottom;
        path.arcTo(new RectF(f14 - f15, f16 - f15, f14, f16), 0.0f, 90.0f);
        path.lineTo(rectF.left + this.f19894k + this.f19895l, rectF.bottom);
        float f17 = rectF.left;
        float f18 = this.f19894k;
        float f19 = rectF.bottom;
        float f20 = this.f19895l;
        path.arcTo(new RectF(f17 + f18, f19 - f20, f20 + f17 + f18, f19), 90.0f, 90.0f);
        path.lineTo(rectF.left + this.f19894k, this.f19896m + this.f19897n);
        path.lineTo(rectF.left, this.f19897n + (this.f19896m / 2.0f));
        path.lineTo(rectF.left + this.f19894k, this.f19897n);
        path.lineTo(rectF.left + this.f19894k, rectF.top + this.f19895l);
        float f21 = rectF.left;
        float f22 = this.f19894k;
        float f23 = rectF.top;
        float f24 = this.f19895l;
        path.arcTo(new RectF(f21 + f22, f23, f21 + f24 + f22, f24 + f23), 180.0f, 90.0f);
        path.close();
    }

    private void d(RectF rectF, Path path) {
        if (this.f19902s) {
            this.f19897n = ((rectF.right - rectF.left) / 2.0f) - (this.f19894k / 2.0f);
        }
        path.moveTo(rectF.left + this.f19895l, rectF.top);
        path.lineTo(rectF.width() - this.f19895l, rectF.top);
        float f11 = rectF.right;
        float f12 = this.f19895l;
        float f13 = rectF.top;
        path.arcTo(new RectF(f11 - f12, f13, f11, f12 + f13), 270.0f, 90.0f);
        path.lineTo(rectF.right, rectF.bottom - this.f19895l);
        float f14 = rectF.right;
        float f15 = this.f19895l;
        float f16 = rectF.bottom;
        path.arcTo(new RectF(f14 - f15, f16 - f15, f14, f16), 0.0f, 90.0f);
        path.lineTo(rectF.left + this.f19895l, rectF.bottom);
        float f17 = rectF.left;
        float f18 = rectF.bottom;
        float f19 = this.f19895l;
        path.arcTo(new RectF(f17, f18 - f19, f19 + f17, f18), 90.0f, 90.0f);
        path.lineTo(rectF.left, rectF.top + this.f19895l);
        float f20 = rectF.left;
        float f21 = rectF.top;
        float f22 = this.f19895l;
        path.arcTo(new RectF(f20, f21, f22 + f20, f22 + f21), 180.0f, 90.0f);
        path.close();
    }

    private void e(ArrowLocation arrowLocation, Path path) {
        int i11 = a.f19909a[arrowLocation.ordinal()];
        if (i11 == 1) {
            c(this.f19884a, path);
            return;
        }
        if (i11 == 2) {
            f(this.f19884a, path);
            return;
        }
        if (i11 == 3) {
            h(this.f19884a, path);
        } else if (i11 == 4) {
            b(this.f19884a, path);
        } else {
            if (i11 != 5) {
                return;
            }
            d(this.f19884a, path);
        }
    }

    private void f(RectF rectF, Path path) {
        if (this.f19902s) {
            this.f19897n = ((rectF.bottom - rectF.top) / 2.0f) - (this.f19894k / 2.0f);
        }
        path.moveTo(rectF.left + this.f19895l, rectF.top);
        path.lineTo((rectF.width() - this.f19895l) - this.f19894k, rectF.top);
        float f11 = rectF.right;
        float f12 = this.f19895l;
        float f13 = this.f19894k;
        float f14 = rectF.top;
        path.arcTo(new RectF((f11 - f12) - f13, f14, f11 - f13, f12 + f14), 270.0f, 90.0f);
        path.lineTo(rectF.right - this.f19894k, this.f19897n);
        path.lineTo(rectF.right, this.f19897n + (this.f19896m / 2.0f));
        path.lineTo(rectF.right - this.f19894k, this.f19897n + this.f19896m);
        path.lineTo(rectF.right - this.f19894k, rectF.bottom - this.f19895l);
        float f15 = rectF.right;
        float f16 = this.f19895l;
        float f17 = this.f19894k;
        float f18 = rectF.bottom;
        path.arcTo(new RectF((f15 - f16) - f17, f18 - f16, f15 - f17, f18), 0.0f, 90.0f);
        path.lineTo(rectF.left + this.f19894k, rectF.bottom);
        float f19 = rectF.left;
        float f20 = rectF.bottom;
        float f21 = this.f19895l;
        path.arcTo(new RectF(f19, f20 - f21, f21 + f19, f20), 90.0f, 90.0f);
        float f22 = rectF.left;
        float f23 = rectF.top;
        float f24 = this.f19895l;
        path.arcTo(new RectF(f22, f23, f24 + f22, f24 + f23), 180.0f, 90.0f);
        path.close();
    }

    private void g() {
        Matrix matrix = new Matrix();
        matrix.set(null);
        matrix.postScale(getIntrinsicWidth() / this.f19899p.getWidth(), getIntrinsicHeight() / this.f19899p.getHeight());
        RectF rectF = this.f19884a;
        matrix.postTranslate(rectF.left, rectF.top);
        this.f19887d.setLocalMatrix(matrix);
    }

    private void h(RectF rectF, Path path) {
        if (this.f19902s) {
            this.f19897n = ((rectF.right - rectF.left) / 2.0f) - (this.f19894k / 2.0f);
        }
        path.moveTo(rectF.left + Math.min(this.f19897n, this.f19895l), rectF.top + this.f19896m);
        path.lineTo(rectF.left + this.f19897n, rectF.top + this.f19896m);
        path.lineTo(rectF.left + (this.f19894k / 2.0f) + this.f19897n, rectF.top);
        path.lineTo(rectF.left + this.f19894k + this.f19897n, rectF.top + this.f19896m);
        path.lineTo(rectF.right - this.f19895l, rectF.top + this.f19896m);
        float f11 = rectF.right;
        float f12 = this.f19895l;
        float f13 = rectF.top;
        float f14 = this.f19896m;
        path.arcTo(new RectF(f11 - f12, f13 + f14, f11, f12 + f13 + f14), 270.0f, 90.0f);
        path.lineTo(rectF.right, rectF.bottom - this.f19895l);
        float f15 = rectF.right;
        float f16 = this.f19895l;
        float f17 = rectF.bottom;
        path.arcTo(new RectF(f15 - f16, f17 - f16, f15, f17), 0.0f, 90.0f);
        path.lineTo(rectF.left + this.f19895l, rectF.bottom);
        float f18 = rectF.left;
        float f19 = rectF.bottom;
        float f20 = this.f19895l;
        path.arcTo(new RectF(f18, f19 - f20, f20 + f18, f19), 90.0f, 90.0f);
        path.lineTo(rectF.left, rectF.top + this.f19896m + this.f19895l);
        float f21 = rectF.left;
        float f22 = rectF.top;
        float f23 = this.f19896m;
        float f24 = this.f19895l;
        path.arcTo(new RectF(f21, f22 + f23, f24 + f21, f24 + f22 + f23), 180.0f, 90.0f);
        path.close();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        a(canvas);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return (int) this.f19884a.height();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return (int) this.f19884a.width();
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
        this.f19903t = i11;
        this.f19888e.setAlpha(i11);
        this.f19889f.setAlpha(i11);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f19888e.setColorFilter(colorFilter);
        this.f19889f.setColorFilter(colorFilter);
    }
}
