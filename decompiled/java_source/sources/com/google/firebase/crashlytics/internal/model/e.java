package com.google.firebase.crashlytics.internal.model;

/* JADX INFO: loaded from: classes4.dex */
final class e extends CrashlyticsReport.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f31510a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f31511b;

    static final class b extends CrashlyticsReport.c.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f31512a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f31513b;

        b() {
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.c.a
        public CrashlyticsReport.c a() {
            String str;
            String str2 = this.f31512a;
            if (str2 != null && (str = this.f31513b) != null) {
                return new e(str2, str);
            }
            StringBuilder sb2 = new StringBuilder();
            if (this.f31512a == null) {
                sb2.append(" key");
            }
            if (this.f31513b == null) {
                sb2.append(" value");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.c.a
        public CrashlyticsReport.c.a b(String str) {
            if (str == null) {
                throw new NullPointerException("Null key");
            }
            this.f31512a = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.c.a
        public CrashlyticsReport.c.a c(String str) {
            if (str == null) {
                throw new NullPointerException("Null value");
            }
            this.f31513b = str;
            return this;
        }
    }

    private e(String str, String str2) {
        this.f31510a = str;
        this.f31511b = str2;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.c
    public String b() {
        return this.f31510a;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.c
    public String c() {
        return this.f31511b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.c)) {
            return false;
        }
        CrashlyticsReport.c cVar = (CrashlyticsReport.c) obj;
        return this.f31510a.equals(cVar.b()) && this.f31511b.equals(cVar.c());
    }

    public int hashCode() {
        return ((this.f31510a.hashCode() ^ 1000003) * 1000003) ^ this.f31511b.hashCode();
    }

    public String toString() {
        return "CustomAttribute{key=" + this.f31510a + ", value=" + this.f31511b + "}";
    }
}
