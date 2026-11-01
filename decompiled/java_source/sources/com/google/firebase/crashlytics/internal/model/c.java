package com.google.firebase.crashlytics.internal.model;

import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
final class c extends CrashlyticsReport.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f31485a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f31486b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f31487c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f31488d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final long f31489e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final long f31490f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final long f31491g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final String f31492h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final List f31493i;

    static final class b extends CrashlyticsReport.a.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f31494a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f31495b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f31496c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f31497d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private long f31498e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private long f31499f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private long f31500g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private String f31501h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private List f31502i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private byte f31503j;

        b() {
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.a.b
        public CrashlyticsReport.a a() {
            String str;
            if (this.f31503j == 63 && (str = this.f31495b) != null) {
                return new c(this.f31494a, str, this.f31496c, this.f31497d, this.f31498e, this.f31499f, this.f31500g, this.f31501h, this.f31502i);
            }
            StringBuilder sb2 = new StringBuilder();
            if ((this.f31503j & 1) == 0) {
                sb2.append(" pid");
            }
            if (this.f31495b == null) {
                sb2.append(" processName");
            }
            if ((this.f31503j & 2) == 0) {
                sb2.append(" reasonCode");
            }
            if ((this.f31503j & 4) == 0) {
                sb2.append(" importance");
            }
            if ((this.f31503j & 8) == 0) {
                sb2.append(" pss");
            }
            if ((this.f31503j & 16) == 0) {
                sb2.append(" rss");
            }
            if ((this.f31503j & 32) == 0) {
                sb2.append(" timestamp");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.a.b
        public CrashlyticsReport.a.b b(List list) {
            this.f31502i = list;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.a.b
        public CrashlyticsReport.a.b c(int i11) {
            this.f31497d = i11;
            this.f31503j = (byte) (this.f31503j | 4);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.a.b
        public CrashlyticsReport.a.b d(int i11) {
            this.f31494a = i11;
            this.f31503j = (byte) (this.f31503j | 1);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.a.b
        public CrashlyticsReport.a.b e(String str) {
            if (str == null) {
                throw new NullPointerException("Null processName");
            }
            this.f31495b = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.a.b
        public CrashlyticsReport.a.b f(long j11) {
            this.f31498e = j11;
            this.f31503j = (byte) (this.f31503j | 8);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.a.b
        public CrashlyticsReport.a.b g(int i11) {
            this.f31496c = i11;
            this.f31503j = (byte) (this.f31503j | 2);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.a.b
        public CrashlyticsReport.a.b h(long j11) {
            this.f31499f = j11;
            this.f31503j = (byte) (this.f31503j | 16);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.a.b
        public CrashlyticsReport.a.b i(long j11) {
            this.f31500g = j11;
            this.f31503j = (byte) (this.f31503j | 32);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.a.b
        public CrashlyticsReport.a.b j(String str) {
            this.f31501h = str;
            return this;
        }
    }

    private c(int i11, String str, int i12, int i13, long j11, long j12, long j13, String str2, List list) {
        this.f31485a = i11;
        this.f31486b = str;
        this.f31487c = i12;
        this.f31488d = i13;
        this.f31489e = j11;
        this.f31490f = j12;
        this.f31491g = j13;
        this.f31492h = str2;
        this.f31493i = list;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.a
    public List b() {
        return this.f31493i;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.a
    public int c() {
        return this.f31488d;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.a
    public int d() {
        return this.f31485a;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.a
    public String e() {
        return this.f31486b;
    }

    public boolean equals(Object obj) {
        String str;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.a)) {
            return false;
        }
        CrashlyticsReport.a aVar = (CrashlyticsReport.a) obj;
        if (this.f31485a == aVar.d() && this.f31486b.equals(aVar.e()) && this.f31487c == aVar.g() && this.f31488d == aVar.c() && this.f31489e == aVar.f() && this.f31490f == aVar.h() && this.f31491g == aVar.i() && ((str = this.f31492h) != null ? str.equals(aVar.j()) : aVar.j() == null)) {
            List list = this.f31493i;
            if (list == null) {
                if (aVar.b() == null) {
                    return true;
                }
            } else if (list.equals(aVar.b())) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.a
    public long f() {
        return this.f31489e;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.a
    public int g() {
        return this.f31487c;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.a
    public long h() {
        return this.f31490f;
    }

    public int hashCode() {
        int iHashCode = (((((((this.f31485a ^ 1000003) * 1000003) ^ this.f31486b.hashCode()) * 1000003) ^ this.f31487c) * 1000003) ^ this.f31488d) * 1000003;
        long j11 = this.f31489e;
        int i11 = (iHashCode ^ ((int) (j11 ^ (j11 >>> 32)))) * 1000003;
        long j12 = this.f31490f;
        int i12 = (i11 ^ ((int) (j12 ^ (j12 >>> 32)))) * 1000003;
        long j13 = this.f31491g;
        int i13 = (i12 ^ ((int) (j13 ^ (j13 >>> 32)))) * 1000003;
        String str = this.f31492h;
        int iHashCode2 = (i13 ^ (str == null ? 0 : str.hashCode())) * 1000003;
        List list = this.f31493i;
        return iHashCode2 ^ (list != null ? list.hashCode() : 0);
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.a
    public long i() {
        return this.f31491g;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.a
    public String j() {
        return this.f31492h;
    }

    public String toString() {
        return "ApplicationExitInfo{pid=" + this.f31485a + ", processName=" + this.f31486b + ", reasonCode=" + this.f31487c + ", importance=" + this.f31488d + ", pss=" + this.f31489e + ", rss=" + this.f31490f + ", timestamp=" + this.f31491g + ", traceFile=" + this.f31492h + ", buildIdMappingForArch=" + this.f31493i + "}";
    }
}
