package com.transsnet.launcherlib;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes7.dex */
public class PalmStoreDownLoadTaskInfo implements Parcelable {
    public static final Parcelable.Creator<PalmStoreDownLoadTaskInfo> CREATOR = new a();
    private String fromPage;
    private String iconUrl;
    private String name;
    private String pkgName;
    private float progress;
    private int status;
    private String taskId;

    class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public PalmStoreDownLoadTaskInfo createFromParcel(Parcel parcel) {
            return new PalmStoreDownLoadTaskInfo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public PalmStoreDownLoadTaskInfo[] newArray(int i11) {
            return new PalmStoreDownLoadTaskInfo[i11];
        }
    }

    public PalmStoreDownLoadTaskInfo() {
    }

    protected PalmStoreDownLoadTaskInfo(Parcel parcel) {
        this.taskId = parcel.readString();
        this.pkgName = parcel.readString();
        this.iconUrl = parcel.readString();
        this.name = parcel.readString();
        this.progress = parcel.readFloat();
        this.status = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getFromPage() {
        return this.fromPage;
    }

    public String getIconUrl() {
        return this.iconUrl;
    }

    public String getName() {
        return this.name;
    }

    public String getPkgName() {
        return this.pkgName;
    }

    public float getProgress() {
        return this.progress;
    }

    public int getStatus() {
        return this.status;
    }

    public String getTaskId() {
        return this.taskId;
    }

    public void setFromPage(String str) {
        this.fromPage = str;
    }

    public void setIconUrl(String str) {
        this.iconUrl = str;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setPkgName(String str) {
        this.pkgName = str;
    }

    public void setProgress(float f11) {
        this.progress = f11;
    }

    public void setStatus(int i11) {
        this.status = i11;
    }

    public void setTaskId(String str) {
        this.taskId = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i11) {
        parcel.writeString(this.taskId);
        parcel.writeString(this.pkgName);
        parcel.writeString(this.iconUrl);
        parcel.writeString(this.name);
        parcel.writeFloat(this.progress);
        parcel.writeInt(this.status);
    }
}
