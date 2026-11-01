package com.google.android.gms.gcm;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes3.dex */
final class zzk implements Parcelable.Creator<PeriodicTask> {
    zzk() {
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ PeriodicTask createFromParcel(Parcel parcel) {
        return new PeriodicTask(parcel, (zzk) null);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ PeriodicTask[] newArray(int i11) {
        return new PeriodicTask[i11];
    }
}
