package androidx.recyclerview.widget;

import androidx.collection.x;

/* JADX INFO: loaded from: classes2.dex */
interface s {

    public static class a implements s {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        long f14415a = 0;

        /* JADX INFO: renamed from: androidx.recyclerview.widget.s$a$a, reason: collision with other inner class name */
        class C0112a implements d {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final x f14416a = new x();

            C0112a() {
            }

            @Override // androidx.recyclerview.widget.s.d
            public long a(long j11) {
                Long lValueOf = (Long) this.f14416a.e(j11);
                if (lValueOf == null) {
                    lValueOf = Long.valueOf(a.this.b());
                    this.f14416a.k(j11, lValueOf);
                }
                return lValueOf.longValue();
            }
        }

        @Override // androidx.recyclerview.widget.s
        public d a() {
            return new C0112a();
        }

        long b() {
            long j11 = this.f14415a;
            this.f14415a = 1 + j11;
            return j11;
        }
    }

    public static class b implements s {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final d f14418a = new a();

        class a implements d {
            a() {
            }

            @Override // androidx.recyclerview.widget.s.d
            public long a(long j11) {
                return -1L;
            }
        }

        @Override // androidx.recyclerview.widget.s
        public d a() {
            return this.f14418a;
        }
    }

    public static class c implements s {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final d f14420a = new a();

        class a implements d {
            a() {
            }

            @Override // androidx.recyclerview.widget.s.d
            public long a(long j11) {
                return j11;
            }
        }

        @Override // androidx.recyclerview.widget.s
        public d a() {
            return this.f14420a;
        }
    }

    public interface d {
        long a(long j11);
    }

    d a();
}
