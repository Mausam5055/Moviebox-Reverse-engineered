package com.google.android.libraries.places.api.model;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes4.dex */
final class zzbm extends zzy {
    public static final Parcelable.Creator<zzbm> CREATOR = new zzbl();

    zzbm(Place place, double d11) {
        super(place, d11);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i11) {
        parcel.writeParcelable(getPlace(), i11);
        parcel.writeDouble(getLikelihood());
    }
}
