package com.google.android.libraries.places.api.model;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes4.dex */
final class zzbf implements Parcelable.Creator {
    zzbf() {
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        return new zzbg((TimeOfWeek) parcel.readParcelable(Period.class.getClassLoader()), (TimeOfWeek) parcel.readParcelable(Period.class.getClassLoader()));
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i11) {
        return new zzbg[i11];
    }
}
