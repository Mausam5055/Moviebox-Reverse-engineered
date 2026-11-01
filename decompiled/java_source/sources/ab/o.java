package ab;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;

/* JADX INFO: loaded from: classes4.dex */
public class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final p[] f551a = new p[4];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Matrix[] f552b = new Matrix[4];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Matrix[] f553c = new Matrix[4];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final PointF f554d = new PointF();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Path f555e = new Path();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Path f556f = new Path();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final p f557g = new p();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final float[] f558h = new float[2];

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final float[] f559i = new float[2];

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Path f560j = new Path();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final Path f561k = new Path();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f562l = true;

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final o f563a = new o();
    }

    public interface b {
        void a(p pVar, Matrix matrix, int i11);

        void b(p pVar, Matrix matrix, int i11);
    }

    static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final n f564a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Path f565b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final RectF f566c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final b f567d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final float f568e;

        c(n nVar, float f11, RectF rectF, b bVar, Path path) {
            this.f567d = bVar;
            this.f564a = nVar;
            this.f568e = f11;
            this.f566c = rectF;
            this.f565b = path;
        }
    }

    public o() {
        for (int i11 = 0; i11 < 4; i11++) {
            this.f551a[i11] = new p();
            this.f552b[i11] = new Matrix();
            this.f553c[i11] = new Matrix();
        }
    }

    private float a(int i11) {
        return ((i11 + 1) % 4) * 90;
    }

    private void b(c cVar, int i11) {
        this.f558h[0] = this.f551a[i11].k();
        this.f558h[1] = this.f551a[i11].l();
        this.f552b[i11].mapPoints(this.f558h);
        if (i11 == 0) {
            Path path = cVar.f565b;
            float[] fArr = this.f558h;
            path.moveTo(fArr[0], fArr[1]);
        } else {
            Path path2 = cVar.f565b;
            float[] fArr2 = this.f558h;
            path2.lineTo(fArr2[0], fArr2[1]);
        }
        this.f551a[i11].d(this.f552b[i11], cVar.f565b);
        b bVar = cVar.f567d;
        if (bVar != null) {
            bVar.b(this.f551a[i11], this.f552b[i11], i11);
        }
    }

    private void c(c cVar, int i11) {
        int i12 = (i11 + 1) % 4;
        this.f558h[0] = this.f551a[i11].i();
        this.f558h[1] = this.f551a[i11].j();
        this.f552b[i11].mapPoints(this.f558h);
        this.f559i[0] = this.f551a[i12].k();
        this.f559i[1] = this.f551a[i12].l();
        this.f552b[i12].mapPoints(this.f559i);
        float[] fArr = this.f558h;
        float f11 = fArr[0];
        float[] fArr2 = this.f559i;
        float fMax = Math.max(((float) Math.hypot(f11 - fArr2[0], fArr[1] - fArr2[1])) - 0.001f, 0.0f);
        float fI = i(cVar.f566c, i11);
        this.f557g.n(0.0f, 0.0f);
        g gVarJ = j(i11, cVar.f564a);
        gVarJ.b(fMax, fI, cVar.f568e, this.f557g);
        this.f560j.reset();
        this.f557g.d(this.f553c[i11], this.f560j);
        if (this.f562l && (gVarJ.a() || l(this.f560j, i11) || l(this.f560j, i12))) {
            Path path = this.f560j;
            path.op(path, this.f556f, Path.Op.DIFFERENCE);
            this.f558h[0] = this.f557g.k();
            this.f558h[1] = this.f557g.l();
            this.f553c[i11].mapPoints(this.f558h);
            Path path2 = this.f555e;
            float[] fArr3 = this.f558h;
            path2.moveTo(fArr3[0], fArr3[1]);
            this.f557g.d(this.f553c[i11], this.f555e);
        } else {
            this.f557g.d(this.f553c[i11], cVar.f565b);
        }
        b bVar = cVar.f567d;
        if (bVar != null) {
            bVar.a(this.f557g, this.f553c[i11], i11);
        }
    }

    private void f(int i11, RectF rectF, PointF pointF) {
        if (i11 == 1) {
            pointF.set(rectF.right, rectF.bottom);
            return;
        }
        if (i11 == 2) {
            pointF.set(rectF.left, rectF.bottom);
        } else if (i11 != 3) {
            pointF.set(rectF.right, rectF.top);
        } else {
            pointF.set(rectF.left, rectF.top);
        }
    }

    private d g(int i11, n nVar) {
        if (i11 == 1) {
            return nVar.l();
        }
        if (i11 != 2) {
            return i11 != 3 ? nVar.t() : nVar.r();
        }
        return nVar.j();
    }

    private e h(int i11, n nVar) {
        if (i11 == 1) {
            return nVar.k();
        }
        if (i11 != 2) {
            return i11 != 3 ? nVar.s() : nVar.q();
        }
        return nVar.i();
    }

    private float i(RectF rectF, int i11) {
        float[] fArr = this.f558h;
        p pVar = this.f551a[i11];
        fArr[0] = pVar.f571c;
        fArr[1] = pVar.f572d;
        this.f552b[i11].mapPoints(fArr);
        return (i11 == 1 || i11 == 3) ? Math.abs(rectF.centerX() - this.f558h[0]) : Math.abs(rectF.centerY() - this.f558h[1]);
    }

    private g j(int i11, n nVar) {
        if (i11 == 1) {
            return nVar.h();
        }
        if (i11 != 2) {
            return i11 != 3 ? nVar.o() : nVar.p();
        }
        return nVar.n();
    }

    public static o k() {
        return a.f563a;
    }

    private boolean l(Path path, int i11) {
        this.f561k.reset();
        this.f551a[i11].d(this.f552b[i11], this.f561k);
        RectF rectF = new RectF();
        path.computeBounds(rectF, true);
        this.f561k.computeBounds(rectF, true);
        path.op(this.f561k, Path.Op.INTERSECT);
        path.computeBounds(rectF, true);
        if (rectF.isEmpty()) {
            return rectF.width() > 1.0f && rectF.height() > 1.0f;
        }
        return true;
    }

    private void m(c cVar, int i11) {
        h(i11, cVar.f564a).c(this.f551a[i11], 90.0f, cVar.f568e, cVar.f566c, g(i11, cVar.f564a));
        float fA = a(i11);
        this.f552b[i11].reset();
        f(i11, cVar.f566c, this.f554d);
        Matrix matrix = this.f552b[i11];
        PointF pointF = this.f554d;
        matrix.setTranslate(pointF.x, pointF.y);
        this.f552b[i11].preRotate(fA);
    }

    private void n(int i11) {
        this.f558h[0] = this.f551a[i11].i();
        this.f558h[1] = this.f551a[i11].j();
        this.f552b[i11].mapPoints(this.f558h);
        float fA = a(i11);
        this.f553c[i11].reset();
        Matrix matrix = this.f553c[i11];
        float[] fArr = this.f558h;
        matrix.setTranslate(fArr[0], fArr[1]);
        this.f553c[i11].preRotate(fA);
    }

    public void d(n nVar, float f11, RectF rectF, b bVar, Path path) {
        path.rewind();
        this.f555e.rewind();
        this.f556f.rewind();
        this.f556f.addRect(rectF, Path.Direction.CW);
        c cVar = new c(nVar, f11, rectF, bVar, path);
        for (int i11 = 0; i11 < 4; i11++) {
            m(cVar, i11);
            n(i11);
        }
        for (int i12 = 0; i12 < 4; i12++) {
            b(cVar, i12);
            c(cVar, i12);
        }
        path.close();
        this.f555e.close();
        if (this.f555e.isEmpty()) {
            return;
        }
        path.op(this.f555e, Path.Op.UNION);
    }

    public void e(n nVar, float f11, RectF rectF, Path path) {
        d(nVar, f11, rectF, null, path);
    }
}
