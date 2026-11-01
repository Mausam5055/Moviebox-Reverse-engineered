package com.transsion.push.feature.toolbar;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B#\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\u0011\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0003J%\u0010\u000f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0019\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0017"}, d2 = {"Lcom/transsion/push/feature/toolbar/ToolbarNoticeConfig;", "Ljava/io/Serializable;", "days", "", "list", "", "Lcom/transsion/push/feature/toolbar/ToolbarNoticeItem;", "<init>", "(ILjava/util/List;)V", "getDays", "()I", "getList", "()Ljava/util/List;", "component1", "component2", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "", "push_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class ToolbarNoticeConfig implements Serializable {
    private final int days;
    private final List<ToolbarNoticeItem> list;

    /* JADX WARN: Multi-variable type inference failed */
    public ToolbarNoticeConfig() {
        this(0, null, 3, 0 == true ? 1 : 0);
    }

    public ToolbarNoticeConfig(int i11, List<ToolbarNoticeItem> list) {
        this.days = i11;
        this.list = list;
    }

    public /* synthetic */ ToolbarNoticeConfig(int i11, List list, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? 3 : i11, (i12 & 2) != 0 ? null : list);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ToolbarNoticeConfig copy$default(ToolbarNoticeConfig toolbarNoticeConfig, int i11, List list, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i11 = toolbarNoticeConfig.days;
        }
        if ((i12 & 2) != 0) {
            list = toolbarNoticeConfig.list;
        }
        return toolbarNoticeConfig.copy(i11, list);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getDays() {
        return this.days;
    }

    public final List<ToolbarNoticeItem> component2() {
        return this.list;
    }

    public final ToolbarNoticeConfig copy(int days, List<ToolbarNoticeItem> list) {
        return new ToolbarNoticeConfig(days, list);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ToolbarNoticeConfig)) {
            return false;
        }
        ToolbarNoticeConfig toolbarNoticeConfig = (ToolbarNoticeConfig) other;
        return this.days == toolbarNoticeConfig.days && Intrinsics.c(this.list, toolbarNoticeConfig.list);
    }

    public final int getDays() {
        return this.days;
    }

    public final List<ToolbarNoticeItem> getList() {
        return this.list;
    }

    public int hashCode() {
        int i11 = this.days * 31;
        List<ToolbarNoticeItem> list = this.list;
        return i11 + (list == null ? 0 : list.hashCode());
    }

    public String toString() {
        return "ToolbarNoticeConfig(days=" + this.days + ", list=" + this.list + ")";
    }
}
