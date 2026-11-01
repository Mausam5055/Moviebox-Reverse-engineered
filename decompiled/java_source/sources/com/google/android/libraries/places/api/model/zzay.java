package com.google.android.libraries.places.api.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.maps.model.LatLng;

/* JADX INFO: loaded from: classes4.dex */
final class zzay extends zzl {
    public static final Parcelable.Creator<zzay> CREATOR = new zzax();

    zzay(LatLng latLng, double d11) {
        super(latLng, d11);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i11) {
        parcel.writeParcelable(getCenter(), i11);
        parcel.writeDouble(getRadius());
    }
}
