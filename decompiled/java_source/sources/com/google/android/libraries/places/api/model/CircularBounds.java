package com.google.android.libraries.places.api.model;

import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.maps.model.LatLng;

/* JADX INFO: loaded from: classes4.dex */
public abstract class CircularBounds implements LocationBias, LocationRestriction, Parcelable {
    @RecentlyNonNull
    public static CircularBounds newInstance(@RecentlyNonNull LatLng latLng, double d11) {
        return new zzay(latLng, d11);
    }

    @RecentlyNonNull
    public abstract LatLng getCenter();

    public abstract double getRadius();
}
