package com.google.firebase.crashlytics.internal.model;

/* JADX INFO: loaded from: classes4.dex */
final class z extends CrashlyticsReport.e.AbstractC0437e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f31702a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f31703b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f31704c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f31705d;

    static final class b extends CrashlyticsReport.e.AbstractC0437e.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f31706a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f31707b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f31708c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f31709d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private byte f31710e;

        b() {
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.AbstractC0437e.a
        public CrashlyticsReport.e.AbstractC0437e a() {
            String str;
            String str2;
            if (this.f31710e == 3 && (str = this.f31707b) != null && (str2 = this.f31708c) != null) {
                return new z(this.f31706a, str, str2, this.f31709d);
            }
            StringBuilder sb2 = new StringBuilder();
            if ((this.f31710e & 1) == 0) {
                sb2.append(" platform");
            }
            if (this.f31707b == null) {
                sb2.append(" version");
            }
            if (this.f31708c == null) {
                sb2.append(" buildVersion");
            }
            if ((this.f31710e & 2) == 0) {
                sb2.append(" jailbroken");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.AbstractC0437e.a
        public CrashlyticsReport.e.AbstractC0437e.a b(String str) {
            if (str == null) {
                throw new NullPointerException("Null buildVersion");
            }
            this.f31708c = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.AbstractC0437e.a
        public CrashlyticsReport.e.AbstractC0437e.a c(boolean z10) {
            this.f31709d = z10;
            this.f31710e = (byte) (this.f31710e | 2);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.AbstractC0437e.a
        public CrashlyticsReport.e.AbstractC0437e.a d(int i11) {
            this.f31706a = i11;
            this.f31710e = (byte) (this.f31710e | 1);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.AbstractC0437e.a
        public CrashlyticsReport.e.AbstractC0437e.a e(String str) {
            if (str == null) {
                throw new NullPointerException("Null version");
            }
            this.f31707b = str;
            return this;
        }
    }

    private z(int i11, String str, String str2, boolean z10) {
        this.f31702a = i11;
        this.f31703b = str;
        this.f31704c = str2;
        this.f31705d = z10;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.AbstractC0437e
    public String b() {
        return this.f31704c;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.AbstractC0437e
    public int c() {
        return this.f31702a;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.AbstractC0437e
    public String d() {
        return this.f31703b;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.AbstractC0437e
    public boolean e() {
        return this.f31705d;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.e.AbstractC0437e)) {
            return false;
        }
        CrashlyticsReport.e.AbstractC0437e abstractC0437e = (CrashlyticsReport.e.AbstractC0437e) obj;
        return this.f31702a == abstractC0437e.c() && this.f31703b.equals(abstractC0437e.d()) && this.f31704c.equals(abstractC0437e.b()) && this.f31705d == abstractC0437e.e();
    }

    public int hashCode() {
        return ((((((this.f31702a ^ 1000003) * 1000003) ^ this.f31703b.hashCode()) * 1000003) ^ this.f31704c.hashCode()) * 1000003) ^ (this.f31705d ? 1231 : 1237);
    }

    public String toString() {
        return "OperatingSystem{platform=" + this.f31702a + ", version=" + this.f31703b + ", buildVersion=" + this.f31704c + ", jailbroken=" + this.f31705d + "}";
    }
}
