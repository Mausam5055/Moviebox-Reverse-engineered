package com.google.firebase.crashlytics.internal.model;

/* JADX INFO: loaded from: classes4.dex */
final class d extends CrashlyticsReport.a.AbstractC0420a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f31504a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f31505b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f31506c;

    static final class b extends CrashlyticsReport.a.AbstractC0420a.AbstractC0421a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f31507a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f31508b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f31509c;

        b() {
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.a.AbstractC0420a.AbstractC0421a
        public CrashlyticsReport.a.AbstractC0420a a() {
            String str;
            String str2;
            String str3 = this.f31507a;
            if (str3 != null && (str = this.f31508b) != null && (str2 = this.f31509c) != null) {
                return new d(str3, str, str2);
            }
            StringBuilder sb2 = new StringBuilder();
            if (this.f31507a == null) {
                sb2.append(" arch");
            }
            if (this.f31508b == null) {
                sb2.append(" libraryName");
            }
            if (this.f31509c == null) {
                sb2.append(" buildId");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.a.AbstractC0420a.AbstractC0421a
        public CrashlyticsReport.a.AbstractC0420a.AbstractC0421a b(String str) {
            if (str == null) {
                throw new NullPointerException("Null arch");
            }
            this.f31507a = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.a.AbstractC0420a.AbstractC0421a
        public CrashlyticsReport.a.AbstractC0420a.AbstractC0421a c(String str) {
            if (str == null) {
                throw new NullPointerException("Null buildId");
            }
            this.f31509c = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.a.AbstractC0420a.AbstractC0421a
        public CrashlyticsReport.a.AbstractC0420a.AbstractC0421a d(String str) {
            if (str == null) {
                throw new NullPointerException("Null libraryName");
            }
            this.f31508b = str;
            return this;
        }
    }

    private d(String str, String str2, String str3) {
        this.f31504a = str;
        this.f31505b = str2;
        this.f31506c = str3;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.a.AbstractC0420a
    public String b() {
        return this.f31504a;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.a.AbstractC0420a
    public String c() {
        return this.f31506c;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.a.AbstractC0420a
    public String d() {
        return this.f31505b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.a.AbstractC0420a)) {
            return false;
        }
        CrashlyticsReport.a.AbstractC0420a abstractC0420a = (CrashlyticsReport.a.AbstractC0420a) obj;
        return this.f31504a.equals(abstractC0420a.b()) && this.f31505b.equals(abstractC0420a.d()) && this.f31506c.equals(abstractC0420a.c());
    }

    public int hashCode() {
        return ((((this.f31504a.hashCode() ^ 1000003) * 1000003) ^ this.f31505b.hashCode()) * 1000003) ^ this.f31506c.hashCode();
    }

    public String toString() {
        return "BuildIdMappingForArch{arch=" + this.f31504a + ", libraryName=" + this.f31505b + ", buildId=" + this.f31506c + "}";
    }
}
