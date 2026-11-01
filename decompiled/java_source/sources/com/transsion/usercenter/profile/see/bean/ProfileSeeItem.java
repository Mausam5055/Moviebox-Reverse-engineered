package com.transsion.usercenter.profile.see.bean;

import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B)\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000bJ\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0007HÆ\u0003J2\u0010\u0014\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÆ\u0001¢\u0006\u0002\u0010\u0015J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019HÖ\u0003J\t\u0010\u001a\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001b\u001a\u00020\u001cHÖ\u0001R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\n\u0010\u000bR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u001d"}, d2 = {"Lcom/transsion/usercenter/profile/see/bean/ProfileSeeItem;", "Ljava/io/Serializable;", NativeComponentConstants.KEY_COMPONENT_TYPE, "", "subject", "Lcom/transsion/usercenter/profile/see/bean/ProfileSeeSubjectItem;", "staff", "Lcom/transsion/usercenter/profile/see/bean/ProfileSeeStaffItem;", "<init>", "(Ljava/lang/Integer;Lcom/transsion/usercenter/profile/see/bean/ProfileSeeSubjectItem;Lcom/transsion/usercenter/profile/see/bean/ProfileSeeStaffItem;)V", "getType", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getSubject", "()Lcom/transsion/usercenter/profile/see/bean/ProfileSeeSubjectItem;", "getStaff", "()Lcom/transsion/usercenter/profile/see/bean/ProfileSeeStaffItem;", "component1", "component2", "component3", "copy", "(Ljava/lang/Integer;Lcom/transsion/usercenter/profile/see/bean/ProfileSeeSubjectItem;Lcom/transsion/usercenter/profile/see/bean/ProfileSeeStaffItem;)Lcom/transsion/usercenter/profile/see/bean/ProfileSeeItem;", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class ProfileSeeItem implements Serializable {

    @SerializedName("staff")
    private final ProfileSeeStaffItem staff;

    @SerializedName("subject")
    private final ProfileSeeSubjectItem subject;

    @SerializedName(NativeComponentConstants.KEY_COMPONENT_TYPE)
    private final Integer type;

    public ProfileSeeItem(Integer num, ProfileSeeSubjectItem profileSeeSubjectItem, ProfileSeeStaffItem profileSeeStaffItem) {
        this.type = num;
        this.subject = profileSeeSubjectItem;
        this.staff = profileSeeStaffItem;
    }

    public /* synthetic */ ProfileSeeItem(Integer num, ProfileSeeSubjectItem profileSeeSubjectItem, ProfileSeeStaffItem profileSeeStaffItem, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(num, (i11 & 2) != 0 ? null : profileSeeSubjectItem, (i11 & 4) != 0 ? null : profileSeeStaffItem);
    }

    public static /* synthetic */ ProfileSeeItem copy$default(ProfileSeeItem profileSeeItem, Integer num, ProfileSeeSubjectItem profileSeeSubjectItem, ProfileSeeStaffItem profileSeeStaffItem, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            num = profileSeeItem.type;
        }
        if ((i11 & 2) != 0) {
            profileSeeSubjectItem = profileSeeItem.subject;
        }
        if ((i11 & 4) != 0) {
            profileSeeStaffItem = profileSeeItem.staff;
        }
        return profileSeeItem.copy(num, profileSeeSubjectItem, profileSeeStaffItem);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Integer getType() {
        return this.type;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final ProfileSeeSubjectItem getSubject() {
        return this.subject;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final ProfileSeeStaffItem getStaff() {
        return this.staff;
    }

    public final ProfileSeeItem copy(Integer type, ProfileSeeSubjectItem subject, ProfileSeeStaffItem staff) {
        return new ProfileSeeItem(type, subject, staff);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ProfileSeeItem)) {
            return false;
        }
        ProfileSeeItem profileSeeItem = (ProfileSeeItem) other;
        return Intrinsics.c(this.type, profileSeeItem.type) && Intrinsics.c(this.subject, profileSeeItem.subject) && Intrinsics.c(this.staff, profileSeeItem.staff);
    }

    public final ProfileSeeStaffItem getStaff() {
        return this.staff;
    }

    public final ProfileSeeSubjectItem getSubject() {
        return this.subject;
    }

    public final Integer getType() {
        return this.type;
    }

    public int hashCode() {
        Integer num = this.type;
        int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
        ProfileSeeSubjectItem profileSeeSubjectItem = this.subject;
        int iHashCode2 = (iHashCode + (profileSeeSubjectItem == null ? 0 : profileSeeSubjectItem.hashCode())) * 31;
        ProfileSeeStaffItem profileSeeStaffItem = this.staff;
        return iHashCode2 + (profileSeeStaffItem != null ? profileSeeStaffItem.hashCode() : 0);
    }

    public String toString() {
        return "ProfileSeeItem(type=" + this.type + ", subject=" + this.subject + ", staff=" + this.staff + ")";
    }
}
