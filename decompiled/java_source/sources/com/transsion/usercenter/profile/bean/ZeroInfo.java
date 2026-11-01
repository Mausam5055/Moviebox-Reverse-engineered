package com.transsion.usercenter.profile.bean;

import androidx.annotation.Keep;
import androidx.compose.foundation.e;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u001d\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BG\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u000b\u0010\fJ\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010#\u001a\u00020\bHÆ\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\nHÆ\u0003JO\u0010%\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0007\u001a\u00020\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\nHÆ\u0001J\u0013\u0010&\u001a\u00020\b2\b\u0010'\u001a\u0004\u0018\u00010(HÖ\u0003J\t\u0010)\u001a\u00020*HÖ\u0001J\t\u0010+\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u000e\"\u0004\b\u0012\u0010\u0010R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u000e\"\u0004\b\u0014\u0010\u0010R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u000e\"\u0004\b\u0016\u0010\u0010R\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001e¨\u0006,"}, d2 = {"Lcom/transsion/usercenter/profile/bean/ZeroInfo;", "Ljava/io/Serializable;", CampaignEx.JSON_KEY_TITLE, "", "subtitle", NotificationCompat.CATEGORY_STATUS, "iconUrl", "showButton", "", "button", "Lcom/transsion/usercenter/profile/bean/ButtonInfo;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/transsion/usercenter/profile/bean/ButtonInfo;)V", "getTitle", "()Ljava/lang/String;", "setTitle", "(Ljava/lang/String;)V", "getSubtitle", "setSubtitle", "getStatus", "setStatus", "getIconUrl", "setIconUrl", "getShowButton", "()Z", "setShowButton", "(Z)V", "getButton", "()Lcom/transsion/usercenter/profile/bean/ButtonInfo;", "setButton", "(Lcom/transsion/usercenter/profile/bean/ButtonInfo;)V", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class ZeroInfo implements Serializable {
    private ButtonInfo button;
    private String iconUrl;
    private boolean showButton;
    private String status;
    private String subtitle;
    private String title;

    public ZeroInfo(String str, String str2, String str3, String str4, boolean z10, ButtonInfo buttonInfo) {
        this.title = str;
        this.subtitle = str2;
        this.status = str3;
        this.iconUrl = str4;
        this.showButton = z10;
        this.button = buttonInfo;
    }

    public /* synthetic */ ZeroInfo(String str, String str2, String str3, String str4, boolean z10, ButtonInfo buttonInfo, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, (i11 & 8) != 0 ? null : str4, (i11 & 16) != 0 ? false : z10, (i11 & 32) != 0 ? null : buttonInfo);
    }

    public static /* synthetic */ ZeroInfo copy$default(ZeroInfo zeroInfo, String str, String str2, String str3, String str4, boolean z10, ButtonInfo buttonInfo, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = zeroInfo.title;
        }
        if ((i11 & 2) != 0) {
            str2 = zeroInfo.subtitle;
        }
        String str5 = str2;
        if ((i11 & 4) != 0) {
            str3 = zeroInfo.status;
        }
        String str6 = str3;
        if ((i11 & 8) != 0) {
            str4 = zeroInfo.iconUrl;
        }
        String str7 = str4;
        if ((i11 & 16) != 0) {
            z10 = zeroInfo.showButton;
        }
        boolean z11 = z10;
        if ((i11 & 32) != 0) {
            buttonInfo = zeroInfo.button;
        }
        return zeroInfo.copy(str, str5, str6, str7, z11, buttonInfo);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getSubtitle() {
        return this.subtitle;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getStatus() {
        return this.status;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getIconUrl() {
        return this.iconUrl;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final boolean getShowButton() {
        return this.showButton;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final ButtonInfo getButton() {
        return this.button;
    }

    public final ZeroInfo copy(String title, String subtitle, String status, String iconUrl, boolean showButton, ButtonInfo button) {
        return new ZeroInfo(title, subtitle, status, iconUrl, showButton, button);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ZeroInfo)) {
            return false;
        }
        ZeroInfo zeroInfo = (ZeroInfo) other;
        return Intrinsics.c(this.title, zeroInfo.title) && Intrinsics.c(this.subtitle, zeroInfo.subtitle) && Intrinsics.c(this.status, zeroInfo.status) && Intrinsics.c(this.iconUrl, zeroInfo.iconUrl) && this.showButton == zeroInfo.showButton && Intrinsics.c(this.button, zeroInfo.button);
    }

    public final ButtonInfo getButton() {
        return this.button;
    }

    public final String getIconUrl() {
        return this.iconUrl;
    }

    public final boolean getShowButton() {
        return this.showButton;
    }

    public final String getStatus() {
        return this.status;
    }

    public final String getSubtitle() {
        return this.subtitle;
    }

    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        String str = this.title;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.subtitle;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.status;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.iconUrl;
        int iHashCode4 = (((iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31) + e.a(this.showButton)) * 31;
        ButtonInfo buttonInfo = this.button;
        return iHashCode4 + (buttonInfo != null ? buttonInfo.hashCode() : 0);
    }

    public final void setButton(ButtonInfo buttonInfo) {
        this.button = buttonInfo;
    }

    public final void setIconUrl(String str) {
        this.iconUrl = str;
    }

    public final void setShowButton(boolean z10) {
        this.showButton = z10;
    }

    public final void setStatus(String str) {
        this.status = str;
    }

    public final void setSubtitle(String str) {
        this.subtitle = str;
    }

    public final void setTitle(String str) {
        this.title = str;
    }

    public String toString() {
        return "ZeroInfo(title=" + this.title + ", subtitle=" + this.subtitle + ", status=" + this.status + ", iconUrl=" + this.iconUrl + ", showButton=" + this.showButton + ", button=" + this.button + ")";
    }
}
