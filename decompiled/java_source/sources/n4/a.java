package n4;

import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final d f70178c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected w4.c f70180e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final List f70176a = new ArrayList(1);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f70177b = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected float f70179d = 0.0f;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Object f70181f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f70182g = -1.0f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f70183h = -1.0f;

    public interface b {
        void a();
    }

    private static final class c implements d {
        private c() {
        }

        @Override // n4.a.d
        public boolean a(float f11) {
            throw new IllegalStateException("not implemented");
        }

        @Override // n4.a.d
        public w4.a b() {
            throw new IllegalStateException("not implemented");
        }

        @Override // n4.a.d
        public boolean c(float f11) {
            return false;
        }

        @Override // n4.a.d
        public float d() {
            return 0.0f;
        }

        @Override // n4.a.d
        public float e() {
            return 1.0f;
        }

        @Override // n4.a.d
        public boolean isEmpty() {
            return true;
        }
    }

    private interface d {
        boolean a(float f11);

        w4.a b();

        boolean c(float f11);

        float d();

        float e();

        boolean isEmpty();
    }

    private static final class e implements d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List f70184a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private w4.a f70186c = null;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private float f70187d = -1.0f;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private w4.a f70185b = f(0.0f);

        e(List list) {
            this.f70184a = list;
        }

        private w4.a f(float f11) {
            List list = this.f70184a;
            w4.a aVar = (w4.a) list.get(list.size() - 1);
            if (f11 >= aVar.f()) {
                return aVar;
            }
            for (int size = this.f70184a.size() - 2; size >= 1; size--) {
                w4.a aVar2 = (w4.a) this.f70184a.get(size);
                if (this.f70185b != aVar2 && aVar2.a(f11)) {
                    return aVar2;
                }
            }
            return (w4.a) this.f70184a.get(0);
        }

        @Override // n4.a.d
        public boolean a(float f11) {
            w4.a aVar = this.f70186c;
            w4.a aVar2 = this.f70185b;
            if (aVar == aVar2 && this.f70187d == f11) {
                return true;
            }
            this.f70186c = aVar2;
            this.f70187d = f11;
            return false;
        }

        @Override // n4.a.d
        public w4.a b() {
            return this.f70185b;
        }

        @Override // n4.a.d
        public boolean c(float f11) {
            if (this.f70185b.a(f11)) {
                return !this.f70185b.i();
            }
            this.f70185b = f(f11);
            return true;
        }

        @Override // n4.a.d
        public float d() {
            return ((w4.a) this.f70184a.get(0)).f();
        }

        @Override // n4.a.d
        public float e() {
            List list = this.f70184a;
            return ((w4.a) list.get(list.size() - 1)).c();
        }

        @Override // n4.a.d
        public boolean isEmpty() {
            return false;
        }
    }

    private static final class f implements d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final w4.a f70188a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private float f70189b = -1.0f;

        f(List list) {
            this.f70188a = (w4.a) list.get(0);
        }

        @Override // n4.a.d
        public boolean a(float f11) {
            if (this.f70189b == f11) {
                return true;
            }
            this.f70189b = f11;
            return false;
        }

        @Override // n4.a.d
        public w4.a b() {
            return this.f70188a;
        }

        @Override // n4.a.d
        public boolean c(float f11) {
            return !this.f70188a.i();
        }

        @Override // n4.a.d
        public float d() {
            return this.f70188a.f();
        }

        @Override // n4.a.d
        public float e() {
            return this.f70188a.c();
        }

        @Override // n4.a.d
        public boolean isEmpty() {
            return false;
        }
    }

    a(List list) {
        this.f70178c = p(list);
    }

    private float g() {
        if (this.f70182g == -1.0f) {
            this.f70182g = this.f70178c.d();
        }
        return this.f70182g;
    }

    private static d p(List list) {
        if (list.isEmpty()) {
            return new c();
        }
        return list.size() == 1 ? new f(list) : new e(list);
    }

    public void a(b bVar) {
        this.f70176a.add(bVar);
    }

    protected w4.a b() {
        if (com.airbnb.lottie.d.g()) {
            com.airbnb.lottie.d.b("BaseKeyframeAnimation#getCurrentKeyframe");
        }
        w4.a aVarB = this.f70178c.b();
        if (com.airbnb.lottie.d.g()) {
            com.airbnb.lottie.d.c("BaseKeyframeAnimation#getCurrentKeyframe");
        }
        return aVarB;
    }

    float c() {
        if (this.f70183h == -1.0f) {
            this.f70183h = this.f70178c.e();
        }
        return this.f70183h;
    }

    protected float d() {
        Interpolator interpolator;
        w4.a aVarB = b();
        if (aVarB == null || aVarB.i() || (interpolator = aVarB.f77566d) == null) {
            return 0.0f;
        }
        return interpolator.getInterpolation(e());
    }

    float e() {
        if (this.f70177b) {
            return 0.0f;
        }
        w4.a aVarB = b();
        if (aVarB.i()) {
            return 0.0f;
        }
        return (this.f70179d - aVarB.f()) / (aVarB.c() - aVarB.f());
    }

    public float f() {
        return this.f70179d;
    }

    public Object h() {
        float fE = e();
        if (this.f70180e == null && this.f70178c.a(fE)) {
            return this.f70181f;
        }
        w4.a aVarB = b();
        Interpolator interpolator = aVarB.f77567e;
        Object objI = (interpolator == null || aVarB.f77568f == null) ? i(aVarB, d()) : j(aVarB, fE, interpolator.getInterpolation(fE), aVarB.f77568f.getInterpolation(fE));
        this.f70181f = objI;
        return objI;
    }

    abstract Object i(w4.a aVar, float f11);

    protected Object j(w4.a aVar, float f11, float f12, float f13) {
        throw new UnsupportedOperationException("This animation does not support split dimensions!");
    }

    public boolean k() {
        return this.f70180e != null;
    }

    public void l() {
        if (com.airbnb.lottie.d.g()) {
            com.airbnb.lottie.d.b("BaseKeyframeAnimation#notifyListeners");
        }
        for (int i11 = 0; i11 < this.f70176a.size(); i11++) {
            ((b) this.f70176a.get(i11)).a();
        }
        if (com.airbnb.lottie.d.g()) {
            com.airbnb.lottie.d.c("BaseKeyframeAnimation#notifyListeners");
        }
    }

    public void m() {
        this.f70177b = true;
    }

    public void n(float f11) {
        if (com.airbnb.lottie.d.g()) {
            com.airbnb.lottie.d.b("BaseKeyframeAnimation#setProgress");
        }
        if (this.f70178c.isEmpty()) {
            if (com.airbnb.lottie.d.g()) {
                com.airbnb.lottie.d.c("BaseKeyframeAnimation#setProgress");
                return;
            }
            return;
        }
        if (f11 < g()) {
            f11 = g();
        } else if (f11 > c()) {
            f11 = c();
        }
        if (f11 == this.f70179d) {
            if (com.airbnb.lottie.d.g()) {
                com.airbnb.lottie.d.c("BaseKeyframeAnimation#setProgress");
            }
        } else {
            this.f70179d = f11;
            if (this.f70178c.c(f11)) {
                l();
            }
            if (com.airbnb.lottie.d.g()) {
                com.airbnb.lottie.d.c("BaseKeyframeAnimation#setProgress");
            }
        }
    }

    public void o(w4.c cVar) {
        w4.c cVar2 = this.f70180e;
        if (cVar2 != null) {
            cVar2.c(null);
        }
        this.f70180e = cVar;
        if (cVar != null) {
            cVar.c(this);
        }
    }
}
