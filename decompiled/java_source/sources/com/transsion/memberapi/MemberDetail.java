package com.transsion.memberapi;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.transsnet.loginapi.bean.UserInfo;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b#\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B]\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0005\u0012\u000e\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u0005¢\u0006\u0004\b\u0011\u0010\u0012J\u000b\u0010+\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010,\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0003J\t\u0010-\u001a\u00020\bHÆ\u0003J\u000b\u0010.\u001a\u0004\u0018\u00010\nHÆ\u0003J\u000b\u0010/\u001a\u0004\u0018\u00010\fHÆ\u0003J\u0011\u00100\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0005HÆ\u0003J\u0011\u00101\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u0005HÆ\u0003Jm\u00102\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\b\b\u0002\u0010\u0007\u001a\u00020\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\u0010\b\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u00052\u0010\b\u0002\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u0005HÆ\u0001J\u0013\u00103\u001a\u0002042\b\u00105\u001a\u0004\u0018\u000106HÖ\u0003J\t\u00107\u001a\u000208HÖ\u0001J\t\u00109\u001a\u00020:HÖ\u0001R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\"\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\"\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010\u0018\"\u0004\b(\u0010\u001aR\"\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010\u0018\"\u0004\b*\u0010\u001a¨\u0006;"}, d2 = {"Lcom/transsion/memberapi/MemberDetail;", "Ljava/io/Serializable;", "memberInfo", "Lcom/transsion/memberapi/MemberInfo;", "memberRights", "", "Lcom/transsion/memberapi/MemberRight;", "rewardInfo", "Lcom/transsion/memberapi/RewardInfo;", "userInfo", "Lcom/transsnet/loginapi/bean/UserInfo;", "pointInfo", "Lcom/transsion/memberapi/PointInfo;", "memberAgreements", "Lcom/transsion/memberapi/MemberAgreement;", "entitlements", "Lcom/transsion/memberapi/EntitlementsBean;", "<init>", "(Lcom/transsion/memberapi/MemberInfo;Ljava/util/List;Lcom/transsion/memberapi/RewardInfo;Lcom/transsnet/loginapi/bean/UserInfo;Lcom/transsion/memberapi/PointInfo;Ljava/util/List;Ljava/util/List;)V", "getMemberInfo", "()Lcom/transsion/memberapi/MemberInfo;", "setMemberInfo", "(Lcom/transsion/memberapi/MemberInfo;)V", "getMemberRights", "()Ljava/util/List;", "setMemberRights", "(Ljava/util/List;)V", "getRewardInfo", "()Lcom/transsion/memberapi/RewardInfo;", "setRewardInfo", "(Lcom/transsion/memberapi/RewardInfo;)V", "getUserInfo", "()Lcom/transsnet/loginapi/bean/UserInfo;", "setUserInfo", "(Lcom/transsnet/loginapi/bean/UserInfo;)V", "getPointInfo", "()Lcom/transsion/memberapi/PointInfo;", "setPointInfo", "(Lcom/transsion/memberapi/PointInfo;)V", "getMemberAgreements", "setMemberAgreements", "getEntitlements", "setEntitlements", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "", "MemberApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class MemberDetail implements Serializable {
    private List<EntitlementsBean> entitlements;
    private List<MemberAgreement> memberAgreements;
    private MemberInfo memberInfo;
    private List<MemberRight> memberRights;
    private PointInfo pointInfo;
    private RewardInfo rewardInfo;
    private UserInfo userInfo;

    public MemberDetail(MemberInfo memberInfo, List<MemberRight> list, RewardInfo rewardInfo, UserInfo userInfo, PointInfo pointInfo, List<MemberAgreement> list2, List<EntitlementsBean> list3) {
        Intrinsics.h(rewardInfo, "rewardInfo");
        this.memberInfo = memberInfo;
        this.memberRights = list;
        this.rewardInfo = rewardInfo;
        this.userInfo = userInfo;
        this.pointInfo = pointInfo;
        this.memberAgreements = list2;
        this.entitlements = list3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ MemberDetail copy$default(MemberDetail memberDetail, MemberInfo memberInfo, List list, RewardInfo rewardInfo, UserInfo userInfo, PointInfo pointInfo, List list2, List list3, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            memberInfo = memberDetail.memberInfo;
        }
        if ((i11 & 2) != 0) {
            list = memberDetail.memberRights;
        }
        List list4 = list;
        if ((i11 & 4) != 0) {
            rewardInfo = memberDetail.rewardInfo;
        }
        RewardInfo rewardInfo2 = rewardInfo;
        if ((i11 & 8) != 0) {
            userInfo = memberDetail.userInfo;
        }
        UserInfo userInfo2 = userInfo;
        if ((i11 & 16) != 0) {
            pointInfo = memberDetail.pointInfo;
        }
        PointInfo pointInfo2 = pointInfo;
        if ((i11 & 32) != 0) {
            list2 = memberDetail.memberAgreements;
        }
        List list5 = list2;
        if ((i11 & 64) != 0) {
            list3 = memberDetail.entitlements;
        }
        return memberDetail.copy(memberInfo, list4, rewardInfo2, userInfo2, pointInfo2, list5, list3);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final MemberInfo getMemberInfo() {
        return this.memberInfo;
    }

    public final List<MemberRight> component2() {
        return this.memberRights;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final RewardInfo getRewardInfo() {
        return this.rewardInfo;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final UserInfo getUserInfo() {
        return this.userInfo;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final PointInfo getPointInfo() {
        return this.pointInfo;
    }

    public final List<MemberAgreement> component6() {
        return this.memberAgreements;
    }

    public final List<EntitlementsBean> component7() {
        return this.entitlements;
    }

    public final MemberDetail copy(MemberInfo memberInfo, List<MemberRight> memberRights, RewardInfo rewardInfo, UserInfo userInfo, PointInfo pointInfo, List<MemberAgreement> memberAgreements, List<EntitlementsBean> entitlements) {
        Intrinsics.h(rewardInfo, "rewardInfo");
        return new MemberDetail(memberInfo, memberRights, rewardInfo, userInfo, pointInfo, memberAgreements, entitlements);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MemberDetail)) {
            return false;
        }
        MemberDetail memberDetail = (MemberDetail) other;
        return Intrinsics.c(this.memberInfo, memberDetail.memberInfo) && Intrinsics.c(this.memberRights, memberDetail.memberRights) && Intrinsics.c(this.rewardInfo, memberDetail.rewardInfo) && Intrinsics.c(this.userInfo, memberDetail.userInfo) && Intrinsics.c(this.pointInfo, memberDetail.pointInfo) && Intrinsics.c(this.memberAgreements, memberDetail.memberAgreements) && Intrinsics.c(this.entitlements, memberDetail.entitlements);
    }

    public final List<EntitlementsBean> getEntitlements() {
        return this.entitlements;
    }

    public final List<MemberAgreement> getMemberAgreements() {
        return this.memberAgreements;
    }

    public final MemberInfo getMemberInfo() {
        return this.memberInfo;
    }

    public final List<MemberRight> getMemberRights() {
        return this.memberRights;
    }

    public final PointInfo getPointInfo() {
        return this.pointInfo;
    }

    public final RewardInfo getRewardInfo() {
        return this.rewardInfo;
    }

    public final UserInfo getUserInfo() {
        return this.userInfo;
    }

    public int hashCode() {
        MemberInfo memberInfo = this.memberInfo;
        int iHashCode = (memberInfo == null ? 0 : memberInfo.hashCode()) * 31;
        List<MemberRight> list = this.memberRights;
        int iHashCode2 = (((iHashCode + (list == null ? 0 : list.hashCode())) * 31) + this.rewardInfo.hashCode()) * 31;
        UserInfo userInfo = this.userInfo;
        int iHashCode3 = (iHashCode2 + (userInfo == null ? 0 : userInfo.hashCode())) * 31;
        PointInfo pointInfo = this.pointInfo;
        int iHashCode4 = (iHashCode3 + (pointInfo == null ? 0 : pointInfo.hashCode())) * 31;
        List<MemberAgreement> list2 = this.memberAgreements;
        int iHashCode5 = (iHashCode4 + (list2 == null ? 0 : list2.hashCode())) * 31;
        List<EntitlementsBean> list3 = this.entitlements;
        return iHashCode5 + (list3 != null ? list3.hashCode() : 0);
    }

    public final void setEntitlements(List<EntitlementsBean> list) {
        this.entitlements = list;
    }

    public final void setMemberAgreements(List<MemberAgreement> list) {
        this.memberAgreements = list;
    }

    public final void setMemberInfo(MemberInfo memberInfo) {
        this.memberInfo = memberInfo;
    }

    public final void setMemberRights(List<MemberRight> list) {
        this.memberRights = list;
    }

    public final void setPointInfo(PointInfo pointInfo) {
        this.pointInfo = pointInfo;
    }

    public final void setRewardInfo(RewardInfo rewardInfo) {
        Intrinsics.h(rewardInfo, "<set-?>");
        this.rewardInfo = rewardInfo;
    }

    public final void setUserInfo(UserInfo userInfo) {
        this.userInfo = userInfo;
    }

    public String toString() {
        return "MemberDetail(memberInfo=" + this.memberInfo + ", memberRights=" + this.memberRights + ", rewardInfo=" + this.rewardInfo + ", userInfo=" + this.userInfo + ", pointInfo=" + this.pointInfo + ", memberAgreements=" + this.memberAgreements + ", entitlements=" + this.entitlements + ")";
    }
}
