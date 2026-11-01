package com.google.firebase.installations.remote;

/* JADX INFO: loaded from: classes4.dex */
final class b extends TokenResult {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f31935a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f31936b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final TokenResult.ResponseCode f31937c;

    /* JADX INFO: renamed from: com.google.firebase.installations.remote.b$b, reason: collision with other inner class name */
    static final class C0444b extends TokenResult.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f31938a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Long f31939b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private TokenResult.ResponseCode f31940c;

        C0444b() {
        }

        @Override // com.google.firebase.installations.remote.TokenResult.a
        public TokenResult a() {
            String str = "";
            if (this.f31939b == null) {
                str = " tokenExpirationTimestamp";
            }
            if (str.isEmpty()) {
                return new b(this.f31938a, this.f31939b.longValue(), this.f31940c);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.google.firebase.installations.remote.TokenResult.a
        public TokenResult.a b(TokenResult.ResponseCode responseCode) {
            this.f31940c = responseCode;
            return this;
        }

        @Override // com.google.firebase.installations.remote.TokenResult.a
        public TokenResult.a c(String str) {
            this.f31938a = str;
            return this;
        }

        @Override // com.google.firebase.installations.remote.TokenResult.a
        public TokenResult.a d(long j11) {
            this.f31939b = Long.valueOf(j11);
            return this;
        }
    }

    private b(String str, long j11, TokenResult.ResponseCode responseCode) {
        this.f31935a = str;
        this.f31936b = j11;
        this.f31937c = responseCode;
    }

    @Override // com.google.firebase.installations.remote.TokenResult
    public TokenResult.ResponseCode b() {
        return this.f31937c;
    }

    @Override // com.google.firebase.installations.remote.TokenResult
    public String c() {
        return this.f31935a;
    }

    @Override // com.google.firebase.installations.remote.TokenResult
    public long d() {
        return this.f31936b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof TokenResult)) {
            return false;
        }
        TokenResult tokenResult = (TokenResult) obj;
        String str = this.f31935a;
        if (str != null ? str.equals(tokenResult.c()) : tokenResult.c() == null) {
            if (this.f31936b == tokenResult.d()) {
                TokenResult.ResponseCode responseCode = this.f31937c;
                if (responseCode == null) {
                    if (tokenResult.b() == null) {
                        return true;
                    }
                } else if (responseCode.equals(tokenResult.b())) {
                    return true;
                }
            }
        }
        return false;
    }

    public int hashCode() {
        String str = this.f31935a;
        int iHashCode = str == null ? 0 : str.hashCode();
        long j11 = this.f31936b;
        int i11 = (((iHashCode ^ 1000003) * 1000003) ^ ((int) (j11 ^ (j11 >>> 32)))) * 1000003;
        TokenResult.ResponseCode responseCode = this.f31937c;
        return i11 ^ (responseCode != null ? responseCode.hashCode() : 0);
    }

    public String toString() {
        return "TokenResult{token=" + this.f31935a + ", tokenExpirationTimestamp=" + this.f31936b + ", responseCode=" + this.f31937c + "}";
    }
}
