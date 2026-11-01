package com.google.android.libraries.places.api.model;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes4.dex */
final class zzbc extends zzp {
    public static final Parcelable.Creator<zzbc> CREATOR = new zzbb();

    zzbc(int i11, int i12) {
        super(i11, i12);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i11) {
        parcel.writeInt(getHours());
        parcel.writeInt(getMinutes());
    }
}
