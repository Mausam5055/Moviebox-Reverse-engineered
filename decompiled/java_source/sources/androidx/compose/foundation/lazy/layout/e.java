package androidx.compose.foundation.lazy.layout;

/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f3037b = androidx.compose.runtime.collection.b.f3680d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final androidx.compose.runtime.collection.b f3038a = new androidx.compose.runtime.collection.b(new a[16], 0);

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f3039a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f3040b;

        public a(int i11, int i12) {
            this.f3039a = i11;
            this.f3040b = i12;
            if (i11 < 0) {
                throw new IllegalArgumentException("negative start index");
            }
            if (i12 < i11) {
                throw new IllegalArgumentException("end index greater than start");
            }
        }

        public final int a() {
            return this.f3040b;
        }

        public final int b() {
            return this.f3039a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.f3039a == aVar.f3039a && this.f3040b == aVar.f3040b;
        }

        public int hashCode() {
            return (this.f3039a * 31) + this.f3040b;
        }

        public String toString() {
            return "Interval(start=" + this.f3039a + ", end=" + this.f3040b + ')';
        }
    }

    public final a a(int i11, int i12) {
        a aVar = new a(i11, i12);
        this.f3038a.b(aVar);
        return aVar;
    }

    public final int b() {
        int iA = ((a) this.f3038a.l()).a();
        androidx.compose.runtime.collection.b bVar = this.f3038a;
        int iN = bVar.n();
        if (iN > 0) {
            Object[] objArrM = bVar.m();
            int i11 = 0;
            do {
                a aVar = (a) objArrM[i11];
                if (aVar.a() > iA) {
                    iA = aVar.a();
                }
                i11++;
            } while (i11 < iN);
        }
        return iA;
    }

    public final int c() {
        int iB = ((a) this.f3038a.l()).b();
        androidx.compose.runtime.collection.b bVar = this.f3038a;
        int iN = bVar.n();
        if (iN > 0) {
            Object[] objArrM = bVar.m();
            int i11 = 0;
            do {
                a aVar = (a) objArrM[i11];
                if (aVar.b() < iB) {
                    iB = aVar.b();
                }
                i11++;
            } while (i11 < iN);
        }
        if (iB >= 0) {
            return iB;
        }
        throw new IllegalArgumentException("negative minIndex");
    }

    public final boolean d() {
        return this.f3038a.q();
    }

    public final void e(a aVar) {
        this.f3038a.t(aVar);
    }
}
