package com.transsion.ad.monopoly.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B7\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\b\u0010\tJ\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003J9\u0010\u0014\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0006\u0010\u0015\u001a\u00020\u0016J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aHÖ\u0003J\t\u0010\u001b\u001a\u00020\u0016HÖ\u0001J\t\u0010\u001c\u001a\u00020\u0003HÖ\u0001J\u0016\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u0016R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000bR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000b¨\u0006\""}, d2 = {"Lcom/transsion/ad/monopoly/model/MbAdPlansDto;", "Landroid/os/Parcelable;", "code", "", "data", "Lcom/transsion/ad/monopoly/model/MbAdPlansBean;", "message", "reason", "<init>", "(Ljava/lang/String;Lcom/transsion/ad/monopoly/model/MbAdPlansBean;Ljava/lang/String;Ljava/lang/String;)V", "getCode", "()Ljava/lang/String;", "getData", "()Lcom/transsion/ad/monopoly/model/MbAdPlansBean;", "getMessage", "getReason", "component1", "component2", "component3", "component4", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class MbAdPlansDto implements Parcelable {
    public static final Parcelable.Creator<MbAdPlansDto> CREATOR = new a();
    private final String code;
    private final MbAdPlansBean data;
    private final String message;
    private final String reason;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final MbAdPlansDto createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new MbAdPlansDto(parcel.readString(), parcel.readInt() == 0 ? null : MbAdPlansBean.CREATOR.createFromParcel(parcel), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final MbAdPlansDto[] newArray(int i11) {
            return new MbAdPlansDto[i11];
        }
    }

    public MbAdPlansDto() {
        this(null, null, null, null, 15, null);
    }

    public MbAdPlansDto(String str, MbAdPlansBean mbAdPlansBean, String str2, String str3) {
        this.code = str;
        this.data = mbAdPlansBean;
        this.message = str2;
        this.reason = str3;
    }

    public /* synthetic */ MbAdPlansDto(String str, MbAdPlansBean mbAdPlansBean, String str2, String str3, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : mbAdPlansBean, (i11 & 4) != 0 ? null : str2, (i11 & 8) != 0 ? null : str3);
    }

    public static /* synthetic */ MbAdPlansDto copy$default(MbAdPlansDto mbAdPlansDto, String str, MbAdPlansBean mbAdPlansBean, String str2, String str3, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = mbAdPlansDto.code;
        }
        if ((i11 & 2) != 0) {
            mbAdPlansBean = mbAdPlansDto.data;
        }
        if ((i11 & 4) != 0) {
            str2 = mbAdPlansDto.message;
        }
        if ((i11 & 8) != 0) {
            str3 = mbAdPlansDto.reason;
        }
        return mbAdPlansDto.copy(str, mbAdPlansBean, str2, str3);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getCode() {
        return this.code;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final MbAdPlansBean getData() {
        return this.data;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getMessage() {
        return this.message;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getReason() {
        return this.reason;
    }

    public final MbAdPlansDto copy(String code, MbAdPlansBean data, String message, String reason) {
        return new MbAdPlansDto(code, data, message, reason);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MbAdPlansDto)) {
            return false;
        }
        MbAdPlansDto mbAdPlansDto = (MbAdPlansDto) other;
        return Intrinsics.c(this.code, mbAdPlansDto.code) && Intrinsics.c(this.data, mbAdPlansDto.data) && Intrinsics.c(this.message, mbAdPlansDto.message) && Intrinsics.c(this.reason, mbAdPlansDto.reason);
    }

    public final String getCode() {
        return this.code;
    }

    public final MbAdPlansBean getData() {
        return this.data;
    }

    public final String getMessage() {
        return this.message;
    }

    public final String getReason() {
        return this.reason;
    }

    public int hashCode() {
        String str = this.code;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        MbAdPlansBean mbAdPlansBean = this.data;
        int iHashCode2 = (iHashCode + (mbAdPlansBean == null ? 0 : mbAdPlansBean.hashCode())) * 31;
        String str2 = this.message;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.reason;
        return iHashCode3 + (str3 != null ? str3.hashCode() : 0);
    }

    public String toString() {
        return "MbAdPlansDto(code=" + this.code + ", data=" + this.data + ", message=" + this.message + ", reason=" + this.reason + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.code);
        MbAdPlansBean mbAdPlansBean = this.data;
        if (mbAdPlansBean == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            mbAdPlansBean.writeToParcel(dest, flags);
        }
        dest.writeString(this.message);
        dest.writeString(this.reason);
    }
}
