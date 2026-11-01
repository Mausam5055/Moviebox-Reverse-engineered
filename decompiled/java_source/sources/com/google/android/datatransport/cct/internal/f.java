package com.google.android.datatransport.cct.internal;

/* JADX INFO: loaded from: classes3.dex */
final class f extends ComplianceData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final p f24280a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ComplianceData.ProductIdOrigin f24281b;

    static final class b extends ComplianceData.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private p f24282a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private ComplianceData.ProductIdOrigin f24283b;

        b() {
        }

        @Override // com.google.android.datatransport.cct.internal.ComplianceData.a
        public ComplianceData a() {
            return new f(this.f24282a, this.f24283b);
        }

        @Override // com.google.android.datatransport.cct.internal.ComplianceData.a
        public ComplianceData.a b(p pVar) {
            this.f24282a = pVar;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.ComplianceData.a
        public ComplianceData.a c(ComplianceData.ProductIdOrigin productIdOrigin) {
            this.f24283b = productIdOrigin;
            return this;
        }
    }

    private f(p pVar, ComplianceData.ProductIdOrigin productIdOrigin) {
        this.f24280a = pVar;
        this.f24281b = productIdOrigin;
    }

    @Override // com.google.android.datatransport.cct.internal.ComplianceData
    public p b() {
        return this.f24280a;
    }

    @Override // com.google.android.datatransport.cct.internal.ComplianceData
    public ComplianceData.ProductIdOrigin c() {
        return this.f24281b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ComplianceData)) {
            return false;
        }
        ComplianceData complianceData = (ComplianceData) obj;
        p pVar = this.f24280a;
        if (pVar != null ? pVar.equals(complianceData.b()) : complianceData.b() == null) {
            ComplianceData.ProductIdOrigin productIdOrigin = this.f24281b;
            if (productIdOrigin == null) {
                if (complianceData.c() == null) {
                    return true;
                }
            } else if (productIdOrigin.equals(complianceData.c())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        p pVar = this.f24280a;
        int iHashCode = ((pVar == null ? 0 : pVar.hashCode()) ^ 1000003) * 1000003;
        ComplianceData.ProductIdOrigin productIdOrigin = this.f24281b;
        return iHashCode ^ (productIdOrigin != null ? productIdOrigin.hashCode() : 0);
    }

    public String toString() {
        return "ComplianceData{privacyContext=" + this.f24280a + ", productIdOrigin=" + this.f24281b + "}";
    }
}
