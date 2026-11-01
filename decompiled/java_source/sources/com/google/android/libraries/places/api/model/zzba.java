package com.google.android.libraries.places.api.model;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes4.dex */
final class zzba extends zzn {
    public static final Parcelable.Creator<zzba> CREATOR = new zzaz();

    zzba(int i11, int i12, int i13) {
        super(i11, i12, i13);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i11) {
        parcel.writeInt(getYear());
        parcel.writeInt(getMonth());
        parcel.writeInt(getDay());
    }
}
