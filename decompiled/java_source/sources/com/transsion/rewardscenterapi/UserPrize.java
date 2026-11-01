package com.transsion.rewardscenterapi;

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
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B%\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u000b\u0010\r\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0003J'\u0010\u000f\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0019\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0018"}, d2 = {"Lcom/transsion/rewardscenterapi/UserPrize;", "Ljava/io/Serializable;", "drawChance", "Lcom/transsion/rewardscenterapi/DrawChance;", "prizeItems", "", "Lcom/transsion/rewardscenterapi/DrawResult;", "<init>", "(Lcom/transsion/rewardscenterapi/DrawChance;Ljava/util/List;)V", "getDrawChance", "()Lcom/transsion/rewardscenterapi/DrawChance;", "getPrizeItems", "()Ljava/util/List;", "component1", "component2", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "", "RewardsCenterApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class UserPrize implements Serializable {
    private final DrawChance drawChance;
    private final List<DrawResult> prizeItems;

    /* JADX WARN: Multi-variable type inference failed */
    public UserPrize() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public UserPrize(DrawChance drawChance, List<DrawResult> list) {
        this.drawChance = drawChance;
        this.prizeItems = list;
    }

    public /* synthetic */ UserPrize(DrawChance drawChance, List list, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : drawChance, (i11 & 2) != 0 ? null : list);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ UserPrize copy$default(UserPrize userPrize, DrawChance drawChance, List list, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            drawChance = userPrize.drawChance;
        }
        if ((i11 & 2) != 0) {
            list = userPrize.prizeItems;
        }
        return userPrize.copy(drawChance, list);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final DrawChance getDrawChance() {
        return this.drawChance;
    }

    public final List<DrawResult> component2() {
        return this.prizeItems;
    }

    public final UserPrize copy(DrawChance drawChance, List<DrawResult> prizeItems) {
        return new UserPrize(drawChance, prizeItems);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof UserPrize)) {
            return false;
        }
        UserPrize userPrize = (UserPrize) other;
        return Intrinsics.c(this.drawChance, userPrize.drawChance) && Intrinsics.c(this.prizeItems, userPrize.prizeItems);
    }

    public final DrawChance getDrawChance() {
        return this.drawChance;
    }

    public final List<DrawResult> getPrizeItems() {
        return this.prizeItems;
    }

    public int hashCode() {
        DrawChance drawChance = this.drawChance;
        int iHashCode = (drawChance == null ? 0 : drawChance.hashCode()) * 31;
        List<DrawResult> list = this.prizeItems;
        return iHashCode + (list != null ? list.hashCode() : 0);
    }

    public String toString() {
        return "UserPrize(drawChance=" + this.drawChance + ", prizeItems=" + this.prizeItems + ")";
    }
}
