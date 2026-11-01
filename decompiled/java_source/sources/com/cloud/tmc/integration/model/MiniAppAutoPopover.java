package com.cloud.tmc.integration.model;

import androidx.core.app.NotificationCompat;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.kernel.model.BaseBean;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u001b\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001BK\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\b\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\u0002\u0010\u000eJ\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u001cJ\u0010\u0010\u001f\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0015J\u0010\u0010 \u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u0018J\u0010\u0010!\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u0018J\u000b\u0010\"\u001a\u0004\u0018\u00010\nHÆ\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\nHÆ\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\rHÆ\u0003Jb\u0010%\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\rHÆ\u0001¢\u0006\u0002\u0010&J\u0013\u0010'\u001a\u00020\u00032\b\u0010(\u001a\u0004\u0018\u00010)HÖ\u0003J\t\u0010*\u001a\u00020\u0007HÖ\u0001J\t\u0010+\u001a\u00020\nHÖ\u0001R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0013\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0010R\u0013\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\n\n\u0002\u0010\u0016\u001a\u0004\b\u0014\u0010\u0015R\u0015\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\n\n\u0002\u0010\u0019\u001a\u0004\b\u0017\u0010\u0018R\u0015\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\n\n\u0002\u0010\u0019\u001a\u0004\b\u001a\u0010\u0018R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u001d\u001a\u0004\b\u001b\u0010\u001c¨\u0006,"}, d2 = {"Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;", "Lcom/cloud/tmc/kernel/model/BaseBean;", NotificationCompat.CATEGORY_STATUS, "", "delayDuration", "", "displayFrequency", "", "perXDay", "buttonTextColor", "", "buttonBackgroundColor", "configs", "Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageConfig;", "(Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageConfig;)V", "getButtonBackgroundColor", "()Ljava/lang/String;", "getButtonTextColor", "getConfigs", "()Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageConfig;", "getDelayDuration", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getDisplayFrequency", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getPerXDay", "getStatus", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "(Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageConfig;)Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class MiniAppAutoPopover extends BaseBean {
    private final String buttonBackgroundColor;
    private final String buttonTextColor;
    private final MiniAppMultiLanguageConfig configs;
    private final Long delayDuration;
    private final Integer displayFrequency;
    private final Integer perXDay;
    private final Boolean status;

    public MiniAppAutoPopover(Boolean bool, Long l11, Integer num, Integer num2, String str, String str2, MiniAppMultiLanguageConfig miniAppMultiLanguageConfig) {
        this.status = bool;
        this.delayDuration = l11;
        this.displayFrequency = num;
        this.perXDay = num2;
        this.buttonTextColor = str;
        this.buttonBackgroundColor = str2;
        this.configs = miniAppMultiLanguageConfig;
    }

    public static /* synthetic */ MiniAppAutoPopover copy$default(MiniAppAutoPopover miniAppAutoPopover, Boolean bool, Long l11, Integer num, Integer num2, String str, String str2, MiniAppMultiLanguageConfig miniAppMultiLanguageConfig, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            bool = miniAppAutoPopover.status;
        }
        if ((i11 & 2) != 0) {
            l11 = miniAppAutoPopover.delayDuration;
        }
        Long l12 = l11;
        if ((i11 & 4) != 0) {
            num = miniAppAutoPopover.displayFrequency;
        }
        Integer num3 = num;
        if ((i11 & 8) != 0) {
            num2 = miniAppAutoPopover.perXDay;
        }
        Integer num4 = num2;
        if ((i11 & 16) != 0) {
            str = miniAppAutoPopover.buttonTextColor;
        }
        String str3 = str;
        if ((i11 & 32) != 0) {
            str2 = miniAppAutoPopover.buttonBackgroundColor;
        }
        String str4 = str2;
        if ((i11 & 64) != 0) {
            miniAppMultiLanguageConfig = miniAppAutoPopover.configs;
        }
        return miniAppAutoPopover.copy(bool, l12, num3, num4, str3, str4, miniAppMultiLanguageConfig);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Boolean getStatus() {
        return this.status;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Long getDelayDuration() {
        return this.delayDuration;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Integer getDisplayFrequency() {
        return this.displayFrequency;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Integer getPerXDay() {
        return this.perXDay;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getButtonTextColor() {
        return this.buttonTextColor;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getButtonBackgroundColor() {
        return this.buttonBackgroundColor;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final MiniAppMultiLanguageConfig getConfigs() {
        return this.configs;
    }

    public final MiniAppAutoPopover copy(Boolean status, Long delayDuration, Integer displayFrequency, Integer perXDay, String buttonTextColor, String buttonBackgroundColor, MiniAppMultiLanguageConfig configs) {
        return new MiniAppAutoPopover(status, delayDuration, displayFrequency, perXDay, buttonTextColor, buttonBackgroundColor, configs);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MiniAppAutoPopover)) {
            return false;
        }
        MiniAppAutoPopover miniAppAutoPopover = (MiniAppAutoPopover) other;
        return Intrinsics.c(this.status, miniAppAutoPopover.status) && Intrinsics.c(this.delayDuration, miniAppAutoPopover.delayDuration) && Intrinsics.c(this.displayFrequency, miniAppAutoPopover.displayFrequency) && Intrinsics.c(this.perXDay, miniAppAutoPopover.perXDay) && Intrinsics.c(this.buttonTextColor, miniAppAutoPopover.buttonTextColor) && Intrinsics.c(this.buttonBackgroundColor, miniAppAutoPopover.buttonBackgroundColor) && Intrinsics.c(this.configs, miniAppAutoPopover.configs);
    }

    public final String getButtonBackgroundColor() {
        return this.buttonBackgroundColor;
    }

    public final String getButtonTextColor() {
        return this.buttonTextColor;
    }

    public final MiniAppMultiLanguageConfig getConfigs() {
        return this.configs;
    }

    public final Long getDelayDuration() {
        return this.delayDuration;
    }

    public final Integer getDisplayFrequency() {
        return this.displayFrequency;
    }

    public final Integer getPerXDay() {
        return this.perXDay;
    }

    public final Boolean getStatus() {
        return this.status;
    }

    public int hashCode() {
        Boolean bool = this.status;
        int iHashCode = (bool == null ? 0 : bool.hashCode()) * 31;
        Long l11 = this.delayDuration;
        int iHashCode2 = (iHashCode + (l11 == null ? 0 : l11.hashCode())) * 31;
        Integer num = this.displayFrequency;
        int iHashCode3 = (iHashCode2 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.perXDay;
        int iHashCode4 = (iHashCode3 + (num2 == null ? 0 : num2.hashCode())) * 31;
        String str = this.buttonTextColor;
        int iHashCode5 = (iHashCode4 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.buttonBackgroundColor;
        int iHashCode6 = (iHashCode5 + (str2 == null ? 0 : str2.hashCode())) * 31;
        MiniAppMultiLanguageConfig miniAppMultiLanguageConfig = this.configs;
        return iHashCode6 + (miniAppMultiLanguageConfig != null ? miniAppMultiLanguageConfig.hashCode() : 0);
    }

    public String toString() {
        return "MiniAppAutoPopover(status=" + this.status + ", delayDuration=" + this.delayDuration + ", displayFrequency=" + this.displayFrequency + ", perXDay=" + this.perXDay + ", buttonTextColor=" + this.buttonTextColor + ", buttonBackgroundColor=" + this.buttonBackgroundColor + ", configs=" + this.configs + ")";
    }
}
