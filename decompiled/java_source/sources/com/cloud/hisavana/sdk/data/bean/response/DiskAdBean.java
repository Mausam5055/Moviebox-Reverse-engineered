package com.cloud.hisavana.sdk.data.bean.response;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class DiskAdBean implements Parcelable {
    public static final Parcelable.Creator<DiskAdBean> CREATOR = new Parcelable.Creator<DiskAdBean>() { // from class: com.cloud.hisavana.sdk.data.bean.response.DiskAdBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DiskAdBean createFromParcel(Parcel parcel) {
            return new DiskAdBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DiskAdBean[] newArray(int i11) {
            return new DiskAdBean[i11];
        }
    };
    private List<AdsDTO> list;

    public DiskAdBean() {
    }

    protected DiskAdBean(Parcel parcel) {
        this.list = parcel.createTypedArrayList(AdsDTO.CREATOR);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public List<AdsDTO> getList() {
        return this.list;
    }

    public void setList(List<AdsDTO> list) {
        this.list = list;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i11) {
        parcel.writeTypedList(this.list);
    }
}
