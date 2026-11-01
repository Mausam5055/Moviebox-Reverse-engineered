package com.transsion.member.bean.request;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0013\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003¢\u0006\u0004\b\b\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J;\u0010\u0015\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019HÖ\u0003J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001J\t\u0010\u001c\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000bR\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000b¨\u0006\u001d"}, d2 = {"Lcom/transsion/member/bean/request/MemberInviteUserShareInfo;", "Ljava/io/Serializable;", "url", "", CampaignEx.JSON_KEY_TITLE, CampaignEx.JSON_KEY_DESC, "coverUrl", "downUrl", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getUrl", "()Ljava/lang/String;", "getTitle", "getDesc", "getCoverUrl", "getDownUrl", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "Member_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class MemberInviteUserShareInfo implements Serializable {
    public static final int $stable = 0;
    private final String coverUrl;
    private final String desc;
    private final String downUrl;
    private final String title;
    private final String url;

    public MemberInviteUserShareInfo(String url, String title, String desc, String coverUrl, String downUrl) {
        Intrinsics.h(url, "url");
        Intrinsics.h(title, "title");
        Intrinsics.h(desc, "desc");
        Intrinsics.h(coverUrl, "coverUrl");
        Intrinsics.h(downUrl, "downUrl");
        this.url = url;
        this.title = title;
        this.desc = desc;
        this.coverUrl = coverUrl;
        this.downUrl = downUrl;
    }

    public static /* synthetic */ MemberInviteUserShareInfo copy$default(MemberInviteUserShareInfo memberInviteUserShareInfo, String str, String str2, String str3, String str4, String str5, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = memberInviteUserShareInfo.url;
        }
        if ((i11 & 2) != 0) {
            str2 = memberInviteUserShareInfo.title;
        }
        String str6 = str2;
        if ((i11 & 4) != 0) {
            str3 = memberInviteUserShareInfo.desc;
        }
        String str7 = str3;
        if ((i11 & 8) != 0) {
            str4 = memberInviteUserShareInfo.coverUrl;
        }
        String str8 = str4;
        if ((i11 & 16) != 0) {
            str5 = memberInviteUserShareInfo.downUrl;
        }
        return memberInviteUserShareInfo.copy(str, str6, str7, str8, str5);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getUrl() {
        return this.url;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getDesc() {
        return this.desc;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getCoverUrl() {
        return this.coverUrl;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getDownUrl() {
        return this.downUrl;
    }

    public final MemberInviteUserShareInfo copy(String url, String title, String desc, String coverUrl, String downUrl) {
        Intrinsics.h(url, "url");
        Intrinsics.h(title, "title");
        Intrinsics.h(desc, "desc");
        Intrinsics.h(coverUrl, "coverUrl");
        Intrinsics.h(downUrl, "downUrl");
        return new MemberInviteUserShareInfo(url, title, desc, coverUrl, downUrl);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MemberInviteUserShareInfo)) {
            return false;
        }
        MemberInviteUserShareInfo memberInviteUserShareInfo = (MemberInviteUserShareInfo) other;
        return Intrinsics.c(this.url, memberInviteUserShareInfo.url) && Intrinsics.c(this.title, memberInviteUserShareInfo.title) && Intrinsics.c(this.desc, memberInviteUserShareInfo.desc) && Intrinsics.c(this.coverUrl, memberInviteUserShareInfo.coverUrl) && Intrinsics.c(this.downUrl, memberInviteUserShareInfo.downUrl);
    }

    public final String getCoverUrl() {
        return this.coverUrl;
    }

    public final String getDesc() {
        return this.desc;
    }

    public final String getDownUrl() {
        return this.downUrl;
    }

    public final String getTitle() {
        return this.title;
    }

    public final String getUrl() {
        return this.url;
    }

    public int hashCode() {
        return (((((((this.url.hashCode() * 31) + this.title.hashCode()) * 31) + this.desc.hashCode()) * 31) + this.coverUrl.hashCode()) * 31) + this.downUrl.hashCode();
    }

    public String toString() {
        return "MemberInviteUserShareInfo(url=" + this.url + ", title=" + this.title + ", desc=" + this.desc + ", coverUrl=" + this.coverUrl + ", downUrl=" + this.downUrl + ")";
    }
}
