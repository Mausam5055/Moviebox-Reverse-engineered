package m4;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.model.content.PolystarShape;
import com.airbnb.lottie.model.content.ShapeTrimPath;
import com.airbnb.lottie.p0;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class n implements m, n4.a.b, k {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f69255e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final LottieDrawable f69256f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final PolystarShape.Type f69257g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final boolean f69258h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final boolean f69259i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final n4.a f69260j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final n4.a f69261k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final n4.a f69262l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final n4.a f69263m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final n4.a f69264n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final n4.a f69265o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final n4.a f69266p;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f69268r;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Path f69251a = new Path();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Path f69252b = new Path();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final PathMeasure f69253c = new PathMeasure();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final float[] f69254d = new float[2];

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final b f69267q = new b();

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f69269a;

        static {
            int[] iArr = new int[PolystarShape.Type.values().length];
            f69269a = iArr;
            try {
                iArr[PolystarShape.Type.STAR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f69269a[PolystarShape.Type.POLYGON.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public n(LottieDrawable lottieDrawable, com.airbnb.lottie.model.layer.a aVar, PolystarShape polystarShape) {
        this.f69256f = lottieDrawable;
        this.f69255e = polystarShape.d();
        PolystarShape.Type typeJ = polystarShape.j();
        this.f69257g = typeJ;
        this.f69258h = polystarShape.k();
        this.f69259i = polystarShape.l();
        n4.d dVarA = polystarShape.g().a();
        this.f69260j = dVarA;
        n4.a aVarA = polystarShape.h().a();
        this.f69261k = aVarA;
        n4.d dVarA2 = polystarShape.i().a();
        this.f69262l = dVarA2;
        n4.d dVarA3 = polystarShape.e().a();
        this.f69264n = dVarA3;
        n4.d dVarA4 = polystarShape.f().a();
        this.f69266p = dVarA4;
        PolystarShape.Type type = PolystarShape.Type.STAR;
        if (typeJ == type) {
            this.f69263m = polystarShape.b().a();
            this.f69265o = polystarShape.c().a();
        } else {
            this.f69263m = null;
            this.f69265o = null;
        }
        aVar.i(dVarA);
        aVar.i(aVarA);
        aVar.i(dVarA2);
        aVar.i(dVarA3);
        aVar.i(dVarA4);
        if (typeJ == type) {
            aVar.i(this.f69263m);
            aVar.i(this.f69265o);
        }
        dVarA.a(this);
        aVarA.a(this);
        dVarA2.a(this);
        dVarA3.a(this);
        dVarA4.a(this);
        if (typeJ == type) {
            this.f69263m.a(this);
            this.f69265o.a(this);
        }
    }

    private void g() {
        double d11;
        float f11;
        n nVar;
        n nVar2 = this;
        int iFloor = (int) Math.floor(((Float) nVar2.f69260j.h()).floatValue());
        n4.a aVar = nVar2.f69262l;
        double radians = Math.toRadians((aVar == null ? 0.0d : ((Float) aVar.h()).floatValue()) - 90.0d);
        double d12 = iFloor;
        float fFloatValue = ((Float) nVar2.f69266p.h()).floatValue() / 100.0f;
        float fFloatValue2 = ((Float) nVar2.f69264n.h()).floatValue();
        double d13 = fFloatValue2;
        float fCos = (float) (Math.cos(radians) * d13);
        float fSin = (float) (Math.sin(radians) * d13);
        nVar2.f69251a.moveTo(fCos, fSin);
        double d14 = (float) (6.283185307179586d / d12);
        double dCeil = Math.ceil(d12);
        double d15 = radians + d14;
        int i11 = 0;
        while (true) {
            double d16 = i11;
            if (d16 >= dCeil) {
                n nVar3 = nVar2;
                PointF pointF = (PointF) nVar3.f69261k.h();
                nVar3.f69251a.offset(pointF.x, pointF.y);
                nVar3.f69251a.close();
                return;
            }
            int i12 = i11;
            float fCos2 = (float) (d13 * Math.cos(d15));
            double d17 = d14;
            float fSin2 = (float) (d13 * Math.sin(d15));
            if (fFloatValue != 0.0f) {
                d11 = d13;
                double dAtan2 = (float) (Math.atan2(fSin, fCos) - 1.5707963267948966d);
                float fCos3 = (float) Math.cos(dAtan2);
                float fSin3 = (float) Math.sin(dAtan2);
                f11 = fSin2;
                double dAtan3 = (float) (Math.atan2(fSin2, fCos2) - 1.5707963267948966d);
                float f12 = fFloatValue2 * fFloatValue * 0.25f;
                float f13 = fCos3 * f12;
                float f14 = fSin3 * f12;
                float fCos4 = ((float) Math.cos(dAtan3)) * f12;
                float fSin4 = f12 * ((float) Math.sin(dAtan3));
                if (d16 == dCeil - 1.0d) {
                    nVar = this;
                    nVar.f69252b.reset();
                    nVar.f69252b.moveTo(fCos, fSin);
                    float f15 = fCos - f13;
                    float f16 = fSin - f14;
                    float f17 = fCos2 + fCos4;
                    float f18 = fSin4 + f11;
                    nVar.f69252b.cubicTo(f15, f16, f17, f18, fCos2, f11);
                    nVar.f69253c.setPath(nVar.f69252b, false);
                    PathMeasure pathMeasure = nVar.f69253c;
                    pathMeasure.getPosTan(pathMeasure.getLength() * 0.9999f, nVar.f69254d, null);
                    Path path = nVar.f69251a;
                    float[] fArr = nVar.f69254d;
                    path.cubicTo(f15, f16, f17, f18, fArr[0], fArr[1]);
                } else {
                    nVar = this;
                    nVar.f69251a.cubicTo(fCos - f13, fSin - f14, fCos2 + fCos4, f11 + fSin4, fCos2, f11);
                }
            } else {
                d11 = d13;
                f11 = fSin2;
                nVar = nVar2;
                if (d16 != dCeil - 1.0d) {
                    nVar.f69251a.lineTo(fCos2, f11);
                }
                fSin = f11;
                fCos = fCos2;
                d14 = d17;
                i11 = i12 + 1;
                nVar2 = nVar;
                d13 = d11;
            }
            d15 += d17;
            fSin = f11;
            fCos = fCos2;
            d14 = d17;
            i11 = i12 + 1;
            nVar2 = nVar;
            d13 = d11;
        }
    }

    private void i() {
        float f11;
        float f12;
        double d11;
        float fSin;
        float f13;
        float f14;
        float f15;
        float fFloatValue = ((Float) this.f69260j.h()).floatValue();
        n4.a aVar = this.f69262l;
        double radians = Math.toRadians((aVar == null ? 0.0d : ((Float) aVar.h()).floatValue()) - 90.0d);
        double d12 = fFloatValue;
        float f16 = (float) (6.283185307179586d / d12);
        if (this.f69259i) {
            f16 *= -1.0f;
        }
        float f17 = f16 / 2.0f;
        float f18 = fFloatValue - ((int) fFloatValue);
        if (f18 != 0.0f) {
            radians += (double) ((1.0f - f18) * f17);
        }
        float fFloatValue2 = ((Float) this.f69264n.h()).floatValue();
        float fFloatValue3 = ((Float) this.f69263m.h()).floatValue();
        n4.a aVar2 = this.f69265o;
        float fFloatValue4 = aVar2 != null ? ((Float) aVar2.h()).floatValue() / 100.0f : 0.0f;
        n4.a aVar3 = this.f69266p;
        float fFloatValue5 = aVar3 != null ? ((Float) aVar3.h()).floatValue() / 100.0f : 0.0f;
        if (f18 != 0.0f) {
            f13 = ((fFloatValue2 - fFloatValue3) * f18) + fFloatValue3;
            double d13 = f13;
            float fCos = (float) (d13 * Math.cos(radians));
            fSin = (float) (d13 * Math.sin(radians));
            this.f69251a.moveTo(fCos, fSin);
            d11 = radians + ((double) ((f16 * f18) / 2.0f));
            f11 = fCos;
            f12 = f17;
        } else {
            double d14 = fFloatValue2;
            float fCos2 = (float) (Math.cos(radians) * d14);
            float fSin2 = (float) (d14 * Math.sin(radians));
            this.f69251a.moveTo(fCos2, fSin2);
            f11 = fCos2;
            f12 = f17;
            d11 = radians + ((double) f12);
            fSin = fSin2;
            f13 = 0.0f;
        }
        double dCeil = Math.ceil(d12) * 2.0d;
        int i11 = 0;
        float f19 = f12;
        float f20 = f11;
        boolean z10 = false;
        while (true) {
            double d15 = i11;
            if (d15 >= dCeil) {
                PointF pointF = (PointF) this.f69261k.h();
                this.f69251a.offset(pointF.x, pointF.y);
                this.f69251a.close();
                return;
            }
            float f21 = z10 ? fFloatValue2 : fFloatValue3;
            float f22 = (f13 == 0.0f || d15 != dCeil - 2.0d) ? f19 : (f16 * f18) / 2.0f;
            if (f13 == 0.0f || d15 != dCeil - 1.0d) {
                f13 = f21;
            }
            double d16 = f13;
            double d17 = dCeil;
            float fCos3 = (float) (d16 * Math.cos(d11));
            float fSin3 = (float) (d16 * Math.sin(d11));
            if (fFloatValue4 == 0.0f && fFloatValue5 == 0.0f) {
                this.f69251a.lineTo(fCos3, fSin3);
                f14 = fFloatValue4;
                f15 = fFloatValue5;
            } else {
                f14 = fFloatValue4;
                double dAtan2 = (float) (Math.atan2(fSin, f20) - 1.5707963267948966d);
                float fCos4 = (float) Math.cos(dAtan2);
                float fSin4 = (float) Math.sin(dAtan2);
                f15 = fFloatValue5;
                double dAtan3 = (float) (Math.atan2(fSin3, fCos3) - 1.5707963267948966d);
                float fCos5 = (float) Math.cos(dAtan3);
                float fSin5 = (float) Math.sin(dAtan3);
                float f23 = z10 ? f14 : f15;
                float f24 = z10 ? f15 : f14;
                float f25 = (z10 ? fFloatValue3 : fFloatValue2) * f23 * 0.47829f;
                float f26 = fCos4 * f25;
                float f27 = f25 * fSin4;
                float f28 = (z10 ? fFloatValue2 : fFloatValue3) * f24 * 0.47829f;
                float f29 = fCos5 * f28;
                float f30 = f28 * fSin5;
                if (f18 != 0.0f) {
                    if (i11 == 0) {
                        f26 *= f18;
                        f27 *= f18;
                    } else if (d15 == d17 - 1.0d) {
                        f29 *= f18;
                        f30 *= f18;
                    }
                }
                this.f69251a.cubicTo(f20 - f26, fSin - f27, fCos3 + f29, fSin3 + f30, fCos3, fSin3);
            }
            d11 += (double) f22;
            z10 = !z10;
            i11++;
            f20 = fCos3;
            fSin = fSin3;
            fFloatValue5 = f15;
            fFloatValue4 = f14;
            f13 = f13;
            f16 = f16;
            dCeil = d17;
        }
    }

    private void j() {
        this.f69268r = false;
        this.f69256f.invalidateSelf();
    }

    @Override // n4.a.b
    public void a() {
        j();
    }

    @Override // p4.e
    public void b(Object obj, w4.c cVar) {
        n4.a aVar;
        n4.a aVar2;
        if (obj == p0.f17925w) {
            this.f69260j.o(cVar);
            return;
        }
        if (obj == p0.f17926x) {
            this.f69262l.o(cVar);
            return;
        }
        if (obj == p0.f17916n) {
            this.f69261k.o(cVar);
            return;
        }
        if (obj == p0.f17927y && (aVar2 = this.f69263m) != null) {
            aVar2.o(cVar);
            return;
        }
        if (obj == p0.f17928z) {
            this.f69264n.o(cVar);
            return;
        }
        if (obj == p0.A && (aVar = this.f69265o) != null) {
            aVar.o(cVar);
        } else if (obj == p0.B) {
            this.f69266p.o(cVar);
        }
    }

    @Override // m4.c
    public void c(List list, List list2) {
        for (int i11 = 0; i11 < list.size(); i11++) {
            c cVar = (c) list.get(i11);
            if (cVar instanceof u) {
                u uVar = (u) cVar;
                if (uVar.j() == ShapeTrimPath.Type.SIMULTANEOUSLY) {
                    this.f69267q.a(uVar);
                    uVar.b(this);
                }
            }
        }
    }

    @Override // p4.e
    public void d(p4.d dVar, int i11, List list, p4.d dVar2) {
        v4.k.k(dVar, i11, list, dVar2, this);
    }

    @Override // m4.c
    public String getName() {
        return this.f69255e;
    }

    @Override // m4.m
    public Path getPath() {
        if (this.f69268r) {
            return this.f69251a;
        }
        this.f69251a.reset();
        if (this.f69258h) {
            this.f69268r = true;
            return this.f69251a;
        }
        int i11 = a.f69269a[this.f69257g.ordinal()];
        if (i11 == 1) {
            i();
        } else if (i11 == 2) {
            g();
        }
        this.f69251a.close();
        this.f69267q.b(this.f69251a);
        this.f69268r = true;
        return this.f69251a;
    }
}
