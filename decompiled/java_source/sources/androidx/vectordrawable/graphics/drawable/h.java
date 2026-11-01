package androidx.vectordrawable.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.VectorDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import y0.k;

/* JADX INFO: loaded from: classes2.dex */
public class h extends androidx.vectordrawable.graphics.drawable.g {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    static final PorterDuff.Mode f15151k = PorterDuff.Mode.SRC_IN;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private C0129h f15152b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private PorterDuffColorFilter f15153c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ColorFilter f15154d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f15155e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f15156f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Drawable.ConstantState f15157g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final float[] f15158h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Matrix f15159i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Rect f15160j;

    private static class b extends f {
        b() {
        }

        b(b bVar) {
            super(bVar);
        }

        private void f(TypedArray typedArray, XmlPullParser xmlPullParser) {
            String string = typedArray.getString(0);
            if (string != null) {
                this.f15187b = string;
            }
            String string2 = typedArray.getString(1);
            if (string2 != null) {
                this.f15186a = z0.e.d(string2);
            }
            this.f15188c = k.g(typedArray, xmlPullParser, "fillType", 2, 0);
        }

        @Override // androidx.vectordrawable.graphics.drawable.h.f
        public boolean c() {
            return true;
        }

        public void e(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            if (k.j(xmlPullParser, "pathData")) {
                TypedArray typedArrayK = k.k(resources, theme, attributeSet, androidx.vectordrawable.graphics.drawable.a.f15123d);
                f(typedArrayK, xmlPullParser);
                typedArrayK.recycle();
            }
        }
    }

    private static class c extends f {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int[] f15161e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        y0.d f15162f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        float f15163g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        y0.d f15164h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        float f15165i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        float f15166j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        float f15167k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        float f15168l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        float f15169m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        Paint.Cap f15170n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        Paint.Join f15171o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        float f15172p;

        c() {
            this.f15163g = 0.0f;
            this.f15165i = 1.0f;
            this.f15166j = 1.0f;
            this.f15167k = 0.0f;
            this.f15168l = 1.0f;
            this.f15169m = 0.0f;
            this.f15170n = Paint.Cap.BUTT;
            this.f15171o = Paint.Join.MITER;
            this.f15172p = 4.0f;
        }

        c(c cVar) {
            super(cVar);
            this.f15163g = 0.0f;
            this.f15165i = 1.0f;
            this.f15166j = 1.0f;
            this.f15167k = 0.0f;
            this.f15168l = 1.0f;
            this.f15169m = 0.0f;
            this.f15170n = Paint.Cap.BUTT;
            this.f15171o = Paint.Join.MITER;
            this.f15172p = 4.0f;
            this.f15161e = cVar.f15161e;
            this.f15162f = cVar.f15162f;
            this.f15163g = cVar.f15163g;
            this.f15165i = cVar.f15165i;
            this.f15164h = cVar.f15164h;
            this.f15188c = cVar.f15188c;
            this.f15166j = cVar.f15166j;
            this.f15167k = cVar.f15167k;
            this.f15168l = cVar.f15168l;
            this.f15169m = cVar.f15169m;
            this.f15170n = cVar.f15170n;
            this.f15171o = cVar.f15171o;
            this.f15172p = cVar.f15172p;
        }

        private Paint.Cap e(int i11, Paint.Cap cap) {
            if (i11 == 0) {
                return Paint.Cap.BUTT;
            }
            if (i11 != 1) {
                return i11 != 2 ? cap : Paint.Cap.SQUARE;
            }
            return Paint.Cap.ROUND;
        }

        private Paint.Join f(int i11, Paint.Join join) {
            if (i11 == 0) {
                return Paint.Join.MITER;
            }
            if (i11 != 1) {
                return i11 != 2 ? join : Paint.Join.BEVEL;
            }
            return Paint.Join.ROUND;
        }

        private void h(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme) {
            this.f15161e = null;
            if (k.j(xmlPullParser, "pathData")) {
                String string = typedArray.getString(0);
                if (string != null) {
                    this.f15187b = string;
                }
                String string2 = typedArray.getString(2);
                if (string2 != null) {
                    this.f15186a = z0.e.d(string2);
                }
                this.f15164h = k.e(typedArray, xmlPullParser, theme, "fillColor", 1, 0);
                this.f15166j = k.f(typedArray, xmlPullParser, "fillAlpha", 12, this.f15166j);
                this.f15170n = e(k.g(typedArray, xmlPullParser, "strokeLineCap", 8, -1), this.f15170n);
                this.f15171o = f(k.g(typedArray, xmlPullParser, "strokeLineJoin", 9, -1), this.f15171o);
                this.f15172p = k.f(typedArray, xmlPullParser, "strokeMiterLimit", 10, this.f15172p);
                this.f15162f = k.e(typedArray, xmlPullParser, theme, "strokeColor", 3, 0);
                this.f15165i = k.f(typedArray, xmlPullParser, "strokeAlpha", 11, this.f15165i);
                this.f15163g = k.f(typedArray, xmlPullParser, "strokeWidth", 4, this.f15163g);
                this.f15168l = k.f(typedArray, xmlPullParser, "trimPathEnd", 6, this.f15168l);
                this.f15169m = k.f(typedArray, xmlPullParser, "trimPathOffset", 7, this.f15169m);
                this.f15167k = k.f(typedArray, xmlPullParser, "trimPathStart", 5, this.f15167k);
                this.f15188c = k.g(typedArray, xmlPullParser, "fillType", 13, this.f15188c);
            }
        }

