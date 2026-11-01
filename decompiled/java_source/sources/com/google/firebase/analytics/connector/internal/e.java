package com.google.firebase.analytics.connector.internal;

import android.os.Bundle;
import com.google.android.gms.measurement.api.AppMeasurementSdk;

/* JADX INFO: loaded from: classes4.dex */
final class e implements AppMeasurementSdk.OnEventListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ f f31064a;

    public e(f fVar) {
        this.f31064a = fVar;
    }

    @Override // com.google.android.gms.measurement.api.AppMeasurementSdk.OnEventListener, com.google.android.gms.measurement.internal.zzjl
    public final void onEvent(String str, String str2, Bundle bundle, long j11) {
        if (str == null || !a.i(str2)) {
            return;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putString("name", str2);
        bundle2.putLong("timestampInMillis", j11);
        bundle2.putBundle("params", bundle);
        this.f31064a.f31065a.a(3, bundle2);
    }
}
