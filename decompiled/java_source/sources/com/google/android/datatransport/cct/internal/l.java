package com.google.android.datatransport.cct.internal;

/* JADX INFO: loaded from: classes3.dex */
final class l extends NetworkConnectionInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final NetworkConnectionInfo.NetworkType f24324a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final NetworkConnectionInfo.MobileSubtype f24325b;

    static final class b extends NetworkConnectionInfo.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private NetworkConnectionInfo.NetworkType f24326a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private NetworkConnectionInfo.MobileSubtype f24327b;

        b() {
        }

        @Override // com.google.android.datatransport.cct.internal.NetworkConnectionInfo.a
        public NetworkConnectionInfo a() {
            return new l(this.f24326a, this.f24327b);
        }

        @Override // com.google.android.datatransport.cct.internal.NetworkConnectionInfo.a
        public NetworkConnectionInfo.a b(NetworkConnectionInfo.MobileSubtype mobileSubtype) {
            this.f24327b = mobileSubtype;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.NetworkConnectionInfo.a
        public NetworkConnectionInfo.a c(NetworkConnectionInfo.NetworkType networkType) {
            this.f24326a = networkType;
            return this;
        }
    }

    private l(NetworkConnectionInfo.NetworkType networkType, NetworkConnectionInfo.MobileSubtype mobileSubtype) {
        this.f24324a = networkType;
        this.f24325b = mobileSubtype;
    }

    @Override // com.google.android.datatransport.cct.internal.NetworkConnectionInfo
    public NetworkConnectionInfo.MobileSubtype b() {
        return this.f24325b;
    }

    @Override // com.google.android.datatransport.cct.internal.NetworkConnectionInfo
    public NetworkConnectionInfo.NetworkType c() {
        return this.f24324a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof NetworkConnectionInfo)) {
            return false;
        }
        NetworkConnectionInfo networkConnectionInfo = (NetworkConnectionInfo) obj;
        NetworkConnectionInfo.NetworkType networkType = this.f24324a;
        if (networkType != null ? networkType.equals(networkConnectionInfo.c()) : networkConnectionInfo.c() == null) {
            NetworkConnectionInfo.MobileSubtype mobileSubtype = this.f24325b;
            if (mobileSubtype == null) {
                if (networkConnectionInfo.b() == null) {
                    return true;
                }
            } else if (mobileSubtype.equals(networkConnectionInfo.b())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        NetworkConnectionInfo.NetworkType networkType = this.f24324a;
        int iHashCode = ((networkType == null ? 0 : networkType.hashCode()) ^ 1000003) * 1000003;
        NetworkConnectionInfo.MobileSubtype mobileSubtype = this.f24325b;
        return iHashCode ^ (mobileSubtype != null ? mobileSubtype.hashCode() : 0);
    }

    public String toString() {
        return "NetworkConnectionInfo{networkType=" + this.f24324a + ", mobileSubtype=" + this.f24325b + "}";
    }
}
