package com.google.firebase.crashlytics.internal.model;

/* JADX INFO: loaded from: classes4.dex */
final class l extends CrashlyticsReport.e.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f31580a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f31581b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final CrashlyticsReport.e.d.a f31582c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final CrashlyticsReport.e.d.c f31583d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final CrashlyticsReport.e.d.AbstractC0435d f31584e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final CrashlyticsReport.e.d.f f31585f;

    static final class b extends CrashlyticsReport.e.d.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private long f31586a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f31587b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private CrashlyticsReport.e.d.a f31588c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private CrashlyticsReport.e.d.c f31589d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private CrashlyticsReport.e.d.AbstractC0435d f31590e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private CrashlyticsReport.e.d.f f31591f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private byte f31592g;

        b() {
        }

        private b(CrashlyticsReport.e.d dVar) {
            this.f31586a = dVar.f();
            this.f31587b = dVar.g();
            this.f31588c = dVar.b();
            this.f31589d = dVar.c();
            this.f31590e = dVar.d();
            this.f31591f = dVar.e();
            this.f31592g = (byte) 1;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.b
        public CrashlyticsReport.e.d a() {
            String str;
            CrashlyticsReport.e.d.a aVar;
            CrashlyticsReport.e.d.c cVar;
            if (this.f31592g == 1 && (str = this.f31587b) != null && (aVar = this.f31588c) != null && (cVar = this.f31589d) != null) {
                return new l(this.f31586a, str, aVar, cVar, this.f31590e, this.f31591f);
            }
            StringBuilder sb2 = new StringBuilder();
            if ((1 & this.f31592g) == 0) {
                sb2.append(" timestamp");
            }
            if (this.f31587b == null) {
                sb2.append(" type");
            }
            if (this.f31588c == null) {
                sb2.append(" app");
            }
            if (this.f31589d == null) {
                sb2.append(" device");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.b
        public CrashlyticsReport.e.d.b b(CrashlyticsReport.e.d.a aVar) {
            if (aVar == null) {
                throw new NullPointerException("Null app");
            }
            this.f31588c = aVar;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.b
        public CrashlyticsReport.e.d.b c(CrashlyticsReport.e.d.c cVar) {
            if (cVar == null) {
                throw new NullPointerException("Null device");
            }
            this.f31589d = cVar;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.b
        public CrashlyticsReport.e.d.b d(CrashlyticsReport.e.d.AbstractC0435d abstractC0435d) {
            this.f31590e = abstractC0435d;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.b
        public CrashlyticsReport.e.d.b e(CrashlyticsReport.e.d.f fVar) {
            this.f31591f = fVar;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.b
        public CrashlyticsReport.e.d.b f(long j11) {
            this.f31586a = j11;
            this.f31592g = (byte) (this.f31592g | 1);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.b
        public CrashlyticsReport.e.d.b g(String str) {
            if (str == null) {
                throw new NullPointerException("Null type");
            }
            this.f31587b = str;
            return this;
        }
    }

    private l(long j11, String str, CrashlyticsReport.e.d.a aVar, CrashlyticsReport.e.d.c cVar, CrashlyticsReport.e.d.AbstractC0435d abstractC0435d, CrashlyticsReport.e.d.f fVar) {
        this.f31580a = j11;
        this.f31581b = str;
        this.f31582c = aVar;
        this.f31583d = cVar;
        this.f31584e = abstractC0435d;
        this.f31585f = fVar;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d
    public CrashlyticsReport.e.d.a b() {
        return this.f31582c;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d
    public CrashlyticsReport.e.d.c c() {
        return this.f31583d;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d
    public CrashlyticsReport.e.d.AbstractC0435d d() {
        return this.f31584e;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d
    public CrashlyticsReport.e.d.f e() {
        return this.f31585f;
    }

    public boolean equals(Object obj) {
        CrashlyticsReport.e.d.AbstractC0435d abstractC0435d;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.e.d)) {
            return false;
        }
        CrashlyticsReport.e.d dVar = (CrashlyticsReport.e.d) obj;
        if (this.f31580a == dVar.f() && this.f31581b.equals(dVar.g()) && this.f31582c.equals(dVar.b()) && this.f31583d.equals(dVar.c()) && ((abstractC0435d = this.f31584e) != null ? abstractC0435d.equals(dVar.d()) : dVar.d() == null)) {
            CrashlyticsReport.e.d.f fVar = this.f31585f;
            if (fVar == null) {
                if (dVar.e() == null) {
                    return true;
                }
            } else if (fVar.equals(dVar.e())) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d
    public long f() {
        return this.f31580a;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d
    public String g() {
        return this.f31581b;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d
    public CrashlyticsReport.e.d.b h() {
        return new b(this);
    }

    public int hashCode() {
        long j11 = this.f31580a;
        int iHashCode = (((((((((int) (j11 ^ (j11 >>> 32))) ^ 1000003) * 1000003) ^ this.f31581b.hashCode()) * 1000003) ^ this.f31582c.hashCode()) * 1000003) ^ this.f31583d.hashCode()) * 1000003;
        CrashlyticsReport.e.d.AbstractC0435d abstractC0435d = this.f31584e;
        int iHashCode2 = (iHashCode ^ (abstractC0435d == null ? 0 : abstractC0435d.hashCode())) * 1000003;
        CrashlyticsReport.e.d.f fVar = this.f31585f;
        return iHashCode2 ^ (fVar != null ? fVar.hashCode() : 0);
    }

    public String toString() {
        return "Event{timestamp=" + this.f31580a + ", type=" + this.f31581b + ", app=" + this.f31582c + ", device=" + this.f31583d + ", log=" + this.f31584e + ", rollouts=" + this.f31585f + "}";
    }
}
