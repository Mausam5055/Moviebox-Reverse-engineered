package com.transsion.startup.pref.consume;

import androidx.annotation.Keep;
import androidx.collection.s;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u001d\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u001e\b\u0087\b\u0018\u0000 C2\u00020\u0001:\u0001DBy\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\b\b\u0002\u0010\t\u001a\u00020\u0007\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0010\u0010\u0012\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0012\u0010\u0013J\u0010\u0010\u0014\u001a\u00020\u0004HÆ\u0003¢\u0006\u0004\b\u0014\u0010\u0015J\u0010\u0010\u0016\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0016\u0010\u0013J\u0010\u0010\u0017\u001a\u00020\u0007HÆ\u0003¢\u0006\u0004\b\u0017\u0010\u0018J\u0010\u0010\u0019\u001a\u00020\u0007HÆ\u0003¢\u0006\u0004\b\u0019\u0010\u0018J\u0012\u0010\u001a\u001a\u0004\u0018\u00010\u0004HÆ\u0003¢\u0006\u0004\b\u001a\u0010\u0015J\u0012\u0010\u001b\u001a\u0004\u0018\u00010\u0004HÆ\u0003¢\u0006\u0004\b\u001b\u0010\u0015J\u0012\u0010\u001c\u001a\u0004\u0018\u00010\u0004HÆ\u0003¢\u0006\u0004\b\u001c\u0010\u0015J\u0012\u0010\u001d\u001a\u0004\u0018\u00010\u0004HÆ\u0003¢\u0006\u0004\b\u001d\u0010\u0015J\u0012\u0010\u001e\u001a\u0004\u0018\u00010\u0004HÆ\u0003¢\u0006\u0004\b\u001e\u0010\u0015J\u0012\u0010\u001f\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u001f\u0010 J\u008a\u0001\u0010!\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00022\b\b\u0002\u0010\b\u001a\u00020\u00072\b\b\u0002\u0010\t\u001a\u00020\u00072\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0002HÆ\u0001¢\u0006\u0004\b!\u0010\"J\u0010\u0010#\u001a\u00020\u0004HÖ\u0001¢\u0006\u0004\b#\u0010\u0015J\u0010\u0010$\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b$\u0010\u0013J\u001a\u0010(\u001a\u00020'2\b\u0010&\u001a\u0004\u0018\u00010%HÖ\u0003¢\u0006\u0004\b(\u0010)R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010*\u001a\u0004\b+\u0010\u0013R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010,\u001a\u0004\b-\u0010\u0015R\u0017\u0010\u0006\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0006\u0010*\u001a\u0004\b.\u0010\u0013R\u0017\u0010\b\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010/\u001a\u0004\b0\u0010\u0018R\"\u0010\t\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010/\u001a\u0004\b1\u0010\u0018\"\u0004\b2\u00103R$\u0010\n\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010,\u001a\u0004\b4\u0010\u0015\"\u0004\b5\u00106R$\u0010\u000b\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010,\u001a\u0004\b7\u0010\u0015\"\u0004\b8\u00106R$\u0010\f\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010,\u001a\u0004\b9\u0010\u0015\"\u0004\b:\u00106R$\u0010\r\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010,\u001a\u0004\b;\u0010\u0015\"\u0004\b<\u00106R$\u0010\u000e\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010,\u001a\u0004\b=\u0010\u0015\"\u0004\b>\u00106R$\u0010\u000f\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010?\u001a\u0004\b@\u0010 \"\u0004\bA\u0010B¨\u0006E"}, d2 = {"Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;", "Ljava/io/Serializable;", "", "state", "", "alias", NativeComponentConstants.KEY_COMPONENT_TYPE, "", CampaignEx.JSON_KEY_TIMESTAMP, "totalTime", "totalMem", "availMem", "threshold", "totalSize", "availableSize", "coreSize", "<init>", "(ILjava/lang/String;IJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V", "component1", "()I", "component2", "()Ljava/lang/String;", "component3", "component4", "()J", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "()Ljava/lang/Integer;", "copy", "(ILjava/lang/String;IJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;", "toString", "hashCode", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "equals", "(Ljava/lang/Object;)Z", "I", "getState", "Ljava/lang/String;", "getAlias", "getType", "J", "getTimestamp", "getTotalTime", "setTotalTime", "(J)V", "getTotalMem", "setTotalMem", "(Ljava/lang/String;)V", "getAvailMem", "setAvailMem", "getThreshold", "setThreshold", "getTotalSize", "setTotalSize", "getAvailableSize", "setAvailableSize", "Ljava/lang/Integer;", "getCoreSize", "setCoreSize", "(Ljava/lang/Integer;)V", "Companion", "a", "Startup_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class AppStartDotStateEntity implements Serializable {
    public static final int DOT_STATE_END = 3;
    public static final int DOT_STATE_PROCESS = 2;
    public static final int DOT_STATE_START = 1;
    public static final int DOT_TYPE_CONSUME = 3;
    public static final int DOT_TYPE_NET = 2;
    public static final int DOT_TYPE_UI = 1;
    private final String alias;
    private String availMem;
    private String availableSize;
    private Integer coreSize;
    private final int state;
    private String threshold;
    private final long timestamp;
    private String totalMem;
    private String totalSize;
    private long totalTime;
    private final int type;

    public AppStartDotStateEntity(int i11, String alias, int i12, long j11, long j12, String str, String str2, String str3, String str4, String str5, Integer num) {
        Intrinsics.h(alias, "alias");
        this.state = i11;
        this.alias = alias;
        this.type = i12;
        this.timestamp = j11;
        this.totalTime = j12;
        this.totalMem = str;
        this.availMem = str2;
        this.threshold = str3;
        this.totalSize = str4;
        this.availableSize = str5;
        this.coreSize = num;
    }

    public /* synthetic */ AppStartDotStateEntity(int i11, String str, int i12, long j11, long j12, String str2, String str3, String str4, String str5, String str6, Integer num, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this(i11, str, i12, j11, (i13 & 16) != 0 ? 0L : j12, (i13 & 32) != 0 ? "" : str2, (i13 & 64) != 0 ? "" : str3, (i13 & 128) != 0 ? "" : str4, (i13 & 256) != 0 ? "" : str5, (i13 & 512) != 0 ? "" : str6, (i13 & 1024) != 0 ? 0 : num);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getState() {
        return this.state;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final String getAvailableSize() {
        return this.availableSize;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final Integer getCoreSize() {
        return this.coreSize;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getAlias() {
        return this.alias;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final int getType() {
        return this.type;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final long getTimestamp() {
        return this.timestamp;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final long getTotalTime() {
        return this.totalTime;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getTotalMem() {
        return this.totalMem;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getAvailMem() {
        return this.availMem;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getThreshold() {
        return this.threshold;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getTotalSize() {
        return this.totalSize;
    }

    public final AppStartDotStateEntity copy(int state, String alias, int type, long timestamp, long totalTime, String totalMem, String availMem, String threshold, String totalSize, String availableSize, Integer coreSize) {
        Intrinsics.h(alias, "alias");
        return new AppStartDotStateEntity(state, alias, type, timestamp, totalTime, totalMem, availMem, threshold, totalSize, availableSize, coreSize);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AppStartDotStateEntity)) {
            return false;
        }
        AppStartDotStateEntity appStartDotStateEntity = (AppStartDotStateEntity) other;
        return this.state == appStartDotStateEntity.state && Intrinsics.c(this.alias, appStartDotStateEntity.alias) && this.type == appStartDotStateEntity.type && this.timestamp == appStartDotStateEntity.timestamp && this.totalTime == appStartDotStateEntity.totalTime && Intrinsics.c(this.totalMem, appStartDotStateEntity.totalMem) && Intrinsics.c(this.availMem, appStartDotStateEntity.availMem) && Intrinsics.c(this.threshold, appStartDotStateEntity.threshold) && Intrinsics.c(this.totalSize, appStartDotStateEntity.totalSize) && Intrinsics.c(this.availableSize, appStartDotStateEntity.availableSize) && Intrinsics.c(this.coreSize, appStartDotStateEntity.coreSize);
    }

    public final String getAlias() {
        return this.alias;
    }

    public final String getAvailMem() {
        return this.availMem;
    }

    public final String getAvailableSize() {
        return this.availableSize;
    }

    public final Integer getCoreSize() {
        return this.coreSize;
    }

    public final int getState() {
        return this.state;
    }

    public final String getThreshold() {
        return this.threshold;
    }

    public final long getTimestamp() {
        return this.timestamp;
    }

    public final String getTotalMem() {
        return this.totalMem;
    }

    public final String getTotalSize() {
        return this.totalSize;
    }

    public final long getTotalTime() {
        return this.totalTime;
    }

    public final int getType() {
        return this.type;
    }

    public int hashCode() {
        int iHashCode = ((((((((this.state * 31) + this.alias.hashCode()) * 31) + this.type) * 31) + s.a(this.timestamp)) * 31) + s.a(this.totalTime)) * 31;
        String str = this.totalMem;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.availMem;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.threshold;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.totalSize;
        int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.availableSize;
        int iHashCode6 = (iHashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
        Integer num = this.coreSize;
        return iHashCode6 + (num != null ? num.hashCode() : 0);
    }

    public final void setAvailMem(String str) {
        this.availMem = str;
    }

    public final void setAvailableSize(String str) {
        this.availableSize = str;
    }

    public final void setCoreSize(Integer num) {
        this.coreSize = num;
    }

    public final void setThreshold(String str) {
        this.threshold = str;
    }

    public final void setTotalMem(String str) {
        this.totalMem = str;
    }

    public final void setTotalSize(String str) {
        this.totalSize = str;
    }

    public final void setTotalTime(long j11) {
        this.totalTime = j11;
    }

    public String toString() {
        return "AppStartDotStateEntity(state=" + this.state + ", alias=" + this.alias + ", type=" + this.type + ", timestamp=" + this.timestamp + ", totalTime=" + this.totalTime + ", totalMem=" + this.totalMem + ", availMem=" + this.availMem + ", threshold=" + this.threshold + ", totalSize=" + this.totalSize + ", availableSize=" + this.availableSize + ", coreSize=" + this.coreSize + ")";
    }
}
