package com.google.firebase.crashlytics.internal.model;

/* JADX INFO: loaded from: classes4.dex */
final class u extends CrashlyticsReport.e.d.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Double f31672a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f31673b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f31674c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f31675d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final long f31676e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final long f31677f;

    static final class b extends CrashlyticsReport.e.d.c.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Double f31678a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f31679b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f31680c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f31681d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private long f31682e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private long f31683f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private byte f31684g;

        b() {
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.c.a
        public CrashlyticsReport.e.d.c a() {
            if (this.f31684g == 31) {
                return new u(this.f31678a, this.f31679b, this.f31680c, this.f31681d, this.f31682e, this.f31683f);
            }
            StringBuilder sb2 = new StringBuilder();
            if ((this.f31684g & 1) == 0) {
                sb2.append(" batteryVelocity");
            }
            if ((this.f31684g & 2) == 0) {
                sb2.append(" proximityOn");
            }
            if ((this.f31684g & 4) == 0) {
                sb2.append(" orientation");
            }
            if ((this.f31684g & 8) == 0) {
                sb2.append(" ramUsed");
            }
            if ((this.f31684g & 16) == 0) {
                sb2.append(" diskUsed");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.c.a
        public CrashlyticsReport.e.d.c.a b(Double d11) {
            this.f31678a = d11;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.c.a
        public CrashlyticsReport.e.d.c.a c(int i11) {
            this.f31679b = i11;
            this.f31684g = (byte) (this.f31684g | 1);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.c.a
        public CrashlyticsReport.e.d.c.a d(long j11) {
            this.f31683f = j11;
            this.f31684g = (byte) (this.f31684g | 16);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.c.a
        public CrashlyticsReport.e.d.c.a e(int i11) {
            this.f31681d = i11;
            this.f31684g = (byte) (this.f31684g | 4);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.c.a
        public CrashlyticsReport.e.d.c.a f(boolean z10) {
            this.f31680c = z10;
            this.f31684g = (byte) (this.f31684g | 2);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.c.a
        public CrashlyticsReport.e.d.c.a g(long j11) {
            this.f31682e = j11;
            this.f31684g = (byte) (this.f31684g | 8);
            return this;
        }
    }

    private u(Double d11, int i11, boolean z10, int i12, long j11, long j12) {
        this.f31672a = d11;
        this.f31673b = i11;
        this.f31674c = z10;
        this.f31675d = i12;
        this.f31676e = j11;
        this.f31677f = j12;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.c
    public Double b() {
        return this.f31672a;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.c
    public int c() {
        return this.f31673b;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.c
    public long d() {
        return this.f31677f;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.c
    public int e() {
        return this.f31675d;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.e.d.c)) {
            return false;
        }
        CrashlyticsReport.e.d.c cVar = (CrashlyticsReport.e.d.c) obj;
        Double d11 = this.f31672a;
        if (d11 != null ? d11.equals(cVar.b()) : cVar.b() == null) {
            if (this.f31673b == cVar.c() && this.f31674c == cVar.g() && this.f31675d == cVar.e() && this.f31676e == cVar.f() && this.f31677f == cVar.d()) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.c
    public long f() {
        return this.f31676e;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.c
    public boolean g() {
        return this.f31674c;
    }

    public int hashCode() {
        Double d11 = this.f31672a;
        int iHashCode = ((((((((d11 == null ? 0 : d11.hashCode()) ^ 1000003) * 1000003) ^ this.f31673b) * 1000003) ^ (this.f31674c ? 1231 : 1237)) * 1000003) ^ this.f31675d) * 1000003;
        long j11 = this.f31676e;
        long j12 = this.f31677f;
        return ((iHashCode ^ ((int) (j11 ^ (j11 >>> 32)))) * 1000003) ^ ((int) (j12 ^ (j12 >>> 32)));
    }

    public String toString() {
        return "Device{batteryLevel=" + this.f31672a + ", batteryVelocity=" + this.f31673b + ", proximityOn=" + this.f31674c + ", orientation=" + this.f31675d + ", ramUsed=" + this.f31676e + ", diskUsed=" + this.f31677f + "}";
    }
}
