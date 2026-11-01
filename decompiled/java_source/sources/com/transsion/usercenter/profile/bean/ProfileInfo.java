package com.transsion.usercenter.profile.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.transsnet.loginapi.bean.UserInfo;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0087\b\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u001c\u001a\u00020\u001dJ\u0006\u0010\u001e\u001a\u00020\u001fJ\t\u0010 \u001a\u00020\u0003HÆ\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010\"\u001a\u00020\u0007HÆ\u0003J\t\u0010#\u001a\u00020\tHÆ\u0003J3\u0010$\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\tHÆ\u0001J\u0013\u0010%\u001a\u00020\u001f2\b\u0010&\u001a\u0004\u0018\u00010'HÖ\u0003J\t\u0010(\u001a\u00020\u001dHÖ\u0001J\t\u0010)\u001a\u00020\u001bHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019¨\u0006*"}, d2 = {"Lcom/transsion/usercenter/profile/bean/ProfileInfo;", "Ljava/io/Serializable;", "userInfo", "Lcom/transsnet/loginapi/bean/UserInfo;", "myGroup", "Lcom/transsion/usercenter/profile/bean/Group;", "mySubject", "Lcom/transsion/usercenter/profile/bean/Subject;", "blockInfo", "Lcom/transsion/usercenter/profile/bean/BlockInfo;", "<init>", "(Lcom/transsnet/loginapi/bean/UserInfo;Lcom/transsion/usercenter/profile/bean/Group;Lcom/transsion/usercenter/profile/bean/Subject;Lcom/transsion/usercenter/profile/bean/BlockInfo;)V", "getUserInfo", "()Lcom/transsnet/loginapi/bean/UserInfo;", "getMyGroup", "()Lcom/transsion/usercenter/profile/bean/Group;", "getMySubject", "()Lcom/transsion/usercenter/profile/bean/Subject;", "getBlockInfo", "()Lcom/transsion/usercenter/profile/bean/BlockInfo;", "fissionState", "Lcom/transsion/usercenter/profile/bean/FissionState;", "getFissionState", "()Lcom/transsion/usercenter/profile/bean/FissionState;", "setFissionState", "(Lcom/transsion/usercenter/profile/bean/FissionState;)V", "getMyGroupIconByIndex", "", "index", "", "isVisitor", "", "component1", "component2", "component3", "component4", "copy", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class ProfileInfo implements Serializable {
    private final BlockInfo blockInfo;
    private FissionState fissionState;
    private final Group myGroup;
    private final Subject mySubject;
    private final UserInfo userInfo;

    public ProfileInfo(UserInfo userInfo, Group group, Subject mySubject, BlockInfo blockInfo) {
        Intrinsics.h(userInfo, "userInfo");
        Intrinsics.h(mySubject, "mySubject");
        Intrinsics.h(blockInfo, "blockInfo");
        this.userInfo = userInfo;
        this.myGroup = group;
        this.mySubject = mySubject;
        this.blockInfo = blockInfo;
    }

    public static /* synthetic */ ProfileInfo copy$default(ProfileInfo profileInfo, UserInfo userInfo, Group group, Subject subject, BlockInfo blockInfo, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            userInfo = profileInfo.userInfo;
        }
        if ((i11 & 2) != 0) {
            group = profileInfo.myGroup;
        }
        if ((i11 & 4) != 0) {
            subject = profileInfo.mySubject;
        }
        if ((i11 & 8) != 0) {
            blockInfo = profileInfo.blockInfo;
        }
        return profileInfo.copy(userInfo, group, subject, blockInfo);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final UserInfo getUserInfo() {
        return this.userInfo;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Group getMyGroup() {
        return this.myGroup;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Subject getMySubject() {
        return this.mySubject;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final BlockInfo getBlockInfo() {
        return this.blockInfo;
    }

    public final ProfileInfo copy(UserInfo userInfo, Group myGroup, Subject mySubject, BlockInfo blockInfo) {
        Intrinsics.h(userInfo, "userInfo");
        Intrinsics.h(mySubject, "mySubject");
        Intrinsics.h(blockInfo, "blockInfo");
        return new ProfileInfo(userInfo, myGroup, mySubject, blockInfo);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ProfileInfo)) {
            return false;
        }
        ProfileInfo profileInfo = (ProfileInfo) other;
        return Intrinsics.c(this.userInfo, profileInfo.userInfo) && Intrinsics.c(this.myGroup, profileInfo.myGroup) && Intrinsics.c(this.mySubject, profileInfo.mySubject) && Intrinsics.c(this.blockInfo, profileInfo.blockInfo);
    }

    public final BlockInfo getBlockInfo() {
        return this.blockInfo;
    }

    public final FissionState getFissionState() {
        return this.fissionState;
    }

    public final Group getMyGroup() {
        return this.myGroup;
    }

    public final String getMyGroupIconByIndex(int index) {
        Group group;
        List<GroupAvatar> groups;
        GroupAvatar groupAvatar;
        List<GroupAvatar> groups2;
        Group group2 = this.myGroup;
        if (index >= ((group2 == null || (groups2 = group2.getGroups()) == null) ? 0 : groups2.size()) || (group = this.myGroup) == null || (groups = group.getGroups()) == null || (groupAvatar = groups.get(index)) == null) {
            return null;
        }
        return groupAvatar.getAvatar();
    }

    public final Subject getMySubject() {
        return this.mySubject;
    }

    public final UserInfo getUserInfo() {
        return this.userInfo;
    }

    public int hashCode() {
        int iHashCode = this.userInfo.hashCode() * 31;
        Group group = this.myGroup;
        return ((((iHashCode + (group == null ? 0 : group.hashCode())) * 31) + this.mySubject.hashCode()) * 31) + this.blockInfo.hashCode();
    }

    public final boolean isVisitor() {
        return this.userInfo.getUserType() == 0;
    }

    public final void setFissionState(FissionState fissionState) {
        this.fissionState = fissionState;
    }

    public String toString() {
        return "ProfileInfo(userInfo=" + this.userInfo + ", myGroup=" + this.myGroup + ", mySubject=" + this.mySubject + ", blockInfo=" + this.blockInfo + ")";
    }
}
