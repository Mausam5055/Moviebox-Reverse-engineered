package m4;

import android.graphics.Path;
import android.graphics.PointF;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.model.content.ShapeTrimPath;
import com.airbnb.lottie.p0;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class f implements m, n4.a.b, k {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f69194b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final LottieDrawable f69195c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final n4.a f69196d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final n4.a f69197e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final r4.b f69198f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f69200h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Path f69193a = new Path();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final b f69199g = new b();

    public f(LottieDrawable lottieDrawable, com.airbnb.lottie.model.layer.a aVar, r4.b bVar) {
        this.f69194b = bVar.b();
        this.f69195c = lottieDrawable;
        n4.a aVarA = bVar.d().a();
        this.f69196d = aVarA;
        n4.a aVarA2 = bVar.c().a();
        this.f69197e = aVarA2;
        this.f69198f = bVar;
        aVar.i(aVarA);
        aVar.i(aVarA2);
        aVarA.a(this);
        aVarA2.a(this);
    }

    private void g() {
        this.f69200h = false;
        this.f69195c.invalidateSelf();
    }

    @Override // n4.a.b
    public void a() {
        g();
    }

    @Override // p4.e
    public void b(Object obj, w4.c cVar) {
        if (obj == p0.f17913k) {
            this.f69196d.o(cVar);
        } else if (obj == p0.f17916n) {
            this.f69197e.o(cVar);
        }
    }

    @Override // m4.c
    public void c(List list, List list2) {
        for (int i11 = 0; i11 < list.size(); i11++) {
            c cVar = (c) list.get(i11);
            if (cVar instanceof u) {
                u uVar = (u) cVar;
                if (uVar.j() == ShapeTrimPath.Type.SIMULTANEOUSLY) {
                    this.f69199g.a(uVar);
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
        return this.f69194b;
    }

    @Override // m4.m
    public Path getPath() {
        if (this.f69200h) {
            return this.f69193a;
        }
        this.f69193a.reset();
        if (this.f69198f.e()) {
            this.f69200h = true;
            return this.f69193a;
        }
        PointF pointF = (PointF) this.f69196d.h();
        float f11 = pointF.x / 2.0f;
        float f12 = pointF.y / 2.0f;
        float f13 = f11 * 0.55228f;
        float f14 = 0.55228f * f12;
        this.f69193a.reset();
        if (this.f69198f.f()) {
            float f15 = -f12;
            this.f69193a.moveTo(0.0f, f15);
            float f16 = 0.0f - f13;
            float f17 = -f11;
            float f18 = 0.0f - f14;
            this.f69193a.cubicTo(f16, f15, f17, f18, f17, 0.0f);
            float f19 = f14 + 0.0f;
            this.f69193a.cubicTo(f17, f19, f16, f12, 0.0f, f12);
            float f20 = f13 + 0.0f;
            this.f69193a.cubicTo(f20, f12, f11, f19, f11, 0.0f);
            this.f69193a.cubicTo(f11, f18, f20, f15, 0.0f, f15);
        } else {
            float f21 = -f12;
            this.f69193a.moveTo(0.0f, f21);
            float f22 = f13 + 0.0f;
            float f23 = 0.0f - f14;
            this.f69193a.cubicTo(f22, f21, f11, f23, f11, 0.0f);
            float f24 = f14 + 0.0f;
            this.f69193a.cubicTo(f11, f24, f22, f12, 0.0f, f12);
            float f25 = 0.0f - f13;
            float f26 = -f11;
            this.f69193a.cubicTo(f25, f12, f26, f24, f26, 0.0f);
            this.f69193a.cubicTo(f26, f23, f25, f21, 0.0f, f21);
        }
        PointF pointF2 = (PointF) this.f69197e.h();
        this.f69193a.offset(pointF2.x, pointF2.y);
        this.f69193a.close();
        this.f69199g.b(this.f69193a);
        this.f69200h = true;
        return this.f69193a;
    }
}
