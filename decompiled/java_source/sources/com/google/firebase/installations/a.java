package com.google.firebase.installations;

/* JADX INFO: loaded from: classes4.dex */
final class a extends f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f31876a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f31877b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f31878c;

    static final class b extends f.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f31879a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Long f31880b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Long f31881c;

        b() {
        }

        @Override // com.google.firebase.installations.f.a
        public f a() {
            String str = "";
            if (this.f31879a == null) {
                str = " token";
            }
            if (this.f31880b == null) {
                str = str + " tokenExpirationTimestamp";
            }
            if (this.f31881c == null) {
                str = str + " tokenCreationTimestamp";
            }
            if (str.isEmpty()) {
                return new a(this.f31879a, this.f31880b.longValue(), this.f31881c.longValue());
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.google.firebase.installations.f.a
        public f.a b(String str) {
            if (str == null) {
                throw new NullPointerException("Null token");
            }
            this.f31879a = str;
            return this;
        }

        @Override // com.google.firebase.installations.f.a
        public f.a c(long j11) {
            this.f31881c = Long.valueOf(j11);
            return this;
        }

        @Override // com.google.firebase.installations.f.a
        public f.a d(long j11) {
            this.f31880b = Long.valueOf(j11);
            return this;
        }
    }

    private a(String str, long j11, long j12) {
        this.f31876a = str;
        this.f31877b = j11;
        this.f31878c = j12;
    }

    @Override // com.google.firebase.installations.f
    public String b() {
        return this.f31876a;
    }

    @Override // com.google.firebase.installations.f
    public long c() {
        return this.f31878c;
    }

    @Override // com.google.firebase.installations.f
    public long d() {
        return this.f31877b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return this.f31876a.equals(fVar.b()) && this.f31877b == fVar.d() && this.f31878c == fVar.c();
    }

    public int hashCode() {
        int iHashCode = (this.f31876a.hashCode() ^ 1000003) * 1000003;
        long j11 = this.f31877b;
        long j12 = this.f31878c;
        return ((iHashCode ^ ((int) (j11 ^ (j11 >>> 32)))) * 1000003) ^ ((int) (j12 ^ (j12 >>> 32)));
    }

    public String toString() {
        return "InstallationTokenResult{token=" + this.f31876a + ", tokenExpirationTimestamp=" + this.f31877b + ", tokenCreationTimestamp=" + this.f31878c + "}";
    }
}
