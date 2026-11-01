package com.cloud.tmc.integration.ui.data;

import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.kernel.model.BaseBean;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0013\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010!H\u0096\u0002J\b\u0010\"\u001a\u00020\u0013H\u0016J\b\u0010#\u001a\u00020\u0004H\u0016R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001c\u0010\f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\bR\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\"\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0019X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001d¨\u0006$"}, d2 = {"Lcom/cloud/tmc/integration/ui/data/NativeTabBean;", "Lcom/cloud/tmc/kernel/model/BaseBean;", "()V", "backgroundColor", "", "getBackgroundColor", "()Ljava/lang/String;", "setBackgroundColor", "(Ljava/lang/String;)V", TtmlNode.ATTR_TTS_COLOR, "getColor", "setColor", "selectBackgroundColor", "getSelectBackgroundColor", "setSelectBackgroundColor", "selectedColor", "getSelectedColor", "setSelectedColor", "selectedIndex", "", "getSelectedIndex", "()I", "setSelectedIndex", "(I)V", "tabList", "", "getTabList", "()Ljava/util/List;", "setTabList", "(Ljava/util/List;)V", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class NativeTabBean extends BaseBean {
    private String backgroundColor;
    private String color;
    private String selectBackgroundColor;
    private String selectedColor;
    private int selectedIndex = -1;
    private List<String> tabList;

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (other == null || !Intrinsics.c(NativeTabBean.class, other.getClass())) {
            return false;
        }
        NativeTabBean nativeTabBean = (NativeTabBean) other;
        if (Intrinsics.c(this.color, nativeTabBean.color) && Intrinsics.c(this.selectedColor, nativeTabBean.selectedColor) && this.selectedIndex == nativeTabBean.selectedIndex && Intrinsics.c(this.selectBackgroundColor, nativeTabBean.selectBackgroundColor)) {
            List<String> list = this.tabList;
            String string = list != null ? list.toString() : null;
            List<String> list2 = nativeTabBean.tabList;
            if (Intrinsics.c(string, list2 != null ? list2.toString() : null)) {
                return true;
            }
        }
        return false;
    }

    public final String getBackgroundColor() {
        return this.backgroundColor;
    }

    public final String getColor() {
        return this.color;
    }

    public final String getSelectBackgroundColor() {
        return this.selectBackgroundColor;
    }

    public final String getSelectedColor() {
        return this.selectedColor;
    }

    public final int getSelectedIndex() {
        return this.selectedIndex;
    }

    public final List<String> getTabList() {
        return this.tabList;
    }

    public int hashCode() {
        String str = this.color;
        String str2 = this.selectedColor;
        String str3 = this.backgroundColor;
        Integer numValueOf = Integer.valueOf(this.selectedIndex);
        String str4 = this.selectBackgroundColor;
        List<String> list = this.tabList;
        return Objects.hash(str, str2, str3, numValueOf, str4, list != null ? list.toString() : null);
    }

    public final void setBackgroundColor(String str) {
        this.backgroundColor = str;
    }

    public final void setColor(String str) {
        this.color = str;
    }

    public final void setSelectBackgroundColor(String str) {
        this.selectBackgroundColor = str;
    }

    public final void setSelectedColor(String str) {
        this.selectedColor = str;
    }

    public final void setSelectedIndex(int i11) {
        this.selectedIndex = i11;
    }

    public final void setTabList(List<String> list) {
        this.tabList = list;
    }

    public String toString() {
        String str = this.color;
        String str2 = this.selectedColor;
        String str3 = this.backgroundColor;
        String str4 = this.selectBackgroundColor;
        int i11 = this.selectedIndex;
        List<String> list = this.tabList;
        return "NativeTabBean(color=" + str + ", selectedColor=" + str2 + ", backgroundColor=" + str3 + ", selectBackgroundColor=" + str4 + ", selectedIndex=" + i11 + ", tabList=" + (list != null ? list.toString() : null) + ")";
    }
}
