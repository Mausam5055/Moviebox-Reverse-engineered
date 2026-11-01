package ab;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public float f569a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public float f570b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f571c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public float f572d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f573e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float f574f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final List f575g = new ArrayList();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final List f576h = new ArrayList();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f577i;

    class a extends g {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ List f578c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ Matrix f579d;

        a(List list, Matrix matrix) {
            this.f578c = list;
            this.f579d = matrix;
        }

        @Override // ab.p.g
        public void a(Matrix matrix, za.a aVar, int i11, Canvas canvas) {
            Iterator it = this.f578c.iterator();
            while (it.hasNext()) {
                ((g) it.next()).a(this.f579d, aVar, i11, canvas);
            }
        }
    }

    static class b extends g {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final d f581c;

        public b(d dVar) {
            this.f581c = dVar;
        }

        @Override // ab.p.g
        public void a(Matrix matrix, za.a aVar, int i11, Canvas canvas) {
            aVar.a(canvas, matrix, new RectF(this.f581c.k(), this.f581c.o(), this.f581c.l(), this.f581c.j()), i11, this.f581c.m(), this.f581c.n());
        }
    }

    static class c extends g {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final e f582c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final float f583d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final float f584e;

        public c(e eVar, float f11, float f12) {
            this.f582c = eVar;
            this.f583d = f11;
            this.f584e = f12;
        }

        @Override // ab.p.g
        public void a(Matrix matrix, za.a aVar, int i11, Canvas canvas) {
            RectF rectF = new RectF(0.0f, 0.0f, (float) Math.hypot(this.f582c.f593c - this.f584e, this.f582c.f592b - this.f583d), 0.0f);
            this.f596a.set(matrix);
            this.f596a.preTranslate(this.f583d, this.f584e);
            this.f596a.preRotate(c());
            aVar.b(canvas, this.f596a, rectF, i11);
        }

        float c() {
            return (float) Math.toDegrees(Math.atan((this.f582c.f593c - this.f584e) / (this.f582c.f592b - this.f583d)));
        }
    }

    public static class d extends f {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private static final RectF f585h = new RectF();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public float f586b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public float f587c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public float f588d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public float f589e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public float f590f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public float f591g;

        public d(float f11, float f12, float f13, float f14) {
            q(f11);
            u(f12);
            r(f13);
            p(f14);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public float j() {
            return this.f589e;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public float k() {
            return this.f586b;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public float l() {
            return this.f588d;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public float m() {
            return this.f590f;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public float n() {
            return this.f591g;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public float o() {
            return this.f587c;
        }

        private void p(float f11) {
            this.f589e = f11;
        }

        private void q(float f11) {
            this.f586b = f11;
        }

        private void r(float f11) {
            this.f588d = f11;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void s(float f11) {
            this.f590f = f11;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void t(float f11) {
            this.f591g = f11;
        }

        private void u(float f11) {
            this.f587c = f11;
        }

        @Override // ab.p.f
        public void a(Matrix matrix, Path path) {
            Matrix matrix2 = this.f594a;
            matrix.invert(matrix2);
            path.transform(matrix2);
            RectF rectF = f585h;
            rectF.set(k(), o(), l(), j());
            path.arcTo(rectF, m(), n(), false);
            path.transform(matrix);
        }
    }

    public static class e extends f {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private float f592b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private float f593c;

        @Override // ab.p.f
        public void a(Matrix matrix, Path path) {
            Matrix matrix2 = this.f594a;
            matrix.invert(matrix2);
            path.transform(matrix2);
            path.lineTo(this.f592b, this.f593c);
            path.transform(matrix);
        }
    }

    public static abstract class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        protected final Matrix f594a = new Matrix();

        public abstract void a(Matrix matrix, Path path);
    }

    static abstract class g {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        static final Matrix f595b = new Matrix();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Matrix f596a = new Matrix();

        g() {
        }

        public abstract void a(Matrix matrix, za.a aVar, int i11, Canvas canvas);

        public final void b(za.a aVar, int i11, Canvas canvas) {
            a(f595b, aVar, i11, canvas);
        }
    }

    public p() {
        n(0.0f, 0.0f);
    }

    private void b(float f11) {
        if (g() == f11) {
            return;
        }
        float fG = ((f11 - g()) + 360.0f) % 360.0f;
        if (fG > 180.0f) {
            return;
        }
        d dVar = new d(i(), j(), i(), j());
        dVar.s(g());
        dVar.t(fG);
        this.f576h.add(new b(dVar));
        p(f11);
    }

    private void c(g gVar, float f11, float f12) {
        b(f11);
        this.f576h.add(gVar);
        p(f12);
    }

    private float g() {
        return this.f573e;
    }

    private float h() {
        return this.f574f;
    }

    private void p(float f11) {
        this.f573e = f11;
    }

    private void q(float f11) {
        this.f574f = f11;
    }

    private void r(float f11) {
        this.f571c = f11;
    }

    private void s(float f11) {
        this.f572d = f11;
    }

    private void t(float f11) {
        this.f569a = f11;
    }

    private void u(float f11) {
        this.f570b = f11;
    }

    public void a(float f11, float f12, float f13, float f14, float f15, float f16) {
        d dVar = new d(f11, f12, f13, f14);
        dVar.s(f15);
        dVar.t(f16);
        this.f575g.add(dVar);
        b bVar = new b(dVar);
        float f17 = f15 + f16;
        boolean z10 = f16 < 0.0f;
        if (z10) {
            f15 = (f15 + 180.0f) % 360.0f;
        }
        c(bVar, f15, z10 ? (180.0f + f17) % 360.0f : f17);
        double d11 = f17;
        r(((f11 + f13) * 0.5f) + (((f13 - f11) / 2.0f) * ((float) Math.cos(Math.toRadians(d11)))));
        s(((f12 + f14) * 0.5f) + (((f14 - f12) / 2.0f) * ((float) Math.sin(Math.toRadians(d11)))));
    }

    public void d(Matrix matrix, Path path) {
        int size = this.f575g.size();
        for (int i11 = 0; i11 < size; i11++) {
            ((f) this.f575g.get(i11)).a(matrix, path);
        }
    }

    boolean e() {
        return this.f577i;
    }

    g f(Matrix matrix) {
        b(h());
        return new a(new ArrayList(this.f576h), new Matrix(matrix));
    }

    float i() {
        return this.f571c;
    }

    float j() {
        return this.f572d;
    }

    float k() {
        return this.f569a;
    }

    float l() {
        return this.f570b;
    }

    public void m(float f11, float f12) {
        e eVar = new e();
        eVar.f592b = f11;
        eVar.f593c = f12;
        this.f575g.add(eVar);
        c cVar = new c(eVar, i(), j());
        c(cVar, cVar.c() + 270.0f, cVar.c() + 270.0f);
        r(f11);
        s(f12);
    }

    public void n(float f11, float f12) {
        o(f11, f12, 270.0f, 0.0f);
    }

    public void o(float f11, float f12, float f13, float f14) {
        t(f11);
        u(f12);
        r(f11);
        s(f12);
        p(f13);
        q((f13 + f14) % 360.0f);
        this.f575g.clear();
        this.f576h.clear();
        this.f577i = false;
    }
}
