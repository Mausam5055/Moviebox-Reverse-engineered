package com.cloud.hisavana.sdk.data.bean.request;

import android.os.Parcel;
import android.os.Parcelable;
import com.cloud.hisavana.sdk.common.bean.SSPWebPageReqInfo;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class AdxImpBean implements Parcelable {
    public static final Parcelable.Creator<AdxImpBean> CREATOR = new Parcelable.Creator<AdxImpBean>() { // from class: com.cloud.hisavana.sdk.data.bean.request.AdxImpBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AdxImpBean createFromParcel(Parcel parcel) {
            return new AdxImpBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AdxImpBean[] newArray(int i11) {
            return new AdxImpBean[i11];
        }
    };
    public int adt;
    public int cacheAdCount;
    public Map<String, Object> extInfo;
    public String gameName;
    public String gameScene;
    public boolean isAutoPlayVideoAd;
    public int isTimeOut;
    public int mAdCount;
    public int mTriggerNetState;
    public boolean offlineAd;
    public boolean offlineAdEnable;
    public String pmid;
    public String requestId;
    public Long requestTs;
    public int requestType;
    public boolean supportEw;
    public String triggerId;
    public SSPWebPageReqInfo webPageReqInfo;

    public AdxImpBean() {
        this.mAdCount = 1;
    }

    protected AdxImpBean(Parcel parcel) {
        this.mAdCount = 1;
        this.pmid = parcel.readString();
        this.adt = parcel.readInt();
        this.mAdCount = parcel.readInt();
        this.requestType = parcel.readInt();
        if (parcel.readByte() == 0) {
            this.requestTs = null;
        } else {
            this.requestTs = Long.valueOf(parcel.readLong());
        }
        this.requestId = parcel.readString();
        this.triggerId = parcel.readString();
        this.isTimeOut = parcel.readInt();
        this.offlineAd = parcel.readByte() != 0;
        this.gameName = parcel.readString();
        this.gameScene = parcel.readString();
        this.supportEw = parcel.readByte() != 0;
        this.isAutoPlayVideoAd = parcel.readByte() != 0;
        this.offlineAdEnable = parcel.readByte() != 0;
        this.cacheAdCount = parcel.readInt();
        this.mTriggerNetState = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getExtInfoJson() {
        Map<String, Object> map = this.extInfo;
        if (map == null) {
            return null;
        }
        return GsonUtil.d(map);
    }

    public Long getRequestTs() {
        Long l11 = this.requestTs;
        return Long.valueOf(l11 == null ? 0L : l11.longValue());
    }

    public String toString() {
        return "AdxImpBean{, pmid='" + this.pmid + "', adt=" + this.adt + ", mAdCount=" + this.mAdCount + ", offlineAdEnable=" + this.offlineAdEnable + ", cacheAdCount=" + this.cacheAdCount + ", mTriggerNetState=" + this.mTriggerNetState + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i11) {
        parcel.writeString(this.pmid);
        parcel.writeInt(this.adt);
        parcel.writeInt(this.mAdCount);
        parcel.writeInt(this.requestType);
        if (this.requestTs == null) {
            parcel.writeByte((byte) 0);
        } else {
            parcel.writeByte((byte) 1);
            parcel.writeLong(this.requestTs.longValue());
        }
        parcel.writeString(this.requestId);
        parcel.writeString(this.triggerId);
        parcel.writeInt(this.isTimeOut);
        parcel.writeByte(this.offlineAd ? (byte) 1 : (byte) 0);
        parcel.writeString(this.gameName);
        parcel.writeString(this.gameScene);
        parcel.writeByte(this.supportEw ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.isAutoPlayVideoAd ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.offlineAdEnable ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.cacheAdCount);
        parcel.writeInt(this.mTriggerNetState);
    }
}
