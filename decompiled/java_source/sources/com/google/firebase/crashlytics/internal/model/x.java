package com.google.firebase.crashlytics.internal.model;

/* JADX INFO: loaded from: classes4.dex */
final class x extends CrashlyticsReport.e.d.AbstractC0436e.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f31696a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f31697b;

    static final class b extends CrashlyticsReport.e.d.AbstractC0436e.b.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f31698a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f31699b;

        b() {
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.AbstractC0436e.b.a
        public CrashlyticsReport.e.d.AbstractC0436e.b a() {
            String str;
            String str2 = this.f31698a;
            if (str2 != null && (str = this.f31699b) != null) {
                return new x(str2, str);
            }
            StringBuilder sb2 = new StringBuilder();
            if (this.f31698a == null) {
                sb2.append(" rolloutId");
            }
            if (this.f31699b == null) {
                sb2.append(" variantId");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.AbstractC0436e.b.a
        public CrashlyticsReport.e.d.AbstractC0436e.b.a b(String str) {
            if (str == null) {
                throw new NullPointerException("Null rolloutId");
            }
            this.f31698a = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.AbstractC0436e.b.a
        public CrashlyticsReport.e.d.AbstractC0436e.b.a c(String str) {
            if (str == null) {
                throw new NullPointerException("Null variantId");
            }
            this.f31699b = str;
            return this;
        }
    }

    private x(String str, String str2) {
        this.f31696a = str;
        this.f31697b = str2;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.AbstractC0436e.b
    public String b() {
        return this.f31696a;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.AbstractC0436e.b
    public String c() {
        return this.f31697b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.e.d.AbstractC0436e.b)) {
            return false;
        }
        CrashlyticsReport.e.d.AbstractC0436e.b bVar = (CrashlyticsReport.e.d.AbstractC0436e.b) obj;
        return this.f31696a.equals(bVar.b()) && this.f31697b.equals(bVar.c());
    }

    public int hashCode() {
        return ((this.f31696a.hashCode() ^ 1000003) * 1000003) ^ this.f31697b.hashCode();
    }

    public String toString() {
        return "RolloutVariant{rolloutId=" + this.f31696a + ", variantId=" + this.f31697b + "}";
    }
}
