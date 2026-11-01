package com.google.firebase.crashlytics.internal.model;

/* JADX INFO: loaded from: classes4.dex */
final class i extends CrashlyticsReport.e.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f31547a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f31548b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f31549c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final CrashlyticsReport.e.a.b f31550d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f31551e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f31552f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f31553g;

    static final class b extends CrashlyticsReport.e.a.AbstractC0422a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f31554a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f31555b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f31556c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private CrashlyticsReport.e.a.b f31557d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f31558e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private String f31559f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private String f31560g;

        b() {
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.a.AbstractC0422a
        public CrashlyticsReport.e.a a() {
            String str;
            String str2 = this.f31554a;
            if (str2 != null && (str = this.f31555b) != null) {
                return new i(str2, str, this.f31556c, this.f31557d, this.f31558e, this.f31559f, this.f31560g);
            }
            StringBuilder sb2 = new StringBuilder();
            if (this.f31554a == null) {
                sb2.append(" identifier");
            }
            if (this.f31555b == null) {
                sb2.append(" version");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.a.AbstractC0422a
        public CrashlyticsReport.e.a.AbstractC0422a b(String str) {
            this.f31559f = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.a.AbstractC0422a
        public CrashlyticsReport.e.a.AbstractC0422a c(String str) {
            this.f31560g = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.a.AbstractC0422a
        public CrashlyticsReport.e.a.AbstractC0422a d(String str) {
            this.f31556c = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.a.AbstractC0422a
        public CrashlyticsReport.e.a.AbstractC0422a e(String str) {
            if (str == null) {
                throw new NullPointerException("Null identifier");
            }
            this.f31554a = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.a.AbstractC0422a
        public CrashlyticsReport.e.a.AbstractC0422a f(String str) {
            this.f31558e = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.a.AbstractC0422a
        public CrashlyticsReport.e.a.AbstractC0422a g(String str) {
            if (str == null) {
                throw new NullPointerException("Null version");
            }
            this.f31555b = str;
            return this;
        }
    }

    private i(String str, String str2, String str3, CrashlyticsReport.e.a.b bVar, String str4, String str5, String str6) {
        this.f31547a = str;
        this.f31548b = str2;
        this.f31549c = str3;
        this.f31550d = bVar;
        this.f31551e = str4;
        this.f31552f = str5;
        this.f31553g = str6;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.a
    public String b() {
        return this.f31552f;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.a
    public String c() {
        return this.f31553g;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.a
    public String d() {
        return this.f31549c;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.a
    public String e() {
        return this.f31547a;
    }

    public boolean equals(Object obj) {
        String str;
        CrashlyticsReport.e.a.b bVar;
        String str2;
        String str3;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.e.a)) {
            return false;
        }
        CrashlyticsReport.e.a aVar = (CrashlyticsReport.e.a) obj;
        if (this.f31547a.equals(aVar.e()) && this.f31548b.equals(aVar.h()) && ((str = this.f31549c) != null ? str.equals(aVar.d()) : aVar.d() == null) && ((bVar = this.f31550d) != null ? bVar.equals(aVar.g()) : aVar.g() == null) && ((str2 = this.f31551e) != null ? str2.equals(aVar.f()) : aVar.f() == null) && ((str3 = this.f31552f) != null ? str3.equals(aVar.b()) : aVar.b() == null)) {
            String str4 = this.f31553g;
            if (str4 == null) {
                if (aVar.c() == null) {
                    return true;
                }
            } else if (str4.equals(aVar.c())) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.a
    public String f() {
        return this.f31551e;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.a
    public CrashlyticsReport.e.a.b g() {
        return this.f31550d;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.a
    public String h() {
        return this.f31548b;
    }

    public int hashCode() {
        int iHashCode = (((this.f31547a.hashCode() ^ 1000003) * 1000003) ^ this.f31548b.hashCode()) * 1000003;
        String str = this.f31549c;
        int iHashCode2 = (iHashCode ^ (str == null ? 0 : str.hashCode())) * 1000003;
        CrashlyticsReport.e.a.b bVar = this.f31550d;
        int iHashCode3 = (iHashCode2 ^ (bVar == null ? 0 : bVar.hashCode())) * 1000003;
        String str2 = this.f31551e;
        int iHashCode4 = (iHashCode3 ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.f31552f;
        int iHashCode5 = (iHashCode4 ^ (str3 == null ? 0 : str3.hashCode())) * 1000003;
        String str4 = this.f31553g;
        return iHashCode5 ^ (str4 != null ? str4.hashCode() : 0);
    }

    public String toString() {
        return "Application{identifier=" + this.f31547a + ", version=" + this.f31548b + ", displayVersion=" + this.f31549c + ", organization=" + this.f31550d + ", installationUuid=" + this.f31551e + ", developmentPlatform=" + this.f31552f + ", developmentPlatformVersion=" + this.f31553g + "}";
    }
}
