package com.google.firebase.installations.local;

/* JADX INFO: loaded from: classes4.dex */
final class a extends com.google.firebase.installations.local.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f31910b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final PersistedInstallation.RegistrationStatus f31911c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f31912d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f31913e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final long f31914f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final long f31915g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final String f31916h;

    static final class b extends com.google.firebase.installations.local.b.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f31917a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private PersistedInstallation.RegistrationStatus f31918b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f31919c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f31920d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private Long f31921e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private Long f31922f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private String f31923g;

        b() {
        }

        private b(com.google.firebase.installations.local.b bVar) {
            this.f31917a = bVar.d();
            this.f31918b = bVar.g();
            this.f31919c = bVar.b();
            this.f31920d = bVar.f();
            this.f31921e = Long.valueOf(bVar.c());
            this.f31922f = Long.valueOf(bVar.h());
            this.f31923g = bVar.e();
        }

        @Override // com.google.firebase.installations.local.b.a
        public com.google.firebase.installations.local.b a() {
            String str = "";
            if (this.f31918b == null) {
                str = " registrationStatus";
            }
            if (this.f31921e == null) {
                str = str + " expiresInSecs";
            }
            if (this.f31922f == null) {
                str = str + " tokenCreationEpochInSecs";
            }
            if (str.isEmpty()) {
                return new a(this.f31917a, this.f31918b, this.f31919c, this.f31920d, this.f31921e.longValue(), this.f31922f.longValue(), this.f31923g);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.google.firebase.installations.local.b.a
        public com.google.firebase.installations.local.b.a b(String str) {
            this.f31919c = str;
            return this;
        }

        @Override // com.google.firebase.installations.local.b.a
        public com.google.firebase.installations.local.b.a c(long j11) {
            this.f31921e = Long.valueOf(j11);
            return this;
        }

        @Override // com.google.firebase.installations.local.b.a
        public com.google.firebase.installations.local.b.a d(String str) {
            this.f31917a = str;
            return this;
        }

        @Override // com.google.firebase.installations.local.b.a
        public com.google.firebase.installations.local.b.a e(String str) {
            this.f31923g = str;
            return this;
        }

        @Override // com.google.firebase.installations.local.b.a
        public com.google.firebase.installations.local.b.a f(String str) {
            this.f31920d = str;
            return this;
        }

        @Override // com.google.firebase.installations.local.b.a
        public com.google.firebase.installations.local.b.a g(PersistedInstallation.RegistrationStatus registrationStatus) {
            if (registrationStatus == null) {
                throw new NullPointerException("Null registrationStatus");
            }
            this.f31918b = registrationStatus;
            return this;
        }

        @Override // com.google.firebase.installations.local.b.a
        public com.google.firebase.installations.local.b.a h(long j11) {
            this.f31922f = Long.valueOf(j11);
            return this;
        }
    }

    private a(String str, PersistedInstallation.RegistrationStatus registrationStatus, String str2, String str3, long j11, long j12, String str4) {
        this.f31910b = str;
        this.f31911c = registrationStatus;
        this.f31912d = str2;
        this.f31913e = str3;
        this.f31914f = j11;
        this.f31915g = j12;
        this.f31916h = str4;
    }

    @Override // com.google.firebase.installations.local.b
    public String b() {
        return this.f31912d;
    }

    @Override // com.google.firebase.installations.local.b
    public long c() {
        return this.f31914f;
    }

    @Override // com.google.firebase.installations.local.b
    public String d() {
        return this.f31910b;
    }

    @Override // com.google.firebase.installations.local.b
    public String e() {
        return this.f31916h;
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof com.google.firebase.installations.local.b)) {
            return false;
        }
        com.google.firebase.installations.local.b bVar = (com.google.firebase.installations.local.b) obj;
        String str3 = this.f31910b;
        if (str3 != null ? str3.equals(bVar.d()) : bVar.d() == null) {
            if (this.f31911c.equals(bVar.g()) && ((str = this.f31912d) != null ? str.equals(bVar.b()) : bVar.b() == null) && ((str2 = this.f31913e) != null ? str2.equals(bVar.f()) : bVar.f() == null) && this.f31914f == bVar.c() && this.f31915g == bVar.h()) {
                String str4 = this.f31916h;
                if (str4 == null) {
                    if (bVar.e() == null) {
                        return true;
                    }
                } else if (str4.equals(bVar.e())) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // com.google.firebase.installations.local.b
    public String f() {
        return this.f31913e;
    }

    @Override // com.google.firebase.installations.local.b
    public PersistedInstallation.RegistrationStatus g() {
        return this.f31911c;
    }

    @Override // com.google.firebase.installations.local.b
    public long h() {
        return this.f31915g;
    }

    public int hashCode() {
        String str = this.f31910b;
        int iHashCode = ((((str == null ? 0 : str.hashCode()) ^ 1000003) * 1000003) ^ this.f31911c.hashCode()) * 1000003;
        String str2 = this.f31912d;
        int iHashCode2 = (iHashCode ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.f31913e;
        int iHashCode3 = (iHashCode2 ^ (str3 == null ? 0 : str3.hashCode())) * 1000003;
        long j11 = this.f31914f;
        int i11 = (iHashCode3 ^ ((int) (j11 ^ (j11 >>> 32)))) * 1000003;
        long j12 = this.f31915g;
        int i12 = (i11 ^ ((int) (j12 ^ (j12 >>> 32)))) * 1000003;
        String str4 = this.f31916h;
        return i12 ^ (str4 != null ? str4.hashCode() : 0);
    }

    @Override // com.google.firebase.installations.local.b
    public com.google.firebase.installations.local.b.a n() {
        return new b(this);
    }

    public String toString() {
        return "PersistedInstallationEntry{firebaseInstallationId=" + this.f31910b + ", registrationStatus=" + this.f31911c + ", authToken=" + this.f31912d + ", refreshToken=" + this.f31913e + ", expiresInSecs=" + this.f31914f + ", tokenCreationEpochInSecs=" + this.f31915g + ", fisError=" + this.f31916h + "}";
    }
}
