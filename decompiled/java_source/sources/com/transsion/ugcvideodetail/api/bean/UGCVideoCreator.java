package com.transsion.ugcvideodetail.api.bean;

import androidx.annotation.Keep;
import com.cloud.config.utils.CommonUtils;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0017\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B7\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\b\u0010\tJ\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u0013J>\u0010\u001b\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÆ\u0001¢\u0006\u0002\u0010\u001cJ\u0013\u0010\u001d\u001a\u00020\u00072\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fHÖ\u0003J\t\u0010 \u001a\u00020!HÖ\u0001J\t\u0010\"\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000b\"\u0004\b\u000f\u0010\rR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u000b\"\u0004\b\u0011\u0010\rR\u001e\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0016\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015¨\u0006#"}, d2 = {"Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;", "Ljava/io/Serializable;", CommonUtils.PARAM_UID, "", "nickname", "avatar", "hasSubscribe", "", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V", "getUid", "()Ljava/lang/String;", "setUid", "(Ljava/lang/String;)V", "getNickname", "setNickname", "getAvatar", "setAvatar", "getHasSubscribe", "()Ljava/lang/Boolean;", "setHasSubscribe", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "component1", "component2", "component3", "component4", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "UGCVideoDetailApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class UGCVideoCreator implements Serializable {
    private String avatar;
    private Boolean hasSubscribe;
    private String nickname;
    private String uid;

    public UGCVideoCreator() {
        this(null, null, null, null, 15, null);
    }

    public UGCVideoCreator(String str, String str2, String str3, Boolean bool) {
        this.uid = str;
        this.nickname = str2;
        this.avatar = str3;
        this.hasSubscribe = bool;
    }

    public /* synthetic */ UGCVideoCreator(String str, String str2, String str3, Boolean bool, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? null : str3, (i11 & 8) != 0 ? Boolean.FALSE : bool);
    }

    public static /* synthetic */ UGCVideoCreator copy$default(UGCVideoCreator uGCVideoCreator, String str, String str2, String str3, Boolean bool, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = uGCVideoCreator.uid;
        }
        if ((i11 & 2) != 0) {
            str2 = uGCVideoCreator.nickname;
        }
        if ((i11 & 4) != 0) {
            str3 = uGCVideoCreator.avatar;
        }
        if ((i11 & 8) != 0) {
            bool = uGCVideoCreator.hasSubscribe;
        }
        return uGCVideoCreator.copy(str, str2, str3, bool);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getUid() {
        return this.uid;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getNickname() {
        return this.nickname;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getAvatar() {
        return this.avatar;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Boolean getHasSubscribe() {
        return this.hasSubscribe;
    }

    public final UGCVideoCreator copy(String uid, String nickname, String avatar, Boolean hasSubscribe) {
        return new UGCVideoCreator(uid, nickname, avatar, hasSubscribe);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof UGCVideoCreator)) {
            return false;
        }
        UGCVideoCreator uGCVideoCreator = (UGCVideoCreator) other;
        return Intrinsics.c(this.uid, uGCVideoCreator.uid) && Intrinsics.c(this.nickname, uGCVideoCreator.nickname) && Intrinsics.c(this.avatar, uGCVideoCreator.avatar) && Intrinsics.c(this.hasSubscribe, uGCVideoCreator.hasSubscribe);
    }

    public final String getAvatar() {
        return this.avatar;
    }

    public final Boolean getHasSubscribe() {
        return this.hasSubscribe;
    }

    public final String getNickname() {
        return this.nickname;
    }

    public final String getUid() {
        return this.uid;
    }

    public int hashCode() {
        String str = this.uid;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.nickname;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.avatar;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Boolean bool = this.hasSubscribe;
        return iHashCode3 + (bool != null ? bool.hashCode() : 0);
    }

    public final void setAvatar(String str) {
        this.avatar = str;
    }

    public final void setHasSubscribe(Boolean bool) {
        this.hasSubscribe = bool;
    }

    public final void setNickname(String str) {
        this.nickname = str;
    }

    public final void setUid(String str) {
        this.uid = str;
    }

    public String toString() {
        return "UGCVideoCreator(uid=" + this.uid + ", nickname=" + this.nickname + ", avatar=" + this.avatar + ", hasSubscribe=" + this.hasSubscribe + ")";
    }
}
