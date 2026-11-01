package m4;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.p0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.ListIterator;

/* JADX INFO: loaded from: classes2.dex */
public class p implements e, m, j, n4.a.b, k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Matrix f69281a = new Matrix();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Path f69282b = new Path();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final LottieDrawable f69283c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.airbnb.lottie.model.layer.a f69284d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f69285e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f69286f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final n4.a f69287g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final n4.a f69288h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final n4.p f69289i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private d f69290j;

    public p(LottieDrawable lottieDrawable, com.airbnb.lottie.model.layer.a aVar, r4.g gVar) {
        this.f69283c = lottieDrawable;
        this.f69284d = aVar;
        this.f69285e = gVar.c();
        this.f69286f = gVar.f();
        n4.d dVarA = gVar.b().a();
        this.f69287g = dVarA;
        aVar.i(dVarA);
        dVarA.a(this);
        n4.d dVarA2 = gVar.d().a();
        this.f69288h = dVarA2;
        aVar.i(dVarA2);
        dVarA2.a(this);
        n4.p pVarB = gVar.e().b();
        this.f69289i = pVarB;
        pVarB.a(aVar);
        pVarB.b(this);
    }

    @Override // n4.a.b
    public void a() {
        this.f69283c.invalidateSelf();
    }

    @Override // p4.e
    public void b(Object obj, w4.c cVar) {
        if (this.f69289i.c(obj, cVar)) {
            return;
        }
        if (obj == p0.f17923u) {
            this.f69287g.o(cVar);
        } else if (obj == p0.f17924v) {
            this.f69288h.o(cVar);
        }
    }

    @Override // m4.c
    public void c(List list, List list2) {
        this.f69290j.c(list, list2);
    }

    @Override // p4.e
    public void d(p4.d dVar, int i11, List list, p4.d dVar2) {
        v4.k.k(dVar, i11, list, dVar2, this);
        for (int i12 = 0; i12 < this.f69290j.j().size(); i12++) {
            c cVar = (c) this.f69290j.j().get(i12);
            if (cVar instanceof k) {
                v4.k.k(dVar, i11, list, dVar2, (k) cVar);
            }
        }
    }

    @Override // m4.e
    public void f(RectF rectF, Matrix matrix, boolean z10) {
        this.f69290j.f(rectF, matrix, z10);
    }

    @Override // m4.j
    public void g(ListIterator listIterator) {
        if (this.f69290j != null) {
            return;
        }
        while (listIterator.hasPrevious() && listIterator.previous() != this) {
        }
        ArrayList arrayList = new ArrayList();
        while (listIterator.hasPrevious()) {
            arrayList.add((c) listIterator.previous());
            listIterator.remove();
        }
        Collections.reverse(arrayList);
        this.f69290j = new d(this.f69283c, this.f69284d, "Repeater", this.f69286f, arrayList, null);
    }

    @Override // m4.c
    public String getName() {
        return this.f69285e;
    }

    @Override // m4.m
    public Path getPath() {
        Path path = this.f69290j.getPath();
        this.f69282b.reset();
        float fFloatValue = ((Float) this.f69287g.h()).floatValue();
        float fFloatValue2 = ((Float) this.f69288h.h()).floatValue();
        for (int i11 = ((int) fFloatValue) - 1; i11 >= 0; i11--) {
            this.f69281a.set(this.f69289i.g(i11 + fFloatValue2));
            this.f69282b.addPath(path, this.f69281a);
        }
        return this.f69282b;
    }

    @Override // m4.e
    public void h(Canvas canvas, Matrix matrix, int i11) {
        float fFloatValue = ((Float) this.f69287g.h()).floatValue();
        float fFloatValue2 = ((Float) this.f69288h.h()).floatValue();
        float fFloatValue3 = ((Float) this.f69289i.i().h()).floatValue() / 100.0f;
        float fFloatValue4 = ((Float) this.f69289i.e().h()).floatValue() / 100.0f;
        for (int i12 = ((int) fFloatValue) - 1; i12 >= 0; i12--) {
            this.f69281a.set(matrix);
            float f11 = i12;
            this.f69281a.preConcat(this.f69289i.g(f11 + fFloatValue2));
            this.f69290j.h(canvas, this.f69281a, (int) (i11 * v4.k.i(fFloatValue3, fFloatValue4, f11 / fFloatValue)));
        }
    }
}
