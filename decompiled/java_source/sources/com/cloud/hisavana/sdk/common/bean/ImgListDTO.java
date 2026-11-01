package com.cloud.hisavana.sdk.common.bean;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes3.dex */
public class ImgListDTO implements Parcelable {
    public static final Parcelable.Creator<ImgListDTO> CREATOR = new Parcelable.Creator<ImgListDTO>() { // from class: com.cloud.hisavana.sdk.common.bean.ImgListDTO.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ImgListDTO createFromParcel(Parcel parcel) {
            return new ImgListDTO(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ImgListDTO[] newArray(int i11) {
            return new ImgListDTO[i11];
        }
    };

    /* JADX INFO: renamed from: hv, reason: collision with root package name */
    private int f22037hv;
    private transient Uri uri;
    private String url;

    public ImgListDTO() {
    }

    protected ImgListDTO(Parcel parcel) {
        this.url = parcel.readString();
        this.uri = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.f22037hv = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getHv() {
        return this.f22037hv;
    }

    public Uri getUri() {
        return this.uri;
    }

    public String getUrl() {
        return this.url;
    }

    public void setHv(int i11) {
        this.f22037hv = i11;
    }

    public void setUri(Uri uri) {
        this.uri = uri;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i11) {
        parcel.writeString(this.url);
        parcel.writeParcelable(this.uri, i11);
        parcel.writeInt(this.f22037hv);
    }
}
