package com.transsion.usercenter.profile.bean;

import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.transsion.memberapi.MemberInfo;
import com.transsnet.loginapi.bean.UserInfo;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b#\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001Bu\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\b\u0010\f\u001a\u0004\u0018\u00010\r\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u000f\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015¢\u0006\u0004\b\u0016\u0010\u0017J\u000b\u0010,\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010-\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010.\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010/\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u00100\u001a\u0004\u0018\u00010\u000bHÆ\u0003J\u000b\u00101\u001a\u0004\u0018\u00010\rHÆ\u0003J\u000b\u00102\u001a\u0004\u0018\u00010\u000fHÆ\u0003J\u000b\u00103\u001a\u0004\u0018\u00010\u000fHÆ\u0003J\u000b\u00104\u001a\u0004\u0018\u00010\u000fHÆ\u0003J\u000b\u00105\u001a\u0004\u0018\u00010\u0013HÆ\u0003J\u000b\u00106\u001a\u0004\u0018\u00010\u0015HÆ\u0003J\u008d\u0001\u00107\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0015HÆ\u0001J\u0013\u00108\u001a\u0002092\b\u0010:\u001a\u0004\u0018\u00010;HÖ\u0003J\t\u0010<\u001a\u00020=HÖ\u0001J\t\u0010>\u001a\u00020?HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR\u0013\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001fR\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\b\n\u0000\u001a\u0004\b \u0010!R\u0013\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010#R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u000f¢\u0006\b\n\u0000\u001a\u0004\b$\u0010%R\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u000f¢\u0006\b\n\u0000\u001a\u0004\b&\u0010%R\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u000f¢\u0006\b\n\u0000\u001a\u0004\b'\u0010%R\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u0013¢\u0006\b\n\u0000\u001a\u0004\b(\u0010)R\u0013\u0010\u0014\u001a\u0004\u0018\u00010\u0015¢\u0006\b\n\u0000\u001a\u0004\b*\u0010+¨\u0006@"}, d2 = {"Lcom/transsion/usercenter/profile/bean/MinePageInfo;", "Ljava/io/Serializable;", "userInfo", "Lcom/transsnet/loginapi/bean/UserInfo;", "myGroup", "Lcom/transsion/usercenter/profile/bean/MyGroup;", "novelEntry", "Lcom/transsion/usercenter/profile/bean/MineNovel;", "mySubject", "Lcom/transsion/usercenter/profile/bean/MySubject;", "blockInfo", "Lcom/transsion/usercenter/profile/bean/BlockInfo;", "vipInfo", "Lcom/transsion/memberapi/MemberInfo;", "myPost", "Lcom/transsion/usercenter/profile/bean/CountInfo;", "myLike", "myComment", "favoriteInfo", "Lcom/transsion/usercenter/profile/bean/BffFavoriteInfo;", "subscribeInfo", "Lcom/transsion/usercenter/profile/bean/SubscribeInfo;", "<init>", "(Lcom/transsnet/loginapi/bean/UserInfo;Lcom/transsion/usercenter/profile/bean/MyGroup;Lcom/transsion/usercenter/profile/bean/MineNovel;Lcom/transsion/usercenter/profile/bean/MySubject;Lcom/transsion/usercenter/profile/bean/BlockInfo;Lcom/transsion/memberapi/MemberInfo;Lcom/transsion/usercenter/profile/bean/CountInfo;Lcom/transsion/usercenter/profile/bean/CountInfo;Lcom/transsion/usercenter/profile/bean/CountInfo;Lcom/transsion/usercenter/profile/bean/BffFavoriteInfo;Lcom/transsion/usercenter/profile/bean/SubscribeInfo;)V", "getUserInfo", "()Lcom/transsnet/loginapi/bean/UserInfo;", "getMyGroup", "()Lcom/transsion/usercenter/profile/bean/MyGroup;", "getNovelEntry", "()Lcom/transsion/usercenter/profile/bean/MineNovel;", "getMySubject", "()Lcom/transsion/usercenter/profile/bean/MySubject;", "getBlockInfo", "()Lcom/transsion/usercenter/profile/bean/BlockInfo;", "getVipInfo", "()Lcom/transsion/memberapi/MemberInfo;", "getMyPost", "()Lcom/transsion/usercenter/profile/bean/CountInfo;", "getMyLike", "getMyComment", "getFavoriteInfo", "()Lcom/transsion/usercenter/profile/bean/BffFavoriteInfo;", "getSubscribeInfo", "()Lcom/transsion/usercenter/profile/bean/SubscribeInfo;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class MinePageInfo implements Serializable {
    private final BlockInfo blockInfo;
    private final BffFavoriteInfo favoriteInfo;
    private final CountInfo myComment;
    private final MyGroup myGroup;
    private final CountInfo myLike;
    private final CountInfo myPost;
    private final MySubject mySubject;
    private final MineNovel novelEntry;
    private final SubscribeInfo subscribeInfo;
    private final UserInfo userInfo;
    private final MemberInfo vipInfo;

    public MinePageInfo(UserInfo userInfo, MyGroup myGroup, MineNovel mineNovel, MySubject mySubject, BlockInfo blockInfo, MemberInfo memberInfo, CountInfo countInfo, CountInfo countInfo2, CountInfo countInfo3, BffFavoriteInfo bffFavoriteInfo, SubscribeInfo subscribeInfo) {
        this.userInfo = userInfo;
        this.myGroup = myGroup;
        this.novelEntry = mineNovel;
        this.mySubject = mySubject;
        this.blockInfo = blockInfo;
        this.vipInfo = memberInfo;
        this.myPost = countInfo;
        this.myLike = countInfo2;
        this.myComment = countInfo3;
        this.favoriteInfo = bffFavoriteInfo;
        this.subscribeInfo = subscribeInfo;
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final UserInfo getUserInfo() {
        return this.userInfo;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final BffFavoriteInfo getFavoriteInfo() {
        return this.favoriteInfo;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final SubscribeInfo getSubscribeInfo() {
        return this.subscribeInfo;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final MyGroup getMyGroup() {
        return this.myGroup;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final MineNovel getNovelEntry() {
        return this.novelEntry;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final MySubject getMySubject() {
        return this.mySubject;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final BlockInfo getBlockInfo() {
        return this.blockInfo;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final MemberInfo getVipInfo() {
        return this.vipInfo;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final CountInfo getMyPost() {
        return this.myPost;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final CountInfo getMyLike() {
        return this.myLike;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final CountInfo getMyComment() {
        return this.myComment;
    }

    public final MinePageInfo copy(UserInfo userInfo, MyGroup myGroup, MineNovel novelEntry, MySubject mySubject, BlockInfo blockInfo, MemberInfo vipInfo, CountInfo myPost, CountInfo myLike, CountInfo myComment, BffFavoriteInfo favoriteInfo, SubscribeInfo subscribeInfo) {
        return new MinePageInfo(userInfo, myGroup, novelEntry, mySubject, blockInfo, vipInfo, myPost, myLike, myComment, favoriteInfo, subscribeInfo);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MinePageInfo)) {
            return false;
        }
        MinePageInfo minePageInfo = (MinePageInfo) other;
        return Intrinsics.c(this.userInfo, minePageInfo.userInfo) && Intrinsics.c(this.myGroup, minePageInfo.myGroup) && Intrinsics.c(this.novelEntry, minePageInfo.novelEntry) && Intrinsics.c(this.mySubject, minePageInfo.mySubject) && Intrinsics.c(this.blockInfo, minePageInfo.blockInfo) && Intrinsics.c(this.vipInfo, minePageInfo.vipInfo) && Intrinsics.c(this.myPost, minePageInfo.myPost) && Intrinsics.c(this.myLike, minePageInfo.myLike) && Intrinsics.c(this.myComment, minePageInfo.myComment) && Intrinsics.c(this.favoriteInfo, minePageInfo.favoriteInfo) && Intrinsics.c(this.subscribeInfo, minePageInfo.subscribeInfo);
    }

    public final BlockInfo getBlockInfo() {
        return this.blockInfo;
    }

    public final BffFavoriteInfo getFavoriteInfo() {
        return this.favoriteInfo;
    }

    public final CountInfo getMyComment() {
        return this.myComment;
    }

    public final MyGroup getMyGroup() {
        return this.myGroup;
    }

    public final CountInfo getMyLike() {
        return this.myLike;
    }

    public final CountInfo getMyPost() {
        return this.myPost;
    }

    public final MySubject getMySubject() {
        return this.mySubject;
    }

    public final MineNovel getNovelEntry() {
        return this.novelEntry;
    }

    public final SubscribeInfo getSubscribeInfo() {
        return this.subscribeInfo;
    }

    public final UserInfo getUserInfo() {
        return this.userInfo;
    }

    public final MemberInfo getVipInfo() {
        return this.vipInfo;
    }

    public int hashCode() {
        UserInfo userInfo = this.userInfo;
        int iHashCode = (userInfo == null ? 0 : userInfo.hashCode()) * 31;
        MyGroup myGroup = this.myGroup;
        int iHashCode2 = (iHashCode + (myGroup == null ? 0 : myGroup.hashCode())) * 31;
        MineNovel mineNovel = this.novelEntry;
        int iHashCode3 = (iHashCode2 + (mineNovel == null ? 0 : mineNovel.hashCode())) * 31;
        MySubject mySubject = this.mySubject;
        int iHashCode4 = (iHashCode3 + (mySubject == null ? 0 : mySubject.hashCode())) * 31;
        BlockInfo blockInfo = this.blockInfo;
        int iHashCode5 = (iHashCode4 + (blockInfo == null ? 0 : blockInfo.hashCode())) * 31;
        MemberInfo memberInfo = this.vipInfo;
        int iHashCode6 = (iHashCode5 + (memberInfo == null ? 0 : memberInfo.hashCode())) * 31;
        CountInfo countInfo = this.myPost;
        int iHashCode7 = (iHashCode6 + (countInfo == null ? 0 : countInfo.hashCode())) * 31;
        CountInfo countInfo2 = this.myLike;
        int iHashCode8 = (iHashCode7 + (countInfo2 == null ? 0 : countInfo2.hashCode())) * 31;
        CountInfo countInfo3 = this.myComment;
        int iHashCode9 = (iHashCode8 + (countInfo3 == null ? 0 : countInfo3.hashCode())) * 31;
        BffFavoriteInfo bffFavoriteInfo = this.favoriteInfo;
        int iHashCode10 = (iHashCode9 + (bffFavoriteInfo == null ? 0 : bffFavoriteInfo.hashCode())) * 31;
        SubscribeInfo subscribeInfo = this.subscribeInfo;
        return iHashCode10 + (subscribeInfo != null ? subscribeInfo.hashCode() : 0);
    }

    public String toString() {
        return "MinePageInfo(userInfo=" + this.userInfo + ", myGroup=" + this.myGroup + ", novelEntry=" + this.novelEntry + ", mySubject=" + this.mySubject + ", blockInfo=" + this.blockInfo + ", vipInfo=" + this.vipInfo + ", myPost=" + this.myPost + ", myLike=" + this.myLike + ", myComment=" + this.myComment + ", favoriteInfo=" + this.favoriteInfo + ", subscribeInfo=" + this.subscribeInfo + ")";
    }
}
