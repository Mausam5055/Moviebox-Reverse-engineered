package n4;

import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;

/* JADX INFO: loaded from: classes2.dex */
public class c implements n4.a.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.airbnb.lottie.model.layer.a f70190a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final n4.a.b f70191b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final n4.a f70192c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final d f70193d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final d f70194e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final d f70195f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final d f70196g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f70197h = Float.NaN;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f70198i = Float.NaN;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private float f70199j = Float.NaN;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f70200k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final float[] f70201l = new float[9];

    class a extends w4.c {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ w4.c f70202d;

        a(w4.c cVar) {
            this.f70202d = cVar;
        }

        @Override // w4.c
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public Float a(w4.b bVar) {
            Float f11 = (Float) this.f70202d.a(bVar);
            if (f11 == null) {
                return null;
            }
            return Float.valueOf(f11.floatValue() * 2.55f);
        }
    }

    public c(n4.a.b bVar, com.airbnb.lottie.model.layer.a aVar, u4.j jVar) {
        this.f70191b = bVar;
        this.f70190a = aVar;
        n4.a aVarA = jVar.a().a();
        this.f70192c = aVarA;
        aVarA.a(this);
        aVar.i(aVarA);
        d dVarA = jVar.d().a();
        this.f70193d = dVarA;
        dVarA.a(this);
        aVar.i(dVarA);
        d dVarA2 = jVar.b().a();
        this.f70194e = dVarA2;
        dVarA2.a(this);
        aVar.i(dVarA2);
        d dVarA3 = jVar.c().a();
        this.f70195f = dVarA3;
        dVarA3.a(this);
        aVar.i(dVarA3);
        d dVarA4 = jVar.e().a();
        this.f70196g = dVarA4;
        dVarA4.a(this);
        aVar.i(dVarA4);
    }

    @Override // n4.a.b
    public void a() {
        this.f70191b.a();
    }

    public void b(Paint paint, Matrix matrix, int i11) {
        float fQ = this.f70194e.q() * 0.017453292f;
        float fFloatValue = ((Float) this.f70195f.h()).floatValue();
        double d11 = fQ;
        float fSin = ((float) Math.sin(d11)) * fFloatValue;
        float fCos = ((float) Math.cos(d11 + 3.141592653589793d)) * fFloatValue;
        this.f70190a.f17881x.f().getValues(this.f70201l);
        float[] fArr = this.f70201l;
        float f11 = fArr[0];
        float f12 = fArr[4];
        matrix.getValues(fArr);
        float[] fArr2 = this.f70201l;
        float f13 = fArr2[0] / f11;
        float f14 = fSin * f13;
        float f15 = fCos * (fArr2[4] / f12);
        int iIntValue = ((Integer) this.f70192c.h()).intValue();
        int iArgb = Color.argb(Math.round((((Float) this.f70193d.h()).floatValue() * i11) / 255.0f), Color.red(iIntValue), Color.green(iIntValue), Color.blue(iIntValue));
        float fMax = Math.max(((Float) this.f70196g.h()).floatValue() * f13, Float.MIN_VALUE);
        if (this.f70197h == fMax && this.f70198i == f14 && this.f70199j == f15 && this.f70200k == iArgb) {
            return;
        }
        this.f70197h = fMax;
        this.f70198i = f14;
        this.f70199j = f15;
        this.f70200k = iArgb;
        paint.setShadowLayer(fMax, f14, f15, iArgb);
    }

    public void c(w4.c cVar) {
        this.f70192c.o(cVar);
    }

    public void d(w4.c cVar) {
        this.f70194e.o(cVar);
    }

    public void e(w4.c cVar) {
        this.f70195f.o(cVar);
    }

    public void f(w4.c cVar) {
        if (cVar == null) {
            this.f70193d.o(null);
        } else {
            this.f70193d.o(new a(cVar));
        }
    }

    public void g(w4.c cVar) {
        this.f70196g.o(cVar);
    }
}