        @Override // androidx.vectordrawable.graphics.drawable.h.e
        public boolean a() {
            return this.f15164h.i() || this.f15162f.i();
        }

        @Override // androidx.vectordrawable.graphics.drawable.h.e
        public boolean b(int[] iArr) {
            return this.f15162f.j(iArr) | this.f15164h.j(iArr);
        }

        public void g(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            TypedArray typedArrayK = k.k(resources, theme, attributeSet, androidx.vectordrawable.graphics.drawable.a.f15122c);
            h(typedArrayK, xmlPullParser, theme);
            typedArrayK.recycle();
        }

        float getFillAlpha() {
            return this.f15166j;
        }

        int getFillColor() {
            return this.f15164h.e();
        }

        float getStrokeAlpha() {
            return this.f15165i;
        }

        int getStrokeColor() {
            return this.f15162f.e();
        }

        float getStrokeWidth() {
            return this.f15163g;
        }

        float getTrimPathEnd() {
            return this.f15168l;
        }

        float getTrimPathOffset() {
            return this.f15169m;
        }

        float getTrimPathStart() {
            return this.f15167k;
        }

        void setFillAlpha(float f11) {
            this.f15166j = f11;
        }

        void setFillColor(int i11) {
            this.f15164h.k(i11);
        }

        void setStrokeAlpha(float f11) {
            this.f15165i = f11;
        }

        void setStrokeColor(int i11) {
            this.f15162f.k(i11);
        }

        void setStrokeWidth(float f11) {
            this.f15163g = f11;
        }

        void setTrimPathEnd(float f11) {
            this.f15168l = f11;
        }

        void setTrimPathOffset(float f11) {
            this.f15169m = f11;
        }

        void setTrimPathStart(float f11) {
            this.f15167k = f11;
        }
    }

    private static class d extends e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Matrix f15173a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final ArrayList f15174b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        float f15175c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private float f15176d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private float f15177e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private float f15178f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private float f15179g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private float f15180h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private float f15181i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        final Matrix f15182j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        int f15183k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private int[] f15184l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private String f15185m;

        public d() {
            super();
            this.f15173a = new Matrix();
            this.f15174b = new ArrayList();
            this.f15175c = 0.0f;
            this.f15176d = 0.0f;
            this.f15177e = 0.0f;
            this.f15178f = 1.0f;
            this.f15179g = 1.0f;
            this.f15180h = 0.0f;
            this.f15181i = 0.0f;
            this.f15182j = new Matrix();
            this.f15185m = null;
        }

        public d(d dVar, androidx.collection.a aVar) {
            f bVar;
            super();
            this.f15173a = new Matrix();
            this.f15174b = new ArrayList();
            this.f15175c = 0.0f;
            this.f15176d = 0.0f;
            this.f15177e = 0.0f;
            this.f15178f = 1.0f;
            this.f15179g = 1.0f;
            this.f15180h = 0.0f;
            this.f15181i = 0.0f;
            Matrix matrix = new Matrix();
            this.f15182j = matrix;
            this.f15185m = null;
            this.f15175c = dVar.f15175c;
            this.f15176d = dVar.f15176d;
            this.f15177e = dVar.f15177e;
            this.f15178f = dVar.f15178f;
            this.f15179g = dVar.f15179g;
            this.f15180h = dVar.f15180h;
            this.f15181i = dVar.f15181i;
            this.f15184l = dVar.f15184l;
            String str = dVar.f15185m;
            this.f15185m = str;
            this.f15183k = dVar.f15183k;
            if (str != null) {
                aVar.put(str, this);
            }
            matrix.set(dVar.f15182j);
            ArrayList arrayList = dVar.f15174b;
            for (int i11 = 0; i11 < arrayList.size(); i11++) {
                Object obj = arrayList.get(i11);
                if (obj instanceof d) {
                    this.f15174b.add(new d((d) obj, aVar));
                } else {
                    if (obj instanceof c) {
                        bVar = new c((c) obj);
                    } else {
                        if (!(obj instanceof b)) {
                            throw new IllegalStateException("Unknown object in the tree!");
                        }
                        bVar = new b((b) obj);
                    }
                    this.f15174b.add(bVar);
                    Object obj2 = bVar.f15187b;
                    if (obj2 != null) {
                        aVar.put(obj2, bVar);
                    }
                }
            }
        }

        private void d() {
            this.f15182j.reset();
            this.f15182j.postTranslate(-this.f15176d, -this.f15177e);
            this.f15182j.postScale(this.f15178f, this.f15179g);
            this.f15182j.postRotate(this.f15175c, 0.0f, 0.0f);
            this.f15182j.postTranslate(this.f15180h + this.f15176d, this.f15181i + this.f15177e);
        }

        private void e(TypedArray typedArray, XmlPullParser xmlPullParser) {
            this.f15184l = null;
            this.f15175c = k.f(typedArray, xmlPullParser, "rotation", 5, this.f15175c);
            this.f15176d = typedArray.getFloat(1, this.f15176d);
            this.f15177e = typedArray.getFloat(2, this.f15177e);
            this.f15178f = k.f(typedArray, xmlPullParser, "scaleX", 3, this.f15178f);
            this.f15179g = k.f(typedArray, xmlPullParser, "scaleY", 4, this.f15179g);
            this.f15180h = k.f(typedArray, xmlPullParser, "translateX", 6, this.f15180h);
            this.f15181i = k.f(typedArray, xmlPullParser, "translateY", 7, this.f15181i);
            String string = typedArray.getString(0);
            if (string != null) {
                this.f15185m = string;
            }
            d();
        }

