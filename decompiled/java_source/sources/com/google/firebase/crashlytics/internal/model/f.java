package com.google.firebase.crashlytics.internal.model;

import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
final class f extends CrashlyticsReport.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f31514a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f31515b;

    static final class b extends CrashlyticsReport.d.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private List f31516a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f31517b;

        b() {
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.a
        public CrashlyticsReport.d a() {
            List list = this.f31516a;
            if (list != null) {
                return new f(list, this.f31517b);
            }
            throw new IllegalStateException("Missing required properties: files");
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.a
        public CrashlyticsReport.d.a b(List list) {
            if (list == null) {
                throw new NullPointerException("Null files");
            }
            this.f31516a = list;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.a
        public CrashlyticsReport.d.a c(String str) {
            this.f31517b = str;
            return this;
        }
    }

    private f(List list, String str) {
        this.f31514a = list;
        this.f31515b = str;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d
    public List b() {
        return this.f31514a;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d
    public String c() {
        return this.f31515b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.d)) {
            return false;
        }
        CrashlyticsReport.d dVar = (CrashlyticsReport.d) obj;
        if (this.f31514a.equals(dVar.b())) {
            String str = this.f31515b;
            if (str == null) {
                if (dVar.c() == null) {
                    return true;
                }
            } else if (str.equals(dVar.c())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int iHashCode = (this.f31514a.hashCode() ^ 1000003) * 1000003;
        String str = this.f31515b;
        return iHashCode ^ (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        return "FilesPayload{files=" + this.f31514a + ", orgId=" + this.f31515b + "}";
    }
}
