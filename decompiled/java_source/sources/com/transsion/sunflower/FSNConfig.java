package com.transsion.sunflower;

import androidx.annotation.Keep;
import androidx.collection.s;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b$\b\u0087\b\u0018\u00002\u00020\u0001Ba\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\u0005\u0012\u0006\u0010\f\u001a\u00020\u0003\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\b\b\u0002\u0010\u000f\u001a\u00020\t\u0012\b\b\u0002\u0010\u0010\u001a\u00020\t¢\u0006\u0002\u0010\u0011J\t\u0010#\u001a\u00020\u0003HÆ\u0003J\t\u0010$\u001a\u00020\tHÆ\u0003J\t\u0010%\u001a\u00020\u0005HÆ\u0003J\t\u0010&\u001a\u00020\u0007HÆ\u0003J\t\u0010'\u001a\u00020\tHÆ\u0003J\t\u0010(\u001a\u00020\tHÆ\u0003J\t\u0010)\u001a\u00020\u0005HÆ\u0003J\t\u0010*\u001a\u00020\u0003HÆ\u0003J\t\u0010+\u001a\u00020\u000eHÆ\u0003J\t\u0010,\u001a\u00020\tHÆ\u0003Jm\u0010-\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\t2\b\b\u0002\u0010\u000b\u001a\u00020\u00052\b\b\u0002\u0010\f\u001a\u00020\u00032\b\b\u0002\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\t2\b\b\u0002\u0010\u0010\u001a\u00020\tHÆ\u0001J\u0013\u0010.\u001a\u00020\u00032\b\u0010/\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00100\u001a\u00020\tHÖ\u0001J\t\u00101\u001a\u00020\u000eHÖ\u0001R\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0010\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0016\u0010\r\u001a\u00020\u000e8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0016\u0010\u000b\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0019R\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u0016\u0010\n\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u0015R\u0016\u0010\b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u0015R\u0016\u0010\f\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u001cR\u0016\u0010\u000f\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010\u0015¨\u00062"}, d2 = {"Lcom/transsion/sunflower/FSNConfig;", "", OfflineConstantsKt.OFFLINE_CONFIG_ENABLE, "", "delayTime", "", "banTimeScope", "", "localBanStartHour", "", "localBanEndHour", "effectInterval", "only4SilentUser", "deepLink", "", "timesLimit", "dayLimit", "(ZJ[IIIJZLjava/lang/String;II)V", "getBanTimeScope", "()[I", "getDayLimit", "()I", "getDeepLink", "()Ljava/lang/String;", "getDelayTime", "()J", "getEffectInterval", "getEnable", "()Z", "setEnable", "(Z)V", "getLocalBanEndHour", "getLocalBanStartHour", "getOnly4SilentUser", "getTimesLimit", "component1", "component10", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "toString", "Sunflower_psRelease"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class FSNConfig {

    @SerializedName("banTimeScope")
    private final int[] banTimeScope;

    @SerializedName("dayLimit")
    private final int dayLimit;

    @SerializedName("deepLink")
    private final String deepLink;

    @SerializedName("delayTime")
    private final long delayTime;

    @SerializedName("effectInterval")
    private final long effectInterval;

    @SerializedName(OfflineConstantsKt.OFFLINE_CONFIG_ENABLE)
    private boolean enable;

    @SerializedName("localBanEndHour")
    private final int localBanEndHour;

    @SerializedName("localBanStartHour")
    private final int localBanStartHour;

    @SerializedName("only4SilentUser")
    private final boolean only4SilentUser;

    @SerializedName("timesLimit")
    private final int timesLimit;

    public FSNConfig(boolean z10, long j11, int[] banTimeScope, int i11, int i12, long j12, boolean z11, String deepLink, int i13, int i14) {
        Intrinsics.h(banTimeScope, "banTimeScope");
        Intrinsics.h(deepLink, "deepLink");
        this.enable = z10;
        this.delayTime = j11;
        this.banTimeScope = banTimeScope;
        this.localBanStartHour = i11;
        this.localBanEndHour = i12;
        this.effectInterval = j12;
        this.only4SilentUser = z11;
        this.deepLink = deepLink;
        this.timesLimit = i13;
        this.dayLimit = i14;
    }

    public /* synthetic */ FSNConfig(boolean z10, long j11, int[] iArr, int i11, int i12, long j12, boolean z11, String str, int i13, int i14, int i15, DefaultConstructorMarker defaultConstructorMarker) {
        this((i15 & 1) != 0 ? false : z10, j11, (i15 & 4) != 0 ? new int[0] : iArr, (i15 & 8) != 0 ? 8 : i11, (i15 & 16) != 0 ? 22 : i12, j12, z11, str, (i15 & 256) != 0 ? 1 : i13, (i15 & 512) != 0 ? 1 : i14);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final boolean getEnable() {
        return this.enable;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final int getDayLimit() {
        return this.dayLimit;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final long getDelayTime() {
        return this.delayTime;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final int[] getBanTimeScope() {
        return this.banTimeScope;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final int getLocalBanStartHour() {
        return this.localBanStartHour;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final int getLocalBanEndHour() {
        return this.localBanEndHour;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final long getEffectInterval() {
        return this.effectInterval;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final boolean getOnly4SilentUser() {
        return this.only4SilentUser;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getDeepLink() {
        return this.deepLink;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final int getTimesLimit() {
        return this.timesLimit;
    }

    public final FSNConfig copy(boolean enable, long delayTime, int[] banTimeScope, int localBanStartHour, int localBanEndHour, long effectInterval, boolean only4SilentUser, String deepLink, int timesLimit, int dayLimit) {
        Intrinsics.h(banTimeScope, "banTimeScope");
        Intrinsics.h(deepLink, "deepLink");
        return new FSNConfig(enable, delayTime, banTimeScope, localBanStartHour, localBanEndHour, effectInterval, only4SilentUser, deepLink, timesLimit, dayLimit);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof FSNConfig)) {
            return false;
        }
        FSNConfig fSNConfig = (FSNConfig) other;
        return this.enable == fSNConfig.enable && this.delayTime == fSNConfig.delayTime && Intrinsics.c(this.banTimeScope, fSNConfig.banTimeScope) && this.localBanStartHour == fSNConfig.localBanStartHour && this.localBanEndHour == fSNConfig.localBanEndHour && this.effectInterval == fSNConfig.effectInterval && this.only4SilentUser == fSNConfig.only4SilentUser && Intrinsics.c(this.deepLink, fSNConfig.deepLink) && this.timesLimit == fSNConfig.timesLimit && this.dayLimit == fSNConfig.dayLimit;
    }

    public final int[] getBanTimeScope() {
        return this.banTimeScope;
    }

    public final int getDayLimit() {
        return this.dayLimit;
    }

    public final String getDeepLink() {
        return this.deepLink;
    }

    public final long getDelayTime() {
        return this.delayTime;
    }

    public final long getEffectInterval() {
        return this.effectInterval;
    }

    public final boolean getEnable() {
        return this.enable;
    }

    public final int getLocalBanEndHour() {
        return this.localBanEndHour;
    }

    public final int getLocalBanStartHour() {
        return this.localBanStartHour;
    }

    public final boolean getOnly4SilentUser() {
        return this.only4SilentUser;
    }

    public final int getTimesLimit() {
        return this.timesLimit;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v13, types: [int] */
    /* JADX WARN: Type inference failed for: r0v20 */
    /* JADX WARN: Type inference failed for: r0v21 */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [int] */
    /* JADX WARN: Type inference failed for: r1v6 */
    public int hashCode() {
        boolean z10 = this.enable;
        ?? r11 = z10;
        if (z10) {
            r11 = 1;
        }
        int iA = ((((((((((r11 * 31) + s.a(this.delayTime)) * 31) + Arrays.hashCode(this.banTimeScope)) * 31) + this.localBanStartHour) * 31) + this.localBanEndHour) * 31) + s.a(this.effectInterval)) * 31;
        boolean z11 = this.only4SilentUser;
        return ((((((iA + (z11 ? 1 : z11)) * 31) + this.deepLink.hashCode()) * 31) + this.timesLimit) * 31) + this.dayLimit;
    }

    public final void setEnable(boolean z10) {
        this.enable = z10;
    }

    public String toString() {
        return "FSNConfig(enable=" + this.enable + ", delayTime=" + this.delayTime + ", banTimeScope=" + Arrays.toString(this.banTimeScope) + ", localBanStartHour=" + this.localBanStartHour + ", localBanEndHour=" + this.localBanEndHour + ", effectInterval=" + this.effectInterval + ", only4SilentUser=" + this.only4SilentUser + ", deepLink=" + this.deepLink + ", timesLimit=" + this.timesLimit + ", dayLimit=" + this.dayLimit + ")";
    }
}
