package com.google.firebase.crashlytics.internal.model;

import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
final class r extends CrashlyticsReport.e.d.a.b.AbstractC0430e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f31645a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f31646b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List f31647c;

    static final class b extends CrashlyticsReport.e.d.a.b.AbstractC0430e.AbstractC0431a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f31648a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f31649b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private List f31650c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private byte f31651d;

        b() {
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.a.b.AbstractC0430e.AbstractC0431a
        public CrashlyticsReport.e.d.a.b.AbstractC0430e a() {
            String str;
            List list;
            if (this.f31651d == 1 && (str = this.f31648a) != null && (list = this.f31650c) != null) {
                return new r(str, this.f31649b, list);
            }
            StringBuilder sb2 = new StringBuilder();
            if (this.f31648a == null) {
                sb2.append(" name");
            }
            if ((1 & this.f31651d) == 0) {
                sb2.append(" importance");
            }
            if (this.f31650c == null) {
                sb2.append(" frames");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.a.b.AbstractC0430e.AbstractC0431a
        public CrashlyticsReport.e.d.a.b.AbstractC0430e.AbstractC0431a b(List list) {
            if (list == null) {
                throw new NullPointerException("Null frames");
            }
            this.f31650c = list;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.a.b.AbstractC0430e.AbstractC0431a
        public CrashlyticsReport.e.d.a.b.AbstractC0430e.AbstractC0431a c(int i11) {
            this.f31649b = i11;
            this.f31651d = (byte) (this.f31651d | 1);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.a.b.AbstractC0430e.AbstractC0431a
        public CrashlyticsReport.e.d.a.b.AbstractC0430e.AbstractC0431a d(String str) {
            if (str == null) {
                throw new NullPointerException("Null name");
            }
            this.f31648a = str;
            return this;
        }
    }

    private r(String str, int i11, List list) {
        this.f31645a = str;
        this.f31646b = i11;
        this.f31647c = list;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.a.b.AbstractC0430e
    public List b() {
        return this.f31647c;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.a.b.AbstractC0430e
    public int c() {
        return this.f31646b;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.a.b.AbstractC0430e
    public String d() {
        return this.f31645a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.e.d.a.b.AbstractC0430e)) {
            return false;
        }
        CrashlyticsReport.e.d.a.b.AbstractC0430e abstractC0430e = (CrashlyticsReport.e.d.a.b.AbstractC0430e) obj;
        return this.f31645a.equals(abstractC0430e.d()) && this.f31646b == abstractC0430e.c() && this.f31647c.equals(abstractC0430e.b());
    }

    public int hashCode() {
        return ((((this.f31645a.hashCode() ^ 1000003) * 1000003) ^ this.f31646b) * 1000003) ^ this.f31647c.hashCode();
    }

    public String toString() {
        return "Thread{name=" + this.f31645a + ", importance=" + this.f31646b + ", frames=" + this.f31647c + "}";
    }
}
