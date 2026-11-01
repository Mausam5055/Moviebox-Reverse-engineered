package com.google.firebase.installations.remote;

/* JADX INFO: loaded from: classes4.dex */
final class a extends InstallationResponse {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f31925a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f31926b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f31927c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final TokenResult f31928d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final InstallationResponse.ResponseCode f31929e;

    static final class b extends InstallationResponse.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f31930a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f31931b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f31932c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private TokenResult f31933d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private InstallationResponse.ResponseCode f31934e;

        b() {
        }

        @Override // com.google.firebase.installations.remote.InstallationResponse.a
        public InstallationResponse a() {
            return new a(this.f31930a, this.f31931b, this.f31932c, this.f31933d, this.f31934e);
        }

        @Override // com.google.firebase.installations.remote.InstallationResponse.a
        public InstallationResponse.a b(TokenResult tokenResult) {
            this.f31933d = tokenResult;
            return this;
        }

        @Override // com.google.firebase.installations.remote.InstallationResponse.a
        public InstallationResponse.a c(String str) {
            this.f31931b = str;
            return this;
        }

        @Override // com.google.firebase.installations.remote.InstallationResponse.a
        public InstallationResponse.a d(String str) {
            this.f31932c = str;
            return this;
        }

        @Override // com.google.firebase.installations.remote.InstallationResponse.a
        public InstallationResponse.a e(InstallationResponse.ResponseCode responseCode) {
            this.f31934e = responseCode;
            return this;
        }

        @Override // com.google.firebase.installations.remote.InstallationResponse.a
        public InstallationResponse.a f(String str) {
            this.f31930a = str;
            return this;
        }
    }

    private a(String str, String str2, String str3, TokenResult tokenResult, InstallationResponse.ResponseCode responseCode) {
        this.f31925a = str;
        this.f31926b = str2;
        this.f31927c = str3;
        this.f31928d = tokenResult;
        this.f31929e = responseCode;
    }

    @Override // com.google.firebase.installations.remote.InstallationResponse
    public TokenResult b() {
        return this.f31928d;
    }

    @Override // com.google.firebase.installations.remote.InstallationResponse
    public String c() {
        return this.f31926b;
    }

    @Override // com.google.firebase.installations.remote.InstallationResponse
    public String d() {
        return this.f31927c;
    }

    @Override // com.google.firebase.installations.remote.InstallationResponse
    public InstallationResponse.ResponseCode e() {
        return this.f31929e;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof InstallationResponse)) {
            return false;
        }
        InstallationResponse installationResponse = (InstallationResponse) obj;
        String str = this.f31925a;
        if (str != null ? str.equals(installationResponse.f()) : installationResponse.f() == null) {
            String str2 = this.f31926b;
            if (str2 != null ? str2.equals(installationResponse.c()) : installationResponse.c() == null) {
                String str3 = this.f31927c;
                if (str3 != null ? str3.equals(installationResponse.d()) : installationResponse.d() == null) {
                    TokenResult tokenResult = this.f31928d;
                    if (tokenResult != null ? tokenResult.equals(installationResponse.b()) : installationResponse.b() == null) {
                        InstallationResponse.ResponseCode responseCode = this.f31929e;
                        if (responseCode == null) {
                            if (installationResponse.e() == null) {
                                return true;
                            }
                        } else if (responseCode.equals(installationResponse.e())) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    @Override // com.google.firebase.installations.remote.InstallationResponse
    public String f() {
        return this.f31925a;
    }

    public int hashCode() {
        String str = this.f31925a;
        int iHashCode = ((str == null ? 0 : str.hashCode()) ^ 1000003) * 1000003;
        String str2 = this.f31926b;
        int iHashCode2 = (iHashCode ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.f31927c;
        int iHashCode3 = (iHashCode2 ^ (str3 == null ? 0 : str3.hashCode())) * 1000003;
        TokenResult tokenResult = this.f31928d;
        int iHashCode4 = (iHashCode3 ^ (tokenResult == null ? 0 : tokenResult.hashCode())) * 1000003;
        InstallationResponse.ResponseCode responseCode = this.f31929e;
        return iHashCode4 ^ (responseCode != null ? responseCode.hashCode() : 0);
    }

    public String toString() {
        return "InstallationResponse{uri=" + this.f31925a + ", fid=" + this.f31926b + ", refreshToken=" + this.f31927c + ", authToken=" + this.f31928d + ", responseCode=" + this.f31929e + "}";
    }
}
