package com.google.android.libraries.places.api.model;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes4.dex */
final class zzbi extends zzv {
    public static final Parcelable.Creator<zzbi> CREATOR = new zzbh();

    zzbi(String str, int i11, int i12, String str2, @Nullable String str3, @Nullable AuthorAttributions authorAttributions) {
        super(str, i11, i12, str2, str3, authorAttributions);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i11) {
        parcel.writeString(getAttributions());
        parcel.writeInt(getHeight());
        parcel.writeInt(getWidth());
        parcel.writeString(zzb());
        if (zza() == null) {
            parcel.writeInt(1);
        } else {
            parcel.writeInt(0);
            parcel.writeString(zza());
        }
        parcel.writeParcelable(getAuthorAttributions(), i11);
    }
}
