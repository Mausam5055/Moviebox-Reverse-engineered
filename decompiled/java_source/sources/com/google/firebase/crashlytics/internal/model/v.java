package com.google.firebase.crashlytics.internal.model;

/* JADX INFO: loaded from: classes4.dex */
final class v extends CrashlyticsReport.e.d.AbstractC0435d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f31685a;

    static final class b extends CrashlyticsReport.e.d.AbstractC0435d.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f31686a;

        b() {
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.AbstractC0435d.a
        public CrashlyticsReport.e.d.AbstractC0435d a() {
            String str = this.f31686a;
            if (str != null) {
                return new v(str);
            }
            throw new IllegalStateException("Missing required properties: content");
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.AbstractC0435d.a
        public CrashlyticsReport.e.d.AbstractC0435d.a b(String str) {
            if (str == null) {
                throw new NullPointerException("Null content");
            }
            this.f31686a = str;
            return this;
        }
    }

    private v(String str) {
        this.f31685a = str;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.AbstractC0435d
    public String b() {
        return this.f31685a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof CrashlyticsReport.e.d.AbstractC0435d) {
            return this.f31685a.equals(((CrashlyticsReport.e.d.AbstractC0435d) obj).b());
        }
        return false;
    }

    public int hashCode() {
        return this.f31685a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "Log{content=" + this.f31685a + "}";
    }
}
