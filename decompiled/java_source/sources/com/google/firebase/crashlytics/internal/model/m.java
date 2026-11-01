package com.google.firebase.crashlytics.internal.model;

import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
final class m extends CrashlyticsReport.e.d.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final CrashlyticsReport.e.d.a.b f31593a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List f31594b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List f31595c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Boolean f31596d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final CrashlyticsReport.e.d.a.c f31597e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final List f31598f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f31599g;

    static final class b extends CrashlyticsReport.e.d.a.AbstractC0423a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private CrashlyticsReport.e.d.a.b f31600a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private List f31601b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private List f31602c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Boolean f31603d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private CrashlyticsReport.e.d.a.c f31604e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private List f31605f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f31606g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private byte f31607h;

        b() {
        }

        private b(CrashlyticsReport.e.d.a aVar) {
            this.f31600a = aVar.f();
            this.f31601b = aVar.e();
            this.f31602c = aVar.g();
            this.f31603d = aVar.c();
            this.f31604e = aVar.d();
            this.f31605f = aVar.b();
            this.f31606g = aVar.h();
            this.f31607h = (byte) 1;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.a.AbstractC0423a
        public CrashlyticsReport.e.d.a a() {
            CrashlyticsReport.e.d.a.b bVar;
            if (this.f31607h == 1 && (bVar = this.f31600a) != null) {
                return new m(bVar, this.f31601b, this.f31602c, this.f31603d, this.f31604e, this.f31605f, this.f31606g);
            }
            StringBuilder sb2 = new StringBuilder();
            if (this.f31600a == null) {
                sb2.append(" execution");
            }
            if ((1 & this.f31607h) == 0) {
                sb2.append(" uiOrientation");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.a.AbstractC0423a
        public CrashlyticsReport.e.d.a.AbstractC0423a b(List list) {
            this.f31605f = list;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.a.AbstractC0423a
        public CrashlyticsReport.e.d.a.AbstractC0423a c(Boolean bool) {
            this.f31603d = bool;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.a.AbstractC0423a
        public CrashlyticsReport.e.d.a.AbstractC0423a d(CrashlyticsReport.e.d.a.c cVar) {
            this.f31604e = cVar;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.a.AbstractC0423a
        public CrashlyticsReport.e.d.a.AbstractC0423a e(List list) {
            this.f31601b = list;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.a.AbstractC0423a
        public CrashlyticsReport.e.d.a.AbstractC0423a f(CrashlyticsReport.e.d.a.b bVar) {
            if (bVar == null) {
                throw new NullPointerException("Null execution");
            }
            this.f31600a = bVar;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.a.AbstractC0423a
        public CrashlyticsReport.e.d.a.AbstractC0423a g(List list) {
            this.f31602c = list;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.a.AbstractC0423a
        public CrashlyticsReport.e.d.a.AbstractC0423a h(int i11) {
            this.f31606g = i11;
            this.f31607h = (byte) (this.f31607h | 1);
            return this;
        }
    }

    private m(CrashlyticsReport.e.d.a.b bVar, List list, List list2, Boolean bool, CrashlyticsReport.e.d.a.c cVar, List list3, int i11) {
        this.f31593a = bVar;
        this.f31594b = list;
        this.f31595c = list2;
        this.f31596d = bool;
        this.f31597e = cVar;
        this.f31598f = list3;
        this.f31599g = i11;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.a
    public List b() {
        return this.f31598f;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.a
    public Boolean c() {
        return this.f31596d;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.a
    public CrashlyticsReport.e.d.a.c d() {
        return this.f31597e;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.a
    public List e() {
        return this.f31594b;
    }

    public boolean equals(Object obj) {
        List list;
        List list2;
        Boolean bool;
        CrashlyticsReport.e.d.a.c cVar;
        List list3;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.e.d.a)) {
            return false;
        }
        CrashlyticsReport.e.d.a aVar = (CrashlyticsReport.e.d.a) obj;
        return this.f31593a.equals(aVar.f()) && ((list = this.f31594b) != null ? list.equals(aVar.e()) : aVar.e() == null) && ((list2 = this.f31595c) != null ? list2.equals(aVar.g()) : aVar.g() == null) && ((bool = this.f31596d) != null ? bool.equals(aVar.c()) : aVar.c() == null) && ((cVar = this.f31597e) != null ? cVar.equals(aVar.d()) : aVar.d() == null) && ((list3 = this.f31598f) != null ? list3.equals(aVar.b()) : aVar.b() == null) && this.f31599g == aVar.h();
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.a
    public CrashlyticsReport.e.d.a.b f() {
        return this.f31593a;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.a
    public List g() {
        return this.f31595c;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.a
    public int h() {
        return this.f31599g;
    }

    public int hashCode() {
        int iHashCode = (this.f31593a.hashCode() ^ 1000003) * 1000003;
        List list = this.f31594b;
        int iHashCode2 = (iHashCode ^ (list == null ? 0 : list.hashCode())) * 1000003;
        List list2 = this.f31595c;
        int iHashCode3 = (iHashCode2 ^ (list2 == null ? 0 : list2.hashCode())) * 1000003;
        Boolean bool = this.f31596d;
        int iHashCode4 = (iHashCode3 ^ (bool == null ? 0 : bool.hashCode())) * 1000003;
        CrashlyticsReport.e.d.a.c cVar = this.f31597e;
        int iHashCode5 = (iHashCode4 ^ (cVar == null ? 0 : cVar.hashCode())) * 1000003;
        List list3 = this.f31598f;
        return ((iHashCode5 ^ (list3 != null ? list3.hashCode() : 0)) * 1000003) ^ this.f31599g;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.a
    public CrashlyticsReport.e.d.a.AbstractC0423a i() {
        return new b(this);
    }

    public String toString() {
        return "Application{execution=" + this.f31593a + ", customAttributes=" + this.f31594b + ", internalKeys=" + this.f31595c + ", background=" + this.f31596d + ", currentProcessDetails=" + this.f31597e + ", appProcessDetails=" + this.f31598f + ", uiOrientation=" + this.f31599g + "}";
    }
}
