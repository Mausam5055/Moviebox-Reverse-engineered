package com.transsion.memberapi;

import androidx.annotation.Keep;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0010\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\tJ\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\fJ&\u0010\u0010\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010\u0011J\u0013\u0010\u0012\u001a\u00020\u00032\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\n\u001a\u0004\b\b\u0010\tR\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\n\n\u0002\u0010\r\u001a\u0004\b\u000b\u0010\f¨\u0006\u0017"}, d2 = {"Lcom/transsion/memberapi/PremiumConsumeDto;", "", NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS, "", "remaining", "", "<init>", "(Ljava/lang/Boolean;Ljava/lang/Integer;)V", "getSuccess", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getRemaining", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "component1", "component2", "copy", "(Ljava/lang/Boolean;Ljava/lang/Integer;)Lcom/transsion/memberapi/PremiumConsumeDto;", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "toString", "", "MemberApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class PremiumConsumeDto {
    private final Integer remaining;
    private final Boolean success;

    /* JADX WARN: Multi-variable type inference failed */
    public PremiumConsumeDto() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public PremiumConsumeDto(Boolean bool, Integer num) {
        this.success = bool;
        this.remaining = num;
    }

    public /* synthetic */ PremiumConsumeDto(Boolean bool, Integer num, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : bool, (i11 & 2) != 0 ? null : num);
    }

    public static /* synthetic */ PremiumConsumeDto copy$default(PremiumConsumeDto premiumConsumeDto, Boolean bool, Integer num, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            bool = premiumConsumeDto.success;
        }
        if ((i11 & 2) != 0) {
            num = premiumConsumeDto.remaining;
        }
        return premiumConsumeDto.copy(bool, num);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Boolean getSuccess() {
        return this.success;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Integer getRemaining() {
        return this.remaining;
    }

    public final PremiumConsumeDto copy(Boolean success, Integer remaining) {
        return new PremiumConsumeDto(success, remaining);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PremiumConsumeDto)) {
            return false;
        }
        PremiumConsumeDto premiumConsumeDto = (PremiumConsumeDto) other;
        return Intrinsics.c(this.success, premiumConsumeDto.success) && Intrinsics.c(this.remaining, premiumConsumeDto.remaining);
    }

    public final Integer getRemaining() {
        return this.remaining;
    }

    public final Boolean getSuccess() {
        return this.success;
    }

    public int hashCode() {
        Boolean bool = this.success;
        int iHashCode = (bool == null ? 0 : bool.hashCode()) * 31;
        Integer num = this.remaining;
        return iHashCode + (num != null ? num.hashCode() : 0);
    }

    public String toString() {
        return "PremiumConsumeDto(success=" + this.success + ", remaining=" + this.remaining + ")";
    }
}
