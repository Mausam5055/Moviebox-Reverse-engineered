package com.google.firebase.crashlytics.internal.model;

/* JADX INFO: loaded from: classes4.dex */
final class b extends CrashlyticsReport {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f31460b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f31461c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f31462d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f31463e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f31464f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f31465g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final String f31466h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final String f31467i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final String f31468j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final CrashlyticsReport.e f31469k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final CrashlyticsReport.d f31470l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final CrashlyticsReport.a f31471m;

    /* JADX INFO: renamed from: com.google.firebase.crashlytics.internal.model.b$b, reason: collision with other inner class name */
    static final class C0439b extends CrashlyticsReport.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f31472a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f31473b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f31474c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f31475d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f31476e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private String f31477f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private String f31478g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private String f31479h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private String f31480i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private CrashlyticsReport.e f31481j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private CrashlyticsReport.d f31482k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private CrashlyticsReport.a f31483l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private byte f31484m;

        C0439b() {
        }

        private C0439b(CrashlyticsReport crashlyticsReport) {
            this.f31472a = crashlyticsReport.m();
            this.f31473b = crashlyticsReport.i();
            this.f31474c = crashlyticsReport.l();
            this.f31475d = crashlyticsReport.j();
            this.f31476e = crashlyticsReport.h();
            this.f31477f = crashlyticsReport.g();
            this.f31478g = crashlyticsReport.d();
            this.f31479h = crashlyticsReport.e();
            this.f31480i = crashlyticsReport.f();
            this.f31481j = crashlyticsReport.n();
            this.f31482k = crashlyticsReport.k();
            this.f31483l = crashlyticsReport.c();
            this.f31484m = (byte) 1;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.b
        public CrashlyticsReport a() {
            if (this.f31484m == 1 && this.f31472a != null && this.f31473b != null && this.f31475d != null && this.f31479h != null && this.f31480i != null) {
                return new b(this.f31472a, this.f31473b, this.f31474c, this.f31475d, this.f31476e, this.f31477f, this.f31478g, this.f31479h, this.f31480i, this.f31481j, this.f31482k, this.f31483l);
            }
            StringBuilder sb2 = new StringBuilder();
            if (this.f31472a == null) {
                sb2.append(" sdkVersion");
            }
            if (this.f31473b == null) {
                sb2.append(" gmpAppId");
            }
            if ((1 & this.f31484m) == 0) {
                sb2.append(" platform");
            }
            if (this.f31475d == null) {
                sb2.append(" installationUuid");
            }
            if (this.f31479h == null) {
                sb2.append(" buildVersion");
            }
            if (this.f31480i == null) {
                sb2.append(" displayVersion");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.b
        public CrashlyticsReport.b b(CrashlyticsReport.a aVar) {
            this.f31483l = aVar;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.b
        public CrashlyticsReport.b c(String str) {
            this.f31478g = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.b
        public CrashlyticsReport.b d(String str) {
            if (str == null) {
                throw new NullPointerException("Null buildVersion");
            }
            this.f31479h = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.b
        public CrashlyticsReport.b e(String str) {
            if (str == null) {
                throw new NullPointerException("Null displayVersion");
            }
            this.f31480i = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.b
        public CrashlyticsReport.b f(String str) {
            this.f31477f = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.b
        public CrashlyticsReport.b g(String str) {
            this.f31476e = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.b
        public CrashlyticsReport.b h(String str) {
            if (str == null) {
                throw new NullPointerException("Null gmpAppId");
            }
            this.f31473b = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.b
        public CrashlyticsReport.b i(String str) {
            if (str == null) {
                throw new NullPointerException("Null installationUuid");
            }
            this.f31475d = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.b
        public CrashlyticsReport.b j(CrashlyticsReport.d dVar) {
            this.f31482k = dVar;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.b
        public CrashlyticsReport.b k(int i11) {
            this.f31474c = i11;
            this.f31484m = (byte) (this.f31484m | 1);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.b
        public CrashlyticsReport.b l(String str) {
            if (str == null) {
                throw new NullPointerException("Null sdkVersion");
            }
            this.f31472a = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.b
        public CrashlyticsReport.b m(CrashlyticsReport.e eVar) {
            this.f31481j = eVar;
            return this;
        }
    }

    private b(String str, String str2, int i11, String str3, String str4, String str5, String str6, String str7, String str8, CrashlyticsReport.e eVar, CrashlyticsReport.d dVar, CrashlyticsReport.a aVar) {
        this.f31460b = str;
        this.f31461c = str2;
        this.f31462d = i11;
        this.f31463e = str3;
        this.f31464f = str4;
        this.f31465g = str5;
        this.f31466h = str6;
        this.f31467i = str7;
        this.f31468j = str8;
        this.f31469k = eVar;
        this.f31470l = dVar;
        this.f31471m = aVar;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport
    public CrashlyticsReport.a c() {
        return this.f31471m;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport
    public String d() {
        return this.f31466h;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport
    public String e() {
        return this.f31467i;
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        String str3;
        CrashlyticsReport.e eVar;
        CrashlyticsReport.d dVar;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport)) {
            return false;
        }
        CrashlyticsReport crashlyticsReport = (CrashlyticsReport) obj;
        if (this.f31460b.equals(crashlyticsReport.m()) && this.f31461c.equals(crashlyticsReport.i()) && this.f31462d == crashlyticsReport.l() && this.f31463e.equals(crashlyticsReport.j()) && ((str = this.f31464f) != null ? str.equals(crashlyticsReport.h()) : crashlyticsReport.h() == null) && ((str2 = this.f31465g) != null ? str2.equals(crashlyticsReport.g()) : crashlyticsReport.g() == null) && ((str3 = this.f31466h) != null ? str3.equals(crashlyticsReport.d()) : crashlyticsReport.d() == null) && this.f31467i.equals(crashlyticsReport.e()) && this.f31468j.equals(crashlyticsReport.f()) && ((eVar = this.f31469k) != null ? eVar.equals(crashlyticsReport.n()) : crashlyticsReport.n() == null) && ((dVar = this.f31470l) != null ? dVar.equals(crashlyticsReport.k()) : crashlyticsReport.k() == null)) {
            CrashlyticsReport.a aVar = this.f31471m;
            if (aVar == null) {
                if (crashlyticsReport.c() == null) {
                    return true;
                }
            } else if (aVar.equals(crashlyticsReport.c())) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport
    public String f() {
        return this.f31468j;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport
    public String g() {
        return this.f31465g;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport
    public String h() {
        return this.f31464f;
    }

    public int hashCode() {
        int iHashCode = (((((((this.f31460b.hashCode() ^ 1000003) * 1000003) ^ this.f31461c.hashCode()) * 1000003) ^ this.f31462d) * 1000003) ^ this.f31463e.hashCode()) * 1000003;
        String str = this.f31464f;
        int iHashCode2 = (iHashCode ^ (str == null ? 0 : str.hashCode())) * 1000003;
        String str2 = this.f31465g;
        int iHashCode3 = (iHashCode2 ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.f31466h;
        int iHashCode4 = (((((iHashCode3 ^ (str3 == null ? 0 : str3.hashCode())) * 1000003) ^ this.f31467i.hashCode()) * 1000003) ^ this.f31468j.hashCode()) * 1000003;
        CrashlyticsReport.e eVar = this.f31469k;
        int iHashCode5 = (iHashCode4 ^ (eVar == null ? 0 : eVar.hashCode())) * 1000003;
        CrashlyticsReport.d dVar = this.f31470l;
        int iHashCode6 = (iHashCode5 ^ (dVar == null ? 0 : dVar.hashCode())) * 1000003;
        CrashlyticsReport.a aVar = this.f31471m;
        return iHashCode6 ^ (aVar != null ? aVar.hashCode() : 0);
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport
    public String i() {
        return this.f31461c;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport
    public String j() {
        return this.f31463e;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport
    public CrashlyticsReport.d k() {
        return this.f31470l;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport
    public int l() {
        return this.f31462d;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport
    public String m() {
        return this.f31460b;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport
    public CrashlyticsReport.e n() {
        return this.f31469k;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport
    protected CrashlyticsReport.b o() {
        return new C0439b(this);
    }

    public String toString() {
        return "CrashlyticsReport{sdkVersion=" + this.f31460b + ", gmpAppId=" + this.f31461c + ", platform=" + this.f31462d + ", installationUuid=" + this.f31463e + ", firebaseInstallationId=" + this.f31464f + ", firebaseAuthenticationToken=" + this.f31465g + ", appQualitySessionId=" + this.f31466h + ", buildVersion=" + this.f31467i + ", displayVersion=" + this.f31468j + ", session=" + this.f31469k + ", ndkPayload=" + this.f31470l + ", appExitInfo=" + this.f31471m + "}";
    }
}
