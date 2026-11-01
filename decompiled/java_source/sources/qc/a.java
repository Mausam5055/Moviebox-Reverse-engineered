package qc;

import rc.d;
import rc.e;
import rc.f;
import rc.g;
import rc.h;

/* JADX INFO: loaded from: classes5.dex */
public abstract class a {

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private rc.a f73540a;

        private b() {
        }

        public qc.b a() {
            hz.b.a(this.f73540a, rc.a.class);
            return new c(this.f73540a);
        }

        public b b(rc.a aVar) {
            this.f73540a = (rc.a) hz.b.b(aVar);
            return this;
        }
    }

    private static final class c implements qc.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final c f73541a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private uz.a f73542b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private uz.a f73543c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private uz.a f73544d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private uz.a f73545e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private uz.a f73546f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private uz.a f73547g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private uz.a f73548h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private uz.a f73549i;

        private c(rc.a aVar) {
            this.f73541a = this;
            b(aVar);
        }

        private void b(rc.a aVar) {
            this.f73542b = rc.c.a(aVar);
            this.f73543c = e.a(aVar);
            this.f73544d = d.a(aVar);
            this.f73545e = h.a(aVar);
            this.f73546f = f.a(aVar);
            this.f73547g = rc.b.a(aVar);
            g gVarA = g.a(aVar);
            this.f73548h = gVarA;
            this.f73549i = hz.a.a(pc.g.a(this.f73542b, this.f73543c, this.f73544d, this.f73545e, this.f73546f, this.f73547g, gVarA));
        }

        @Override // qc.b
        public pc.e a() {
            return (pc.e) this.f73549i.get();
        }
    }

    public static b a() {
        return new b();
    }
}