        @Override // androidx.vectordrawable.graphics.drawable.h.e
        public boolean a() {
            for (int i11 = 0; i11 < this.f15174b.size(); i11++) {
                if (((e) this.f15174b.get(i11)).a()) {
                    return true;
                }
            }
            return false;
        }

        @Override // androidx.vectordrawable.graphics.drawable.h.e
        public boolean b(int[] iArr) {
            boolean zB = false;
            for (int i11 = 0; i11 < this.f15174b.size(); i11++) {
                zB |= ((e) this.f15174b.get(i11)).b(iArr);
            }
            return zB;
        }

        public void c(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            TypedArray typedArrayK = k.k(resources, theme, attributeSet, androidx.vectordrawable.graphics.drawable.a.f15121b);
            e(typedArrayK, xmlPullParser);
            typedArrayK.recycle();
        }

        public String getGroupName() {
            return this.f15185m;
        }

        public Matrix getLocalMatrix() {
            return this.f15182j;
        }

        public float getPivotX() {
            return this.f15176d;
        }

        public float getPivotY() {
            return this.f15177e;
        }

        public float getRotation() {
            return this.f15175c;
        }

        public float getScaleX() {
            return this.f15178f;
        }

        public float getScaleY() {
            return this.f15179g;
        }

        public float getTranslateX() {
            return this.f15180h;
        }

        public float getTranslateY() {
            return this.f15181i;
        }

        public void setPivotX(float f11) {
            if (f11 != this.f15176d) {
                this.f15176d = f11;
                d();
            }
        }

        public void setPivotY(float f11) {
            if (f11 != this.f15177e) {
                this.f15177e = f11;
                d();
            }
        }

        public void setRotation(float f11) {
            if (f11 != this.f15175c) {
                this.f15175c = f11;
                d();
            }
        }

        public void setScaleX(float f11) {
            if (f11 != this.f15178f) {
                this.f15178f = f11;
                d();
            }
        }

        public void setScaleY(float f11) {
            if (f11 != this.f15179g) {
                this.f15179g = f11;
                d();
            }
        }

        public void setTranslateX(float f11) {
            if (f11 != this.f15180h) {
                this.f15180h = f11;
                d();
            }
        }

