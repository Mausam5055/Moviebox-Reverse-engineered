package com.google.android.datatransport.runtime;

/* JADX INFO: loaded from: classes3.dex */
final class c extends n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final o f24373a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f24374b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final r8.d f24375c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final r8.g f24376d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final r8.c f24377e;

    static final class b extends n.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private o f24378a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f24379b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private r8.d f24380c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private r8.g f24381d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private r8.c f24382e;

        b() {
        }

        @Override // com.google.android.datatransport.runtime.n.a
        public n a() {
            String str = "";
            if (this.f24378a == null) {
                str = " transportContext";
            }
            if (this.f24379b == null) {
                str = str + " transportName";
            }
            if (this.f24380c == null) {
                str = str + " event";
            }
            if (this.f24381d == null) {
                str = str + " transformer";
            }
            if (this.f24382e == null) {
                str = str + " encoding";
            }
            if (str.isEmpty()) {
                return new c(this.f24378a, this.f24379b, this.f24380c, this.f24381d, this.f24382e);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.google.android.datatransport.runtime.n.a
        n.a b(r8.c cVar) {
            if (cVar == null) {
                throw new NullPointerException("Null encoding");
            }
            this.f24382e = cVar;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.n.a
        n.a c(r8.d dVar) {
            if (dVar == null) {
                throw new NullPointerException("Null event");
            }
            this.f24380c = dVar;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.n.a
        n.a d(r8.g gVar) {
            if (gVar == null) {
                throw new NullPointerException("Null transformer");
            }
            this.f24381d = gVar;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.n.a
        public n.a e(o oVar) {
            if (oVar == null) {
                throw new NullPointerException("Null transportContext");
            }
            this.f24378a = oVar;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.n.a
        public n.a f(String str) {
            if (str == null) {
                throw new NullPointerException("Null transportName");
            }
            this.f24379b = str;
            return this;
        }
    }

    private c(o oVar, String str, r8.d dVar, r8.g gVar, r8.c cVar) {
        this.f24373a = oVar;
        this.f24374b = str;
        this.f24375c = dVar;
        this.f24376d = gVar;
        this.f24377e = cVar;
    }

    @Override // com.google.android.datatransport.runtime.n
    public r8.c b() {
        return this.f24377e;
    }

    @Override // com.google.android.datatransport.runtime.n
    r8.d c() {
        return this.f24375c;
    }

    @Override // com.google.android.datatransport.runtime.n
    r8.g e() {
        return this.f24376d;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof n)) {
            return false;
        }
        n nVar = (n) obj;
        return this.f24373a.equals(nVar.f()) && this.f24374b.equals(nVar.g()) && this.f24375c.equals(nVar.c()) && this.f24376d.equals(nVar.e()) && this.f24377e.equals(nVar.b());
    }

    @Override // com.google.android.datatransport.runtime.n
    public o f() {
        return this.f24373a;
    }

    @Override // com.google.android.datatransport.runtime.n
    public String g() {
        return this.f24374b;
    }

    public int hashCode() {
        return ((((((((this.f24373a.hashCode() ^ 1000003) * 1000003) ^ this.f24374b.hashCode()) * 1000003) ^ this.f24375c.hashCode()) * 1000003) ^ this.f24376d.hashCode()) * 1000003) ^ this.f24377e.hashCode();
    }

    public String toString() {
        return "SendRequest{transportContext=" + this.f24373a + ", transportName=" + this.f24374b + ", event=" + this.f24375c + ", transformer=" + this.f24376d + ", encoding=" + this.f24377e + "}";
    }
}
