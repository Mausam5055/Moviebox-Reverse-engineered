package com.google.firebase.crashlytics.internal.model;

/* JADX INFO: loaded from: classes4.dex */
final class q extends CrashlyticsReport.e.d.a.b.AbstractC0428d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f31638a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f31639b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f31640c;

    static final class b extends CrashlyticsReport.e.d.a.b.AbstractC0428d.AbstractC0429a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f31641a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f31642b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private long f31643c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private byte f31644d;

        b() {
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.a.b.AbstractC0428d.AbstractC0429a
        public CrashlyticsReport.e.d.a.b.AbstractC0428d a() {
            String str;
            String str2;
            if (this.f31644d == 1 && (str = this.f31641a) != null && (str2 = this.f31642b) != null) {
                return new q(str, str2, this.f31643c);
            }
            StringBuilder sb2 = new StringBuilder();
            if (this.f31641a == null) {
                sb2.append(" name");
            }
            if (this.f31642b == null) {
                sb2.append(" code");
            }
            if ((1 & this.f31644d) == 0) {
                sb2.append(" address");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.a.b.AbstractC0428d.AbstractC0429a
        public CrashlyticsReport.e.d.a.b.AbstractC0428d.AbstractC0429a b(long j11) {
            this.f31643c = j11;
            this.f31644d = (byte) (this.f31644d | 1);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.a.b.AbstractC0428d.AbstractC0429a
        public CrashlyticsReport.e.d.a.b.AbstractC0428d.AbstractC0429a c(String str) {
            if (str == null) {
                throw new NullPointerException("Null code");
            }
            this.f31642b = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.a.b.AbstractC0428d.AbstractC0429a
        public CrashlyticsReport.e.d.a.b.AbstractC0428d.AbstractC0429a d(String str) {
            if (str == null) {
                throw new NullPointerException("Null name");
            }
            this.f31641a = str;
            return this;
        }
    }

    private q(String str, String str2, long j11) {
        this.f31638a = str;
        this.f31639b = str2;
        this.f31640c = j11;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.a.b.AbstractC0428d
    public long b() {
        return this.f31640c;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.a.b.AbstractC0428d
    public String c() {
        return this.f31639b;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.a.b.AbstractC0428d
    public String d() {
        return this.f31638a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.e.d.a.b.AbstractC0428d)) {
            return false;
        }
        CrashlyticsReport.e.d.a.b.AbstractC0428d abstractC0428d = (CrashlyticsReport.e.d.a.b.AbstractC0428d) obj;
        return this.f31638a.equals(abstractC0428d.d()) && this.f31639b.equals(abstractC0428d.c()) && this.f31640c == abstractC0428d.b();
    }

    public int hashCode() {
        int iHashCode = (((this.f31638a.hashCode() ^ 1000003) * 1000003) ^ this.f31639b.hashCode()) * 1000003;
        long j11 = this.f31640c;
        return iHashCode ^ ((int) (j11 ^ (j11 >>> 32)));
    }

    public String toString() {
        return "Signal{name=" + this.f31638a + ", code=" + this.f31639b + ", address=" + this.f31640c + "}";
    }
}
