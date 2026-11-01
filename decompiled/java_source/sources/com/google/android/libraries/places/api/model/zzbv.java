package com.google.android.libraries.places.api.model;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes4.dex */
final class zzbv implements Parcelable.Creator {
    zzbv() {
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        return new zzbw((LocalDate) parcel.readParcelable(TimeOfWeek.class.getClassLoader()), (DayOfWeek) parcel.readParcelable(TimeOfWeek.class.getClassLoader()), (LocalTime) parcel.readParcelable(TimeOfWeek.class.getClassLoader()), parcel.readInt() == 1);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i11) {
        return new zzbw[i11];
    }
}
