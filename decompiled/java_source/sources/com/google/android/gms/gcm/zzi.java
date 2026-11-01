package com.google.android.gms.gcm;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes3.dex */
final class zzi implements Parcelable.Creator<OneoffTask> {
    zzi() {
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ OneoffTask createFromParcel(Parcel parcel) {
        return new OneoffTask(parcel, (zzi) null);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ OneoffTask[] newArray(int i11) {
        return new OneoffTask[i11];
    }
}
