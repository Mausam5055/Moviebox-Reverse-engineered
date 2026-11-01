package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
final class a extends SchedulerConfig {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c9.a f24423a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map f24424b;

    a(c9.a aVar, Map map) {
        if (aVar == null) {
            throw new NullPointerException("Null clock");
        }
        this.f24423a = aVar;
        if (map == null) {
            throw new NullPointerException("Null values");
        }
        this.f24424b = map;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig
    c9.a e() {
        return this.f24423a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SchedulerConfig)) {
            return false;
        }
        SchedulerConfig schedulerConfig = (SchedulerConfig) obj;
        return this.f24423a.equals(schedulerConfig.e()) && this.f24424b.equals(schedulerConfig.h());
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig
    Map h() {
        return this.f24424b;
    }

    public int hashCode() {
        return ((this.f24423a.hashCode() ^ 1000003) * 1000003) ^ this.f24424b.hashCode();
    }

    public String toString() {
        return "SchedulerConfig{clock=" + this.f24423a + ", values=" + this.f24424b + "}";
    }
}
