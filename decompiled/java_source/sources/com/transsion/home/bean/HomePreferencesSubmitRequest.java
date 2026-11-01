package com.transsion.home.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005HÆ\u0003J#\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u001c\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0015"}, d2 = {"Lcom/transsion/home/bean/HomePreferencesSubmitRequest;", "", "labelId", "", "selectOptions", "", "<init>", "(Ljava/lang/String;Ljava/util/List;)V", "getLabelId", "()Ljava/lang/String;", "getSelectOptions", "()Ljava/util/List;", "component1", "component2", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "", "toString", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class HomePreferencesSubmitRequest {
    public static final int $stable = 8;

    @SerializedName("labelId")
    private final String labelId;

    @SerializedName("selectOptions")
    private final List<String> selectOptions;

    public HomePreferencesSubmitRequest(String labelId, List<String> selectOptions) {
        Intrinsics.h(labelId, "labelId");
        Intrinsics.h(selectOptions, "selectOptions");
        this.labelId = labelId;
        this.selectOptions = selectOptions;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ HomePreferencesSubmitRequest copy$default(HomePreferencesSubmitRequest homePreferencesSubmitRequest, String str, List list, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = homePreferencesSubmitRequest.labelId;
        }
        if ((i11 & 2) != 0) {
            list = homePreferencesSubmitRequest.selectOptions;
        }
        return homePreferencesSubmitRequest.copy(str, list);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getLabelId() {
        return this.labelId;
    }

    public final List<String> component2() {
        return this.selectOptions;
    }

    public final HomePreferencesSubmitRequest copy(String labelId, List<String> selectOptions) {
        Intrinsics.h(labelId, "labelId");
        Intrinsics.h(selectOptions, "selectOptions");
        return new HomePreferencesSubmitRequest(labelId, selectOptions);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof HomePreferencesSubmitRequest)) {
            return false;
        }
        HomePreferencesSubmitRequest homePreferencesSubmitRequest = (HomePreferencesSubmitRequest) other;
        return Intrinsics.c(this.labelId, homePreferencesSubmitRequest.labelId) && Intrinsics.c(this.selectOptions, homePreferencesSubmitRequest.selectOptions);
    }

    public final String getLabelId() {
        return this.labelId;
    }

    public final List<String> getSelectOptions() {
        return this.selectOptions;
    }

    public int hashCode() {
        return (this.labelId.hashCode() * 31) + this.selectOptions.hashCode();
    }

    public String toString() {
        return "HomePreferencesSubmitRequest(labelId=" + this.labelId + ", selectOptions=" + this.selectOptions + ")";
    }
}
