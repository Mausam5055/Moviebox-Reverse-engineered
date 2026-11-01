package com.google.firebase.crashlytics.internal.model;

/* JADX INFO: loaded from: classes4.dex */
final class a0 extends CrashlyticsReport.e.f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f31458a;

    static final class b extends CrashlyticsReport.e.f.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f31459a;

        b() {
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.f.a
        public CrashlyticsReport.e.f a() {
            String str = this.f31459a;
            if (str != null) {
                return new a0(str);
            }
            throw new IllegalStateException("Missing required properties: identifier");
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.f.a
        public CrashlyticsReport.e.f.a b(String str) {
            if (str == null) {
                throw new NullPointerException("Null identifier");
            }
            this.f31459a = str;
            return this;
        }
    }

    private a0(String str) {
        this.f31458a = str;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.f
    public String b() {
        return this.f31458a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof CrashlyticsReport.e.f) {
            return this.f31458a.equals(((CrashlyticsReport.e.f) obj).b());
        }
        return false;
    }

    public int hashCode() {
        return this.f31458a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "User{identifier=" + this.f31458a + "}";
    }
}
