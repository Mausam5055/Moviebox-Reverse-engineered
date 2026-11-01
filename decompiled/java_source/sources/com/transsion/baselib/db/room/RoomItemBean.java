package com.transsion.baselib.db.room;

import androidx.annotation.Keep;
import androidx.collection.s;
import com.cloud.tmc.integration.permission.PermissionConstant;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.hisavana.common.tracking.TrackingKey;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\b3\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001Bi\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\t\u0012\b\u0010\f\u001a\u0004\u0018\u00010\t\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u000e\u001a\u00020\t¢\u0006\u0004\b\u000f\u0010\u0010J\t\u0010/\u001a\u00020\u0003HÆ\u0003J\u000b\u00100\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00101\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u00102\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u001aJ\u0010\u00103\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010\u001fJ\u000b\u00104\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u00105\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010\u001fJ\u0010\u00106\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010\u001fJ\u000b\u00107\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u00108\u001a\u00020\tHÆ\u0003J\u0082\u0001\u00109\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u000e\u001a\u00020\tHÆ\u0001¢\u0006\u0002\u0010:J\u0013\u0010;\u001a\u00020\u00072\b\u0010<\u001a\u0004\u0018\u00010=HÖ\u0003J\t\u0010>\u001a\u00020?HÖ\u0001J\t\u0010@\u001a\u00020\u0003HÖ\u0001R\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0012\"\u0004\b\u0016\u0010\u0014R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0012\"\u0004\b\u0018\u0010\u0014R\u001e\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001d\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u001e\u0010\b\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\"\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u001c\u0010\n\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010\u0012\"\u0004\b$\u0010\u0014R\u001e\u0010\u000b\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\"\u001a\u0004\b%\u0010\u001f\"\u0004\b&\u0010!R\u001e\u0010\f\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\"\u001a\u0004\b'\u0010\u001f\"\u0004\b(\u0010!R\u001c\u0010\r\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010\u0012\"\u0004\b*\u0010\u0014R\u001a\u0010\u000e\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.¨\u0006A"}, d2 = {"Lcom/transsion/baselib/db/room/RoomItemBean;", "Ljava/io/Serializable;", "groupId", "", "name", "avatar", "hasJoin", "", "newPostCount", "", TrackingKey.DESCRIPTION, "postCount", "userCount", PermissionConstant.level, "updateTimeStamp", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;J)V", "getGroupId", "()Ljava/lang/String;", "setGroupId", "(Ljava/lang/String;)V", "getName", "setName", "getAvatar", "setAvatar", "getHasJoin", "()Ljava/lang/Boolean;", "setHasJoin", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "getNewPostCount", "()Ljava/lang/Long;", "setNewPostCount", "(Ljava/lang/Long;)V", "Ljava/lang/Long;", "getDescription", "setDescription", "getPostCount", "setPostCount", "getUserCount", "setUserCount", "getLevel", "setLevel", "getUpdateTimeStamp", "()J", "setUpdateTimeStamp", "(J)V", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;J)Lcom/transsion/baselib/db/room/RoomItemBean;", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "BaseLib_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class RoomItemBean implements Serializable {
    private String avatar;
    private String description;
    private String groupId;
    private Boolean hasJoin;
    private String level;
    private String name;
    private Long newPostCount;
    private Long postCount;
    private long updateTimeStamp;
    private Long userCount;

    public RoomItemBean(String groupId, String str, String str2, Boolean bool, Long l11, String str3, Long l12, Long l13, String str4, long j11) {
        Intrinsics.h(groupId, "groupId");
        this.groupId = groupId;
        this.name = str;
        this.avatar = str2;
        this.hasJoin = bool;
        this.newPostCount = l11;
        this.description = str3;
        this.postCount = l12;
        this.userCount = l13;
        this.level = str4;
        this.updateTimeStamp = j11;
    }

    public /* synthetic */ RoomItemBean(String str, String str2, String str3, Boolean bool, Long l11, String str4, Long l12, Long l13, String str5, long j11, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, bool, l11, str4, l12, l13, str5, (i11 & 512) != 0 ? System.currentTimeMillis() : j11);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getGroupId() {
        return this.groupId;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final long getUpdateTimeStamp() {
        return this.updateTimeStamp;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getAvatar() {
        return this.avatar;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Boolean getHasJoin() {
        return this.hasJoin;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final Long getNewPostCount() {
        return this.newPostCount;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getDescription() {
        return this.description;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final Long getPostCount() {
        return this.postCount;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final Long getUserCount() {
        return this.userCount;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getLevel() {
        return this.level;
    }

    public final RoomItemBean copy(String groupId, String name, String avatar, Boolean hasJoin, Long newPostCount, String description, Long postCount, Long userCount, String level, long updateTimeStamp) {
        Intrinsics.h(groupId, "groupId");
        return new RoomItemBean(groupId, name, avatar, hasJoin, newPostCount, description, postCount, userCount, level, updateTimeStamp);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof RoomItemBean)) {
            return false;
        }
        RoomItemBean roomItemBean = (RoomItemBean) other;
        return Intrinsics.c(this.groupId, roomItemBean.groupId) && Intrinsics.c(this.name, roomItemBean.name) && Intrinsics.c(this.avatar, roomItemBean.avatar) && Intrinsics.c(this.hasJoin, roomItemBean.hasJoin) && Intrinsics.c(this.newPostCount, roomItemBean.newPostCount) && Intrinsics.c(this.description, roomItemBean.description) && Intrinsics.c(this.postCount, roomItemBean.postCount) && Intrinsics.c(this.userCount, roomItemBean.userCount) && Intrinsics.c(this.level, roomItemBean.level) && this.updateTimeStamp == roomItemBean.updateTimeStamp;
    }

    public final String getAvatar() {
        return this.avatar;
    }

    public final String getDescription() {
        return this.description;
    }

    public final String getGroupId() {
        return this.groupId;
    }

    public final Boolean getHasJoin() {
        return this.hasJoin;
    }

    public final String getLevel() {
        return this.level;
    }

    public final String getName() {
        return this.name;
    }

    public final Long getNewPostCount() {
        return this.newPostCount;
    }

    public final Long getPostCount() {
        return this.postCount;
    }

    public final long getUpdateTimeStamp() {
        return this.updateTimeStamp;
    }

    public final Long getUserCount() {
        return this.userCount;
    }

    public int hashCode() {
        int iHashCode = this.groupId.hashCode() * 31;
        String str = this.name;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.avatar;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Boolean bool = this.hasJoin;
        int iHashCode4 = (iHashCode3 + (bool == null ? 0 : bool.hashCode())) * 31;
        Long l11 = this.newPostCount;
        int iHashCode5 = (iHashCode4 + (l11 == null ? 0 : l11.hashCode())) * 31;
        String str3 = this.description;
        int iHashCode6 = (iHashCode5 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Long l12 = this.postCount;
        int iHashCode7 = (iHashCode6 + (l12 == null ? 0 : l12.hashCode())) * 31;
        Long l13 = this.userCount;
        int iHashCode8 = (iHashCode7 + (l13 == null ? 0 : l13.hashCode())) * 31;
        String str4 = this.level;
        return ((iHashCode8 + (str4 != null ? str4.hashCode() : 0)) * 31) + s.a(this.updateTimeStamp);
    }

    public final void setAvatar(String str) {
        this.avatar = str;
    }

    public final void setDescription(String str) {
        this.description = str;
    }

    public final void setGroupId(String str) {
        Intrinsics.h(str, "<set-?>");
        this.groupId = str;
    }

    public final void setHasJoin(Boolean bool) {
        this.hasJoin = bool;
    }

    public final void setLevel(String str) {
        this.level = str;
    }

    public final void setName(String str) {
        this.name = str;
    }

    public final void setNewPostCount(Long l11) {
        this.newPostCount = l11;
    }

    public final void setPostCount(Long l11) {
        this.postCount = l11;
    }

    public final void setUpdateTimeStamp(long j11) {
        this.updateTimeStamp = j11;
    }

    public final void setUserCount(Long l11) {
        this.userCount = l11;
    }

    public String toString() {
        return "RoomItemBean(groupId=" + this.groupId + ", name=" + this.name + ", avatar=" + this.avatar + ", hasJoin=" + this.hasJoin + ", newPostCount=" + this.newPostCount + ", description=" + this.description + ", postCount=" + this.postCount + ", userCount=" + this.userCount + ", level=" + this.level + ", updateTimeStamp=" + this.updateTimeStamp + ")";
    }
}
