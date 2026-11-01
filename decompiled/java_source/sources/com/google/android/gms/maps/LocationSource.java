package com.google.android.gms.maps;

import android.location.Location;

/* JADX INFO: loaded from: classes4.dex */
public interface LocationSource {

    public interface OnLocationChangedListener {
        void onLocationChanged(Location location);
    }

    void activate(OnLocationChangedListener onLocationChangedListener);

    void deactivate();
}
