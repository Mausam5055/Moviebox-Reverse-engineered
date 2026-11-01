package r4;

import android.graphics.PointF;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f74120a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private PointF f74121b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f74122c;

    public i() {
        this.f74120a = new ArrayList();
    }

    public i(PointF pointF, boolean z10, List list) {
        this.f74121b = pointF;
        this.f74122c = z10;
        this.f74120a = new ArrayList(list);
    }

    public List a() {
        return this.f74120a;
    }

    public PointF b() {
        return this.f74121b;
    }

    public void c(i iVar, i iVar2, float f11) {
        if (this.f74121b == null) {
            this.f74121b = new PointF();
        }
        this.f74122c = iVar.d() || iVar2.d();
        if (iVar.a().size() != iVar2.a().size()) {
            v4.f.c("Curves must have the same number of control points. Shape 1: " + iVar.a().size() + "\tShape 2: " + iVar2.a().size());
        }
        int iMin = Math.min(iVar.a().size(), iVar2.a().size());
        if (this.f74120a.size() < iMin) {
            for (int size = this.f74120a.size(); size < iMin; size++) {
                this.f74120a.add(new p4.a());
            }
        } else if (this.f74120a.size() > iMin) {
            for (int size2 = this.f74120a.size() - 1; size2 >= iMin; size2--) {
                List list = this.f74120a;
                list.remove(list.size() - 1);
            }
        }
        PointF pointFB = iVar.b();
        PointF pointFB2 = iVar2.b();
        f(v4.k.i(pointFB.x, pointFB2.x, f11), v4.k.i(pointFB.y, pointFB2.y, f11));
        for (int size3 = this.f74120a.size() - 1; size3 >= 0; size3--) {
            p4.a aVar = (p4.a) iVar.a().get(size3);
            p4.a aVar2 = (p4.a) iVar2.a().get(size3);
            PointF pointFA = aVar.a();
            PointF pointFB3 = aVar.b();
            PointF pointFC = aVar.c();
            PointF pointFA2 = aVar2.a();
            PointF pointFB4 = aVar2.b();
            PointF pointFC2 = aVar2.c();
            ((p4.a) this.f74120a.get(size3)).d(v4.k.i(pointFA.x, pointFA2.x, f11), v4.k.i(pointFA.y, pointFA2.y, f11));
            ((p4.a) this.f74120a.get(size3)).e(v4.k.i(pointFB3.x, pointFB4.x, f11), v4.k.i(pointFB3.y, pointFB4.y, f11));
            ((p4.a) this.f74120a.get(size3)).f(v4.k.i(pointFC.x, pointFC2.x, f11), v4.k.i(pointFC.y, pointFC2.y, f11));
        }
    }

    public boolean d() {
        return this.f74122c;
    }

    public void e(boolean z10) {
        this.f74122c = z10;
    }

    public void f(float f11, float f12) {
        if (this.f74121b == null) {
            this.f74121b = new PointF();
        }
        this.f74121b.set(f11, f12);
    }

    public String toString() {
        return "ShapeData{numCurves=" + this.f74120a.size() + "closed=" + this.f74122c + '}';
    }
}
