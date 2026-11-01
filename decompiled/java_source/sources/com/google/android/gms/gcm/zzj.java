package com.google.android.gms.gcm;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes3.dex */
final class zzj implements Parcelable.Creator<PendingCallback> {
    zzj() {
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ PendingCallback createFromParcel(Parcel parcel) {
        return new PendingCallback(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ PendingCallback[] newArray(int i11) {
        return new PendingCallback[i11];
    }
}
