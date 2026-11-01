package com.transsion.athena.data;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes5.dex */
public class TrackDataWrapper implements Parcelable {
    public static final Parcelable.Creator<TrackDataWrapper> CREATOR = new athena();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f42660a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TrackData f42661b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f42662c;

    class athena implements Parcelable.Creator<TrackDataWrapper> {
        athena() {
        }

        @Override // android.os.Parcelable.Creator
        public TrackDataWrapper createFromParcel(Parcel parcel) {
            return new TrackDataWrapper(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public TrackDataWrapper[] newArray(int i11) {
            return new TrackDataWrapper[i11];
        }
    }

    protected TrackDataWrapper(Parcel parcel) {
        this.f42660a = parcel.readString();
        this.f42661b = (TrackData) parcel.readParcelable(TrackData.class.getClassLoader());
        this.f42662c = parcel.readLong();
    }

    public TrackDataWrapper(String str, TrackData trackData, long j11) {
        this.f42660a = str;
        this.f42661b = trackData;
        this.f42662c = j11;
    }

    public String a() {
        String str = this.f42660a;
        return str == null ? "" : str;
    }

    public long b() {
        return this.f42662c;
    }

    public TrackData c() {
        return this.f42661b;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i11) {
        parcel.writeString(this.f42660a);
        parcel.writeParcelable(this.f42661b, i11);
        parcel.writeLong(this.f42662c);
    }
}
