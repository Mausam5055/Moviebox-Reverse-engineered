package m4;

import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.model.content.ShapeTrimPath;
import com.airbnb.lottie.p0;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class o implements n4.a.b, k, m {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f69272c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f69273d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final LottieDrawable f69274e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final n4.a f69275f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final n4.a f69276g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final n4.a f69277h;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f69280k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Path f69270a = new Path();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final RectF f69271b = new RectF();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final b f69278i = new b();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private n4.a f69279j = null;

    public o(LottieDrawable lottieDrawable, com.airbnb.lottie.model.layer.a aVar, r4.f fVar) {
        this.f69272c = fVar.c();
        this.f69273d = fVar.f();
        this.f69274e = lottieDrawable;
        n4.a aVarA = fVar.d().a();
        this.f69275f = aVarA;
        n4.a aVarA2 = fVar.e().a();
        this.f69276g = aVarA2;
        n4.d dVarA = fVar.b().a();
        this.f69277h = dVarA;
        aVar.i(aVarA);
        aVar.i(aVarA2);
        aVar.i(dVarA);
        aVarA.a(this);
        aVarA2.a(this);
        dVarA.a(this);
    }

    private void g() {
        this.f69280k = false;
        this.f69274e.invalidateSelf();
    }

    @Override // n4.a.b
    public void a() {
        g();
    }

    @Override // p4.e
    public void b(Object obj, w4.c cVar) {
        if (obj == p0.f17914l) {
            this.f69276g.o(cVar);
        } else if (obj == p0.f17916n) {
            this.f69275f.o(cVar);
        } else if (obj == p0.f17915m) {
            this.f69277h.o(cVar);
        }
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0025  */
    /* JADX WARN: Code duplicated, block: B:12:0x0029  */
    /* JADX WARN: Code duplicated, block: B:18:0x0031 A[SYNTHETIC] */
    @Override // m4.c
    public void c(List list, List list2) {
        for (int i11 = 0; i11 < list.size(); i11++) {
            c cVar = (c) list.get(i11);
            if (cVar instanceof u) {
                u uVar = (u) cVar;
                if (uVar.j() == ShapeTrimPath.Type.SIMULTANEOUSLY) {
                    this.f69278i.a(uVar);
                    uVar.b(this);
                } else if (cVar instanceof q) {
                    this.f69279j = ((q) cVar).g();
                }
            } else if (cVar instanceof q) {
                this.f69279j = ((q) cVar).g();
            }
        }
    }

    @Override // p4.e
    public void d(p4.d dVar, int i11, List list, p4.d dVar2) {
        v4.k.k(dVar, i11, list, dVar2, this);
    }

    @Override // m4.c
    public String getName() {
        return this.f69272c;
    }

    @Override // m4.m
    public Path getPath() {
        n4.a aVar;
        if (this.f69280k) {
            return this.f69270a;
        }
        this.f69270a.reset();
        if (this.f69273d) {
            this.f69280k = true;
            return this.f69270a;
        }
        PointF pointF = (PointF) this.f69276g.h();
        float f11 = pointF.x / 2.0f;
        float f12 = pointF.y / 2.0f;
        n4.a aVar2 = this.f69277h;
        float fQ = aVar2 == null ? 0.0f : ((n4.d) aVar2).q();
        if (fQ == 0.0f && (aVar = this.f69279j) != null) {
            fQ = Math.min(((Float) aVar.h()).floatValue(), Math.min(f11, f12));
        }
        float fMin = Math.min(f11, f12);
        if (fQ > fMin) {
            fQ = fMin;
        }
        PointF pointF2 = (PointF) this.f69275f.h();
        this.f69270a.moveTo(pointF2.x + f11, (pointF2.y - f12) + fQ);
        this.f69270a.lineTo(pointF2.x + f11, (pointF2.y + f12) - fQ);
        if (fQ > 0.0f) {
            RectF rectF = this.f69271b;
            float f13 = pointF2.x;
            float f14 = fQ * 2.0f;
            float f15 = pointF2.y;
            rectF.set((f13 + f11) - f14, (f15 + f12) - f14, f13 + f11, f15 + f12);
            this.f69270a.arcTo(this.f69271b, 0.0f, 90.0f, false);
        }
        this.f69270a.lineTo((pointF2.x - f11) + fQ, pointF2.y + f12);
        if (fQ > 0.0f) {
            RectF rectF2 = this.f69271b;
            float f16 = pointF2.x;
            float f17 = pointF2.y;
            float f18 = fQ * 2.0f;
            rectF2.set(f16 - f11, (f17 + f12) - f18, (f16 - f11) + f18, f17 + f12);
            this.f69270a.arcTo(this.f69271b, 90.0f, 90.0f, false);
        }
        this.f69270a.lineTo(pointF2.x - f11, (pointF2.y - f12) + fQ);
        if (fQ > 0.0f) {
            RectF rectF3 = this.f69271b;
            float f19 = pointF2.x;
            float f20 = pointF2.y;
            float f21 = fQ * 2.0f;
            rectF3.set(f19 - f11, f20 - f12, (f19 - f11) + f21, (f20 - f12) + f21);
            this.f69270a.arcTo(this.f69271b, 180.0f, 90.0f, false);
        }
        this.f69270a.lineTo((pointF2.x + f11) - fQ, pointF2.y - f12);
        if (fQ > 0.0f) {
            RectF rectF4 = this.f69271b;
            float f22 = pointF2.x;
            float f23 = fQ * 2.0f;
            float f24 = pointF2.y;
            rectF4.set((f22 + f11) - f23, f24 - f12, f22 + f11, (f24 - f12) + f23);
            this.f69270a.arcTo(this.f69271b, 270.0f, 90.0f, false);
        }
        this.f69270a.close();
        this.f69278i.b(this.f69270a);
        this.f69280k = true;
        return this.f69270a;
    }
}
