package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
final class b extends SchedulerConfig.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f24425a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f24426b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Set f24427c;

    /* JADX INFO: renamed from: com.google.android.datatransport.runtime.scheduling.jobscheduling.b$b, reason: collision with other inner class name */
    static final class C0362b extends SchedulerConfig.b.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Long f24428a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Long f24429b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Set f24430c;

        C0362b() {
        }

        @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig.b.a
        public SchedulerConfig.b a() {
            String str = "";
            if (this.f24428a == null) {
                str = " delta";
            }
            if (this.f24429b == null) {
                str = str + " maxAllowedDelay";
            }
            if (this.f24430c == null) {
                str = str + " flags";
            }
            if (str.isEmpty()) {
                return new b(this.f24428a.longValue(), this.f24429b.longValue(), this.f24430c);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig.b.a
        public SchedulerConfig.b.a b(long j11) {
            this.f24428a = Long.valueOf(j11);
            return this;
        }

        @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig.b.a
        public SchedulerConfig.b.a c(Set set) {
            if (set == null) {
                throw new NullPointerException("Null flags");
            }
            this.f24430c = set;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig.b.a
        public SchedulerConfig.b.a d(long j11) {
            this.f24429b = Long.valueOf(j11);
            return this;
        }
    }

    private b(long j11, long j12, Set set) {
        this.f24425a = j11;
        this.f24426b = j12;
        this.f24427c = set;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig.b
    long b() {
        return this.f24425a;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig.b
    Set c() {
        return this.f24427c;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig.b
    long d() {
        return this.f24426b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SchedulerConfig.b)) {
            return false;
        }
        SchedulerConfig.b bVar = (SchedulerConfig.b) obj;
        return this.f24425a == bVar.b() && this.f24426b == bVar.d() && this.f24427c.equals(bVar.c());
    }

    public int hashCode() {
        long j11 = this.f24425a;
        int i11 = (((int) (j11 ^ (j11 >>> 32))) ^ 1000003) * 1000003;
        long j12 = this.f24426b;
        return ((i11 ^ ((int) ((j12 >>> 32) ^ j12))) * 1000003) ^ this.f24427c.hashCode();
    }

    public String toString() {
        return "ConfigValue{delta=" + this.f24425a + ", maxAllowedDelay=" + this.f24426b + ", flags=" + this.f24427c + "}";
    }
}
