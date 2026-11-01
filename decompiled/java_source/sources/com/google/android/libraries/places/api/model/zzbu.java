package com.google.android.libraries.places.api.model;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes4.dex */
final class zzbu extends zzag {
    public static final Parcelable.Creator<zzbu> CREATOR = new zzbt();

    zzbu(LocalDate localDate, boolean z10) {
        super(localDate, z10);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i11) {
        parcel.writeParcelable(getDate(), i11);
        parcel.writeInt(isExceptional() ? 1 : 0);
    }
}
