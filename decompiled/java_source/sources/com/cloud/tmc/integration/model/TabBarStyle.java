package com.cloud.tmc.integration.model;

import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.kernel.model.BaseBean;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B5\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0007J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u000e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0003HÆ\u0003J9\u0010\u0011\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\tR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\t¨\u0006\u0019"}, d2 = {"Lcom/cloud/tmc/integration/model/TabBarStyle;", "Lcom/cloud/tmc/kernel/model/BaseBean;", TtmlNode.ATTR_TTS_COLOR, "", "selectedColor", "backgroundColor", "borderStyle", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getBackgroundColor", "()Ljava/lang/String;", "getBorderStyle", "getColor", "getSelectedColor", "component1", "component2", "component3", "component4", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class TabBarStyle extends BaseBean {
    private final String backgroundColor;
    private final String borderStyle;
    private final String color;
    private final String selectedColor;

    public TabBarStyle() {
        this(null, null, null, null, 15, null);
    }

    public TabBarStyle(String str, String str2, String str3, String str4) {
        this.color = str;
        this.selectedColor = str2;
        this.backgroundColor = str3;
        this.borderStyle = str4;
    }

    public /* synthetic */ TabBarStyle(String str, String str2, String str3, String str4, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? null : str3, (i11 & 8) != 0 ? null : str4);
    }

    public static /* synthetic */ TabBarStyle copy$default(TabBarStyle tabBarStyle, String str, String str2, String str3, String str4, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = tabBarStyle.color;
        }
        if ((i11 & 2) != 0) {
            str2 = tabBarStyle.selectedColor;
        }
        if ((i11 & 4) != 0) {
            str3 = tabBarStyle.backgroundColor;
        }
        if ((i11 & 8) != 0) {
            str4 = tabBarStyle.borderStyle;
        }
        return tabBarStyle.copy(str, str2, str3, str4);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getColor() {
        return this.color;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getSelectedColor() {
        return this.selectedColor;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getBackgroundColor() {
        return this.backgroundColor;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getBorderStyle() {
        return this.borderStyle;
    }

    public final TabBarStyle copy(String color, String selectedColor, String backgroundColor, String borderStyle) {
        return new TabBarStyle(color, selectedColor, backgroundColor, borderStyle);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TabBarStyle)) {
            return false;
        }
        TabBarStyle tabBarStyle = (TabBarStyle) other;
        return Intrinsics.c(this.color, tabBarStyle.color) && Intrinsics.c(this.selectedColor, tabBarStyle.selectedColor) && Intrinsics.c(this.backgroundColor, tabBarStyle.backgroundColor) && Intrinsics.c(this.borderStyle, tabBarStyle.borderStyle);
    }

    public final String getBackgroundColor() {
        return this.backgroundColor;
    }

    public final String getBorderStyle() {
        return this.borderStyle;
    }

    public final String getColor() {
        return this.color;
    }

    public final String getSelectedColor() {
        return this.selectedColor;
    }

    public int hashCode() {
        String str = this.color;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.selectedColor;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.backgroundColor;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.borderStyle;
        return iHashCode3 + (str4 != null ? str4.hashCode() : 0);
    }

    public String toString() {
        return "TabBarStyle(color=" + this.color + ", selectedColor=" + this.selectedColor + ", backgroundColor=" + this.backgroundColor + ", borderStyle=" + this.borderStyle + ")";
    }
}
