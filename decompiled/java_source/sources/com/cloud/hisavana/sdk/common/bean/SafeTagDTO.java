package com.cloud.hisavana.sdk.common.bean;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.annotations.SerializedName;

/* JADX INFO: loaded from: classes3.dex */
public class SafeTagDTO implements Parcelable {
    public static final Parcelable.Creator<SafeTagDTO> CREATOR = new Parcelable.Creator<SafeTagDTO>() { // from class: com.cloud.hisavana.sdk.common.bean.SafeTagDTO.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SafeTagDTO createFromParcel(Parcel parcel) {
            return new SafeTagDTO(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SafeTagDTO[] newArray(int i11) {
            return new SafeTagDTO[i11];
        }
    };
    private String icon;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    private String f22038id;
    private String isDeleted;
    private String nameTK;

    @SerializedName("name")
    private String nameX;
    private String priority;
    private String type;

    public SafeTagDTO() {
    }

    protected SafeTagDTO(Parcel parcel) {
        this.isDeleted = parcel.readString();
        this.icon = parcel.readString();
        this.nameX = parcel.readString();
        this.f22038id = parcel.readString();
        this.priority = parcel.readString();
        this.type = parcel.readString();
        this.nameTK = parcel.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getIcon() {
        return this.icon;
    }

    public String getId() {
        return this.f22038id;
    }

    public String getIsDeleted() {
        return this.isDeleted;
    }

    public String getNameTK() {
        return this.nameTK;
    }

    public String getNameX() {
        return this.nameX;
    }

    public String getPriority() {
        return this.priority;
    }

    public String getType() {
        return this.type;
    }

    public void setIcon(String str) {
        this.icon = str;
    }

    public void setId(String str) {
        this.f22038id = str;
    }

    public void setIsDeleted(String str) {
        this.isDeleted = str;
    }

    public void setNameTK(String str) {
        this.nameTK = str;
    }

    public void setNameX(String str) {
        this.nameX = str;
    }

    public void setPriority(String str) {
        this.priority = str;
    }

    public void setType(String str) {
        this.type = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i11) {
        parcel.writeString(this.isDeleted);
        parcel.writeString(this.icon);
        parcel.writeString(this.nameX);
        parcel.writeString(this.f22038id);
        parcel.writeString(this.priority);
        parcel.writeString(this.type);
        parcel.writeString(this.nameTK);
    }
}
