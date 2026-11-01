package m4;

import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import androidx.collection.x;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.model.content.GradientType;
import com.airbnb.lottie.p0;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class h implements e, n4.a.b, k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f69214a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f69215b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.airbnb.lottie.model.layer.a f69216c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final x f69217d = new x();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final x f69218e = new x();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Path f69219f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Paint f69220g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final RectF f69221h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final List f69222i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final GradientType f69223j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final n4.a f69224k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final n4.a f69225l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final n4.a f69226m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final n4.a f69227n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private n4.a f69228o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private n4.q f69229p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final LottieDrawable f69230q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final int f69231r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private n4.a f69232s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    float f69233t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private n4.c f69234u;

    public h(LottieDrawable lottieDrawable, com.airbnb.lottie.h hVar, com.airbnb.lottie.model.layer.a aVar, r4.e eVar) {
        Path path = new Path();
        this.f69219f = path;
        this.f69220g = new l4.a(1);
        this.f69221h = new RectF();
        this.f69222i = new ArrayList();
        this.f69233t = 0.0f;
        this.f69216c = aVar;
        this.f69214a = eVar.f();
        this.f69215b = eVar.i();
        this.f69230q = lottieDrawable;
        this.f69223j = eVar.e();
        path.setFillType(eVar.c());
        this.f69231r = (int) (hVar.d() / 32.0f);
        n4.a aVarA = eVar.d().a();
        this.f69224k = aVarA;
        aVarA.a(this);
        aVar.i(aVarA);
        n4.a aVarA2 = eVar.g().a();
        this.f69225l = aVarA2;
        aVarA2.a(this);
        aVar.i(aVarA2);
        n4.a aVarA3 = eVar.h().a();
        this.f69226m = aVarA3;
        aVarA3.a(this);
        aVar.i(aVarA3);
        n4.a aVarA4 = eVar.b().a();
        this.f69227n = aVarA4;
        aVarA4.a(this);
        aVar.i(aVarA4);
        if (aVar.w() != null) {
            n4.d dVarA = aVar.w().a().a();
            this.f69232s = dVarA;
            dVarA.a(this);
            aVar.i(this.f69232s);
        }
        if (aVar.y() != null) {
            this.f69234u = new n4.c(this, aVar, aVar.y());
        }
    }

    private int[] g(int[] iArr) {
        n4.q qVar = this.f69229p;
        if (qVar != null) {
            Integer[] numArr = (Integer[]) qVar.h();
            int i11 = 0;
            if (iArr.length == numArr.length) {
                while (i11 < iArr.length) {
                    iArr[i11] = numArr[i11].intValue();
                    i11++;
                }
            } else {
                iArr = new int[numArr.length];
                while (i11 < numArr.length) {
                    iArr[i11] = numArr[i11].intValue();
                    i11++;
                }
            }
        }
        return iArr;
    }

    private int i() {
        int iRound = Math.round(this.f69226m.f() * this.f69231r);
        int iRound2 = Math.round(this.f69227n.f() * this.f69231r);
        int iRound3 = Math.round(this.f69224k.f() * this.f69231r);
        int i11 = iRound != 0 ? 527 * iRound : 17;
        if (iRound2 != 0) {
            i11 = i11 * 31 * iRound2;
        }
        return iRound3 != 0 ? i11 * 31 * iRound3 : i11;
    }

    private LinearGradient j() {
        long jI = i();
        LinearGradient linearGradient = (LinearGradient) this.f69217d.e(jI);
        if (linearGradient != null) {
            return linearGradient;
        }
        PointF pointF = (PointF) this.f69226m.h();
        PointF pointF2 = (PointF) this.f69227n.h();
        r4.d dVar = (r4.d) this.f69224k.h();
        LinearGradient linearGradient2 = new LinearGradient(pointF.x, pointF.y, pointF2.x, pointF2.y, g(dVar.d()), dVar.e(), Shader.TileMode.CLAMP);
        this.f69217d.k(jI, linearGradient2);
        return linearGradient2;
    }

    private RadialGradient k() {
        long jI = i();
        RadialGradient radialGradient = (RadialGradient) this.f69218e.e(jI);
        if (radialGradient != null) {
            return radialGradient;
        }
        PointF pointF = (PointF) this.f69226m.h();
        PointF pointF2 = (PointF) this.f69227n.h();
        r4.d dVar = (r4.d) this.f69224k.h();
        int[] iArrG = g(dVar.d());
        float[] fArrE = dVar.e();
        float f11 = pointF.x;
        float f12 = pointF.y;
        float fHypot = (float) Math.hypot(pointF2.x - f11, pointF2.y - f12);
        if (fHypot <= 0.0f) {
            fHypot = 0.001f;
        }
        RadialGradient radialGradient2 = new RadialGradient(f11, f12, fHypot, iArrG, fArrE, Shader.TileMode.CLAMP);
        this.f69218e.k(jI, radialGradient2);
        return radialGradient2;
    }

    @Override // n4.a.b
    public void a() {
        this.f69230q.invalidateSelf();
    }

    @Override // p4.e
    public void b(Object obj, w4.c cVar) {
        n4.c cVar2;
        n4.c cVar3;
        n4.c cVar4;
        n4.c cVar5;
        n4.c cVar6;
        if (obj == p0.f17906d) {
            this.f69225l.o(cVar);
            return;
        }
        if (obj == p0.K) {
            n4.a aVar = this.f69228o;
            if (aVar != null) {
                this.f69216c.H(aVar);
            }
            if (cVar == null) {
                this.f69228o = null;
                return;
            }
            n4.q qVar = new n4.q(cVar);
            this.f69228o = qVar;
            qVar.a(this);
            this.f69216c.i(this.f69228o);
            return;
        }
        if (obj == p0.L) {
            n4.q qVar2 = this.f69229p;
            if (qVar2 != null) {
                this.f69216c.H(qVar2);
            }
            if (cVar == null) {
                this.f69229p = null;
                return;
            }
            this.f69217d.b();
            this.f69218e.b();
            n4.q qVar3 = new n4.q(cVar);
            this.f69229p = qVar3;
            qVar3.a(this);
            this.f69216c.i(this.f69229p);
            return;
        }
        if (obj == p0.f17912j) {
            n4.a aVar2 = this.f69232s;
            if (aVar2 != null) {
                aVar2.o(cVar);
                return;
            }
            n4.q qVar4 = new n4.q(cVar);
            this.f69232s = qVar4;
            qVar4.a(this);
            this.f69216c.i(this.f69232s);
            return;
        }
        if (obj == p0.f17907e && (cVar6 = this.f69234u) != null) {
            cVar6.c(cVar);
            return;
        }
        if (obj == p0.G && (cVar5 = this.f69234u) != null) {
            cVar5.f(cVar);
            return;
        }
        if (obj == p0.H && (cVar4 = this.f69234u) != null) {
            cVar4.d(cVar);
            return;
        }
        if (obj == p0.I && (cVar3 = this.f69234u) != null) {
            cVar3.e(cVar);
        } else {
            if (obj != p0.J || (cVar2 = this.f69234u) == null) {
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
                this.f69222i.add((m) cVar);
            }
        }
    }

    @Override // p4.e
    public void d(p4.d dVar, int i11, List list, p4.d dVar2) {
        v4.k.k(dVar, i11, list, dVar2, this);
    }

    @Override // m4.e
    public void f(RectF rectF, Matrix matrix, boolean z10) {
        this.f69219f.reset();
        for (int i11 = 0; i11 < this.f69222i.size(); i11++) {
            this.f69219f.addPath(((m) this.f69222i.get(i11)).getPath(), matrix);
        }
        this.f69219f.computeBounds(rectF, false);
        rectF.set(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f);
    }

    @Override // m4.c
    public String getName() {
        return this.f69214a;
    }

    @Override // m4.e
    public void h(Canvas canvas, Matrix matrix, int i11) {
        if (this.f69215b) {
            return;
        }
        if (com.airbnb.lottie.d.g()) {
            com.airbnb.lottie.d.b("GradientFillContent#draw");
        }
        this.f69219f.reset();
        for (int i12 = 0; i12 < this.f69222i.size(); i12++) {
            this.f69219f.addPath(((m) this.f69222i.get(i12)).getPath(), matrix);
        }
        this.f69219f.computeBounds(this.f69221h, false);
        Shader shaderJ = this.f69223j == GradientType.LINEAR ? j() : k();
        shaderJ.setLocalMatrix(matrix);
        this.f69220g.setShader(shaderJ);
        n4.a aVar = this.f69228o;
        if (aVar != null) {
            this.f69220g.setColorFilter((ColorFilter) aVar.h());
        }
        n4.a aVar2 = this.f69232s;
        if (aVar2 != null) {
            float fFloatValue = ((Float) aVar2.h()).floatValue();
            if (fFloatValue == 0.0f) {
                this.f69220g.setMaskFilter(null);
            } else if (fFloatValue != this.f69233t) {
                this.f69220g.setMaskFilter(new BlurMaskFilter(fFloatValue, BlurMaskFilter.Blur.NORMAL));
            }
            this.f69233t = fFloatValue;
        }
        int iIntValue = (int) ((((i11 / 255.0f) * ((Integer) this.f69225l.h()).intValue()) / 100.0f) * 255.0f);
        this.f69220g.setAlpha(v4.k.c(iIntValue, 0, 255));
        n4.c cVar = this.f69234u;
        if (cVar != null) {
            cVar.b(this.f69220g, matrix, v4.l.l(i11, iIntValue));
        }
        canvas.drawPath(this.f69219f, this.f69220g);
        if (com.airbnb.lottie.d.g()) {
            com.airbnb.lottie.d.c("GradientFillContent#draw");
        }
    }
}
