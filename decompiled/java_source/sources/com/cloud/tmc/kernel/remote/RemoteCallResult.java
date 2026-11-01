package com.cloud.tmc.kernel.remote;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes3.dex */
public class RemoteCallResult implements Parcelable {
    public static final Parcelable.Creator<RemoteCallResult> CREATOR = new Parcelable.Creator<RemoteCallResult>() { // from class: com.cloud.tmc.kernel.remote.RemoteCallResult.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RemoteCallResult createFromParcel(Parcel parcel) {
            return new RemoteCallResult(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RemoteCallResult[] newArray(int i11) {
            return new RemoteCallResult[i11];
        }
    };
    private boolean isError;
    private Object value;

    protected RemoteCallResult(Parcel parcel) {
        this.isError = false;
        this.isError = parcel.readByte() != 0;
        this.value = parcel.readValue(getClass().getClassLoader());
    }

    public RemoteCallResult(Object obj) {
        this.isError = false;
        if (obj instanceof Throwable) {
            this.isError = true;
        }
        this.value = obj;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public Object getValue() {
        return this.value;
    }

    public boolean isError() {
        return this.isError;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i11) {
        parcel.writeByte(this.isError ? (byte) 1 : (byte) 0);
        parcel.writeValue(this.value);
    }
}
