package com.transsion.push.feature.toolbar;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B+\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003J-\u0010\u0014\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u0015\u001a\u00020\r2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001J\t\u0010\u001a\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\tR\u001a\u0010\f\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u001b"}, d2 = {"Lcom/transsion/push/feature/toolbar/ToolbarNoticeItem;", "Ljava/io/Serializable;", "cover", "", MimeTypes.BASE_TYPE_TEXT, "deeplink", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getCover", "()Ljava/lang/String;", "getText", "getDeeplink", "isDefault", "", "()Z", "setDefault", "(Z)V", "component1", "component2", "component3", "copy", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "push_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class ToolbarNoticeItem implements Serializable {
    private final String cover;
    private final String deeplink;
    private transient boolean isDefault;
    private final String text;

    public ToolbarNoticeItem() {
        this(null, null, null, 7, null);
    }

    public ToolbarNoticeItem(String str, String str2, String str3) {
        this.cover = str;
        this.text = str2;
        this.deeplink = str3;
    }

    public /* synthetic */ ToolbarNoticeItem(String str, String str2, String str3, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? null : str3);
    }

    public static /* synthetic */ ToolbarNoticeItem copy$default(ToolbarNoticeItem toolbarNoticeItem, String str, String str2, String str3, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = toolbarNoticeItem.cover;
        }
        if ((i11 & 2) != 0) {
            str2 = toolbarNoticeItem.text;
        }
        if ((i11 & 4) != 0) {
            str3 = toolbarNoticeItem.deeplink;
        }
        return toolbarNoticeItem.copy(str, str2, str3);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getCover() {
        return this.cover;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getText() {
        return this.text;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getDeeplink() {
        return this.deeplink;
    }

    public final ToolbarNoticeItem copy(String cover, String text, String deeplink) {
        return new ToolbarNoticeItem(cover, text, deeplink);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ToolbarNoticeItem)) {
            return false;
        }
        ToolbarNoticeItem toolbarNoticeItem = (ToolbarNoticeItem) other;
        return Intrinsics.c(this.cover, toolbarNoticeItem.cover) && Intrinsics.c(this.text, toolbarNoticeItem.text) && Intrinsics.c(this.deeplink, toolbarNoticeItem.deeplink);
    }

    public final String getCover() {
        return this.cover;
    }

    public final String getDeeplink() {
        return this.deeplink;
    }

    public final String getText() {
        return this.text;
    }

    public int hashCode() {
        String str = this.cover;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.text;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.deeplink;
        return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    /* JADX INFO: renamed from: isDefault, reason: from getter */
    public final boolean getIsDefault() {
        return this.isDefault;
    }

    public final void setDefault(boolean z10) {
        this.isDefault = z10;
    }

    public String toString() {
        return "ToolbarNoticeItem(cover=" + this.cover + ", text=" + this.text + ", deeplink=" + this.deeplink + ")";
    }
}
