package com.google.android.libraries.places.api.model;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes4.dex */
final class zzbw extends zzai {
    public static final Parcelable.Creator<zzbw> CREATOR = new zzbv();

    zzbw(@Nullable LocalDate localDate, DayOfWeek dayOfWeek, LocalTime localTime, boolean z10) {
        super(localDate, dayOfWeek, localTime, z10);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i11) {
        parcel.writeParcelable(getDate(), i11);
        parcel.writeParcelable(getDay(), i11);
        parcel.writeParcelable(getTime(), i11);
        parcel.writeInt(isTruncated() ? 1 : 0);
    }
}
