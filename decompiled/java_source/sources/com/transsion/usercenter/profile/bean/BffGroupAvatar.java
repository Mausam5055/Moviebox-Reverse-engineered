package com.transsion.usercenter.profile.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000b\u0010\b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0015\u0010\t\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0003HÖ\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0010"}, d2 = {"Lcom/transsion/usercenter/profile/bean/BffGroupAvatar;", "", "avatar", "", "<init>", "(Ljava/lang/String;)V", "getAvatar", "()Ljava/lang/String;", "component1", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "", "toString", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class BffGroupAvatar {

    @SerializedName("avatar")
    private final String avatar;

    public BffGroupAvatar(String str) {
        this.avatar = str;
    }

    public static /* synthetic */ BffGroupAvatar copy$default(BffGroupAvatar bffGroupAvatar, String str, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = bffGroupAvatar.avatar;
        }
        return bffGroupAvatar.copy(str);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getAvatar() {
        return this.avatar;
    }

    public final BffGroupAvatar copy(String avatar) {
        return new BffGroupAvatar(avatar);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof BffGroupAvatar) && Intrinsics.c(this.avatar, ((BffGroupAvatar) other).avatar);
    }

    public final String getAvatar() {
        return this.avatar;
    }

    public int hashCode() {
        String str = this.avatar;
        if (str == null) {
            return 0;
        }
        return str.hashCode();
    }

    public String toString() {
        return "BffGroupAvatar(avatar=" + this.avatar + ")";
    }
}
