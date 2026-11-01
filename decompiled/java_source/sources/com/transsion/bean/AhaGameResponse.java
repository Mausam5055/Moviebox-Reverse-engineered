package com.transsion.bean;

import android.os.Parcel;
import android.os.Parcelable;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B%\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000bJ\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0007HÆ\u0003J2\u0010\u001a\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÆ\u0001¢\u0006\u0002\u0010\u001bJ\u0006\u0010\u001c\u001a\u00020\u0003J\u0013\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010 HÖ\u0003J\t\u0010!\u001a\u00020\u0003HÖ\u0001J\t\u0010\"\u001a\u00020\u0005HÖ\u0001J\u0016\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020\u0003R\u001e\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u000e\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016¨\u0006("}, d2 = {"Lcom/transsion/bean/AhaGameResponse;", "Landroid/os/Parcelable;", "code", "", "message", "", "data", "Lcom/transsion/bean/AhaGameData;", "<init>", "(Ljava/lang/Integer;Ljava/lang/String;Lcom/transsion/bean/AhaGameData;)V", "getCode", "()Ljava/lang/Integer;", "setCode", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getMessage", "()Ljava/lang/String;", "setMessage", "(Ljava/lang/String;)V", "getData", "()Lcom/transsion/bean/AhaGameData;", "setData", "(Lcom/transsion/bean/AhaGameData;)V", "component1", "component2", "component3", "copy", "(Ljava/lang/Integer;Ljava/lang/String;Lcom/transsion/bean/AhaGameData;)Lcom/transsion/bean/AhaGameResponse;", "describeContents", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "CommercializationApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class AhaGameResponse implements Parcelable {
    public static final Parcelable.Creator<AhaGameResponse> CREATOR = new a();
    private Integer code;
    private AhaGameData data;
    private String message;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final AhaGameResponse createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new AhaGameResponse(parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readString(), parcel.readInt() != 0 ? AhaGameData.CREATOR.createFromParcel(parcel) : null);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final AhaGameResponse[] newArray(int i11) {
            return new AhaGameResponse[i11];
        }
    }

    public AhaGameResponse(Integer num, String str, AhaGameData ahaGameData) {
        this.code = num;
        this.message = str;
        this.data = ahaGameData;
    }

    public static /* synthetic */ AhaGameResponse copy$default(AhaGameResponse ahaGameResponse, Integer num, String str, AhaGameData ahaGameData, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            num = ahaGameResponse.code;
        }
        if ((i11 & 2) != 0) {
            str = ahaGameResponse.message;
        }
        if ((i11 & 4) != 0) {
            ahaGameData = ahaGameResponse.data;
        }
        return ahaGameResponse.copy(num, str, ahaGameData);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Integer getCode() {
        return this.code;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getMessage() {
        return this.message;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final AhaGameData getData() {
        return this.data;
    }

    public final AhaGameResponse copy(Integer code, String message, AhaGameData data) {
        return new AhaGameResponse(code, message, data);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AhaGameResponse)) {
            return false;
        }
        AhaGameResponse ahaGameResponse = (AhaGameResponse) other;
        return Intrinsics.c(this.code, ahaGameResponse.code) && Intrinsics.c(this.message, ahaGameResponse.message) && Intrinsics.c(this.data, ahaGameResponse.data);
    }

    public final Integer getCode() {
        return this.code;
    }

    public final AhaGameData getData() {
        return this.data;
    }

    public final String getMessage() {
        return this.message;
    }

    public int hashCode() {
        Integer num = this.code;
        int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
        String str = this.message;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        AhaGameData ahaGameData = this.data;
        return iHashCode2 + (ahaGameData != null ? ahaGameData.hashCode() : 0);
    }

    public final void setCode(Integer num) {
        this.code = num;
    }

    public final void setData(AhaGameData ahaGameData) {
        this.data = ahaGameData;
    }

    public final void setMessage(String str) {
        this.message = str;
    }

    public String toString() {
        return "AhaGameResponse(code=" + this.code + ", message=" + this.message + ", data=" + this.data + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        Integer num = this.code;
        if (num == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(num.intValue());
        }
        dest.writeString(this.message);
        AhaGameData ahaGameData = this.data;
        if (ahaGameData == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            ahaGameData.writeToParcel(dest, flags);
        }
    }
}
