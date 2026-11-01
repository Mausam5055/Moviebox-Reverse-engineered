package n4;

import android.graphics.Matrix;
import android.graphics.PointF;
import com.airbnb.lottie.p0;
import java.util.Collections;

/* JADX INFO: loaded from: classes2.dex */
public class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Matrix f70232a = new Matrix();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Matrix f70233b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Matrix f70234c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Matrix f70235d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final float[] f70236e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private a f70237f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private a f70238g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private a f70239h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private a f70240i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private a f70241j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private d f70242k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private d f70243l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private a f70244m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private a f70245n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final boolean f70246o;

    public p(q4.n nVar) {
        this.f70237f = nVar.c() == null ? null : nVar.c().a();
        this.f70238g = nVar.f() == null ? null : nVar.f().a();
        this.f70239h = nVar.h() == null ? null : nVar.h().a();
        this.f70240i = nVar.g() == null ? null : nVar.g().a();
        this.f70242k = nVar.i() == null ? null : nVar.i().a();
        this.f70246o = nVar.l();
        if (this.f70242k != null) {
            this.f70233b = new Matrix();
            this.f70234c = new Matrix();
            this.f70235d = new Matrix();
            this.f70236e = new float[9];
        } else {
            this.f70233b = null;
            this.f70234c = null;
            this.f70235d = null;
            this.f70236e = null;
        }
        this.f70243l = nVar.j() == null ? null : nVar.j().a();
        if (nVar.e() != null) {
            this.f70241j = nVar.e().a();
        }
        if (nVar.k() != null) {
            this.f70244m = nVar.k().a();
        } else {
            this.f70244m = null;
        }
        if (nVar.d() != null) {
            this.f70245n = nVar.d().a();
        } else {
            this.f70245n = null;
        }
    }

    private void d() {
        for (int i11 = 0; i11 < 9; i11++) {
            this.f70236e[i11] = 0.0f;
        }
    }

    public void a(com.airbnb.lottie.model.layer.a aVar) {
        aVar.i(this.f70241j);
        aVar.i(this.f70244m);
        aVar.i(this.f70245n);
        aVar.i(this.f70237f);
        aVar.i(this.f70238g);
        aVar.i(this.f70239h);
        aVar.i(this.f70240i);
        aVar.i(this.f70242k);
        aVar.i(this.f70243l);
    }

    public void b(a.b bVar) {
        a aVar = this.f70241j;
        if (aVar != null) {
            aVar.a(bVar);
        }
        a aVar2 = this.f70244m;
        if (aVar2 != null) {
            aVar2.a(bVar);
        }
        a aVar3 = this.f70245n;
        if (aVar3 != null) {
            aVar3.a(bVar);
        }
        a aVar4 = this.f70237f;
        if (aVar4 != null) {
            aVar4.a(bVar);
        }
        a aVar5 = this.f70238g;
        if (aVar5 != null) {
            aVar5.a(bVar);
        }
        a aVar6 = this.f70239h;
        if (aVar6 != null) {
            aVar6.a(bVar);
        }
        a aVar7 = this.f70240i;
        if (aVar7 != null) {
            aVar7.a(bVar);
        }
        d dVar = this.f70242k;
        if (dVar != null) {
            dVar.a(bVar);
        }
        d dVar2 = this.f70243l;
        if (dVar2 != null) {
            dVar2.a(bVar);
        }
    }

    public boolean c(Object obj, w4.c cVar) {
        if (obj == p0.f17908f) {
            a aVar = this.f70237f;
            if (aVar == null) {
                this.f70237f = new q(cVar, new PointF());
                return true;
            }
            aVar.o(cVar);
            return true;
        }
        if (obj == p0.f17909g) {
            a aVar2 = this.f70238g;
            if (aVar2 == null) {
                this.f70238g = new q(cVar, new PointF());
                return true;
            }
            aVar2.o(cVar);
            return true;
        }
        if (obj == p0.f17910h) {
            a aVar3 = this.f70238g;
            if (aVar3 instanceof n) {
                ((n) aVar3).s(cVar);
                return true;
            }
        }
        if (obj == p0.f17911i) {
            a aVar4 = this.f70238g;
            if (aVar4 instanceof n) {
                ((n) aVar4).t(cVar);
                return true;
            }
        }
        if (obj == p0.f17917o) {
            a aVar5 = this.f70239h;
            if (aVar5 == null) {
                this.f70239h = new q(cVar, new w4.d());
                return true;
            }
            aVar5.o(cVar);
            return true;
        }
        if (obj == p0.f17918p) {
            a aVar6 = this.f70240i;
            if (aVar6 == null) {
                this.f70240i = new q(cVar, Float.valueOf(0.0f));
                return true;
            }
            aVar6.o(cVar);
            return true;
        }
        if (obj == p0.f17905c) {
            a aVar7 = this.f70241j;
            if (aVar7 == null) {
                this.f70241j = new q(cVar, 100);
                return true;
            }
            aVar7.o(cVar);
            return true;
        }
        if (obj == p0.C) {
            a aVar8 = this.f70244m;
            if (aVar8 == null) {
                this.f70244m = new q(cVar, Float.valueOf(100.0f));
                return true;
            }
            aVar8.o(cVar);
            return true;
        }
        if (obj == p0.D) {
            a aVar9 = this.f70245n;
            if (aVar9 == null) {
                this.f70245n = new q(cVar, Float.valueOf(100.0f));
                return true;
            }
            aVar9.o(cVar);
            return true;
        }
        if (obj == p0.f17919q) {
            if (this.f70242k == null) {
                this.f70242k = new d(Collections.singletonList(new w4.a(Float.valueOf(0.0f))));
            }
            this.f70242k.o(cVar);
            return true;
        }
        if (obj != p0.f17920r) {
            return false;
        }
        if (this.f70243l == null) {
            this.f70243l = new d(Collections.singletonList(new w4.a(Float.valueOf(0.0f))));
        }
        this.f70243l.o(cVar);
        return true;
    }

    public a e() {
        return this.f70245n;
    }

    public Matrix f() {
        PointF pointF;
        w4.d dVar;
        PointF pointF2;
        this.f70232a.reset();
        a aVar = this.f70238g;
        if (aVar != null && (pointF2 = (PointF) aVar.h()) != null) {
            float f11 = pointF2.x;
            if (f11 != 0.0f || pointF2.y != 0.0f) {
                this.f70232a.preTranslate(f11, pointF2.y);
            }
        }
        if (!this.f70246o) {
            a aVar2 = this.f70240i;
            if (aVar2 != null) {
                float fFloatValue = aVar2 instanceof q ? ((Float) aVar2.h()).floatValue() : ((d) aVar2).q();
                if (fFloatValue != 0.0f) {
                    this.f70232a.preRotate(fFloatValue);
                }
            }
        } else if (aVar != null) {
            float f12 = aVar.f();
            PointF pointF3 = (PointF) aVar.h();
            float f13 = pointF3.x;
            float f14 = pointF3.y;
            aVar.n(1.0E-4f + f12);
            PointF pointF4 = (PointF) aVar.h();
            aVar.n(f12);
            this.f70232a.preRotate((float) Math.toDegrees(Math.atan2(pointF4.y - f14, pointF4.x - f13)));
        }
        d dVar2 = this.f70242k;
        if (dVar2 != null) {
            d dVar3 = this.f70243l;
            float fCos = dVar3 == null ? 0.0f : (float) Math.cos(Math.toRadians((-dVar3.q()) + 90.0f));
            d dVar4 = this.f70243l;
            float fSin = dVar4 == null ? 1.0f : (float) Math.sin(Math.toRadians((-dVar4.q()) + 90.0f));
            float fTan = (float) Math.tan(Math.toRadians(dVar2.q()));
            d();
            float[] fArr = this.f70236e;
            fArr[0] = fCos;
            fArr[1] = fSin;
            float f15 = -fSin;
            fArr[3] = f15;
            fArr[4] = fCos;
            fArr[8] = 1.0f;
            this.f70233b.setValues(fArr);
            d();
            float[] fArr2 = this.f70236e;
            fArr2[0] = 1.0f;
            fArr2[3] = fTan;
            fArr2[4] = 1.0f;
            fArr2[8] = 1.0f;
            this.f70234c.setValues(fArr2);
            d();
            float[] fArr3 = this.f70236e;
            fArr3[0] = fCos;
            fArr3[1] = f15;
            fArr3[3] = fSin;
            fArr3[4] = fCos;
            fArr3[8] = 1.0f;
            this.f70235d.setValues(fArr3);
            this.f70234c.preConcat(this.f70233b);
            this.f70235d.preConcat(this.f70234c);
            this.f70232a.preConcat(this.f70235d);
        }
        a aVar3 = this.f70239h;
        if (aVar3 != null && (dVar = (w4.d) aVar3.h()) != null && (dVar.b() != 1.0f || dVar.c() != 1.0f)) {
            this.f70232a.preScale(dVar.b(), dVar.c());
        }
        a aVar4 = this.f70237f;
        if (aVar4 != null && (pointF = (PointF) aVar4.h()) != null) {
            float f16 = pointF.x;
            if (f16 != 0.0f || pointF.y != 0.0f) {
                this.f70232a.preTranslate(-f16, -pointF.y);
            }
        }
        return this.f70232a;
    }

    public Matrix g(float f11) {
        a aVar = this.f70238g;
        PointF pointF = aVar == null ? null : (PointF) aVar.h();
        a aVar2 = this.f70239h;
        w4.d dVar = aVar2 == null ? null : (w4.d) aVar2.h();
        this.f70232a.reset();
        if (pointF != null) {
            this.f70232a.preTranslate(pointF.x * f11, pointF.y * f11);
        }
        if (dVar != null) {
            double d11 = f11;
            this.f70232a.preScale((float) Math.pow(dVar.b(), d11), (float) Math.pow(dVar.c(), d11));
        }
        a aVar3 = this.f70240i;
        if (aVar3 != null) {
            float fFloatValue = ((Float) aVar3.h()).floatValue();
            a aVar4 = this.f70237f;
            PointF pointF2 = aVar4 != null ? (PointF) aVar4.h() : null;
            this.f70232a.preRotate(fFloatValue * f11, pointF2 == null ? 0.0f : pointF2.x, pointF2 != null ? pointF2.y : 0.0f);
        }
        return this.f70232a;
    }

    public a h() {
        return this.f70241j;
    }

    public a i() {
        return this.f70244m;
    }

    public void j(float f11) {
        a aVar = this.f70241j;
        if (aVar != null) {
            aVar.n(f11);
        }
        a aVar2 = this.f70244m;
        if (aVar2 != null) {
            aVar2.n(f11);
        }
        a aVar3 = this.f70245n;
        if (aVar3 != null) {
            aVar3.n(f11);
        }
        a aVar4 = this.f70237f;
        if (aVar4 != null) {
            aVar4.n(f11);
        }
        a aVar5 = this.f70238g;
        if (aVar5 != null) {
            aVar5.n(f11);
        }
        a aVar6 = this.f70239h;
        if (aVar6 != null) {
            aVar6.n(f11);
        }
        a aVar7 = this.f70240i;
        if (aVar7 != null) {
            aVar7.n(f11);
        }
        d dVar = this.f70242k;
        if (dVar != null) {
            dVar.n(f11);
        }
        d dVar2 = this.f70243l;
        if (dVar2 != null) {
            dVar2.n(f11);
        }
    }
}
