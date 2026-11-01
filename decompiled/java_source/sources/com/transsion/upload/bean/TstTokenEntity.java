package com.transsion.upload.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.android.libraries.places.api.model.PlaceTypes;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u001b\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BU\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\fJ\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u0013J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0003HÆ\u0003Jn\u0010 \u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010!J\t\u0010\"\u001a\u00020#HÖ\u0001J\u0013\u0010$\u001a\u00020%2\b\u0010&\u001a\u0004\u0018\u00010'HÖ\u0003J\t\u0010(\u001a\u00020#HÖ\u0001J\t\u0010)\u001a\u00020\u0003HÖ\u0001J\u0019\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020#HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000eR\u0013\u0010\n\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000eR\u0013\u0010\t\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000eR\u0015\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\n\n\u0002\u0010\u0014\u001a\u0004\b\u0012\u0010\u0013R\u0013\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u000eR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u000eR\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u000e¨\u0006/"}, d2 = {"Lcom/transsion/upload/bean/TstTokenEntity;", "Landroid/os/Parcelable;", "accessKeyId", "", "accessKeySecret", "securityToken", "expireTime", "", "regionId", "endPoint", "bucket", PlaceTypes.STORAGE, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getAccessKeyId", "()Ljava/lang/String;", "getAccessKeySecret", "getBucket", "getEndPoint", "getExpireTime", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getRegionId", "getSecurityToken", "getStorage", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/upload/bean/TstTokenEntity;", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "Upload_release"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class TstTokenEntity implements Parcelable {
    public static final Parcelable.Creator<TstTokenEntity> CREATOR = new a();
    private final String accessKeyId;
    private final String accessKeySecret;
    private final String bucket;
    private final String endPoint;
    private final Long expireTime;
    private final String regionId;
    private final String securityToken;
    private final String storage;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final TstTokenEntity createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new TstTokenEntity(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong()), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final TstTokenEntity[] newArray(int i11) {
            return new TstTokenEntity[i11];
        }
    }

    public TstTokenEntity(String str, String str2, String str3, Long l11, String str4, String str5, String str6, String str7) {
        this.accessKeyId = str;
        this.accessKeySecret = str2;
        this.securityToken = str3;
        this.expireTime = l11;
        this.regionId = str4;
        this.endPoint = str5;
        this.bucket = str6;
        this.storage = str7;
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getAccessKeyId() {
        return this.accessKeyId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getAccessKeySecret() {
        return this.accessKeySecret;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getSecurityToken() {
        return this.securityToken;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Long getExpireTime() {
        return this.expireTime;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getRegionId() {
        return this.regionId;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getEndPoint() {
        return this.endPoint;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getBucket() {
        return this.bucket;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getStorage() {
        return this.storage;
    }

    public final TstTokenEntity copy(String accessKeyId, String accessKeySecret, String securityToken, Long expireTime, String regionId, String endPoint, String bucket, String storage) {
        return new TstTokenEntity(accessKeyId, accessKeySecret, securityToken, expireTime, regionId, endPoint, bucket, storage);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TstTokenEntity)) {
            return false;
        }
        TstTokenEntity tstTokenEntity = (TstTokenEntity) other;
        return Intrinsics.c(this.accessKeyId, tstTokenEntity.accessKeyId) && Intrinsics.c(this.accessKeySecret, tstTokenEntity.accessKeySecret) && Intrinsics.c(this.securityToken, tstTokenEntity.securityToken) && Intrinsics.c(this.expireTime, tstTokenEntity.expireTime) && Intrinsics.c(this.regionId, tstTokenEntity.regionId) && Intrinsics.c(this.endPoint, tstTokenEntity.endPoint) && Intrinsics.c(this.bucket, tstTokenEntity.bucket) && Intrinsics.c(this.storage, tstTokenEntity.storage);
    }

    public final String getAccessKeyId() {
        return this.accessKeyId;
    }

    public final String getAccessKeySecret() {
        return this.accessKeySecret;
    }

    public final String getBucket() {
        return this.bucket;
    }

    public final String getEndPoint() {
        return this.endPoint;
    }

    public final Long getExpireTime() {
        return this.expireTime;
    }

    public final String getRegionId() {
        return this.regionId;
    }

    public final String getSecurityToken() {
        return this.securityToken;
    }

    public final String getStorage() {
        return this.storage;
    }

    public int hashCode() {
        String str = this.accessKeyId;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.accessKeySecret;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.securityToken;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Long l11 = this.expireTime;
        int iHashCode4 = (iHashCode3 + (l11 == null ? 0 : l11.hashCode())) * 31;
        String str4 = this.regionId;
        int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.endPoint;
        int iHashCode6 = (iHashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.bucket;
        int iHashCode7 = (iHashCode6 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.storage;
        return iHashCode7 + (str7 != null ? str7.hashCode() : 0);
    }

    public String toString() {
        return "TstTokenEntity(accessKeyId=" + this.accessKeyId + ", accessKeySecret=" + this.accessKeySecret + ", securityToken=" + this.securityToken + ", expireTime=" + this.expireTime + ", regionId=" + this.regionId + ", endPoint=" + this.endPoint + ", bucket=" + this.bucket + ", storage=" + this.storage + ")";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int flags) {
        Intrinsics.h(parcel, "out");
        parcel.writeString(this.accessKeyId);
        parcel.writeString(this.accessKeySecret);
        parcel.writeString(this.securityToken);
        Long l11 = this.expireTime;
        if (l11 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeLong(l11.longValue());
        }
        parcel.writeString(this.regionId);
        parcel.writeString(this.endPoint);
        parcel.writeString(this.bucket);
        parcel.writeString(this.storage);
    }
}