        public void setTranslateY(float f11) {
            if (f11 != this.f15181i) {
                this.f15181i = f11;
                d();
            }
        }
    }

    private static abstract class e {
        private e() {
        }

        public boolean a() {
            return false;
        }

        public boolean b(int[] iArr) {
            return false;
        }
    }

    private static abstract class f extends e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        protected z0.e.b[] f15186a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        String f15187b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f15188c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f15189d;

        public f() {
            super();
            this.f15186a = null;
            this.f15188c = 0;
        }

        public f(f fVar) {
            super();
            this.f15186a = null;
            this.f15188c = 0;
            this.f15187b = fVar.f15187b;
            this.f15189d = fVar.f15189d;
            this.f15186a = z0.e.f(fVar.f15186a);
        }

        public boolean c() {
            return false;
        }

        public void d(Path path) {
            path.reset();
            z0.e.b[] bVarArr = this.f15186a;
            if (bVarArr != null) {
                z0.e.b.i(bVarArr, path);
            }
        }

        public z0.e.b[] getPathData() {
            return this.f15186a;
        }

        public String getPathName() {
            return this.f15187b;
        }

        public void setPathData(z0.e.b[] bVarArr) {
            if (z0.e.b(this.f15186a, bVarArr)) {
                z0.e.k(this.f15186a, bVarArr);
            } else {
                this.f15186a = z0.e.f(bVarArr);
            }
        }
    }

    private static class g {

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private static final Matrix f15190q = new Matrix();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Path f15191a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Path f15192b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Matrix f15193c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        Paint f15194d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        Paint f15195e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private PathMeasure f15196f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f15197g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        final d f15198h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        float f15199i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        float f15200j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        float f15201k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        float f15202l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        int f15203m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        String f15204n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        Boolean f15205o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final androidx.collection.a f15206p;

        public g() {
            this.f15193c = new Matrix();
            this.f15199i = 0.0f;
            this.f15200j = 0.0f;
            this.f15201k = 0.0f;
            this.f15202l = 0.0f;
            this.f15203m = 255;
            this.f15204n = null;
            this.f15205o = null;
            this.f15206p = new androidx.collection.a();
            this.f15198h = new d();
            this.f15191a = new Path();
            this.f15192b = new Path();
        }

        public g(g gVar) {
            this.f15193c = new Matrix();
            this.f15199i = 0.0f;
            this.f15200j = 0.0f;
            this.f15201k = 0.0f;
            this.f15202l = 0.0f;
            this.f15203m = 255;
            this.f15204n = null;
            this.f15205o = null;
            androidx.collection.a aVar = new androidx.collection.a();
            this.f15206p = aVar;
            this.f15198h = new d(gVar.f15198h, aVar);
            this.f15191a = new Path(gVar.f15191a);
            this.f15192b = new Path(gVar.f15192b);
            this.f15199i = gVar.f15199i;
            this.f15200j = gVar.f15200j;
            this.f15201k = gVar.f15201k;
            this.f15202l = gVar.f15202l;
            this.f15197g = gVar.f15197g;
            this.f15203m = gVar.f15203m;
            this.f15204n = gVar.f15204n;
            String str = gVar.f15204n;
            if (str != null) {
                aVar.put(str, this);
            }
            this.f15205o = gVar.f15205o;
        }

        private static float a(float f11, float f12, float f13, float f14) {
            return (f11 * f14) - (f12 * f13);
        }

        private void c(d dVar, Matrix matrix, Canvas canvas, int i11, int i12, ColorFilter colorFilter) {
            dVar.f15173a.set(matrix);
            dVar.f15173a.preConcat(dVar.f15182j);
            canvas.save();
            for (int i13 = 0; i13 < dVar.f15174b.size(); i13++) {
                e eVar = (e) dVar.f15174b.get(i13);
                if (eVar instanceof d) {
                    c((d) eVar, dVar.f15173a, canvas, i11, i12, colorFilter);
                } else if (eVar instanceof f) {
                    d(dVar, (f) eVar, canvas, i11, i12, colorFilter);
                }
            }
            canvas.restore();
        }

        private void d(d dVar, f fVar, Canvas canvas, int i11, int i12, ColorFilter colorFilter) {
            float f11 = i11 / this.f15201k;
            float f12 = i12 / this.f15202l;
            float fMin = Math.min(f11, f12);
            Matrix matrix = dVar.f15173a;
            this.f15193c.set(matrix);
            this.f15193c.postScale(f11, f12);
            float fE = e(matrix);
            if (fE == 0.0f) {
                return;
            }
            fVar.d(this.f15191a);
            Path path = this.f15191a;
            this.f15192b.reset();
            if (fVar.c()) {
                this.f15192b.setFillType(fVar.f15188c == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                this.f15192b.addPath(path, this.f15193c);
                canvas.clipPath(this.f15192b);
                return;
            }
            c cVar = (c) fVar;
            float f13 = cVar.f15167k;
            if (f13 != 0.0f || cVar.f15168l != 1.0f) {
                float f14 = cVar.f15169m;
                float f15 = (f13 + f14) % 1.0f;
                float f16 = (cVar.f15168l + f14) % 1.0f;
                if (this.f15196f == null) {
                    this.f15196f = new PathMeasure();
                }
                this.f15196f.setPath(this.f15191a, false);
                float length = this.f15196f.getLength();
                float f17 = f15 * length;
                float f18 = f16 * length;
                path.reset();
                if (f17 > f18) {
                    this.f15196f.getSegment(f17, length, path, true);
                    this.f15196f.getSegment(0.0f, f18, path, true);
                } else {
                    this.f15196f.getSegment(f17, f18, path, true);
                }
                path.rLineTo(0.0f, 0.0f);
            }
            this.f15192b.addPath(path, this.f15193c);
            if (cVar.f15164h.l()) {
                y0.d dVar2 = cVar.f15164h;
                if (this.f15195e == null) {
                    Paint paint = new Paint(1);
                    this.f15195e = paint;
                    paint.setStyle(Paint.Style.FILL);
                }
                Paint paint2 = this.f15195e;
                if (dVar2.h()) {
                    Shader shaderF = dVar2.f();
                    shaderF.setLocalMatrix(this.f15193c);
                    paint2.setShader(shaderF);
                    paint2.setAlpha(Math.round(cVar.f15166j * 255.0f));
                } else {
                    paint2.setShader(null);
                    paint2.setAlpha(255);
                    paint2.setColor(h.a(dVar2.e(), cVar.f15166j));
                }
                paint2.setColorFilter(colorFilter);
                this.f15192b.setFillType(cVar.f15188c == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                canvas.drawPath(this.f15192b, paint2);
            }
            if (cVar.f15162f.l()) {
                y0.d dVar3 = cVar.f15162f;
                if (this.f15194d == null) {
                    Paint paint3 = new Paint(1);
                    this.f15194d = paint3;
                    paint3.setStyle(Paint.Style.STROKE);
                }
                Paint paint4 = this.f15194d;
                Paint.Join join = cVar.f15171o;
                if (join != null) {
                    paint4.setStrokeJoin(join);
                }
                Paint.Cap cap = cVar.f15170n;
                if (cap != null) {
                    paint4.setStrokeCap(cap);
                }
                paint4.setStrokeMiter(cVar.f15172p);
                if (dVar3.h()) {
                    Shader shaderF2 = dVar3.f();
                    shaderF2.setLocalMatrix(this.f15193c);
                    paint4.setShader(shaderF2);
                    paint4.setAlpha(Math.round(cVar.f15165i * 255.0f));
                } else {
                    paint4.setShader(null);
                    paint4.setAlpha(255);
                    paint4.setColor(h.a(dVar3.e(), cVar.f15165i));
                }
                paint4.setColorFilter(colorFilter);
                paint4.setStrokeWidth(cVar.f15163g * fMin * fE);
                canvas.drawPath(this.f15192b, paint4);
            }
        }

        private float e(Matrix matrix) {
            float[] fArr = {0.0f, 1.0f, 1.0f, 0.0f};
            matrix.mapVectors(fArr);
            float fHypot = (float) Math.hypot(fArr[0], fArr[1]);
            float fHypot2 = (float) Math.hypot(fArr[2], fArr[3]);
            float fA = a(fArr[0], fArr[1], fArr[2], fArr[3]);
            float fMax = Math.max(fHypot, fHypot2);
            if (fMax > 0.0f) {
                return Math.abs(fA) / fMax;
            }
            return 0.0f;
        }

        public void b(Canvas canvas, int i11, int i12, ColorFilter colorFilter) {
            c(this.f15198h, f15190q, canvas, i11, i12, colorFilter);
        }

        public boolean f() {
            if (this.f15205o == null) {
                this.f15205o = Boolean.valueOf(this.f15198h.a());
            }
            return this.f15205o.booleanValue();
        }

        public boolean g(int[] iArr) {
            return this.f15198h.b(iArr);
        }

        public float getAlpha() {
            return getRootAlpha() / 255.0f;
        }

        public int getRootAlpha() {
            return this.f15203m;
        }

        public void setAlpha(float f11) {
            setRootAlpha((int) (f11 * 255.0f));
        }

        public void setRootAlpha(int i11) {
            this.f15203m = i11;
        }
    }

    /* JADX INFO: renamed from: androidx.vectordrawable.graphics.drawable.h$h, reason: collision with other inner class name */
    private static class C0129h extends Drawable.ConstantState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f15207a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        g f15208b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        ColorStateList f15209c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        PorterDuff.Mode f15210d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        boolean f15211e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        Bitmap f15212f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        ColorStateList f15213g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        PorterDuff.Mode f15214h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        int f15215i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        boolean f15216j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        boolean f15217k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        Paint f15218l;

        public C0129h() {
            this.f15209c = null;
            this.f15210d = h.f15151k;
            this.f15208b = new g();
        }

        public C0129h(C0129h c0129h) {
            this.f15209c = null;
            this.f15210d = h.f15151k;
            if (c0129h != null) {
                this.f15207a = c0129h.f15207a;
                g gVar = new g(c0129h.f15208b);
                this.f15208b = gVar;
                if (c0129h.f15208b.f15195e != null) {
                    gVar.f15195e = new Paint(c0129h.f15208b.f15195e);
                }
                if (c0129h.f15208b.f15194d != null) {
                    this.f15208b.f15194d = new Paint(c0129h.f15208b.f15194d);
                }
                this.f15209c = c0129h.f15209c;
                this.f15210d = c0129h.f15210d;
                this.f15211e = c0129h.f15211e;
            }
        }

        public boolean a(int i11, int i12) {
            return i11 == this.f15212f.getWidth() && i12 == this.f15212f.getHeight();
        }

        public boolean b() {
            return !this.f15217k && this.f15213g == this.f15209c && this.f15214h == this.f15210d && this.f15216j == this.f15211e && this.f15215i == this.f15208b.getRootAlpha();
        }

        public void c(int i11, int i12) {
            if (this.f15212f == null || !a(i11, i12)) {
                this.f15212f = Bitmap.createBitmap(i11, i12, Bitmap.Config.ARGB_8888);
                this.f15217k = true;
            }
        }

        public void d(Canvas canvas, ColorFilter colorFilter, Rect rect) {
            canvas.drawBitmap(this.f15212f, (Rect) null, rect, e(colorFilter));
        }

        public Paint e(ColorFilter colorFilter) {
            if (!f() && colorFilter == null) {
                return null;
            }
            if (this.f15218l == null) {
                Paint paint = new Paint();
                this.f15218l = paint;
                paint.setFilterBitmap(true);
            }
            this.f15218l.setAlpha(this.f15208b.getRootAlpha());
            this.f15218l.setColorFilter(colorFilter);
            return this.f15218l;
        }

        public boolean f() {
            return this.f15208b.getRootAlpha() < 255;
        }

        public boolean g() {
            return this.f15208b.f();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f15207a;
        }

        public boolean h(int[] iArr) {
            boolean zG = this.f15208b.g(iArr);
            this.f15217k |= zG;
            return zG;
        }

        public void i() {
            this.f15213g = this.f15209c;
            this.f15214h = this.f15210d;
            this.f15215i = this.f15208b.getRootAlpha();
            this.f15216j = this.f15211e;
            this.f15217k = false;
        }

        public void j(int i11, int i12) {
            this.f15212f.eraseColor(0);
            this.f15208b.b(new Canvas(this.f15212f), i11, i12, null);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new h(this);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new h(this);
        }
    }

    private static class i extends Drawable.ConstantState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Drawable.ConstantState f15219a;

        public i(Drawable.ConstantState constantState) {
            this.f15219a = constantState;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            return this.f15219a.canApplyTheme();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f15219a.getChangingConfigurations();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            h hVar = new h();
            hVar.f15150a = (VectorDrawable) this.f15219a.newDrawable();
            return hVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            h hVar = new h();
            hVar.f15150a = (VectorDrawable) this.f15219a.newDrawable(resources);
            return hVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources, Resources.Theme theme) {
            h hVar = new h();
            hVar.f15150a = (VectorDrawable) this.f15219a.newDrawable(resources, theme);
            return hVar;
        }
    }

    h() {
        this.f15156f = true;
        this.f15158h = new float[9];
        this.f15159i = new Matrix();
        this.f15160j = new Rect();
        this.f15152b = new C0129h();
    }

    h(C0129h c0129h) {
        this.f15156f = true;
        this.f15158h = new float[9];
        this.f15159i = new Matrix();
        this.f15160j = new Rect();
        this.f15152b = c0129h;
        this.f15153c = j(this.f15153c, c0129h.f15209c, c0129h.f15210d);
    }

    static int a(int i11, float f11) {
        return (i11 & 16777215) | (((int) (Color.alpha(i11) * f11)) << 24);
    }

    public static h b(Resources resources, int i11, Resources.Theme theme) {
        int next;
        if (Build.VERSION.SDK_INT >= 24) {
            h hVar = new h();
            hVar.f15150a = y0.h.e(resources, i11, theme);
            hVar.f15157g = new i(hVar.f15150a.getConstantState());
            return hVar;
        }
        try {
            XmlResourceParser xml = resources.getXml(i11);
            AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xml);
            do {
                next = xml.next();
                if (next == 2) {
                    break;
                }
            } while (next != 1);
            if (next == 2) {
                return c(resources, xml, attributeSetAsAttributeSet, theme);
            }
            throw new XmlPullParserException("No start tag found");
        } catch (IOException e11) {
            Log.e("VectorDrawableCompat", "parser error", e11);
            return null;
        } catch (XmlPullParserException e12) {
            Log.e("VectorDrawableCompat", "parser error", e12);
            return null;
        }
    }

    public static h c(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        h hVar = new h();
        hVar.inflate(resources, xmlPullParser, attributeSet, theme);
        return hVar;
    }

    private void e(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        C0129h c0129h = this.f15152b;
        g gVar = c0129h.f15208b;
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.push(gVar.f15198h);
        int eventType = xmlPullParser.getEventType();
        int depth = xmlPullParser.getDepth() + 1;
        boolean z10 = true;
        while (eventType != 1 && (xmlPullParser.getDepth() >= depth || eventType != 3)) {
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                d dVar = (d) arrayDeque.peek();
                if ("path".equals(name)) {
                    c cVar = new c();
                    cVar.g(resources, attributeSet, theme, xmlPullParser);
                    dVar.f15174b.add(cVar);
                    if (cVar.getPathName() != null) {
                        gVar.f15206p.put(cVar.getPathName(), cVar);
                    }
                    c0129h.f15207a = cVar.f15189d | c0129h.f15207a;
                    z10 = false;
                } else if ("clip-path".equals(name)) {
                    b bVar = new b();
                    bVar.e(resources, attributeSet, theme, xmlPullParser);
                    dVar.f15174b.add(bVar);
                    if (bVar.getPathName() != null) {
                        gVar.f15206p.put(bVar.getPathName(), bVar);
                    }
                    c0129h.f15207a = bVar.f15189d | c0129h.f15207a;
                } else if ("group".equals(name)) {
                    d dVar2 = new d();
                    dVar2.c(resources, attributeSet, theme, xmlPullParser);
                    dVar.f15174b.add(dVar2);
                    arrayDeque.push(dVar2);
                    if (dVar2.getGroupName() != null) {
                        gVar.f15206p.put(dVar2.getGroupName(), dVar2);
                    }
                    c0129h.f15207a = dVar2.f15183k | c0129h.f15207a;
                }
            } else if (eventType == 3 && "group".equals(xmlPullParser.getName())) {
                arrayDeque.pop();
            }
            eventType = xmlPullParser.next();
        }
        if (z10) {
            throw new XmlPullParserException("no path defined");
        }
    }

    private boolean f() {
        return isAutoMirrored() && a1.a.f(this) == 1;
    }

    private static PorterDuff.Mode g(int i11, PorterDuff.Mode mode) {
        if (i11 == 3) {
            return PorterDuff.Mode.SRC_OVER;
        }
        if (i11 == 5) {
            return PorterDuff.Mode.SRC_IN;
        }
        if (i11 == 9) {
            return PorterDuff.Mode.SRC_ATOP;
        }
        switch (i11) {
            case 14:
                return PorterDuff.Mode.MULTIPLY;
            case 15:
                return PorterDuff.Mode.SCREEN;
            case 16:
                return PorterDuff.Mode.ADD;
            default:
                return mode;
        }
    }

    private void i(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme) throws XmlPullParserException {
        C0129h c0129h = this.f15152b;
        g gVar = c0129h.f15208b;
        c0129h.f15210d = g(k.g(typedArray, xmlPullParser, "tintMode", 6, -1), PorterDuff.Mode.SRC_IN);
        ColorStateList colorStateListC = k.c(typedArray, xmlPullParser, theme, "tint", 1);
        if (colorStateListC != null) {
            c0129h.f15209c = colorStateListC;
        }
        c0129h.f15211e = k.a(typedArray, xmlPullParser, "autoMirrored", 5, c0129h.f15211e);
        gVar.f15201k = k.f(typedArray, xmlPullParser, "viewportWidth", 7, gVar.f15201k);
        float f11 = k.f(typedArray, xmlPullParser, "viewportHeight", 8, gVar.f15202l);
        gVar.f15202l = f11;
        if (gVar.f15201k <= 0.0f) {
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires viewportWidth > 0");
        }
        if (f11 <= 0.0f) {
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires viewportHeight > 0");
        }
        gVar.f15199i = typedArray.getDimension(3, gVar.f15199i);
        float dimension = typedArray.getDimension(2, gVar.f15200j);
        gVar.f15200j = dimension;
        if (gVar.f15199i <= 0.0f) {
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires width > 0");
        }
        if (dimension <= 0.0f) {
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires height > 0");
        }
        gVar.setAlpha(k.f(typedArray, xmlPullParser, "alpha", 4, gVar.getAlpha()));
        String string = typedArray.getString(0);
        if (string != null) {
            gVar.f15204n = string;
            gVar.f15206p.put(string, gVar);
        }
    }

    @Override // androidx.vectordrawable.graphics.drawable.g, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void applyTheme(Resources.Theme theme) {
        super.applyTheme(theme);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        Drawable drawable = this.f15150a;
        if (drawable == null) {
            return false;
        }
        a1.a.b(drawable);
        return false;
    }

    @Override // androidx.vectordrawable.graphics.drawable.g, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void clearColorFilter() {
        super.clearColorFilter();
    }

    Object d(String str) {
        return this.f15152b.f15208b.f15206p.get(str);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Drawable drawable = this.f15150a;
        if (drawable != null) {
            drawable.draw(canvas);
            return;
        }
        copyBounds(this.f15160j);
        if (this.f15160j.width() <= 0 || this.f15160j.height() <= 0) {
            return;
        }
        ColorFilter colorFilter = this.f15154d;
        if (colorFilter == null) {
            colorFilter = this.f15153c;
        }
        canvas.getMatrix(this.f15159i);
        this.f15159i.getValues(this.f15158h);
        float fAbs = Math.abs(this.f15158h[0]);
        float fAbs2 = Math.abs(this.f15158h[4]);
        float fAbs3 = Math.abs(this.f15158h[1]);
        float fAbs4 = Math.abs(this.f15158h[3]);
        if (fAbs3 != 0.0f || fAbs4 != 0.0f) {
            fAbs = 1.0f;
            fAbs2 = 1.0f;
        }
        int iWidth = (int) (this.f15160j.width() * fAbs);
        int iHeight = (int) (this.f15160j.height() * fAbs2);
        int iMin = Math.min(2048, iWidth);
        int iMin2 = Math.min(2048, iHeight);
        if (iMin <= 0 || iMin2 <= 0) {
            return;
        }
        int iSave = canvas.save();
        Rect rect = this.f15160j;
        canvas.translate(rect.left, rect.top);
        if (f()) {
            canvas.translate(this.f15160j.width(), 0.0f);
            canvas.scale(-1.0f, 1.0f);
        }
        this.f15160j.offsetTo(0, 0);
        this.f15152b.c(iMin, iMin2);
        if (!this.f15156f) {
            this.f15152b.j(iMin, iMin2);
        } else if (!this.f15152b.b()) {
            this.f15152b.j(iMin, iMin2);
            this.f15152b.i();
        }
        this.f15152b.d(canvas, colorFilter, this.f15160j);
        canvas.restoreToCount(iSave);
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        Drawable drawable = this.f15150a;
        return drawable != null ? a1.a.d(drawable) : this.f15152b.f15208b.getRootAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        Drawable drawable = this.f15150a;
        return drawable != null ? drawable.getChangingConfigurations() : super.getChangingConfigurations() | this.f15152b.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        Drawable drawable = this.f15150a;
        return drawable != null ? a1.a.e(drawable) : this.f15154d;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        if (this.f15150a != null && Build.VERSION.SDK_INT >= 24) {
            return new i(this.f15150a.getConstantState());
        }
        this.f15152b.f15207a = getChangingConfigurations();
        return this.f15152b;
    }

    @Override // androidx.vectordrawable.graphics.drawable.g, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ Drawable getCurrent() {
        return super.getCurrent();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        Drawable drawable = this.f15150a;
        return drawable != null ? drawable.getIntrinsicHeight() : (int) this.f15152b.f15208b.f15200j;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        Drawable drawable = this.f15150a;
        return drawable != null ? drawable.getIntrinsicWidth() : (int) this.f15152b.f15208b.f15199i;
    }

    @Override // androidx.vectordrawable.graphics.drawable.g, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getMinimumHeight() {
        return super.getMinimumHeight();
    }

    @Override // androidx.vectordrawable.graphics.drawable.g, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getMinimumWidth() {
        return super.getMinimumWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        Drawable drawable = this.f15150a;
        if (drawable != null) {
            return drawable.getOpacity();
        }
        return -3;
    }

    @Override // androidx.vectordrawable.graphics.drawable.g, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean getPadding(Rect rect) {
        return super.getPadding(rect);
    }

    @Override // androidx.vectordrawable.graphics.drawable.g, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int[] getState() {
        return super.getState();
    }

    @Override // androidx.vectordrawable.graphics.drawable.g, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ Region getTransparentRegion() {
        return super.getTransparentRegion();
    }

    void h(boolean z10) {
        this.f15156f = z10;
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        Drawable drawable = this.f15150a;
        if (drawable != null) {
            drawable.inflate(resources, xmlPullParser, attributeSet);
        } else {
            inflate(resources, xmlPullParser, attributeSet, null);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        Drawable drawable = this.f15150a;
        if (drawable != null) {
            a1.a.g(drawable, resources, xmlPullParser, attributeSet, theme);
            return;
        }
        C0129h c0129h = this.f15152b;
        c0129h.f15208b = new g();
        TypedArray typedArrayK = k.k(resources, theme, attributeSet, androidx.vectordrawable.graphics.drawable.a.f15120a);
        i(typedArrayK, xmlPullParser, theme);
        typedArrayK.recycle();
        c0129h.f15207a = getChangingConfigurations();
        c0129h.f15217k = true;
        e(resources, xmlPullParser, attributeSet, theme);
        this.f15153c = j(this.f15153c, c0129h.f15209c, c0129h.f15210d);
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        Drawable drawable = this.f15150a;
        if (drawable != null) {
            drawable.invalidateSelf();
        } else {
            super.invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        Drawable drawable = this.f15150a;
        return drawable != null ? a1.a.h(drawable) : this.f15152b.f15211e;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        C0129h c0129h;
        ColorStateList colorStateList;
        Drawable drawable = this.f15150a;
        if (drawable != null) {
            return drawable.isStateful();
        }
        return super.isStateful() || ((c0129h = this.f15152b) != null && (c0129h.g() || ((colorStateList = this.f15152b.f15209c) != null && colorStateList.isStateful())));
    }

    PorterDuffColorFilter j(PorterDuffColorFilter porterDuffColorFilter, ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    @Override // androidx.vectordrawable.graphics.drawable.g, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void jumpToCurrentState() {
        super.jumpToCurrentState();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        Drawable drawable = this.f15150a;
        if (drawable != null) {
            drawable.mutate();
            return this;
        }
        if (!this.f15155e && super.mutate() == this) {
            this.f15152b = new C0129h(this.f15152b);
            this.f15155e = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        Drawable drawable = this.f15150a;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        boolean z10;
        PorterDuff.Mode mode;
        Drawable drawable = this.f15150a;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        C0129h c0129h = this.f15152b;
        ColorStateList colorStateList = c0129h.f15209c;
        if (colorStateList == null || (mode = c0129h.f15210d) == null) {
            z10 = false;
        } else {
            this.f15153c = j(this.f15153c, colorStateList, mode);
            invalidateSelf();
            z10 = true;
        }
        if (!c0129h.g() || !c0129h.h(iArr)) {
            return z10;
        }
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void scheduleSelf(Runnable runnable, long j11) {
        Drawable drawable = this.f15150a;
        if (drawable != null) {
            drawable.scheduleSelf(runnable, j11);
        } else {
            super.scheduleSelf(runnable, j11);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i11) {
        Drawable drawable = this.f15150a;
        if (drawable != null) {
            drawable.setAlpha(i11);
        } else if (this.f15152b.f15208b.getRootAlpha() != i11) {
            this.f15152b.f15208b.setRootAlpha(i11);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z10) {
        Drawable drawable = this.f15150a;
        if (drawable != null) {
            a1.a.j(drawable, z10);
        } else {
            this.f15152b.f15211e = z10;
        }
    }

    @Override // androidx.vectordrawable.graphics.drawable.g, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setChangingConfigurations(int i11) {
        super.setChangingConfigurations(i11);
    }

    @Override // androidx.vectordrawable.graphics.drawable.g, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setColorFilter(int i11, PorterDuff.Mode mode) {
        super.setColorFilter(i11, mode);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.f15150a;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        } else {
            this.f15154d = colorFilter;
            invalidateSelf();
        }
    }

    @Override // androidx.vectordrawable.graphics.drawable.g, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setFilterBitmap(boolean z10) {
        super.setFilterBitmap(z10);
    }

    @Override // androidx.vectordrawable.graphics.drawable.g, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setHotspot(float f11, float f12) {
        super.setHotspot(f11, f12);
    }

    @Override // androidx.vectordrawable.graphics.drawable.g, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setHotspotBounds(int i11, int i12, int i13, int i14) {
        super.setHotspotBounds(i11, i12, i13, i14);
    }

    @Override // androidx.vectordrawable.graphics.drawable.g, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean setState(int[] iArr) {
        return super.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable
    public void setTint(int i11) {
        Drawable drawable = this.f15150a;
        if (drawable != null) {
            a1.a.n(drawable, i11);
        } else {
            setTintList(ColorStateList.valueOf(i11));
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        Drawable drawable = this.f15150a;
        if (drawable != null) {
            a1.a.o(drawable, colorStateList);
            return;
        }
        C0129h c0129h = this.f15152b;
        if (c0129h.f15209c != colorStateList) {
            c0129h.f15209c = colorStateList;
            this.f15153c = j(this.f15153c, colorStateList, c0129h.f15210d);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.f15150a;
        if (drawable != null) {
            a1.a.p(drawable, mode);
            return;
        }
        C0129h c0129h = this.f15152b;
        if (c0129h.f15210d != mode) {
            c0129h.f15210d = mode;
            this.f15153c = j(this.f15153c, c0129h.f15209c, mode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z10, boolean z11) {
        Drawable drawable = this.f15150a;
        return drawable != null ? drawable.setVisible(z10, z11) : super.setVisible(z10, z11);
    }

    @Override // android.graphics.drawable.Drawable
    public void unscheduleSelf(Runnable runnable) {
        Drawable drawable = this.f15150a;
        if (drawable != null) {
            drawable.unscheduleSelf(runnable);
        } else {
            super.unscheduleSelf(runnable);
        }
    }
}
