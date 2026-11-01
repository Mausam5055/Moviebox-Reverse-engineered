package com.google.firebase.crashlytics.internal.model;

/* JADX INFO: loaded from: classes4.dex */
final class o extends CrashlyticsReport.e.d.a.b.AbstractC0424a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f31618a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f31619b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f31620c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f31621d;

    static final class b extends CrashlyticsReport.e.d.a.b.AbstractC0424a.AbstractC0425a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private long f31622a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private long f31623b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f31624c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f31625d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private byte f31626e;

        b() {
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.a.b.AbstractC0424a.AbstractC0425a
        public CrashlyticsReport.e.d.a.b.AbstractC0424a a() {
            String str;
            if (this.f31626e == 3 && (str = this.f31624c) != null) {
                return new o(this.f31622a, this.f31623b, str, this.f31625d);
            }
            StringBuilder sb2 = new StringBuilder();
            if ((this.f31626e & 1) == 0) {
                sb2.append(" baseAddress");
            }
            if ((this.f31626e & 2) == 0) {
                sb2.append(" size");
            }
            if (this.f31624c == null) {
                sb2.append(" name");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.a.b.AbstractC0424a.AbstractC0425a
        public CrashlyticsReport.e.d.a.b.AbstractC0424a.AbstractC0425a b(long j11) {
            this.f31622a = j11;
            this.f31626e = (byte) (this.f31626e | 1);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.a.b.AbstractC0424a.AbstractC0425a
        public CrashlyticsReport.e.d.a.b.AbstractC0424a.AbstractC0425a c(String str) {
            if (str == null) {
                throw new NullPointerException("Null name");
            }
            this.f31624c = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.a.b.AbstractC0424a.AbstractC0425a
        public CrashlyticsReport.e.d.a.b.AbstractC0424a.AbstractC0425a d(long j11) {
            this.f31623b = j11;
            this.f31626e = (byte) (this.f31626e | 2);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.a.b.AbstractC0424a.AbstractC0425a
        public CrashlyticsReport.e.d.a.b.AbstractC0424a.AbstractC0425a e(String str) {
            this.f31625d = str;
            return this;
        }
    }

    private o(long j11, long j12, String str, String str2) {
        this.f31618a = j11;
        this.f31619b = j12;
        this.f31620c = str;
        this.f31621d = str2;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.a.b.AbstractC0424a
    public long b() {
        return this.f31618a;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.a.b.AbstractC0424a
    public String c() {
        return this.f31620c;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.a.b.AbstractC0424a
    public long d() {
        return this.f31619b;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.a.b.AbstractC0424a
    public String e() {
        return this.f31621d;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.e.d.a.b.AbstractC0424a)) {
            return false;
        }
        CrashlyticsReport.e.d.a.b.AbstractC0424a abstractC0424a = (CrashlyticsReport.e.d.a.b.AbstractC0424a) obj;
        if (this.f31618a == abstractC0424a.b() && this.f31619b == abstractC0424a.d() && this.f31620c.equals(abstractC0424a.c())) {
            String str = this.f31621d;
            if (str == null) {
                if (abstractC0424a.e() == null) {
                    return true;
                }
            } else if (str.equals(abstractC0424a.e())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        long j11 = this.f31618a;
        long j12 = this.f31619b;
        int iHashCode = (((((((int) (j11 ^ (j11 >>> 32))) ^ 1000003) * 1000003) ^ ((int) ((j12 >>> 32) ^ j12))) * 1000003) ^ this.f31620c.hashCode()) * 1000003;
        String str = this.f31621d;
        return iHashCode ^ (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        return "BinaryImage{baseAddress=" + this.f31618a + ", size=" + this.f31619b + ", name=" + this.f31620c + ", uuid=" + this.f31621d + "}";
    }
}
