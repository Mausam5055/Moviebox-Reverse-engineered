package com.google.android.datatransport.cct.internal;

/* JADX INFO: loaded from: classes3.dex */
final class i extends p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final o f24290a;

    static final class b extends p.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private o f24291a;

        b() {
        }

        @Override // com.google.android.datatransport.cct.internal.p.a
        public p a() {
            return new i(this.f24291a);
        }

        @Override // com.google.android.datatransport.cct.internal.p.a
        public p.a b(o oVar) {
            this.f24291a = oVar;
            return this;
        }
    }

    private i(o oVar) {
        this.f24290a = oVar;
    }

    @Override // com.google.android.datatransport.cct.internal.p
    public o b() {
        return this.f24290a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof p)) {
            return false;
        }
        o oVar = this.f24290a;
        o oVarB = ((p) obj).b();
        if (oVar == null) {
            return oVarB == null;
        }
        return oVar.equals(oVarB);
    }

    public int hashCode() {
        o oVar = this.f24290a;
        return (oVar == null ? 0 : oVar.hashCode()) ^ 1000003;
    }

    public String toString() {
        return "ExternalPrivacyContext{prequest=" + this.f24290a + "}";
    }
}
