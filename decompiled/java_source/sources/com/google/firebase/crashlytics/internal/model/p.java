package com.google.firebase.crashlytics.internal.model;

import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
final class p extends CrashlyticsReport.e.d.a.b.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f31627a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f31628b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List f31629c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final CrashlyticsReport.e.d.a.b.c f31630d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f31631e;

    static final class b extends CrashlyticsReport.e.d.a.b.c.AbstractC0427a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f31632a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f31633b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private List f31634c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private CrashlyticsReport.e.d.a.b.c f31635d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f31636e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private byte f31637f;

        b() {
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.a.b.c.AbstractC0427a
        public CrashlyticsReport.e.d.a.b.c a() {
            String str;
            List list;
            if (this.f31637f == 1 && (str = this.f31632a) != null && (list = this.f31634c) != null) {
                return new p(str, this.f31633b, list, this.f31635d, this.f31636e);
            }
            StringBuilder sb2 = new StringBuilder();
            if (this.f31632a == null) {
                sb2.append(" type");
            }
            if (this.f31634c == null) {
                sb2.append(" frames");
            }
            if ((1 & this.f31637f) == 0) {
                sb2.append(" overflowCount");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.a.b.c.AbstractC0427a
        public CrashlyticsReport.e.d.a.b.c.AbstractC0427a b(CrashlyticsReport.e.d.a.b.c cVar) {
            this.f31635d = cVar;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.a.b.c.AbstractC0427a
        public CrashlyticsReport.e.d.a.b.c.AbstractC0427a c(List list) {
            if (list == null) {
                throw new NullPointerException("Null frames");
            }
            this.f31634c = list;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.a.b.c.AbstractC0427a
        public CrashlyticsReport.e.d.a.b.c.AbstractC0427a d(int i11) {
            this.f31636e = i11;
            this.f31637f = (byte) (this.f31637f | 1);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.a.b.c.AbstractC0427a
        public CrashlyticsReport.e.d.a.b.c.AbstractC0427a e(String str) {
            this.f31633b = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.a.b.c.AbstractC0427a
        public CrashlyticsReport.e.d.a.b.c.AbstractC0427a f(String str) {
            if (str == null) {
                throw new NullPointerException("Null type");
            }
            this.f31632a = str;
            return this;
        }
    }

    private p(String str, String str2, List list, CrashlyticsReport.e.d.a.b.c cVar, int i11) {
        this.f31627a = str;
        this.f31628b = str2;
        this.f31629c = list;
        this.f31630d = cVar;
        this.f31631e = i11;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.a.b.c
    public CrashlyticsReport.e.d.a.b.c b() {
        return this.f31630d;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.a.b.c
    public List c() {
        return this.f31629c;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.a.b.c
    public int d() {
        return this.f31631e;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.a.b.c
    public String e() {
        return this.f31628b;
    }

    public boolean equals(Object obj) {
        String str;
        CrashlyticsReport.e.d.a.b.c cVar;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.e.d.a.b.c)) {
            return false;
        }
        CrashlyticsReport.e.d.a.b.c cVar2 = (CrashlyticsReport.e.d.a.b.c) obj;
        return this.f31627a.equals(cVar2.f()) && ((str = this.f31628b) != null ? str.equals(cVar2.e()) : cVar2.e() == null) && this.f31629c.equals(cVar2.c()) && ((cVar = this.f31630d) != null ? cVar.equals(cVar2.b()) : cVar2.b() == null) && this.f31631e == cVar2.d();
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.a.b.c
    public String f() {
        return this.f31627a;
    }

    public int hashCode() {
        int iHashCode = (this.f31627a.hashCode() ^ 1000003) * 1000003;
        String str = this.f31628b;
        int iHashCode2 = (((iHashCode ^ (str == null ? 0 : str.hashCode())) * 1000003) ^ this.f31629c.hashCode()) * 1000003;
        CrashlyticsReport.e.d.a.b.c cVar = this.f31630d;
        return ((iHashCode2 ^ (cVar != null ? cVar.hashCode() : 0)) * 1000003) ^ this.f31631e;
    }

    public String toString() {
        return "Exception{type=" + this.f31627a + ", reason=" + this.f31628b + ", frames=" + this.f31629c + ", causedBy=" + this.f31630d + ", overflowCount=" + this.f31631e + "}";
    }
}
