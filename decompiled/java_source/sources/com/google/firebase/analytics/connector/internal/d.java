package com.google.firebase.analytics.connector.internal;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Set f31060a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private kb.a.b f31061b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private AppMeasurementSdk f31062c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private c f31063d;

    public d(AppMeasurementSdk appMeasurementSdk, kb.a.b bVar) {
        this.f31061b = bVar;
        this.f31062c = appMeasurementSdk;
        c cVar = new c(this);
        this.f31063d = cVar;
        this.f31062c.registerOnMeasurementEventListener(cVar);
        this.f31060a = new HashSet();
    }
}
