package ab;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import com.google.android.material.R$styleable;

/* JADX INFO: loaded from: classes4.dex */
public class n {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final d f526m = new l(0.5f);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    e f527a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    e f528b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    e f529c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    e f530d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    d f531e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    d f532f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    d f533g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    d f534h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    g f535i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    g f536j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    g f537k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    g f538l;

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private e f539a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private e f540b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private e f541c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private e f542d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private d f543e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private d f544f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private d f545g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private d f546h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private g f547i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private g f548j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private g f549k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private g f550l;

        public b() {
            this.f539a = j.b();
            this.f540b = j.b();
            this.f541c = j.b();
            this.f542d = j.b();
            this.f543e = new ab.a(0.0f);
            this.f544f = new ab.a(0.0f);
            this.f545g = new ab.a(0.0f);
            this.f546h = new ab.a(0.0f);
            this.f547i = j.c();
            this.f548j = j.c();
            this.f549k = j.c();
            this.f550l = j.c();
        }

        public b(n nVar) {
            this.f539a = j.b();
            this.f540b = j.b();
            this.f541c = j.b();
            this.f542d = j.b();
            this.f543e = new ab.a(0.0f);
            this.f544f = new ab.a(0.0f);
            this.f545g = new ab.a(0.0f);
            this.f546h = new ab.a(0.0f);
            this.f547i = j.c();
            this.f548j = j.c();
            this.f549k = j.c();
            this.f550l = j.c();
            this.f539a = nVar.f527a;
            this.f540b = nVar.f528b;
            this.f541c = nVar.f529c;
            this.f542d = nVar.f530d;
            this.f543e = nVar.f531e;
            this.f544f = nVar.f532f;
            this.f545g = nVar.f533g;
            this.f546h = nVar.f534h;
            this.f547i = nVar.f535i;
            this.f548j = nVar.f536j;
            this.f549k = nVar.f537k;
            this.f550l = nVar.f538l;
        }

        private static float n(e eVar) {
            if (eVar instanceof m) {
                return ((m) eVar).f525a;
            }
            if (eVar instanceof f) {
                return ((f) eVar).f470a;
            }
            return -1.0f;
        }

        public b A(e eVar) {
            this.f541c = eVar;
            float fN = n(eVar);
            if (fN != -1.0f) {
                B(fN);
            }
            return this;
        }

        public b B(float f11) {
            this.f545g = new ab.a(f11);
            return this;
        }

        public b C(d dVar) {
            this.f545g = dVar;
            return this;
        }

        public b D(g gVar) {
            this.f547i = gVar;
            return this;
        }

        public b E(int i11, float f11) {
            return G(j.a(i11)).H(f11);
        }

        public b F(int i11, d dVar) {
            return G(j.a(i11)).I(dVar);
        }

        public b G(e eVar) {
            this.f539a = eVar;
            float fN = n(eVar);
            if (fN != -1.0f) {
                H(fN);
            }
            return this;
        }

        public b H(float f11) {
            this.f543e = new ab.a(f11);
            return this;
        }

        public b I(d dVar) {
            this.f543e = dVar;
            return this;
        }

        public b J(int i11, float f11) {
            return L(j.a(i11)).M(f11);
        }

        public b K(int i11, d dVar) {
            return L(j.a(i11)).N(dVar);
        }

        public b L(e eVar) {
            this.f540b = eVar;
            float fN = n(eVar);
            if (fN != -1.0f) {
                M(fN);
            }
            return this;
        }

        public b M(float f11) {
            this.f544f = new ab.a(f11);
            return this;
        }

        public b N(d dVar) {
            this.f544f = dVar;
            return this;
        }

        public n m() {
            return new n(this);
        }

        public b o(float f11) {
            return H(f11).M(f11).B(f11).w(f11);
        }

        public b p(d dVar) {
            return I(dVar).N(dVar).C(dVar).x(dVar);
        }

        public b q(int i11, float f11) {
            return r(j.a(i11)).o(f11);
        }

        public b r(e eVar) {
            return G(eVar).L(eVar).A(eVar).v(eVar);
        }

        public b s(g gVar) {
            this.f549k = gVar;
            return this;
        }

        public b t(int i11, float f11) {
            return v(j.a(i11)).w(f11);
        }

        public b u(int i11, d dVar) {
            return v(j.a(i11)).x(dVar);
        }

        public b v(e eVar) {
            this.f542d = eVar;
            float fN = n(eVar);
            if (fN != -1.0f) {
                w(fN);
            }
            return this;
        }

        public b w(float f11) {
            this.f546h = new ab.a(f11);
            return this;
        }

        public b x(d dVar) {
            this.f546h = dVar;
            return this;
        }

        public b y(int i11, float f11) {
            return A(j.a(i11)).B(f11);
        }

