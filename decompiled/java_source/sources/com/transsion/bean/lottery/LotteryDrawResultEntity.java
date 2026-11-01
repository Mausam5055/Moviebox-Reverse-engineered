package com.transsion.bean.lottery;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.mbbid.out.BidResponsed;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0087\b\u0018\u00002\u00020\u0001:\u0001\u0018B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0006\u0010\n\u001a\u00020\u000bJ\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fHÖ\u0003J\t\u0010\u0010\u001a\u00020\u000bHÖ\u0001J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\u0016\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u000bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0019"}, d2 = {"Lcom/transsion/bean/lottery/LotteryDrawResultEntity;", "Landroid/os/Parcelable;", "result", "Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;", "<init>", "(Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;)V", "getResult", "()Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;", "component1", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "LotteryResultBean", "CommercializationApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class LotteryDrawResultEntity implements Parcelable {
    public static final Parcelable.Creator<LotteryDrawResultEntity> CREATOR = new a();
    private final LotteryResultBean result;

    @Keep
    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u001b\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001Bg\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\f\u0010\rJ\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0003HÆ\u0003Ji\u0010 \u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0006\u0010!\u001a\u00020\"J\u0013\u0010#\u001a\u00020$2\b\u0010%\u001a\u0004\u0018\u00010&HÖ\u0003J\t\u0010'\u001a\u00020\"HÖ\u0001J\t\u0010(\u001a\u00020\u0003HÖ\u0001J\u0016\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020\"R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000fR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u000fR\u0013\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u000fR\u0013\u0010\t\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u000fR\u0013\u0010\n\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u000fR\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u000f¨\u0006."}, d2 = {"Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;", "Landroid/os/Parcelable;", "id", "", "activityId", BidResponsed.KEY_PRICE, "Lcom/transsion/bean/lottery/LotteryUserActivityInfoPriceBean;", "needClaim", "claimStatus", "needFill", "fillStatus", "fulfillStatus", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/bean/lottery/LotteryUserActivityInfoPriceBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getId", "()Ljava/lang/String;", "getActivityId", "getPrice", "()Lcom/transsion/bean/lottery/LotteryUserActivityInfoPriceBean;", "getNeedClaim", "getClaimStatus", "getNeedFill", "getFillStatus", "getFulfillStatus", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "CommercializationApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final /* data */ class LotteryResultBean implements Parcelable {
        public static final Parcelable.Creator<LotteryResultBean> CREATOR = new a();
        private final String activityId;
        private final String claimStatus;
        private final String fillStatus;
        private final String fulfillStatus;
        private final String id;
        private final String needClaim;
        private final String needFill;
        private final LotteryUserActivityInfoPriceBean price;

        public static final class a implements Parcelable.Creator {
            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final LotteryResultBean createFromParcel(Parcel parcel) {
                Intrinsics.h(parcel, "parcel");
                return new LotteryResultBean(parcel.readString(), parcel.readString(), parcel.readInt() == 0 ? null : LotteryUserActivityInfoPriceBean.CREATOR.createFromParcel(parcel), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public final LotteryResultBean[] newArray(int i11) {
                return new LotteryResultBean[i11];
            }
        }

        public LotteryResultBean() {
            this(null, null, null, null, null, null, null, null, 255, null);
        }

        public LotteryResultBean(String str, String str2, LotteryUserActivityInfoPriceBean lotteryUserActivityInfoPriceBean, String str3, String str4, String str5, String str6, String str7) {
            this.id = str;
            this.activityId = str2;
            this.price = lotteryUserActivityInfoPriceBean;
            this.needClaim = str3;
            this.claimStatus = str4;
            this.needFill = str5;
            this.fillStatus = str6;
            this.fulfillStatus = str7;
        }

        public /* synthetic */ LotteryResultBean(String str, String str2, LotteryUserActivityInfoPriceBean lotteryUserActivityInfoPriceBean, String str3, String str4, String str5, String str6, String str7, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? null : lotteryUserActivityInfoPriceBean, (i11 & 8) != 0 ? null : str3, (i11 & 16) != 0 ? null : str4, (i11 & 32) != 0 ? null : str5, (i11 & 64) != 0 ? null : str6, (i11 & 128) == 0 ? str7 : null);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getId() {
            return this.id;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getActivityId() {
            return this.activityId;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final LotteryUserActivityInfoPriceBean getPrice() {
            return this.price;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final String getNeedClaim() {
            return this.needClaim;
        }

        /* JADX INFO: renamed from: component5, reason: from getter */
        public final String getClaimStatus() {
            return this.claimStatus;
        }

        /* JADX INFO: renamed from: component6, reason: from getter */
        public final String getNeedFill() {
            return this.needFill;
        }

        /* JADX INFO: renamed from: component7, reason: from getter */
        public final String getFillStatus() {
            return this.fillStatus;
        }

        /* JADX INFO: renamed from: component8, reason: from getter */
        public final String getFulfillStatus() {
            return this.fulfillStatus;
        }

        public final LotteryResultBean copy(String id2, String activityId, LotteryUserActivityInfoPriceBean price, String needClaim, String claimStatus, String needFill, String fillStatus, String fulfillStatus) {
            return new LotteryResultBean(id2, activityId, price, needClaim, claimStatus, needFill, fillStatus, fulfillStatus);
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof LotteryResultBean)) {
                return false;
            }
            LotteryResultBean lotteryResultBean = (LotteryResultBean) other;
            return Intrinsics.c(this.id, lotteryResultBean.id) && Intrinsics.c(this.activityId, lotteryResultBean.activityId) && Intrinsics.c(this.price, lotteryResultBean.price) && Intrinsics.c(this.needClaim, lotteryResultBean.needClaim) && Intrinsics.c(this.claimStatus, lotteryResultBean.claimStatus) && Intrinsics.c(this.needFill, lotteryResultBean.needFill) && Intrinsics.c(this.fillStatus, lotteryResultBean.fillStatus) && Intrinsics.c(this.fulfillStatus, lotteryResultBean.fulfillStatus);
        }

        public final String getActivityId() {
            return this.activityId;
        }

        public final String getClaimStatus() {
            return this.claimStatus;
        }

        public final String getFillStatus() {
            return this.fillStatus;
        }

        public final String getFulfillStatus() {
            return this.fulfillStatus;
        }

        public final String getId() {
            return this.id;
        }

        public final String getNeedClaim() {
            return this.needClaim;
        }

        public final String getNeedFill() {
            return this.needFill;
        }

        public final LotteryUserActivityInfoPriceBean getPrice() {
            return this.price;
        }

        public int hashCode() {
            String str = this.id;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            String str2 = this.activityId;
            int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
            LotteryUserActivityInfoPriceBean lotteryUserActivityInfoPriceBean = this.price;
            int iHashCode3 = (iHashCode2 + (lotteryUserActivityInfoPriceBean == null ? 0 : lotteryUserActivityInfoPriceBean.hashCode())) * 31;
            String str3 = this.needClaim;
            int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
            String str4 = this.claimStatus;
            int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
            String str5 = this.needFill;
            int iHashCode6 = (iHashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
            String str6 = this.fillStatus;
            int iHashCode7 = (iHashCode6 + (str6 == null ? 0 : str6.hashCode())) * 31;
            String str7 = this.fulfillStatus;
            return iHashCode7 + (str7 != null ? str7.hashCode() : 0);
        }

        public String toString() {
            return "LotteryResultBean(id=" + this.id + ", activityId=" + this.activityId + ", price=" + this.price + ", needClaim=" + this.needClaim + ", claimStatus=" + this.claimStatus + ", needFill=" + this.needFill + ", fillStatus=" + this.fillStatus + ", fulfillStatus=" + this.fulfillStatus + ")";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel dest, int flags) {
            Intrinsics.h(dest, "dest");
            dest.writeString(this.id);
            dest.writeString(this.activityId);
            LotteryUserActivityInfoPriceBean lotteryUserActivityInfoPriceBean = this.price;
            if (lotteryUserActivityInfoPriceBean == null) {
                dest.writeInt(0);
            } else {
                dest.writeInt(1);
                lotteryUserActivityInfoPriceBean.writeToParcel(dest, flags);
            }
            dest.writeString(this.needClaim);
            dest.writeString(this.claimStatus);
            dest.writeString(this.needFill);
            dest.writeString(this.fillStatus);
            dest.writeString(this.fulfillStatus);
        }
    }

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final LotteryDrawResultEntity createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new LotteryDrawResultEntity(LotteryResultBean.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final LotteryDrawResultEntity[] newArray(int i11) {
            return new LotteryDrawResultEntity[i11];
        }
    }

    public LotteryDrawResultEntity(LotteryResultBean result) {
        Intrinsics.h(result, "result");
        this.result = result;
    }

    public static /* synthetic */ LotteryDrawResultEntity copy$default(LotteryDrawResultEntity lotteryDrawResultEntity, LotteryResultBean lotteryResultBean, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            lotteryResultBean = lotteryDrawResultEntity.result;
        }
        return lotteryDrawResultEntity.copy(lotteryResultBean);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final LotteryResultBean getResult() {
        return this.result;
    }

    public final LotteryDrawResultEntity copy(LotteryResultBean result) {
        Intrinsics.h(result, "result");
        return new LotteryDrawResultEntity(result);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof LotteryDrawResultEntity) && Intrinsics.c(this.result, ((LotteryDrawResultEntity) other).result);
    }

    public final LotteryResultBean getResult() {
        return this.result;
    }

    public int hashCode() {
        return this.result.hashCode();
    }

    public String toString() {
        return "LotteryDrawResultEntity(result=" + this.result + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        this.result.writeToParcel(dest, flags);
    }
}
