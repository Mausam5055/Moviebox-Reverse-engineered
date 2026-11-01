package com.cloud.tmc.integration.model;

import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.kernel.model.BaseBean;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0013\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0007HÆ\u0003J)\u0010\u0018\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÆ\u0001J\u0013\u0010\u0019\u001a\u00020\u00052\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bHÖ\u0003J\t\u0010\u001c\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001d\u001a\u00020\u0007HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u001e"}, d2 = {"Lcom/cloud/tmc/integration/model/TabBarBadgeMessage;", "Lcom/cloud/tmc/kernel/model/BaseBean;", "index", "", "showBadge", "", MimeTypes.BASE_TYPE_TEXT, "", "(IZLjava/lang/String;)V", "getIndex", "()I", "setIndex", "(I)V", "getShowBadge", "()Z", "setShowBadge", "(Z)V", "getText", "()Ljava/lang/String;", "setText", "(Ljava/lang/String;)V", "component1", "component2", "component3", "copy", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class TabBarBadgeMessage extends BaseBean {
    private int index;
    private boolean showBadge;
    private String text;

    public TabBarBadgeMessage() {
        this(0, false, null, 7, null);
    }

    public TabBarBadgeMessage(int i11, boolean z10, String str) {
        this.index = i11;
        this.showBadge = z10;
        this.text = str;
    }

    public /* synthetic */ TabBarBadgeMessage(int i11, boolean z10, String str, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? -1 : i11, (i12 & 2) != 0 ? false : z10, (i12 & 4) != 0 ? null : str);
    }

    public static /* synthetic */ TabBarBadgeMessage copy$default(TabBarBadgeMessage tabBarBadgeMessage, int i11, boolean z10, String str, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i11 = tabBarBadgeMessage.index;
        }
        if ((i12 & 2) != 0) {
            z10 = tabBarBadgeMessage.showBadge;
        }
        if ((i12 & 4) != 0) {
            str = tabBarBadgeMessage.text;
        }
        return tabBarBadgeMessage.copy(i11, z10, str);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getIndex() {
        return this.index;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final boolean getShowBadge() {
        return this.showBadge;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getText() {
        return this.text;
    }

    public final TabBarBadgeMessage copy(int index, boolean showBadge, String text) {
        return new TabBarBadgeMessage(index, showBadge, text);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TabBarBadgeMessage)) {
            return false;
        }
        TabBarBadgeMessage tabBarBadgeMessage = (TabBarBadgeMessage) other;
        return this.index == tabBarBadgeMessage.index && this.showBadge == tabBarBadgeMessage.showBadge && Intrinsics.c(this.text, tabBarBadgeMessage.text);
    }

    public final int getIndex() {
        return this.index;
    }

    public final boolean getShowBadge() {
        return this.showBadge;
    }

    public final String getText() {
        return this.text;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [int] */
    /* JADX WARN: Type inference failed for: r1v1, types: [int] */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7 */
    public int hashCode() {
        int i11 = this.index * 31;
        boolean z10 = this.showBadge;
        ?? r11 = z10;
        if (z10) {
            r11 = 1;
        }
        int i12 = (i11 + r11) * 31;
        String str = this.text;
        return i12 + (str == null ? 0 : str.hashCode());
    }

    public final void setIndex(int i11) {
        this.index = i11;
    }

    public final void setShowBadge(boolean z10) {
        this.showBadge = z10;
    }

    public final void setText(String str) {
        this.text = str;
    }

    public String toString() {
        return "TabBarBadgeMessage(index=" + this.index + ", showBadge=" + this.showBadge + ", text=" + this.text + ")";
    }
}
