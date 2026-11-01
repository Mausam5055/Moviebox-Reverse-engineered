package com.transsion.usercenter.profile.bean;

import androidx.annotation.Keep;
import androidx.compose.foundation.e;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.transsion.push.PushConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u001b\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B9\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\t\u0010\nJ\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0005HÆ\u0003JC\u0010\u001e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u001f\u001a\u00020\u00032\b\u0010 \u001a\u0004\u0018\u00010!HÖ\u0003J\t\u0010\"\u001a\u00020#HÖ\u0001J\t\u0010$\u001a\u00020\u0005HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0010\"\u0004\b\u0014\u0010\u0012R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0010\"\u0004\b\u0016\u0010\u0012R\u001c\u0010\b\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0010\"\u0004\b\u0018\u0010\u0012¨\u0006%"}, d2 = {"Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;", "Ljava/io/Serializable;", PushConstants.PROVIDER_FIELD_NOTICE_ENABLE, "", "noticeContent", "", "bottomContent", "noticeDeepLink", "link", "<init>", "(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getNoticeEnable", "()Z", "setNoticeEnable", "(Z)V", "getNoticeContent", "()Ljava/lang/String;", "setNoticeContent", "(Ljava/lang/String;)V", "getBottomContent", "setBottomContent", "getNoticeDeepLink", "setNoticeDeepLink", "getLink", "setLink", "component1", "component2", "component3", "component4", "component5", "copy", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class MineNoticeConfig implements Serializable {
    private String bottomContent;
    private String link;
    private String noticeContent;
    private String noticeDeepLink;
    private boolean noticeEnable;

    public MineNoticeConfig(boolean z10, String str, String str2, String str3, String str4) {
        this.noticeEnable = z10;
        this.noticeContent = str;
        this.bottomContent = str2;
        this.noticeDeepLink = str3;
        this.link = str4;
    }

    public /* synthetic */ MineNoticeConfig(boolean z10, String str, String str2, String str3, String str4, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? false : z10, str, str2, str3, str4);
    }

    public static /* synthetic */ MineNoticeConfig copy$default(MineNoticeConfig mineNoticeConfig, boolean z10, String str, String str2, String str3, String str4, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = mineNoticeConfig.noticeEnable;
        }
        if ((i11 & 2) != 0) {
            str = mineNoticeConfig.noticeContent;
        }
        String str5 = str;
        if ((i11 & 4) != 0) {
            str2 = mineNoticeConfig.bottomContent;
        }
        String str6 = str2;
        if ((i11 & 8) != 0) {
            str3 = mineNoticeConfig.noticeDeepLink;
        }
        String str7 = str3;
        if ((i11 & 16) != 0) {
            str4 = mineNoticeConfig.link;
        }
        return mineNoticeConfig.copy(z10, str5, str6, str7, str4);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final boolean getNoticeEnable() {
        return this.noticeEnable;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getNoticeContent() {
        return this.noticeContent;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getBottomContent() {
        return this.bottomContent;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getNoticeDeepLink() {
        return this.noticeDeepLink;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getLink() {
        return this.link;
    }

    public final MineNoticeConfig copy(boolean noticeEnable, String noticeContent, String bottomContent, String noticeDeepLink, String link) {
        return new MineNoticeConfig(noticeEnable, noticeContent, bottomContent, noticeDeepLink, link);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MineNoticeConfig)) {
            return false;
        }
        MineNoticeConfig mineNoticeConfig = (MineNoticeConfig) other;
        return this.noticeEnable == mineNoticeConfig.noticeEnable && Intrinsics.c(this.noticeContent, mineNoticeConfig.noticeContent) && Intrinsics.c(this.bottomContent, mineNoticeConfig.bottomContent) && Intrinsics.c(this.noticeDeepLink, mineNoticeConfig.noticeDeepLink) && Intrinsics.c(this.link, mineNoticeConfig.link);
    }

    public final String getBottomContent() {
        return this.bottomContent;
    }

    public final String getLink() {
        return this.link;
    }

    public final String getNoticeContent() {
        return this.noticeContent;
    }

    public final String getNoticeDeepLink() {
        return this.noticeDeepLink;
    }

    public final boolean getNoticeEnable() {
        return this.noticeEnable;
    }

    public int hashCode() {
        int iA = e.a(this.noticeEnable) * 31;
        String str = this.noticeContent;
        int iHashCode = (iA + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.bottomContent;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.noticeDeepLink;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.link;
        return iHashCode3 + (str4 != null ? str4.hashCode() : 0);
    }

    public final void setBottomContent(String str) {
        this.bottomContent = str;
    }

    public final void setLink(String str) {
        this.link = str;
    }

    public final void setNoticeContent(String str) {
        this.noticeContent = str;
    }

    public final void setNoticeDeepLink(String str) {
        this.noticeDeepLink = str;
    }

    public final void setNoticeEnable(boolean z10) {
        this.noticeEnable = z10;
    }

    public String toString() {
        return "MineNoticeConfig(noticeEnable=" + this.noticeEnable + ", noticeContent=" + this.noticeContent + ", bottomContent=" + this.bottomContent + ", noticeDeepLink=" + this.noticeDeepLink + ", link=" + this.link + ")";
    }
}
