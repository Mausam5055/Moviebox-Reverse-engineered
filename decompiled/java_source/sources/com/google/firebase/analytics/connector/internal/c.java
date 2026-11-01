package com.google.firebase.analytics.connector.internal;

import android.os.Bundle;
import com.google.android.gms.measurement.api.AppMeasurementSdk;

/* JADX INFO: loaded from: classes4.dex */
final class c implements AppMeasurementSdk.OnEventListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ d f31059a;

    public c(d dVar) {
        this.f31059a = dVar;
    }

    @Override // com.google.android.gms.measurement.api.AppMeasurementSdk.OnEventListener, com.google.android.gms.measurement.internal.zzjl
    public final void onEvent(String str, String str2, Bundle bundle, long j11) {
        if (this.f31059a.f31060a.contains(str2)) {
            Bundle bundle2 = new Bundle();
            bundle2.putString("events", a.b(str2));
            this.f31059a.f31061b.a(2, bundle2);
        }
    }
}
