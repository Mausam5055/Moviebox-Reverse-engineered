package com.google.firebase.crashlytics.internal.model;

/* JADX INFO: loaded from: classes4.dex */
final class t extends CrashlyticsReport.e.d.a.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f31663a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f31664b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f31665c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f31666d;

    static final class b extends CrashlyticsReport.e.d.a.c.AbstractC0434a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f31667a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f31668b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f31669c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f31670d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private byte f31671e;

        b() {
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.a.c.AbstractC0434a
        public CrashlyticsReport.e.d.a.c a() {
            String str;
            if (this.f31671e == 7 && (str = this.f31667a) != null) {
                return new t(str, this.f31668b, this.f31669c, this.f31670d);
            }
            StringBuilder sb2 = new StringBuilder();
            if (this.f31667a == null) {
                sb2.append(" processName");
            }
            if ((this.f31671e & 1) == 0) {
                sb2.append(" pid");
            }
            if ((this.f31671e & 2) == 0) {
                sb2.append(" importance");
            }
            if ((this.f31671e & 4) == 0) {
                sb2.append(" defaultProcess");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.a.c.AbstractC0434a
        public CrashlyticsReport.e.d.a.c.AbstractC0434a b(boolean z10) {
            this.f31670d = z10;
            this.f31671e = (byte) (this.f31671e | 4);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.a.c.AbstractC0434a
        public CrashlyticsReport.e.d.a.c.AbstractC0434a c(int i11) {
            this.f31669c = i11;
            this.f31671e = (byte) (this.f31671e | 2);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.a.c.AbstractC0434a
        public CrashlyticsReport.e.d.a.c.AbstractC0434a d(int i11) {
            this.f31668b = i11;
            this.f31671e = (byte) (this.f31671e | 1);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.a.c.AbstractC0434a
        public CrashlyticsReport.e.d.a.c.AbstractC0434a e(String str) {
            if (str == null) {
                throw new NullPointerException("Null processName");
            }
            this.f31667a = str;
            return this;
        }
    }

    private t(String str, int i11, int i12, boolean z10) {
        this.f31663a = str;
        this.f31664b = i11;
        this.f31665c = i12;
        this.f31666d = z10;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.a.c
    public int b() {
        return this.f31665c;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.a.c
    public int c() {
        return this.f31664b;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.a.c
    public String d() {
        return this.f31663a;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.a.c
    public boolean e() {
        return this.f31666d;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.e.d.a.c)) {
            return false;
        }
        CrashlyticsReport.e.d.a.c cVar = (CrashlyticsReport.e.d.a.c) obj;
        return this.f31663a.equals(cVar.d()) && this.f31664b == cVar.c() && this.f31665c == cVar.b() && this.f31666d == cVar.e();
    }

    public int hashCode() {
        return ((((((this.f31663a.hashCode() ^ 1000003) * 1000003) ^ this.f31664b) * 1000003) ^ this.f31665c) * 1000003) ^ (this.f31666d ? 1231 : 1237);
    }

    public String toString() {
        return "ProcessDetails{processName=" + this.f31663a + ", pid=" + this.f31664b + ", importance=" + this.f31665c + ", defaultProcess=" + this.f31666d + "}";
    }
}
