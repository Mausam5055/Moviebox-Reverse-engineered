package com.google.firebase.crashlytics.internal.model;

import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
final class h extends CrashlyticsReport.e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f31522a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f31523b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f31524c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f31525d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Long f31526e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f31527f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final CrashlyticsReport.e.a f31528g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final CrashlyticsReport.e.f f31529h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final CrashlyticsReport.e.AbstractC0437e f31530i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final CrashlyticsReport.e.c f31531j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final List f31532k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final int f31533l;

    static final class b extends CrashlyticsReport.e.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f31534a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f31535b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f31536c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private long f31537d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private Long f31538e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f31539f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private CrashlyticsReport.e.a f31540g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private CrashlyticsReport.e.f f31541h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private CrashlyticsReport.e.AbstractC0437e f31542i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private CrashlyticsReport.e.c f31543j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private List f31544k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private int f31545l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private byte f31546m;

        b() {
        }

        private b(CrashlyticsReport.e eVar) {
            this.f31534a = eVar.g();
            this.f31535b = eVar.i();
            this.f31536c = eVar.c();
            this.f31537d = eVar.l();
            this.f31538e = eVar.e();
            this.f31539f = eVar.n();
            this.f31540g = eVar.b();
            this.f31541h = eVar.m();
            this.f31542i = eVar.k();
            this.f31543j = eVar.d();
            this.f31544k = eVar.f();
            this.f31545l = eVar.h();
            this.f31546m = (byte) 7;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.b
        public CrashlyticsReport.e a() {
            String str;
            String str2;
            CrashlyticsReport.e.a aVar;
            if (this.f31546m == 7 && (str = this.f31534a) != null && (str2 = this.f31535b) != null && (aVar = this.f31540g) != null) {
                return new h(str, str2, this.f31536c, this.f31537d, this.f31538e, this.f31539f, aVar, this.f31541h, this.f31542i, this.f31543j, this.f31544k, this.f31545l);
            }
            StringBuilder sb2 = new StringBuilder();
            if (this.f31534a == null) {
                sb2.append(" generator");
            }
            if (this.f31535b == null) {
                sb2.append(" identifier");
            }
            if ((this.f31546m & 1) == 0) {
                sb2.append(" startedAt");
            }
            if ((this.f31546m & 2) == 0) {
                sb2.append(" crashed");
            }
            if (this.f31540g == null) {
                sb2.append(" app");
            }
            if ((this.f31546m & 4) == 0) {
                sb2.append(" generatorType");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.b
        public CrashlyticsReport.e.b b(CrashlyticsReport.e.a aVar) {
            if (aVar == null) {
                throw new NullPointerException("Null app");
            }
            this.f31540g = aVar;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.b
        public CrashlyticsReport.e.b c(String str) {
            this.f31536c = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.b
        public CrashlyticsReport.e.b d(boolean z10) {
            this.f31539f = z10;
            this.f31546m = (byte) (this.f31546m | 2);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.b
        public CrashlyticsReport.e.b e(CrashlyticsReport.e.c cVar) {
            this.f31543j = cVar;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.b
        public CrashlyticsReport.e.b f(Long l11) {
            this.f31538e = l11;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.b
        public CrashlyticsReport.e.b g(List list) {
            this.f31544k = list;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.b
        public CrashlyticsReport.e.b h(String str) {
            if (str == null) {
                throw new NullPointerException("Null generator");
            }
            this.f31534a = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.b
        public CrashlyticsReport.e.b i(int i11) {
            this.f31545l = i11;
            this.f31546m = (byte) (this.f31546m | 4);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.b
        public CrashlyticsReport.e.b j(String str) {
            if (str == null) {
                throw new NullPointerException("Null identifier");
            }
            this.f31535b = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.b
        public CrashlyticsReport.e.b l(CrashlyticsReport.e.AbstractC0437e abstractC0437e) {
            this.f31542i = abstractC0437e;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.b
        public CrashlyticsReport.e.b m(long j11) {
            this.f31537d = j11;
            this.f31546m = (byte) (this.f31546m | 1);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.b
        public CrashlyticsReport.e.b n(CrashlyticsReport.e.f fVar) {
            this.f31541h = fVar;
            return this;
        }
    }

    private h(String str, String str2, String str3, long j11, Long l11, boolean z10, CrashlyticsReport.e.a aVar, CrashlyticsReport.e.f fVar, CrashlyticsReport.e.AbstractC0437e abstractC0437e, CrashlyticsReport.e.c cVar, List list, int i11) {
        this.f31522a = str;
        this.f31523b = str2;
        this.f31524c = str3;
        this.f31525d = j11;
        this.f31526e = l11;
        this.f31527f = z10;
        this.f31528g = aVar;
        this.f31529h = fVar;
        this.f31530i = abstractC0437e;
        this.f31531j = cVar;
        this.f31532k = list;
        this.f31533l = i11;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e
    public CrashlyticsReport.e.a b() {
        return this.f31528g;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e
    public String c() {
        return this.f31524c;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e
    public CrashlyticsReport.e.c d() {
        return this.f31531j;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e
    public Long e() {
        return this.f31526e;
    }

    public boolean equals(Object obj) {
        String str;
        Long l11;
        CrashlyticsReport.e.f fVar;
        CrashlyticsReport.e.AbstractC0437e abstractC0437e;
        CrashlyticsReport.e.c cVar;
        List list;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.e)) {
            return false;
        }
        CrashlyticsReport.e eVar = (CrashlyticsReport.e) obj;
        return this.f31522a.equals(eVar.g()) && this.f31523b.equals(eVar.i()) && ((str = this.f31524c) != null ? str.equals(eVar.c()) : eVar.c() == null) && this.f31525d == eVar.l() && ((l11 = this.f31526e) != null ? l11.equals(eVar.e()) : eVar.e() == null) && this.f31527f == eVar.n() && this.f31528g.equals(eVar.b()) && ((fVar = this.f31529h) != null ? fVar.equals(eVar.m()) : eVar.m() == null) && ((abstractC0437e = this.f31530i) != null ? abstractC0437e.equals(eVar.k()) : eVar.k() == null) && ((cVar = this.f31531j) != null ? cVar.equals(eVar.d()) : eVar.d() == null) && ((list = this.f31532k) != null ? list.equals(eVar.f()) : eVar.f() == null) && this.f31533l == eVar.h();
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e
    public List f() {
        return this.f31532k;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e
    public String g() {
        return this.f31522a;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e
    public int h() {
        return this.f31533l;
    }

    public int hashCode() {
        int iHashCode = (((this.f31522a.hashCode() ^ 1000003) * 1000003) ^ this.f31523b.hashCode()) * 1000003;
        String str = this.f31524c;
        int iHashCode2 = str == null ? 0 : str.hashCode();
        long j11 = this.f31525d;
        int i11 = (((iHashCode ^ iHashCode2) * 1000003) ^ ((int) (j11 ^ (j11 >>> 32)))) * 1000003;
        Long l11 = this.f31526e;
        int iHashCode3 = (((((i11 ^ (l11 == null ? 0 : l11.hashCode())) * 1000003) ^ (this.f31527f ? 1231 : 1237)) * 1000003) ^ this.f31528g.hashCode()) * 1000003;
        CrashlyticsReport.e.f fVar = this.f31529h;
        int iHashCode4 = (iHashCode3 ^ (fVar == null ? 0 : fVar.hashCode())) * 1000003;
        CrashlyticsReport.e.AbstractC0437e abstractC0437e = this.f31530i;
        int iHashCode5 = (iHashCode4 ^ (abstractC0437e == null ? 0 : abstractC0437e.hashCode())) * 1000003;
        CrashlyticsReport.e.c cVar = this.f31531j;
        int iHashCode6 = (iHashCode5 ^ (cVar == null ? 0 : cVar.hashCode())) * 1000003;
        List list = this.f31532k;
        return ((iHashCode6 ^ (list != null ? list.hashCode() : 0)) * 1000003) ^ this.f31533l;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e
    public String i() {
        return this.f31523b;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e
    public CrashlyticsReport.e.AbstractC0437e k() {
        return this.f31530i;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e
    public long l() {
        return this.f31525d;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e
    public CrashlyticsReport.e.f m() {
        return this.f31529h;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e
    public boolean n() {
        return this.f31527f;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e
    public CrashlyticsReport.e.b o() {
        return new b(this);
    }

    public String toString() {
        return "Session{generator=" + this.f31522a + ", identifier=" + this.f31523b + ", appQualitySessionId=" + this.f31524c + ", startedAt=" + this.f31525d + ", endedAt=" + this.f31526e + ", crashed=" + this.f31527f + ", app=" + this.f31528g + ", user=" + this.f31529h + ", os=" + this.f31530i + ", device=" + this.f31531j + ", events=" + this.f31532k + ", generatorType=" + this.f31533l + "}";
    }
}
