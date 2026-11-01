package com.google.firebase.crashlytics.internal.model;

/* JADX INFO: loaded from: classes4.dex */
final class w extends CrashlyticsReport.e.d.AbstractC0436e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final CrashlyticsReport.e.d.AbstractC0436e.b f31687a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f31688b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f31689c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f31690d;

    static final class b extends CrashlyticsReport.e.d.AbstractC0436e.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private CrashlyticsReport.e.d.AbstractC0436e.b f31691a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f31692b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f31693c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private long f31694d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private byte f31695e;

        b() {
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.AbstractC0436e.a
        public CrashlyticsReport.e.d.AbstractC0436e a() {
            CrashlyticsReport.e.d.AbstractC0436e.b bVar;
            String str;
            String str2;
            if (this.f31695e == 1 && (bVar = this.f31691a) != null && (str = this.f31692b) != null && (str2 = this.f31693c) != null) {
                return new w(bVar, str, str2, this.f31694d);
            }
            StringBuilder sb2 = new StringBuilder();
            if (this.f31691a == null) {
                sb2.append(" rolloutVariant");
            }
            if (this.f31692b == null) {
                sb2.append(" parameterKey");
            }
            if (this.f31693c == null) {
                sb2.append(" parameterValue");
            }
            if ((1 & this.f31695e) == 0) {
                sb2.append(" templateVersion");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.AbstractC0436e.a
        public CrashlyticsReport.e.d.AbstractC0436e.a b(String str) {
            if (str == null) {
                throw new NullPointerException("Null parameterKey");
            }
            this.f31692b = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.AbstractC0436e.a
        public CrashlyticsReport.e.d.AbstractC0436e.a c(String str) {
            if (str == null) {
                throw new NullPointerException("Null parameterValue");
            }
            this.f31693c = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.AbstractC0436e.a
        public CrashlyticsReport.e.d.AbstractC0436e.a d(CrashlyticsReport.e.d.AbstractC0436e.b bVar) {
            if (bVar == null) {
                throw new NullPointerException("Null rolloutVariant");
            }
            this.f31691a = bVar;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.AbstractC0436e.a
        public CrashlyticsReport.e.d.AbstractC0436e.a e(long j11) {
            this.f31694d = j11;
            this.f31695e = (byte) (this.f31695e | 1);
            return this;
        }
    }

    private w(CrashlyticsReport.e.d.AbstractC0436e.b bVar, String str, String str2, long j11) {
        this.f31687a = bVar;
        this.f31688b = str;
        this.f31689c = str2;
        this.f31690d = j11;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.AbstractC0436e
    public String b() {
        return this.f31688b;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.AbstractC0436e
    public String c() {
        return this.f31689c;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.AbstractC0436e
    public CrashlyticsReport.e.d.AbstractC0436e.b d() {
        return this.f31687a;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.AbstractC0436e
    public long e() {
        return this.f31690d;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.e.d.AbstractC0436e)) {
            return false;
        }
        CrashlyticsReport.e.d.AbstractC0436e abstractC0436e = (CrashlyticsReport.e.d.AbstractC0436e) obj;
        return this.f31687a.equals(abstractC0436e.d()) && this.f31688b.equals(abstractC0436e.b()) && this.f31689c.equals(abstractC0436e.c()) && this.f31690d == abstractC0436e.e();
    }

    public int hashCode() {
        int iHashCode = (((((this.f31687a.hashCode() ^ 1000003) * 1000003) ^ this.f31688b.hashCode()) * 1000003) ^ this.f31689c.hashCode()) * 1000003;
        long j11 = this.f31690d;
        return iHashCode ^ ((int) (j11 ^ (j11 >>> 32)));
    }

    public String toString() {
        return "RolloutAssignment{rolloutVariant=" + this.f31687a + ", parameterKey=" + this.f31688b + ", parameterValue=" + this.f31689c + ", templateVersion=" + this.f31690d + "}";
    }
}
