package n4;

import android.graphics.PointF;
import java.util.Collections;

/* JADX INFO: loaded from: classes2.dex */
public class n extends a {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final PointF f70222i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final PointF f70223j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final a f70224k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final a f70225l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    protected w4.c f70226m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    protected w4.c f70227n;

    public n(a aVar, a aVar2) {
        super(Collections.emptyList());
        this.f70222i = new PointF();
        this.f70223j = new PointF();
        this.f70224k = aVar;
        this.f70225l = aVar2;
        n(f());
    }

    @Override // n4.a
    public void n(float f11) {
        this.f70224k.n(f11);
        this.f70225l.n(f11);
        this.f70222i.set(((Float) this.f70224k.h()).floatValue(), ((Float) this.f70225l.h()).floatValue());
        for (int i11 = 0; i11 < this.f70176a.size(); i11++) {
            ((a.b) this.f70176a.get(i11)).a();
        }
    }

    @Override // n4.a
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public PointF h() {
        return i(null, 0.0f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // n4.a
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public PointF i(w4.a aVar, float f11) {
        Float f12;
        w4.a aVarB;
        w4.a aVarB2;
        Float f13 = null;
        if (this.f70226m == null || (aVarB2 = this.f70224k.b()) == null) {
            f12 = null;
        } else {
            float fD = this.f70224k.d();
            Float f14 = aVarB2.f77570h;
            w4.c cVar = this.f70226m;
            float f15 = aVarB2.f77569g;
            f12 = (Float) cVar.b(f15, f14 == null ? f15 : f14.floatValue(), (Float) aVarB2.f77564b, (Float) aVarB2.f77565c, f11, f11, fD);
        }
        if (this.f70227n != null && (aVarB = this.f70225l.b()) != null) {
            float fD2 = this.f70225l.d();
            Float f16 = aVarB.f77570h;
            w4.c cVar2 = this.f70227n;
            float f17 = aVarB.f77569g;
            f13 = (Float) cVar2.b(f17, f16 == null ? f17 : f16.floatValue(), (Float) aVarB.f77564b, (Float) aVarB.f77565c, f11, f11, fD2);
        }
        if (f12 == null) {
            this.f70223j.set(this.f70222i.x, 0.0f);
        } else {
            this.f70223j.set(f12.floatValue(), 0.0f);
        }
        if (f13 == null) {
            PointF pointF = this.f70223j;
            pointF.set(pointF.x, this.f70222i.y);
        } else {
            PointF pointF2 = this.f70223j;
            pointF2.set(pointF2.x, f13.floatValue());
        }
        return this.f70223j;
    }

    public void s(w4.c cVar) {
        w4.c cVar2 = this.f70226m;
        if (cVar2 != null) {
            cVar2.c(null);
        }
        this.f70226m = cVar;
        if (cVar != null) {
            cVar.c(this);
        }
    }

    public void t(w4.c cVar) {
        w4.c cVar2 = this.f70227n;
        if (cVar2 != null) {
            cVar2.c(null);
        }
        this.f70227n = cVar;
        if (cVar != null) {
            cVar.c(this);
        }
    }
}
