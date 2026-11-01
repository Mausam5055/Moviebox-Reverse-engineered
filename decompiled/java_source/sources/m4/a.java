package m4;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.DashPathEffect;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.RectF;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.model.content.ShapeTrimPath;
import com.airbnb.lottie.p0;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a implements n4.a.b, k, e {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final LottieDrawable f69166e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected final com.airbnb.lottie.model.layer.a f69167f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final float[] f69169h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    final Paint f69170i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final n4.a f69171j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final n4.a f69172k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final List f69173l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final n4.a f69174m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private n4.a f69175n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private n4.a f69176o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    float f69177p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private n4.c f69178q;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final PathMeasure f69162a = new PathMeasure();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Path f69163b = new Path();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Path f69164c = new Path();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final RectF f69165d = new RectF();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final List f69168g = new ArrayList();

    private static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List f69179a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final u f69180b;

        private b(u uVar) {
            this.f69179a = new ArrayList();
            this.f69180b = uVar;
        }
    }

    a(LottieDrawable lottieDrawable, com.airbnb.lottie.model.layer.a aVar, Paint.Cap cap, Paint.Join join, float f11, q4.d dVar, q4.b bVar, List list, q4.b bVar2) {
        l4.a aVar2 = new l4.a(1);
        this.f69170i = aVar2;
        this.f69177p = 0.0f;
        this.f69166e = lottieDrawable;
        this.f69167f = aVar;
        aVar2.setStyle(Paint.Style.STROKE);
        aVar2.setStrokeCap(cap);
        aVar2.setStrokeJoin(join);
        aVar2.setStrokeMiter(f11);
        this.f69172k = dVar.a();
        this.f69171j = bVar.a();
        if (bVar2 == null) {
            this.f69174m = null;
        } else {
            this.f69174m = bVar2.a();
        }
        this.f69173l = new ArrayList(list.size());
        this.f69169h = new float[list.size()];
        for (int i11 = 0; i11 < list.size(); i11++) {
            this.f69173l.add(((q4.b) list.get(i11)).a());
        }
        aVar.i(this.f69172k);
        aVar.i(this.f69171j);
        for (int i12 = 0; i12 < this.f69173l.size(); i12++) {
            aVar.i((n4.a) this.f69173l.get(i12));
        }
        n4.a aVar3 = this.f69174m;
        if (aVar3 != null) {
            aVar.i(aVar3);
        }
        this.f69172k.a(this);
        this.f69171j.a(this);
        for (int i13 = 0; i13 < list.size(); i13++) {
            ((n4.a) this.f69173l.get(i13)).a(this);
        }
        n4.a aVar4 = this.f69174m;
        if (aVar4 != null) {
            aVar4.a(this);
        }
        if (aVar.w() != null) {
            n4.d dVarA = aVar.w().a().a();
            this.f69176o = dVarA;
            dVarA.a(this);
            aVar.i(this.f69176o);
        }
        if (aVar.y() != null) {
            this.f69178q = new n4.c(this, aVar, aVar.y());
        }
    }

    private void g(Matrix matrix) {
        if (com.airbnb.lottie.d.g()) {
            com.airbnb.lottie.d.b("StrokeContent#applyDashPattern");
        }
        if (this.f69173l.isEmpty()) {
            if (com.airbnb.lottie.d.g()) {
                com.airbnb.lottie.d.c("StrokeContent#applyDashPattern");
                return;
            }
            return;
        }
        float fG = v4.l.g(matrix);
        for (int i11 = 0; i11 < this.f69173l.size(); i11++) {
            this.f69169h[i11] = ((Float) ((n4.a) this.f69173l.get(i11)).h()).floatValue();
            if (i11 % 2 == 0) {
                float[] fArr = this.f69169h;
                if (fArr[i11] < 1.0f) {
                    fArr[i11] = 1.0f;
                }
            } else {
                float[] fArr2 = this.f69169h;
                if (fArr2[i11] < 0.1f) {
                    fArr2[i11] = 0.1f;
                }
            }
            float[] fArr3 = this.f69169h;
            fArr3[i11] = fArr3[i11] * fG;
        }
        n4.a aVar = this.f69174m;
        this.f69170i.setPathEffect(new DashPathEffect(this.f69169h, aVar == null ? 0.0f : fG * ((Float) aVar.h()).floatValue()));
        if (com.airbnb.lottie.d.g()) {
            com.airbnb.lottie.d.c("StrokeContent#applyDashPattern");
        }
    }

    /* JADX WARN: Code duplicated, block: B:39:0x012e  */
    private void i(Canvas canvas, b bVar, Matrix matrix) {
        float f11;
        if (com.airbnb.lottie.d.g()) {
            com.airbnb.lottie.d.b("StrokeContent#applyTrimPath");
        }
        if (bVar.f69180b == null) {
            if (com.airbnb.lottie.d.g()) {
                com.airbnb.lottie.d.c("StrokeContent#applyTrimPath");
                return;
            }
            return;
        }
        this.f69163b.reset();
        for (int size = bVar.f69179a.size() - 1; size >= 0; size--) {
            this.f69163b.addPath(((m) bVar.f69179a.get(size)).getPath(), matrix);
        }
        float fFloatValue = ((Float) bVar.f69180b.i().h()).floatValue() / 100.0f;
        float fFloatValue2 = ((Float) bVar.f69180b.d().h()).floatValue() / 100.0f;
        float fFloatValue3 = ((Float) bVar.f69180b.g().h()).floatValue() / 360.0f;
        if (fFloatValue < 0.01f && fFloatValue2 > 0.99f) {
            canvas.drawPath(this.f69163b, this.f69170i);
            if (com.airbnb.lottie.d.g()) {
                com.airbnb.lottie.d.c("StrokeContent#applyTrimPath");
                return;
            }
            return;
        }
        this.f69162a.setPath(this.f69163b, false);
        float length = this.f69162a.getLength();
        while (this.f69162a.nextContour()) {
            length += this.f69162a.getLength();
        }
        float f12 = fFloatValue3 * length;
        float f13 = (fFloatValue * length) + f12;
        float fMin = Math.min((fFloatValue2 * length) + f12, (f13 + length) - 1.0f);
        float f14 = 0.0f;
        for (int size2 = bVar.f69179a.size() - 1; size2 >= 0; size2--) {
            this.f69164c.set(((m) bVar.f69179a.get(size2)).getPath());
            this.f69164c.transform(matrix);
            this.f69162a.setPath(this.f69164c, false);
            float length2 = this.f69162a.getLength();
            if (fMin > length) {
                float f15 = fMin - length;
                if (f15 >= f14 + length2 || f14 >= f15) {
                    f11 = f14 + length2;
                    if (f11 < f13 && f14 <= fMin) {
                        if (f11 > fMin || f13 >= f14) {
                            v4.l.a(this.f69164c, f13 < f14 ? 0.0f : (f13 - f14) / length2, fMin > f11 ? 1.0f : (fMin - f14) / length2, 0.0f);
                            canvas.drawPath(this.f69164c, this.f69170i);
                        } else {
                            canvas.drawPath(this.f69164c, this.f69170i);
                        }
                    }
                } else {
                    v4.l.a(this.f69164c, f13 > length ? (f13 - length) / length2 : 0.0f, Math.min(f15 / length2, 1.0f), 0.0f);
                    canvas.drawPath(this.f69164c, this.f69170i);
                }
            } else {
                f11 = f14 + length2;
                if (f11 < f13) {
                }
            }
            f14 += length2;
        }
        if (com.airbnb.lottie.d.g()) {
            com.airbnb.lottie.d.c("StrokeContent#applyTrimPath");
        }
    }

    @Override // n4.a.b
    public void a() {
        this.f69166e.invalidateSelf();
    }

    @Override // p4.e
    public void b(Object obj, w4.c cVar) {
        n4.c cVar2;
        n4.c cVar3;
        n4.c cVar4;
        n4.c cVar5;
        n4.c cVar6;
        if (obj == p0.f17906d) {
            this.f69172k.o(cVar);
            return;
        }
        if (obj == p0.f17921s) {
            this.f69171j.o(cVar);
            return;
        }
        if (obj == p0.K) {
            n4.a aVar = this.f69175n;
            if (aVar != null) {
                this.f69167f.H(aVar);
            }
            if (cVar == null) {
                this.f69175n = null;
                return;
            }
            n4.q qVar = new n4.q(cVar);
            this.f69175n = qVar;
            qVar.a(this);
            this.f69167f.i(this.f69175n);
            return;
        }
        if (obj == p0.f17912j) {
            n4.a aVar2 = this.f69176o;
            if (aVar2 != null) {
                aVar2.o(cVar);
                return;
            }
            n4.q qVar2 = new n4.q(cVar);
            this.f69176o = qVar2;
            qVar2.a(this);
            this.f69167f.i(this.f69176o);
            return;
        }
        if (obj == p0.f17907e && (cVar6 = this.f69178q) != null) {
            cVar6.c(cVar);
            return;
        }
        if (obj == p0.G && (cVar5 = this.f69178q) != null) {
            cVar5.f(cVar);
            return;
        }
        if (obj == p0.H && (cVar4 = this.f69178q) != null) {
            cVar4.d(cVar);
            return;
        }
        if (obj == p0.I && (cVar3 = this.f69178q) != null) {
            cVar3.e(cVar);
        } else {
            if (obj != p0.J || (cVar2 = this.f69178q) == null) {
                return;
            }
            cVar2.g(cVar);
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0055  */
    /* JADX WARN: Code duplicated, block: B:23:0x0059 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:24:0x005b  */
    /* JADX WARN: Code duplicated, block: B:37:0x0069 A[SYNTHETIC] */
    @Override // m4.c
    public void c(List list, List list2) {
        u uVar = null;
        for (int size = list.size() - 1; size >= 0; size--) {
            c cVar = (c) list.get(size);
            if (cVar instanceof u) {
                u uVar2 = (u) cVar;
                if (uVar2.j() == ShapeTrimPath.Type.INDIVIDUALLY) {
                    uVar = uVar2;
                }
            }
        }
        if (uVar != null) {
            uVar.b(this);
        }
        b bVar = null;
        for (int size2 = list2.size() - 1; size2 >= 0; size2--) {
            c cVar2 = (c) list2.get(size2);
            if (cVar2 instanceof u) {
                u uVar3 = (u) cVar2;
                if (uVar3.j() == ShapeTrimPath.Type.INDIVIDUALLY) {
                    if (bVar != null) {
                        this.f69168g.add(bVar);
                    }
                    bVar = new b(uVar3);
                    uVar3.b(this);
                } else if (!(cVar2 instanceof m)) {
                    if (bVar == null) {
                        bVar = new b(uVar);
                    }
                    bVar.f69179a.add((m) cVar2);
                }
            } else if (!(cVar2 instanceof m)) {
                if (bVar == null) {
                    bVar = new b(uVar);
                }
                bVar.f69179a.add((m) cVar2);
            }
        }
        if (bVar != null) {
            this.f69168g.add(bVar);
        }
    }

    @Override // p4.e
    public void d(p4.d dVar, int i11, List list, p4.d dVar2) {
        v4.k.k(dVar, i11, list, dVar2, this);
    }

    @Override // m4.e
    public void f(RectF rectF, Matrix matrix, boolean z10) {
        if (com.airbnb.lottie.d.g()) {
            com.airbnb.lottie.d.b("StrokeContent#getBounds");
        }
        this.f69163b.reset();
        for (int i11 = 0; i11 < this.f69168g.size(); i11++) {
            b bVar = (b) this.f69168g.get(i11);
            for (int i12 = 0; i12 < bVar.f69179a.size(); i12++) {
                this.f69163b.addPath(((m) bVar.f69179a.get(i12)).getPath(), matrix);
            }
        }
        this.f69163b.computeBounds(this.f69165d, false);
        float fQ = ((n4.d) this.f69171j).q();
        RectF rectF2 = this.f69165d;
        float f11 = fQ / 2.0f;
        rectF2.set(rectF2.left - f11, rectF2.top - f11, rectF2.right + f11, rectF2.bottom + f11);
        rectF.set(this.f69165d);
        rectF.set(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f);
        if (com.airbnb.lottie.d.g()) {
            com.airbnb.lottie.d.c("StrokeContent#getBounds");
        }
    }

    @Override // m4.e
    public void h(Canvas canvas, Matrix matrix, int i11) {
        if (com.airbnb.lottie.d.g()) {
            com.airbnb.lottie.d.b("StrokeContent#draw");
        }
        if (v4.l.h(matrix)) {
            if (com.airbnb.lottie.d.g()) {
                com.airbnb.lottie.d.c("StrokeContent#draw");
                return;
            }
            return;
        }
        int iQ = (int) ((((i11 / 255.0f) * ((n4.f) this.f69172k).q()) / 100.0f) * 255.0f);
        this.f69170i.setAlpha(v4.k.c(iQ, 0, 255));
        this.f69170i.setStrokeWidth(((n4.d) this.f69171j).q() * v4.l.g(matrix));
        if (this.f69170i.getStrokeWidth() <= 0.0f) {
            if (com.airbnb.lottie.d.g()) {
                com.airbnb.lottie.d.c("StrokeContent#draw");
                return;
            }
            return;
        }
        g(matrix);
        n4.a aVar = this.f69175n;
        if (aVar != null) {
            this.f69170i.setColorFilter((ColorFilter) aVar.h());
        }
        n4.a aVar2 = this.f69176o;
        if (aVar2 != null) {
            float fFloatValue = ((Float) aVar2.h()).floatValue();
            if (fFloatValue == 0.0f) {
                this.f69170i.setMaskFilter(null);
            } else if (fFloatValue != this.f69177p) {
                this.f69170i.setMaskFilter(this.f69167f.x(fFloatValue));
            }
            this.f69177p = fFloatValue;
        }
        n4.c cVar = this.f69178q;
        if (cVar != null) {
            cVar.b(this.f69170i, matrix, v4.l.l(i11, iQ));
        }
        for (int i12 = 0; i12 < this.f69168g.size(); i12++) {
            b bVar = (b) this.f69168g.get(i12);
            if (bVar.f69180b != null) {
                i(canvas, bVar, matrix);
            } else {
                if (com.airbnb.lottie.d.g()) {
                    com.airbnb.lottie.d.b("StrokeContent#buildPath");
                }
                this.f69163b.reset();
                for (int size = bVar.f69179a.size() - 1; size >= 0; size--) {
                    this.f69163b.addPath(((m) bVar.f69179a.get(size)).getPath(), matrix);
                }
                if (com.airbnb.lottie.d.g()) {
                    com.airbnb.lottie.d.c("StrokeContent#buildPath");
                    com.airbnb.lottie.d.b("StrokeContent#drawPath");
                }
                canvas.drawPath(this.f69163b, this.f69170i);
                if (com.airbnb.lottie.d.g()) {
                    com.airbnb.lottie.d.c("StrokeContent#drawPath");
                }
            }
        }
        if (com.airbnb.lottie.d.g()) {
            com.airbnb.lottie.d.c("StrokeContent#draw");
        }
    }
}
