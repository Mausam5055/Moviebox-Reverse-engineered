package com.mbridge.msdk.foundation.same.report;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes5.dex */
public class BatchReportMessage implements Parcelable {
    public static final Parcelable.Creator<BatchReportMessage> CREATOR = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f35517a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f35518b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f35519c;

    class a implements Parcelable.Creator<BatchReportMessage> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public BatchReportMessage createFromParcel(Parcel parcel) {
            return new BatchReportMessage(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public BatchReportMessage[] newArray(int i11) {
            return new BatchReportMessage[i11];
        }
    }

    protected BatchReportMessage(Parcel parcel) {
        this.f35519c = parcel.readString();
        this.f35517a = parcel.readString();
        this.f35518b = parcel.readLong();
    }

    public BatchReportMessage(String str, String str2, long j11) {
        this.f35519c = str;
        this.f35517a = str2;
        this.f35518b = j11;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getReportMessage() {
        return this.f35517a;
    }

    public long getTimestamp() {
        return this.f35518b;
    }

    public String getUuid() {
        return this.f35519c;
    }

    public void setReportMessage(String str) {
        this.f35517a = str;
    }

    public void setTimestamp(long j11) {
        this.f35518b = j11;
    }

    public void setUuid(String str) {
        this.f35519c = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i11) {
        parcel.writeString(this.f35519c);
        parcel.writeString(this.f35517a);
        parcel.writeLong(this.f35518b);
    }
}
