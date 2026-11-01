package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes3.dex */
final class zzat implements Parcelable.Creator {
    zzat() {
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        try {
            return TokenBinding.TokenBindingStatus.fromString(parcel.readString());
        } catch (TokenBinding.UnsupportedTokenBindingStatusException e11) {
            throw new RuntimeException(e11);
        }
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i11) {
        return new TokenBinding.TokenBindingStatus[i11];
    }
}
