package com.google.android.gms.maps;

/* JADX INFO: loaded from: classes4.dex */
final class zzu extends com.google.android.gms.maps.internal.zzu {
    private final /* synthetic */ GoogleMap.OnCameraMoveStartedListener zzac;

    zzu(GoogleMap googleMap, GoogleMap.OnCameraMoveStartedListener onCameraMoveStartedListener) {
        this.zzac = onCameraMoveStartedListener;
    }

    @Override // com.google.android.gms.maps.internal.zzt
    public final void onCameraMoveStarted(int i11) {
        this.zzac.onCameraMoveStarted(i11);
    }
}
