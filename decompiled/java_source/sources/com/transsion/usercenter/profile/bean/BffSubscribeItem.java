package com.transsion.usercenter.profile.bean;

import androidx.annotation.Keep;
import com.cloud.config.utils.CommonUtils;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B%\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u000e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J-\u0010\u000f\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0003HÖ\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\t¨\u0006\u0016"}, d2 = {"Lcom/transsion/usercenter/profile/bean/BffSubscribeItem;", "", CommonUtils.PARAM_UID, "", "nickname", "avatar", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getUid", "()Ljava/lang/String;", "getNickname", "getAvatar", "component1", "component2", "component3", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "", "toString", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class BffSubscribeItem {

    @SerializedName("avatar")
    private final String avatar;

    @SerializedName("nickname")
    private final String nickname;

    @SerializedName(CommonUtils.PARAM_UID)
    private final String uid;

    public BffSubscribeItem(String str, String str2, String str3) {
        this.uid = str;
        this.nickname = str2;
        this.avatar = str3;
    }

    public static /* synthetic */ BffSubscribeItem copy$default(BffSubscribeItem bffSubscribeItem, String str, String str2, String str3, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = bffSubscribeItem.uid;
        }
        if ((i11 & 2) != 0) {
            str2 = bffSubscribeItem.nickname;
        }
        if ((i11 & 4) != 0) {
            str3 = bffSubscribeItem.avatar;
        }
        return bffSubscribeItem.copy(str, str2, str3);
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

    public final BffSubscribeItem copy(String uid, String nickname, String avatar) {
        return new BffSubscribeItem(uid, nickname, avatar);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof BffSubscribeItem)) {
            return false;
        }
        BffSubscribeItem bffSubscribeItem = (BffSubscribeItem) other;
        return Intrinsics.c(this.uid, bffSubscribeItem.uid) && Intrinsics.c(this.nickname, bffSubscribeItem.nickname) && Intrinsics.c(this.avatar, bffSubscribeItem.avatar);
    }

    public final String getAvatar() {
        return this.avatar;
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
        return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    public String toString() {
        return "BffSubscribeItem(uid=" + this.uid + ", nickname=" + this.nickname + ", avatar=" + this.avatar + ")";
    }
}
