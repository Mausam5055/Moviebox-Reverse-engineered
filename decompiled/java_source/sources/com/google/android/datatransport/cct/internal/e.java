package com.google.android.datatransport.cct.internal;

/* JADX INFO: loaded from: classes3.dex */
final class e extends ClientInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ClientInfo.ClientType f24276a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.google.android.datatransport.cct.internal.a f24277b;

    static final class b extends ClientInfo.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private ClientInfo.ClientType f24278a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private com.google.android.datatransport.cct.internal.a f24279b;

        b() {
        }

        @Override // com.google.android.datatransport.cct.internal.ClientInfo.a
        public ClientInfo a() {
            return new e(this.f24278a, this.f24279b);
        }

        @Override // com.google.android.datatransport.cct.internal.ClientInfo.a
        public ClientInfo.a b(com.google.android.datatransport.cct.internal.a aVar) {
            this.f24279b = aVar;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.ClientInfo.a
        public ClientInfo.a c(ClientInfo.ClientType clientType) {
            this.f24278a = clientType;
            return this;
        }
    }

    private e(ClientInfo.ClientType clientType, com.google.android.datatransport.cct.internal.a aVar) {
        this.f24276a = clientType;
        this.f24277b = aVar;
    }

    @Override // com.google.android.datatransport.cct.internal.ClientInfo
    public com.google.android.datatransport.cct.internal.a b() {
        return this.f24277b;
    }

    @Override // com.google.android.datatransport.cct.internal.ClientInfo
    public ClientInfo.ClientType c() {
        return this.f24276a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ClientInfo)) {
            return false;
        }
        ClientInfo clientInfo = (ClientInfo) obj;
        ClientInfo.ClientType clientType = this.f24276a;
        if (clientType != null ? clientType.equals(clientInfo.c()) : clientInfo.c() == null) {
            com.google.android.datatransport.cct.internal.a aVar = this.f24277b;
            if (aVar == null) {
                if (clientInfo.b() == null) {
                    return true;
                }
            } else if (aVar.equals(clientInfo.b())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        ClientInfo.ClientType clientType = this.f24276a;
        int iHashCode = ((clientType == null ? 0 : clientType.hashCode()) ^ 1000003) * 1000003;
        com.google.android.datatransport.cct.internal.a aVar = this.f24277b;
        return iHashCode ^ (aVar != null ? aVar.hashCode() : 0);
    }

    public String toString() {
        return "ClientInfo{clientType=" + this.f24276a + ", androidClientInfo=" + this.f24277b + "}";
    }
}
