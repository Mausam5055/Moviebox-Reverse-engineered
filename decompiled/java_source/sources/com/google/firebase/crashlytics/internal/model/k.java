package com.google.firebase.crashlytics.internal.model;

/* JADX INFO: loaded from: classes4.dex */
final class k extends CrashlyticsReport.e.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f31561a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f31562b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f31563c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f31564d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final long f31565e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f31566f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f31567g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final String f31568h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final String f31569i;

    static final class b extends CrashlyticsReport.e.c.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f31570a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f31571b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f31572c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private long f31573d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private long f31574e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f31575f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f31576g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private String f31577h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private String f31578i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private byte f31579j;

        b() {
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.c.a
        public CrashlyticsReport.e.c a() {
            String str;
            String str2;
            String str3;
            if (this.f31579j == 63 && (str = this.f31571b) != null && (str2 = this.f31577h) != null && (str3 = this.f31578i) != null) {
                return new k(this.f31570a, str, this.f31572c, this.f31573d, this.f31574e, this.f31575f, this.f31576g, str2, str3);
            }
            StringBuilder sb2 = new StringBuilder();
            if ((this.f31579j & 1) == 0) {
                sb2.append(" arch");
            }
            if (this.f31571b == null) {
                sb2.append(" model");
            }
            if ((this.f31579j & 2) == 0) {
                sb2.append(" cores");
            }
            if ((this.f31579j & 4) == 0) {
                sb2.append(" ram");
            }
            if ((this.f31579j & 8) == 0) {
                sb2.append(" diskSpace");
            }
            if ((this.f31579j & 16) == 0) {
                sb2.append(" simulator");
            }
            if ((this.f31579j & 32) == 0) {
                sb2.append(" state");
            }
            if (this.f31577h == null) {
                sb2.append(" manufacturer");
            }
            if (this.f31578i == null) {
                sb2.append(" modelClass");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.c.a
        public CrashlyticsReport.e.c.a b(int i11) {
            this.f31570a = i11;
            this.f31579j = (byte) (this.f31579j | 1);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.c.a
        public CrashlyticsReport.e.c.a c(int i11) {
            this.f31572c = i11;
            this.f31579j = (byte) (this.f31579j | 2);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.c.a
        public CrashlyticsReport.e.c.a d(long j11) {
            this.f31574e = j11;
            this.f31579j = (byte) (this.f31579j | 8);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.c.a
        public CrashlyticsReport.e.c.a e(String str) {
            if (str == null) {
                throw new NullPointerException("Null manufacturer");
            }
            this.f31577h = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.c.a
        public CrashlyticsReport.e.c.a f(String str) {
            if (str == null) {
                throw new NullPointerException("Null model");
            }
            this.f31571b = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.c.a
        public CrashlyticsReport.e.c.a g(String str) {
            if (str == null) {
                throw new NullPointerException("Null modelClass");
            }
            this.f31578i = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.c.a
        public CrashlyticsReport.e.c.a h(long j11) {
            this.f31573d = j11;
            this.f31579j = (byte) (this.f31579j | 4);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.c.a
        public CrashlyticsReport.e.c.a i(boolean z10) {
            this.f31575f = z10;
            this.f31579j = (byte) (this.f31579j | 16);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.c.a
        public CrashlyticsReport.e.c.a j(int i11) {
            this.f31576g = i11;
            this.f31579j = (byte) (this.f31579j | 32);
            return this;
        }
    }

    private k(int i11, String str, int i12, long j11, long j12, boolean z10, int i13, String str2, String str3) {
        this.f31561a = i11;
        this.f31562b = str;
        this.f31563c = i12;
        this.f31564d = j11;
        this.f31565e = j12;
        this.f31566f = z10;
        this.f31567g = i13;
        this.f31568h = str2;
        this.f31569i = str3;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.c
    public int b() {
        return this.f31561a;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.c
    public int c() {
        return this.f31563c;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.c
    public long d() {
        return this.f31565e;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.c
    public String e() {
        return this.f31568h;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.e.c)) {
            return false;
        }
        CrashlyticsReport.e.c cVar = (CrashlyticsReport.e.c) obj;
        return this.f31561a == cVar.b() && this.f31562b.equals(cVar.f()) && this.f31563c == cVar.c() && this.f31564d == cVar.h() && this.f31565e == cVar.d() && this.f31566f == cVar.j() && this.f31567g == cVar.i() && this.f31568h.equals(cVar.e()) && this.f31569i.equals(cVar.g());
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.c
    public String f() {
        return this.f31562b;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.c
    public String g() {
        return this.f31569i;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.c
    public long h() {
        return this.f31564d;
    }

    public int hashCode() {
        int iHashCode = (((((this.f31561a ^ 1000003) * 1000003) ^ this.f31562b.hashCode()) * 1000003) ^ this.f31563c) * 1000003;
        long j11 = this.f31564d;
        int i11 = (iHashCode ^ ((int) (j11 ^ (j11 >>> 32)))) * 1000003;
        long j12 = this.f31565e;
        return ((((((((i11 ^ ((int) (j12 ^ (j12 >>> 32)))) * 1000003) ^ (this.f31566f ? 1231 : 1237)) * 1000003) ^ this.f31567g) * 1000003) ^ this.f31568h.hashCode()) * 1000003) ^ this.f31569i.hashCode();
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.c
    public int i() {
        return this.f31567g;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.c
    public boolean j() {
        return this.f31566f;
    }

    public String toString() {
        return "Device{arch=" + this.f31561a + ", model=" + this.f31562b + ", cores=" + this.f31563c + ", ram=" + this.f31564d + ", diskSpace=" + this.f31565e + ", simulator=" + this.f31566f + ", state=" + this.f31567g + ", manufacturer=" + this.f31568h + ", modelClass=" + this.f31569i + "}";
    }
}
