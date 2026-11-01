package com.google.firebase.crashlytics.internal.model;

/* JADX INFO: loaded from: classes4.dex */
final class s extends CrashlyticsReport.e.d.a.b.AbstractC0430e.AbstractC0432b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f31652a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f31653b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f31654c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f31655d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f31656e;

    static final class b extends CrashlyticsReport.e.d.a.b.AbstractC0430e.AbstractC0432b.AbstractC0433a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private long f31657a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f31658b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f31659c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private long f31660d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f31661e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private byte f31662f;

        b() {
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.a.b.AbstractC0430e.AbstractC0432b.AbstractC0433a
        public CrashlyticsReport.e.d.a.b.AbstractC0430e.AbstractC0432b a() {
            String str;
            if (this.f31662f == 7 && (str = this.f31658b) != null) {
                return new s(this.f31657a, str, this.f31659c, this.f31660d, this.f31661e);
            }
            StringBuilder sb2 = new StringBuilder();
            if ((this.f31662f & 1) == 0) {
                sb2.append(" pc");
            }
            if (this.f31658b == null) {
                sb2.append(" symbol");
            }
            if ((this.f31662f & 2) == 0) {
                sb2.append(" offset");
            }
            if ((this.f31662f & 4) == 0) {
                sb2.append(" importance");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.a.b.AbstractC0430e.AbstractC0432b.AbstractC0433a
        public CrashlyticsReport.e.d.a.b.AbstractC0430e.AbstractC0432b.AbstractC0433a b(String str) {
            this.f31659c = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.a.b.AbstractC0430e.AbstractC0432b.AbstractC0433a
        public CrashlyticsReport.e.d.a.b.AbstractC0430e.AbstractC0432b.AbstractC0433a c(int i11) {
            this.f31661e = i11;
            this.f31662f = (byte) (this.f31662f | 4);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.a.b.AbstractC0430e.AbstractC0432b.AbstractC0433a
        public CrashlyticsReport.e.d.a.b.AbstractC0430e.AbstractC0432b.AbstractC0433a d(long j11) {
            this.f31660d = j11;
            this.f31662f = (byte) (this.f31662f | 2);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.a.b.AbstractC0430e.AbstractC0432b.AbstractC0433a
        public CrashlyticsReport.e.d.a.b.AbstractC0430e.AbstractC0432b.AbstractC0433a e(long j11) {
            this.f31657a = j11;
            this.f31662f = (byte) (this.f31662f | 1);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.a.b.AbstractC0430e.AbstractC0432b.AbstractC0433a
        public CrashlyticsReport.e.d.a.b.AbstractC0430e.AbstractC0432b.AbstractC0433a f(String str) {
            if (str == null) {
                throw new NullPointerException("Null symbol");
            }
            this.f31658b = str;
            return this;
        }
    }

    private s(long j11, String str, String str2, long j12, int i11) {
        this.f31652a = j11;
        this.f31653b = str;
        this.f31654c = str2;
        this.f31655d = j12;
        this.f31656e = i11;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.a.b.AbstractC0430e.AbstractC0432b
    public String b() {
        return this.f31654c;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.a.b.AbstractC0430e.AbstractC0432b
    public int c() {
        return this.f31656e;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.a.b.AbstractC0430e.AbstractC0432b
    public long d() {
        return this.f31655d;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.a.b.AbstractC0430e.AbstractC0432b
    public long e() {
        return this.f31652a;
    }

    public boolean equals(Object obj) {
        String str;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.e.d.a.b.AbstractC0430e.AbstractC0432b)) {
            return false;
        }
        CrashlyticsReport.e.d.a.b.AbstractC0430e.AbstractC0432b abstractC0432b = (CrashlyticsReport.e.d.a.b.AbstractC0430e.AbstractC0432b) obj;
        return this.f31652a == abstractC0432b.e() && this.f31653b.equals(abstractC0432b.f()) && ((str = this.f31654c) != null ? str.equals(abstractC0432b.b()) : abstractC0432b.b() == null) && this.f31655d == abstractC0432b.d() && this.f31656e == abstractC0432b.c();
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.a.b.AbstractC0430e.AbstractC0432b
    public String f() {
        return this.f31653b;
    }

    public int hashCode() {
        long j11 = this.f31652a;
        int iHashCode = (((((int) (j11 ^ (j11 >>> 32))) ^ 1000003) * 1000003) ^ this.f31653b.hashCode()) * 1000003;
        String str = this.f31654c;
        int iHashCode2 = (iHashCode ^ (str == null ? 0 : str.hashCode())) * 1000003;
        long j12 = this.f31655d;
        return ((iHashCode2 ^ ((int) ((j12 >>> 32) ^ j12))) * 1000003) ^ this.f31656e;
    }

    public String toString() {
        return "Frame{pc=" + this.f31652a + ", symbol=" + this.f31653b + ", file=" + this.f31654c + ", offset=" + this.f31655d + ", importance=" + this.f31656e + "}";
    }
}
