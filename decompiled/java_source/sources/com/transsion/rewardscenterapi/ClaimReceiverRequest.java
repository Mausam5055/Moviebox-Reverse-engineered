package com.transsion.rewardscenterapi;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.android.libraries.places.api.model.PlaceTypes;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BU\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u000b\u0010\fJ\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006HÆ\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0003HÆ\u0003JW\u0010\u001b\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00062\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fHÖ\u0003J\t\u0010 \u001a\u00020!HÖ\u0001J\t\u0010\"\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000eR\u0019\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0013\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u000eR\u0013\u0010\t\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u000eR\u0013\u0010\n\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u000e¨\u0006#"}, d2 = {"Lcom/transsion/rewardscenterapi/ClaimReceiverRequest;", "Ljava/io/Serializable;", "drawResultId", "", "receiverName", "phone", "", "Lcom/transsion/rewardscenterapi/PhoneInfo;", "email", PlaceTypes.ADDRESS, "postCode", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getDrawResultId", "()Ljava/lang/String;", "getReceiverName", "getPhone", "()Ljava/util/List;", "getEmail", "getAddress", "getPostCode", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "RewardsCenterApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class ClaimReceiverRequest implements Serializable {
    private final String address;
    private final String drawResultId;
    private final String email;
    private final List<PhoneInfo> phone;
    private final String postCode;
    private final String receiverName;

    public ClaimReceiverRequest() {
        this(null, null, null, null, null, null, 63, null);
    }

    public ClaimReceiverRequest(String str, String str2, List<PhoneInfo> list, String str3, String str4, String str5) {
        this.drawResultId = str;
        this.receiverName = str2;
        this.phone = list;
        this.email = str3;
        this.address = str4;
        this.postCode = str5;
    }

    public /* synthetic */ ClaimReceiverRequest(String str, String str2, List list, String str3, String str4, String str5, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? null : list, (i11 & 8) != 0 ? null : str3, (i11 & 16) != 0 ? null : str4, (i11 & 32) != 0 ? null : str5);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ClaimReceiverRequest copy$default(ClaimReceiverRequest claimReceiverRequest, String str, String str2, List list, String str3, String str4, String str5, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = claimReceiverRequest.drawResultId;
        }
        if ((i11 & 2) != 0) {
            str2 = claimReceiverRequest.receiverName;
        }
        String str6 = str2;
        if ((i11 & 4) != 0) {
            list = claimReceiverRequest.phone;
        }
        List list2 = list;
        if ((i11 & 8) != 0) {
            str3 = claimReceiverRequest.email;
        }
        String str7 = str3;
        if ((i11 & 16) != 0) {
            str4 = claimReceiverRequest.address;
        }
        String str8 = str4;
        if ((i11 & 32) != 0) {
            str5 = claimReceiverRequest.postCode;
        }
        return claimReceiverRequest.copy(str, str6, list2, str7, str8, str5);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getDrawResultId() {
        return this.drawResultId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getReceiverName() {
        return this.receiverName;
    }

    public final List<PhoneInfo> component3() {
        return this.phone;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getEmail() {
        return this.email;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getAddress() {
        return this.address;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getPostCode() {
        return this.postCode;
    }

    public final ClaimReceiverRequest copy(String drawResultId, String receiverName, List<PhoneInfo> phone, String email, String address, String postCode) {
        return new ClaimReceiverRequest(drawResultId, receiverName, phone, email, address, postCode);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ClaimReceiverRequest)) {
            return false;
        }
        ClaimReceiverRequest claimReceiverRequest = (ClaimReceiverRequest) other;
        return Intrinsics.c(this.drawResultId, claimReceiverRequest.drawResultId) && Intrinsics.c(this.receiverName, claimReceiverRequest.receiverName) && Intrinsics.c(this.phone, claimReceiverRequest.phone) && Intrinsics.c(this.email, claimReceiverRequest.email) && Intrinsics.c(this.address, claimReceiverRequest.address) && Intrinsics.c(this.postCode, claimReceiverRequest.postCode);
    }

    public final String getAddress() {
        return this.address;
    }

    public final String getDrawResultId() {
        return this.drawResultId;
    }

    public final String getEmail() {
        return this.email;
    }

    public final List<PhoneInfo> getPhone() {
        return this.phone;
    }

    public final String getPostCode() {
        return this.postCode;
    }

    public final String getReceiverName() {
        return this.receiverName;
    }

    public int hashCode() {
        String str = this.drawResultId;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.receiverName;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        List<PhoneInfo> list = this.phone;
        int iHashCode3 = (iHashCode2 + (list == null ? 0 : list.hashCode())) * 31;
        String str3 = this.email;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.address;
        int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.postCode;
        return iHashCode5 + (str5 != null ? str5.hashCode() : 0);
    }

    public String toString() {
        return "ClaimReceiverRequest(drawResultId=" + this.drawResultId + ", receiverName=" + this.receiverName + ", phone=" + this.phone + ", email=" + this.email + ", address=" + this.address + ", postCode=" + this.postCode + ")";
    }
}