        public b z(int i11, d dVar) {
            return A(j.a(i11)).C(dVar);
        }
    }

    public interface c {
        d a(d dVar);
    }

    public n() {
        this.f527a = j.b();
        this.f528b = j.b();
        this.f529c = j.b();
        this.f530d = j.b();
        this.f531e = new ab.a(0.0f);
        this.f532f = new ab.a(0.0f);
        this.f533g = new ab.a(0.0f);
        this.f534h = new ab.a(0.0f);
        this.f535i = j.c();
        this.f536j = j.c();
        this.f537k = j.c();
        this.f538l = j.c();
    }

    private n(b bVar) {
        this.f527a = bVar.f539a;
        this.f528b = bVar.f540b;
        this.f529c = bVar.f541c;
        this.f530d = bVar.f542d;
        this.f531e = bVar.f543e;
        this.f532f = bVar.f544f;
        this.f533g = bVar.f545g;
        this.f534h = bVar.f546h;
        this.f535i = bVar.f547i;
        this.f536j = bVar.f548j;
        this.f537k = bVar.f549k;
        this.f538l = bVar.f550l;
    }

    public static b a() {
        return new b();
    }

    public static b b(Context context, int i11, int i12) {
        return c(context, i11, i12, 0);
    }

    private static b c(Context context, int i11, int i12, int i13) {
        return d(context, i11, i12, new ab.a(i13));
    }

    private static b d(Context context, int i11, int i12, d dVar) {
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, i11);
        if (i12 != 0) {
            contextThemeWrapper = new ContextThemeWrapper(contextThemeWrapper, i12);
        }
        TypedArray typedArrayObtainStyledAttributes = contextThemeWrapper.obtainStyledAttributes(R$styleable.ShapeAppearance);
        try {
            int i13 = typedArrayObtainStyledAttributes.getInt(R$styleable.ShapeAppearance_cornerFamily, 0);
            int i14 = typedArrayObtainStyledAttributes.getInt(R$styleable.ShapeAppearance_cornerFamilyTopLeft, i13);
            int i15 = typedArrayObtainStyledAttributes.getInt(R$styleable.ShapeAppearance_cornerFamilyTopRight, i13);
            int i16 = typedArrayObtainStyledAttributes.getInt(R$styleable.ShapeAppearance_cornerFamilyBottomRight, i13);
            int i17 = typedArrayObtainStyledAttributes.getInt(R$styleable.ShapeAppearance_cornerFamilyBottomLeft, i13);
            d dVarM = m(typedArrayObtainStyledAttributes, R$styleable.ShapeAppearance_cornerSize, dVar);
            d dVarM2 = m(typedArrayObtainStyledAttributes, R$styleable.ShapeAppearance_cornerSizeTopLeft, dVarM);
            d dVarM3 = m(typedArrayObtainStyledAttributes, R$styleable.ShapeAppearance_cornerSizeTopRight, dVarM);
            d dVarM4 = m(typedArrayObtainStyledAttributes, R$styleable.ShapeAppearance_cornerSizeBottomRight, dVarM);
            return new b().F(i14, dVarM2).K(i15, dVarM3).z(i16, dVarM4).u(i17, m(typedArrayObtainStyledAttributes, R$styleable.ShapeAppearance_cornerSizeBottomLeft, dVarM));
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public static b e(Context context, AttributeSet attributeSet, int i11, int i12) {
        return f(context, attributeSet, i11, i12, 0);
    }

    public static b f(Context context, AttributeSet attributeSet, int i11, int i12, int i13) {
        return g(context, attributeSet, i11, i12, new ab.a(i13));
    }

    public static b g(Context context, AttributeSet attributeSet, int i11, int i12, d dVar) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.MaterialShape, i11, i12);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.MaterialShape_shapeAppearance, 0);
        int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(R$styleable.MaterialShape_shapeAppearanceOverlay, 0);
        typedArrayObtainStyledAttributes.recycle();
        return d(context, resourceId, resourceId2, dVar);
    }

    private static d m(TypedArray typedArray, int i11, d dVar) {
        TypedValue typedValuePeekValue = typedArray.peekValue(i11);
        if (typedValuePeekValue == null) {
            return dVar;
        }
        int i12 = typedValuePeekValue.type;
        if (i12 == 5) {
            return new ab.a(TypedValue.complexToDimensionPixelSize(typedValuePeekValue.data, typedArray.getResources().getDisplayMetrics()));
        }
        return i12 == 6 ? new l(typedValuePeekValue.getFraction(1.0f, 1.0f)) : dVar;
    }

    public g h() {
        return this.f537k;
    }

    public e i() {
        return this.f530d;
    }

    public d j() {
        return this.f534h;
    }

    public e k() {
        return this.f529c;
    }

    public d l() {
        return this.f533g;
    }

    public g n() {
        return this.f538l;
    }

    public g o() {
        return this.f536j;
    }

    public g p() {
        return this.f535i;
    }

    public e q() {
        return this.f527a;
    }

    public d r() {
        return this.f531e;
    }

    public e s() {
        return this.f528b;
    }

    public d t() {
        return this.f532f;
    }

    public boolean u(RectF rectF) {
        boolean z10 = this.f538l.getClass().equals(g.class) && this.f536j.getClass().equals(g.class) && this.f535i.getClass().equals(g.class) && this.f537k.getClass().equals(g.class);
        float fA = this.f531e.a(rectF);
        return z10 && ((this.f532f.a(rectF) > fA ? 1 : (this.f532f.a(rectF) == fA ? 0 : -1)) == 0 && (this.f534h.a(rectF) > fA ? 1 : (this.f534h.a(rectF) == fA ? 0 : -1)) == 0 && (this.f533g.a(rectF) > fA ? 1 : (this.f533g.a(rectF) == fA ? 0 : -1)) == 0) && ((this.f528b instanceof m) && (this.f527a instanceof m) && (this.f529c instanceof m) && (this.f530d instanceof m));
    }

    public b v() {
        return new b(this);
    }

    public n w(float f11) {
        return v().o(f11).m();
    }

    public n x(d dVar) {
        return v().p(dVar).m();
    }

    public n y(c cVar) {
        return v().I(cVar.a(r())).N(cVar.a(t())).x(cVar.a(j())).C(cVar.a(l())).m();
    }
}
