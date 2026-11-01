package com.transsion.usercenter.profile.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.transsion.memberapi.MemberInfo;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b&\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B\u007f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\b\u0010\f\u001a\u0004\u0018\u00010\r\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u000f\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015\u0012\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017¢\u0006\u0004\b\u0018\u0010\u0019J\u000b\u00100\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00101\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u00102\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u00103\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u00104\u001a\u0004\u0018\u00010\u000bHÆ\u0003J\u000b\u00105\u001a\u0004\u0018\u00010\rHÆ\u0003J\u000b\u00106\u001a\u0004\u0018\u00010\u000fHÆ\u0003J\u000b\u00107\u001a\u0004\u0018\u00010\u000fHÆ\u0003J\u000b\u00108\u001a\u0004\u0018\u00010\u000fHÆ\u0003J\u000b\u00109\u001a\u0004\u0018\u00010\u0013HÆ\u0003J\u000b\u0010:\u001a\u0004\u0018\u00010\u0015HÆ\u0003J\u000b\u0010;\u001a\u0004\u0018\u00010\u0017HÆ\u0003J\u0099\u0001\u0010<\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00152\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017HÆ\u0001J\u0013\u0010=\u001a\u00020>2\b\u0010?\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010@\u001a\u00020AHÖ\u0001J\t\u0010B\u001a\u00020CHÖ\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001fR\u0018\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b \u0010!R\u0018\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010#R\u0018\u0010\f\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b$\u0010%R\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b&\u0010'R\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b(\u0010'R\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b)\u0010'R\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u00138\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b*\u0010+R\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00158\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b,\u0010-R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00178\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b.\u0010/¨\u0006D"}, d2 = {"Lcom/transsion/usercenter/profile/bean/BffUserProfileData;", "", "userInfo", "Lcom/transsion/usercenter/profile/bean/BffUserInfo;", "myGroup", "Lcom/transsion/usercenter/profile/bean/BffMyGroup;", "mySubject", "Lcom/transsion/usercenter/profile/bean/BffMySubject;", "blockInfo", "Lcom/transsion/usercenter/profile/bean/BffBlockInfo;", "fissionState", "Lcom/transsion/usercenter/profile/bean/BffFissionState;", "vipInfo", "Lcom/transsion/memberapi/MemberInfo;", "myPost", "Lcom/transsion/usercenter/profile/bean/BffCountInfo;", "myLike", "myComment", "novelEntry", "Lcom/transsion/usercenter/profile/bean/BffNovelEntry;", "favoriteInfo", "Lcom/transsion/usercenter/profile/bean/BffFavoriteInfo;", "subscribeInfo", "Lcom/transsion/usercenter/profile/bean/BffSubscribeInfo;", "<init>", "(Lcom/transsion/usercenter/profile/bean/BffUserInfo;Lcom/transsion/usercenter/profile/bean/BffMyGroup;Lcom/transsion/usercenter/profile/bean/BffMySubject;Lcom/transsion/usercenter/profile/bean/BffBlockInfo;Lcom/transsion/usercenter/profile/bean/BffFissionState;Lcom/transsion/memberapi/MemberInfo;Lcom/transsion/usercenter/profile/bean/BffCountInfo;Lcom/transsion/usercenter/profile/bean/BffCountInfo;Lcom/transsion/usercenter/profile/bean/BffCountInfo;Lcom/transsion/usercenter/profile/bean/BffNovelEntry;Lcom/transsion/usercenter/profile/bean/BffFavoriteInfo;Lcom/transsion/usercenter/profile/bean/BffSubscribeInfo;)V", "getUserInfo", "()Lcom/transsion/usercenter/profile/bean/BffUserInfo;", "getMyGroup", "()Lcom/transsion/usercenter/profile/bean/BffMyGroup;", "getMySubject", "()Lcom/transsion/usercenter/profile/bean/BffMySubject;", "getBlockInfo", "()Lcom/transsion/usercenter/profile/bean/BffBlockInfo;", "getFissionState", "()Lcom/transsion/usercenter/profile/bean/BffFissionState;", "getVipInfo", "()Lcom/transsion/memberapi/MemberInfo;", "getMyPost", "()Lcom/transsion/usercenter/profile/bean/BffCountInfo;", "getMyLike", "getMyComment", "getNovelEntry", "()Lcom/transsion/usercenter/profile/bean/BffNovelEntry;", "getFavoriteInfo", "()Lcom/transsion/usercenter/profile/bean/BffFavoriteInfo;", "getSubscribeInfo", "()Lcom/transsion/usercenter/profile/bean/BffSubscribeInfo;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "", "toString", "", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class BffUserProfileData {

    @SerializedName("blockInfo")
    private final BffBlockInfo blockInfo;

    @SerializedName("favoriteInfo")
    private final BffFavoriteInfo favoriteInfo;

    @SerializedName("fissionState")
    private final BffFissionState fissionState;

    @SerializedName("myComment")
    private final BffCountInfo myComment;

    @SerializedName("myGroup")
    private final BffMyGroup myGroup;

    @SerializedName("myLike")
    private final BffCountInfo myLike;

    @SerializedName("myPost")
    private final BffCountInfo myPost;

    @SerializedName("mySubject")
    private final BffMySubject mySubject;

    @SerializedName("novelEntry")
    private final BffNovelEntry novelEntry;

    @SerializedName("subscribeInfo")
    private final BffSubscribeInfo subscribeInfo;

    @SerializedName("userInfo")
    private final BffUserInfo userInfo;

    @SerializedName("vipInfo")
    private final MemberInfo vipInfo;

    public BffUserProfileData(BffUserInfo bffUserInfo, BffMyGroup bffMyGroup, BffMySubject bffMySubject, BffBlockInfo bffBlockInfo, BffFissionState bffFissionState, MemberInfo memberInfo, BffCountInfo bffCountInfo, BffCountInfo bffCountInfo2, BffCountInfo bffCountInfo3, BffNovelEntry bffNovelEntry, BffFavoriteInfo bffFavoriteInfo, BffSubscribeInfo bffSubscribeInfo) {
        this.userInfo = bffUserInfo;
        this.myGroup = bffMyGroup;
        this.mySubject = bffMySubject;
        this.blockInfo = bffBlockInfo;
        this.fissionState = bffFissionState;
        this.vipInfo = memberInfo;
        this.myPost = bffCountInfo;
        this.myLike = bffCountInfo2;
        this.myComment = bffCountInfo3;
        this.novelEntry = bffNovelEntry;
        this.favoriteInfo = bffFavoriteInfo;
        this.subscribeInfo = bffSubscribeInfo;
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final BffUserInfo getUserInfo() {
        return this.userInfo;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final BffNovelEntry getNovelEntry() {
        return this.novelEntry;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final BffFavoriteInfo getFavoriteInfo() {
        return this.favoriteInfo;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final BffSubscribeInfo getSubscribeInfo() {
        return this.subscribeInfo;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final BffMyGroup getMyGroup() {
        return this.myGroup;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final BffMySubject getMySubject() {
        return this.mySubject;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final BffBlockInfo getBlockInfo() {
        return this.blockInfo;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final BffFissionState getFissionState() {
        return this.fissionState;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final MemberInfo getVipInfo() {
        return this.vipInfo;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final BffCountInfo getMyPost() {
        return this.myPost;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final BffCountInfo getMyLike() {
        return this.myLike;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final BffCountInfo getMyComment() {
        return this.myComment;
    }

    public final BffUserProfileData copy(BffUserInfo userInfo, BffMyGroup myGroup, BffMySubject mySubject, BffBlockInfo blockInfo, BffFissionState fissionState, MemberInfo vipInfo, BffCountInfo myPost, BffCountInfo myLike, BffCountInfo myComment, BffNovelEntry novelEntry, BffFavoriteInfo favoriteInfo, BffSubscribeInfo subscribeInfo) {
        return new BffUserProfileData(userInfo, myGroup, mySubject, blockInfo, fissionState, vipInfo, myPost, myLike, myComment, novelEntry, favoriteInfo, subscribeInfo);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof BffUserProfileData)) {
            return false;
        }
        BffUserProfileData bffUserProfileData = (BffUserProfileData) other;
        return Intrinsics.c(this.userInfo, bffUserProfileData.userInfo) && Intrinsics.c(this.myGroup, bffUserProfileData.myGroup) && Intrinsics.c(this.mySubject, bffUserProfileData.mySubject) && Intrinsics.c(this.blockInfo, bffUserProfileData.blockInfo) && Intrinsics.c(this.fissionState, bffUserProfileData.fissionState) && Intrinsics.c(this.vipInfo, bffUserProfileData.vipInfo) && Intrinsics.c(this.myPost, bffUserProfileData.myPost) && Intrinsics.c(this.myLike, bffUserProfileData.myLike) && Intrinsics.c(this.myComment, bffUserProfileData.myComment) && Intrinsics.c(this.novelEntry, bffUserProfileData.novelEntry) && Intrinsics.c(this.favoriteInfo, bffUserProfileData.favoriteInfo) && Intrinsics.c(this.subscribeInfo, bffUserProfileData.subscribeInfo);
    }

    public final BffBlockInfo getBlockInfo() {
        return this.blockInfo;
    }

    public final BffFavoriteInfo getFavoriteInfo() {
        return this.favoriteInfo;
    }

    public final BffFissionState getFissionState() {
        return this.fissionState;
    }

    public final BffCountInfo getMyComment() {
        return this.myComment;
    }

    public final BffMyGroup getMyGroup() {
        return this.myGroup;
    }

    public final BffCountInfo getMyLike() {
        return this.myLike;
    }

    public final BffCountInfo getMyPost() {
        return this.myPost;
    }

    public final BffMySubject getMySubject() {
        return this.mySubject;
    }

    public final BffNovelEntry getNovelEntry() {
        return this.novelEntry;
    }

    public final BffSubscribeInfo getSubscribeInfo() {
        return this.subscribeInfo;
    }

    public final BffUserInfo getUserInfo() {
        return this.userInfo;
    }

    public final MemberInfo getVipInfo() {
        return this.vipInfo;
    }

    public int hashCode() {
        BffUserInfo bffUserInfo = this.userInfo;
        int iHashCode = (bffUserInfo == null ? 0 : bffUserInfo.hashCode()) * 31;
        BffMyGroup bffMyGroup = this.myGroup;
        int iHashCode2 = (iHashCode + (bffMyGroup == null ? 0 : bffMyGroup.hashCode())) * 31;
        BffMySubject bffMySubject = this.mySubject;
        int iHashCode3 = (iHashCode2 + (bffMySubject == null ? 0 : bffMySubject.hashCode())) * 31;
        BffBlockInfo bffBlockInfo = this.blockInfo;
        int iHashCode4 = (iHashCode3 + (bffBlockInfo == null ? 0 : bffBlockInfo.hashCode())) * 31;
        BffFissionState bffFissionState = this.fissionState;
        int iHashCode5 = (iHashCode4 + (bffFissionState == null ? 0 : bffFissionState.hashCode())) * 31;
        MemberInfo memberInfo = this.vipInfo;
        int iHashCode6 = (iHashCode5 + (memberInfo == null ? 0 : memberInfo.hashCode())) * 31;
        BffCountInfo bffCountInfo = this.myPost;
        int iHashCode7 = (iHashCode6 + (bffCountInfo == null ? 0 : bffCountInfo.hashCode())) * 31;
        BffCountInfo bffCountInfo2 = this.myLike;
        int iHashCode8 = (iHashCode7 + (bffCountInfo2 == null ? 0 : bffCountInfo2.hashCode())) * 31;
        BffCountInfo bffCountInfo3 = this.myComment;
        int iHashCode9 = (iHashCode8 + (bffCountInfo3 == null ? 0 : bffCountInfo3.hashCode())) * 31;
        BffNovelEntry bffNovelEntry = this.novelEntry;
        int iHashCode10 = (iHashCode9 + (bffNovelEntry == null ? 0 : bffNovelEntry.hashCode())) * 31;
        BffFavoriteInfo bffFavoriteInfo = this.favoriteInfo;
        int iHashCode11 = (iHashCode10 + (bffFavoriteInfo == null ? 0 : bffFavoriteInfo.hashCode())) * 31;
        BffSubscribeInfo bffSubscribeInfo = this.subscribeInfo;
        return iHashCode11 + (bffSubscribeInfo != null ? bffSubscribeInfo.hashCode() : 0);
    }

    public String toString() {
        return "BffUserProfileData(userInfo=" + this.userInfo + ", myGroup=" + this.myGroup + ", mySubject=" + this.mySubject + ", blockInfo=" + this.blockInfo + ", fissionState=" + this.fissionState + ", vipInfo=" + this.vipInfo + ", myPost=" + this.myPost + ", myLike=" + this.myLike + ", myComment=" + this.myComment + ", novelEntry=" + this.novelEntry + ", favoriteInfo=" + this.favoriteInfo + ", subscribeInfo=" + this.subscribeInfo + ")";
    }
}
