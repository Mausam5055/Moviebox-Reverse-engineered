package com.google.android.libraries.places.api.model;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes4.dex */
final class zzbd implements Parcelable.Creator {
    zzbd() {
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        return new zzbe((OpeningHours.HoursType) parcel.readParcelable(OpeningHours.class.getClassLoader()), parcel.readArrayList(OpeningHours.class.getClassLoader()), parcel.readArrayList(OpeningHours.class.getClassLoader()), parcel.readArrayList(OpeningHours.class.getClassLoader()));
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i11) {
        return new zzbe[i11];
    }
}
