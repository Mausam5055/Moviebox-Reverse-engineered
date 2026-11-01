package com.google.firebase.crashlytics.internal.model;

import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
final class y extends CrashlyticsReport.e.d.f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f31700a;

    static final class b extends CrashlyticsReport.e.d.f.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private List f31701a;

        b() {
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.f.a
        public CrashlyticsReport.e.d.f a() {
            List list = this.f31701a;
            if (list != null) {
                return new y(list);
            }
            throw new IllegalStateException("Missing required properties: rolloutAssignments");
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.f.a
        public CrashlyticsReport.e.d.f.a b(List list) {
            if (list == null) {
                throw new NullPointerException("Null rolloutAssignments");
            }
            this.f31701a = list;
            return this;
        }
    }

    private y(List list) {
        this.f31700a = list;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.e.d.f
    public List b() {
        return this.f31700a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof CrashlyticsReport.e.d.f) {
            return this.f31700a.equals(((CrashlyticsReport.e.d.f) obj).b());
        }
        return false;
    }

    public int hashCode() {
        return this.f31700a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "RolloutsState{rolloutAssignments=" + this.f31700a + "}";
    }
}
