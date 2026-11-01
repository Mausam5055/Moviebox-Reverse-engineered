package com.google.firebase.analytics.connector.internal;

import com.google.android.gms.measurement.api.AppMeasurementSdk;

/* JADX INFO: loaded from: classes4.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private kb.a.b f31065a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private AppMeasurementSdk f31066b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private e f31067c;

    public f(AppMeasurementSdk appMeasurementSdk, kb.a.b bVar) {
        this.f31065a = bVar;
        this.f31066b = appMeasurementSdk;
        e eVar = new e(this);
        this.f31067c = eVar;
        this.f31066b.registerOnMeasurementEventListener(eVar);
    }
}
