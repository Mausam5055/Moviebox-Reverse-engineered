package m4;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.p0;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class g implements e, n4.a.b, k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Path f69201a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Paint f69202b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.airbnb.lottie.model.layer.a f69203c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f69204d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f69205e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final List f69206f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final n4.a f69207g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final n4.a f69208h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private n4.a f69209i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final LottieDrawable f69210j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private n4.a f69211k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    float f69212l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private n4.c f69213m;

    public g(LottieDrawable lottieDrawable, com.airbnb.lottie.model.layer.a aVar, r4.j jVar) {
        Path path = new Path();
        this.f69201a = path;
        this.f69202b = new l4.a(1);
        this.f69206f = new ArrayList();
        this.f69203c = aVar;
        this.f69204d = jVar.d();
        this.f69205e = jVar.f();
        this.f69210j = lottieDrawable;
        if (aVar.w() != null) {
            n4.d dVarA = aVar.w().a().a();
            this.f69211k = dVarA;
            dVarA.a(this);
            aVar.i(this.f69211k);
        }
        if (aVar.y() != null) {
            this.f69213m = new n4.c(this, aVar, aVar.y());
        }
        if (jVar.b() == null || jVar.e() == null) {
            this.f69207g = null;
            this.f69208h = null;
            return;
        }
        path.setFillType(jVar.c());
        n4.a aVarA = jVar.b().a();
        this.f69207g = aVarA;
        aVarA.a(this);
        aVar.i(aVarA);
        n4.a aVarA2 = jVar.e().a();
        this.f69208h = aVarA2;
        aVarA2.a(this);
        aVar.i(aVarA2);
    }

    @Override // n4.a.b
    public void a() {
        this.f69210j.invalidateSelf();
    }

    @Override // p4.e
    public void b(Object obj, w4.c cVar) {
        n4.c cVar2;
        n4.c cVar3;
        n4.c cVar4;
        n4.c cVar5;
        n4.c cVar6;
        if (obj == p0.f17903a) {
            this.f69207g.o(cVar);
            return;
        }
        if (obj == p0.f17906d) {
            this.f69208h.o(cVar);
            return;
        }
        if (obj == p0.K) {
            n4.a aVar = this.f69209i;
            if (aVar != null) {
                this.f69203c.H(aVar);
            }
            if (cVar == null) {
                this.f69209i = null;
                return;
            }
            n4.q qVar = new n4.q(cVar);
            this.f69209i = qVar;
            qVar.a(this);
            this.f69203c.i(this.f69209i);
            return;
        }
        if (obj == p0.f17912j) {
            n4.a aVar2 = this.f69211k;
            if (aVar2 != null) {
                aVar2.o(cVar);
                return;
            }
            n4.q qVar2 = new n4.q(cVar);
            this.f69211k = qVar2;
            qVar2.a(this);
            this.f69203c.i(this.f69211k);
            return;
        }
        if (obj == p0.f17907e && (cVar6 = this.f69213m) != null) {
            cVar6.c(cVar);
            return;
        }
        if (obj == p0.G && (cVar5 = this.f69213m) != null) {
            cVar5.f(cVar);
            return;
        }
        if (obj == p0.H && (cVar4 = this.f69213m) != null) {
            cVar4.d(cVar);
            return;
        }
        if (obj == p0.I && (cVar3 = this.f69213m) != null) {
            cVar3.e(cVar);
        } else {
            if (obj != p0.J || (cVar2 = this.f69213m) == null) {
                return;
            }
            cVar2.g(cVar);
        }
    }

    @Override // m4.c
    public void c(List list, List list2) {
        for (int i11 = 0; i11 < list2.size(); i11++) {
            c cVar = (c) list2.get(i11);
            if (cVar instanceof m) {
                this.f69206f.add((m) cVar);
            }
        }
    }

    @Override // p4.e
    public void d(p4.d dVar, int i11, List list, p4.d dVar2) {
        v4.k.k(dVar, i11, list, dVar2, this);
    }

    @Override // m4.e
    public void f(RectF rectF, Matrix matrix, boolean z10) {
        this.f69201a.reset();
        for (int i11 = 0; i11 < this.f69206f.size(); i11++) {
            this.f69201a.addPath(((m) this.f69206f.get(i11)).getPath(), matrix);
        }
        this.f69201a.computeBounds(rectF, false);
        rectF.set(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f);
    }

    @Override // m4.c
    public String getName() {
        return this.f69204d;
    }

    @Override // m4.e
    public void h(Canvas canvas, Matrix matrix, int i11) {
        if (this.f69205e) {
            return;
        }
        if (com.airbnb.lottie.d.g()) {
            com.airbnb.lottie.d.b("FillContent#draw");
        }
        int iQ = ((n4.b) this.f69207g).q();
        int iIntValue = (int) ((((i11 / 255.0f) * ((Integer) this.f69208h.h()).intValue()) / 100.0f) * 255.0f);
        this.f69202b.setColor((iQ & 16777215) | (v4.k.c(iIntValue, 0, 255) << 24));
        n4.a aVar = this.f69209i;
        if (aVar != null) {
            this.f69202b.setColorFilter((ColorFilter) aVar.h());
        }
        n4.a aVar2 = this.f69211k;
        if (aVar2 != null) {
            float fFloatValue = ((Float) aVar2.h()).floatValue();
            if (fFloatValue == 0.0f) {
                this.f69202b.setMaskFilter(null);
            } else if (fFloatValue != this.f69212l) {
                this.f69202b.setMaskFilter(this.f69203c.x(fFloatValue));
            }
            this.f69212l = fFloatValue;
        }
        n4.c cVar = this.f69213m;
        if (cVar != null) {
            cVar.b(this.f69202b, matrix, v4.l.l(i11, iIntValue));
        }
        this.f69201a.reset();
        for (int i12 = 0; i12 < this.f69206f.size(); i12++) {
            this.f69201a.addPath(((m) this.f69206f.get(i12)).getPath(), matrix);
        }
        canvas.drawPath(this.f69201a, this.f69202b);
        if (com.airbnb.lottie.d.g()) {
            com.airbnb.lottie.d.c("FillContent#draw");
        }
    }
}
