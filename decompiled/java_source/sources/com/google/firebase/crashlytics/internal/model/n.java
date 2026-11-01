package com.google.firebase.crashlytics.internal.model;

import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
final class n extends CrashlyticsReport.e.d.a.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f31608a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final CrashlyticsReport.e.d.a.b.c f31609b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final CrashlyticsReport.a f31610c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final CrashlyticsReport.e.d.a.b.AbstractC0428d f31611d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final List f31612e;

    static final class b extends CrashlyticsReport.e.d.a.b.AbstractC0426b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private List f31613a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private CrashlyticsReport.e.d.a.b.c f31614b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private CrashlyticsReport.a f31615c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private CrashlyticsReport.e.d.a.b.AbstractC0428d f31616d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private List f31617e;

        b() {
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.a.b.AbstractC0426b
        public CrashlyticsReport.e.d.a.b a() {
            List list;
            CrashlyticsReport.e.d.a.b.AbstractC0428d abstractC0428d = this.f31616d;
            if (abstractC0428d != null && (list = this.f31617e) != null) {
                return new n(this.f31613a, this.f31614b, this.f31615c, abstractC0428d, list);
            }
            StringBuilder sb2 = new StringBuilder();
            if (this.f31616d == null) {
                sb2.append(" signal");
            }
            if (this.f31617e == null) {
                sb2.append(" binaries");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.a.b.AbstractC0426b
        public CrashlyticsReport.e.d.a.b.AbstractC0426b b(CrashlyticsReport.a aVar) {
            this.f31615c = aVar;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.a.b.AbstractC0426b
        public CrashlyticsReport.e.d.a.b.AbstractC0426b c(List list) {
            if (list == null) {
                throw new NullPointerException("Null binaries");
            }
            this.f31617e = list;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.a.b.AbstractC0426b
        public CrashlyticsReport.e.d.a.b.AbstractC0426b d(CrashlyticsReport.e.d.a.b.c cVar) {
            this.f31614b = cVar;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.a.b.AbstractC0426b
        public CrashlyticsReport.e.d.a.b.AbstractC0426b e(CrashlyticsReport.e.d.a.b.AbstractC0428d abstractC0428d) {
            if (abstractC0428d == null) {
                throw new NullPointerException("Null signal");
            }
            this.f31616d = abstractC0428d;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.a.b.AbstractC0426b
        public CrashlyticsReport.e.d.a.b.AbstractC0426b f(List list) {
            this.f31613a = list;
            return this;
        }
    }

    private n(List list, CrashlyticsReport.e.d.a.b.c cVar, CrashlyticsReport.a aVar, CrashlyticsReport.e.d.a.b.AbstractC0428d abstractC0428d, List list2) {
        this.f31608a = list;
        this.f31609b = cVar;
        this.f31610c = aVar;
        this.f31611d = abstractC0428d;
        this.f31612e = list2;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.a.b
    public CrashlyticsReport.a b() {
        return this.f31610c;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.a.b
    public List c() {
        return this.f31612e;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.a.b
    public CrashlyticsReport.e.d.a.b.c d() {
        return this.f31609b;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.a.b
    public CrashlyticsReport.e.d.a.b.AbstractC0428d e() {
        return this.f31611d;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.e.d.a.b)) {
            return false;
        }
        CrashlyticsReport.e.d.a.b bVar = (CrashlyticsReport.e.d.a.b) obj;
        List list = this.f31608a;
        if (list != null ? list.equals(bVar.f()) : bVar.f() == null) {
            CrashlyticsReport.e.d.a.b.c cVar = this.f31609b;
            if (cVar != null ? cVar.equals(bVar.d()) : bVar.d() == null) {
                CrashlyticsReport.a aVar = this.f31610c;
                if (aVar != null ? aVar.equals(bVar.b()) : bVar.b() == null) {
                    if (this.f31611d.equals(bVar.e()) && this.f31612e.equals(bVar.c())) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.a.b
    public List f() {
        return this.f31608a;
    }

    public int hashCode() {
        List list = this.f31608a;
        int iHashCode = ((list == null ? 0 : list.hashCode()) ^ 1000003) * 1000003;
        CrashlyticsReport.e.d.a.b.c cVar = this.f31609b;
        int iHashCode2 = (iHashCode ^ (cVar == null ? 0 : cVar.hashCode())) * 1000003;
        CrashlyticsReport.a aVar = this.f31610c;
        return ((((iHashCode2 ^ (aVar != null ? aVar.hashCode() : 0)) * 1000003) ^ this.f31611d.hashCode()) * 1000003) ^ this.f31612e.hashCode();
    }

    public String toString() {
        return "Execution{threads=" + this.f31608a + ", exception=" + this.f31609b + ", appExitInfo=" + this.f31610c + ", signal=" + this.f31611d + ", binaries=" + this.f31612e + "}";
    }
}
