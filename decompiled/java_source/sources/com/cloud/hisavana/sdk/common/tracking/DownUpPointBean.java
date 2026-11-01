package com.cloud.hisavana.sdk.common.tracking;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes3.dex */
public class DownUpPointBean implements Parcelable {
    public static final Parcelable.Creator<DownUpPointBean> CREATOR = new a();
    private float downX;
    private float downY;
    private int imageH;
    private int imageW;
    private float upX;
    private float upY;

    class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public DownUpPointBean createFromParcel(Parcel parcel) {
            return new DownUpPointBean(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public DownUpPointBean[] newArray(int i11) {
            return new DownUpPointBean[i11];
        }
    }

    public DownUpPointBean() {
    }

    public DownUpPointBean(float f11, float f12, float f13, float f14, int i11, int i12) {
        this.downX = f11;
        this.downY = f12;
        this.upX = f13;
        this.upY = f14;
        this.imageH = i11;
        this.imageW = i12;
    }

    protected DownUpPointBean(Parcel parcel) {
        this.downX = parcel.readFloat();
        this.downY = parcel.readFloat();
        this.upX = parcel.readFloat();
        this.upY = parcel.readFloat();
        this.imageH = parcel.readInt();
        this.imageW = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public float getDownX() {
        return this.downX;
    }

    public float getDownY() {
        return this.downY;
    }

    public int getImageH() {
        return this.imageH;
    }

    public int getImageW() {
        return this.imageW;
    }

    public float getUpX() {
        return this.upX;
    }

    public float getUpY() {
        return this.upY;
    }

    public void setDownX(float f11) {
        this.downX = f11;
    }

    public void setDownY(float f11) {
        this.downY = f11;
    }

    public void setImageH(int i11) {
        this.imageH = i11;
    }

    public void setImageW(int i11) {
        this.imageW = i11;
    }

    public void setUpX(float f11) {
        this.upX = f11;
    }

    public void setUpY(float f11) {
        this.upY = f11;
    }

    public String toString() {
        return "DownUpPointBean{downX=" + this.downX + ", downY=" + this.downY + ", upX=" + this.upX + ", upY=" + this.upY + ", imageH=" + this.imageH + ", imageW=" + this.imageW + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i11) {
        parcel.writeFloat(this.downX);
        parcel.writeFloat(this.downY);
        parcel.writeFloat(this.upX);
        parcel.writeFloat(this.upY);
        parcel.writeInt(this.imageH);
        parcel.writeInt(this.imageW);
    }
}
