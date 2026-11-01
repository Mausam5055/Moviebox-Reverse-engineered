package com.google.firebase.sessions;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final DataCollectionState f32680a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final DataCollectionState f32681b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final double f32682c;

    public d() {
        this(null, null, 0.0d, 7, null);
    }

    public d(DataCollectionState performance, DataCollectionState crashlytics, double d11) {
        Intrinsics.h(performance, "performance");
        Intrinsics.h(crashlytics, "crashlytics");
        this.f32680a = performance;
        this.f32681b = crashlytics;
        this.f32682c = d11;
    }

    public /* synthetic */ d(DataCollectionState dataCollectionState, DataCollectionState dataCollectionState2, double d11, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? DataCollectionState.COLLECTION_SDK_NOT_INSTALLED : dataCollectionState, (i11 & 2) != 0 ? DataCollectionState.COLLECTION_SDK_NOT_INSTALLED : dataCollectionState2, (i11 & 4) != 0 ? 1.0d : d11);
    }

    public final DataCollectionState a() {
        return this.f32681b;
    }

    public final DataCollectionState b() {
        return this.f32680a;
    }

    public final double c() {
        return this.f32682c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return this.f32680a == dVar.f32680a && this.f32681b == dVar.f32681b && Double.compare(this.f32682c, dVar.f32682c) == 0;
    }

    public int hashCode() {
        return (((this.f32680a.hashCode() * 31) + this.f32681b.hashCode()) * 31) + androidx.compose.animation.core.r.a(this.f32682c);
    }

    public String toString() {
        return "DataCollectionStatus(performance=" + this.f32680a + ", crashlytics=" + this.f32681b + ", sessionSamplingRate=" + this.f32682c + ')';
    }
}
