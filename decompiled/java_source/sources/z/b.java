package z;

import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.h4;
import androidx.compose.ui.graphics.m1;
import y.n;

/* JADX INFO: loaded from: classes2.dex */
public abstract class b {

    public static final class a implements j {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ d f79108a;

        a(d dVar) {
            this.f79108a = dVar;
        }

        @Override // z.j
        public void a(float f11, float f12, float f13, float f14, int i11) {
            this.f79108a.e().a(f11, f12, f13, f14, i11);
        }

        @Override // z.j
        public void b(Path path, int i11) {
            this.f79108a.e().b(path, i11);
        }

        @Override // z.j
        public void c(float f11, float f12) {
            this.f79108a.e().c(f11, f12);
        }

        @Override // z.j
        public void d(float[] fArr) {
            this.f79108a.e().p(fArr);
        }

        @Override // z.j
        public void e(float f11, float f12, long j11) {
            m1 m1VarE = this.f79108a.e();
            m1VarE.c(y.g.m(j11), y.g.n(j11));
            m1VarE.e(f11, f12);
            m1VarE.c(-y.g.m(j11), -y.g.n(j11));
        }

        @Override // z.j
        public void f(float f11, float f12, float f13, float f14) {
            m1 m1VarE = this.f79108a.e();
            d dVar = this.f79108a;
            long jA = n.a(y.m.i(g()) - (f13 + f11), y.m.g(g()) - (f14 + f12));
            if (!(y.m.i(jA) >= 0.0f && y.m.g(jA) >= 0.0f)) {
                h4.a("Width and height must be greater than or equal to zero");
            }
            dVar.f(jA);
            m1VarE.c(f11, f12);
        }

        public long g() {
            return this.f79108a.i();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j b(d dVar) {
        return new a(dVar);
    }
}
