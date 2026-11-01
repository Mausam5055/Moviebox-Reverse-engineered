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
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BI\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\f\u0010\rJ\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u000bHÆ\u0003JK\u0010\u001c\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000bHÆ\u0001J\u0013\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010 HÖ\u0003J\t\u0010!\u001a\u00020\"HÖ\u0001J\t\u0010#\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0019\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u000fR\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016¨\u0006$"}, d2 = {"Lcom/transsion/rewardscenterapi/Lottery;", "Ljava/io/Serializable;", "activityId", "", "prizeFlows", "", "Lcom/transsion/rewardscenterapi/PrizeFlow;", "banner", "Lcom/transsion/rewardscenterapi/Banner;", "bgImage", "userPrize", "Lcom/transsion/rewardscenterapi/UserPrize;", "<init>", "(Ljava/lang/String;Ljava/util/List;Lcom/transsion/rewardscenterapi/Banner;Ljava/lang/String;Lcom/transsion/rewardscenterapi/UserPrize;)V", "getActivityId", "()Ljava/lang/String;", "getPrizeFlows", "()Ljava/util/List;", "getBanner", "()Lcom/transsion/rewardscenterapi/Banner;", "getBgImage", "getUserPrize", "()Lcom/transsion/rewardscenterapi/UserPrize;", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "RewardsCenterApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class Lottery implements Serializable {
    private final String activityId;
    private final Banner banner;
    private final String bgImage;
    private final List<PrizeFlow> prizeFlows;
    private final UserPrize userPrize;

    public Lottery() {
        this(null, null, null, null, null, 31, null);
    }

    public Lottery(String str, List<PrizeFlow> list, Banner banner, String str2, UserPrize userPrize) {
        this.activityId = str;
        this.prizeFlows = list;
        this.banner = banner;
        this.bgImage = str2;
        this.userPrize = userPrize;
    }

    public /* synthetic */ Lottery(String str, List list, Banner banner, String str2, UserPrize userPrize, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : list, (i11 & 4) != 0 ? null : banner, (i11 & 8) != 0 ? null : str2, (i11 & 16) != 0 ? null : userPrize);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Lottery copy$default(Lottery lottery, String str, List list, Banner banner, String str2, UserPrize userPrize, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = lottery.activityId;
        }
        if ((i11 & 2) != 0) {
            list = lottery.prizeFlows;
        }
        List list2 = list;
        if ((i11 & 4) != 0) {
            banner = lottery.banner;
        }
        Banner banner2 = banner;
        if ((i11 & 8) != 0) {
            str2 = lottery.bgImage;
        }
        String str3 = str2;
        if ((i11 & 16) != 0) {
            userPrize = lottery.userPrize;
        }
        return lottery.copy(str, list2, banner2, str3, userPrize);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getActivityId() {
        return this.activityId;
    }

    public final List<PrizeFlow> component2() {
        return this.prizeFlows;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Banner getBanner() {
        return this.banner;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getBgImage() {
        return this.bgImage;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final UserPrize getUserPrize() {
        return this.userPrize;
    }

    public final Lottery copy(String activityId, List<PrizeFlow> prizeFlows, Banner banner, String bgImage, UserPrize userPrize) {
        return new Lottery(activityId, prizeFlows, banner, bgImage, userPrize);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Lottery)) {
            return false;
        }
        Lottery lottery = (Lottery) other;
        return Intrinsics.c(this.activityId, lottery.activityId) && Intrinsics.c(this.prizeFlows, lottery.prizeFlows) && Intrinsics.c(this.banner, lottery.banner) && Intrinsics.c(this.bgImage, lottery.bgImage) && Intrinsics.c(this.userPrize, lottery.userPrize);
    }

    public final String getActivityId() {
        return this.activityId;
    }

    public final Banner getBanner() {
        return this.banner;
    }

    public final String getBgImage() {
        return this.bgImage;
    }

    public final List<PrizeFlow> getPrizeFlows() {
        return this.prizeFlows;
    }

    public final UserPrize getUserPrize() {
        return this.userPrize;
    }

    public int hashCode() {
        String str = this.activityId;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        List<PrizeFlow> list = this.prizeFlows;
        int iHashCode2 = (iHashCode + (list == null ? 0 : list.hashCode())) * 31;
        Banner banner = this.banner;
        int iHashCode3 = (iHashCode2 + (banner == null ? 0 : banner.hashCode())) * 31;
        String str2 = this.bgImage;
        int iHashCode4 = (iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        UserPrize userPrize = this.userPrize;
        return iHashCode4 + (userPrize != null ? userPrize.hashCode() : 0);
    }

    public String toString() {
        return "Lottery(activityId=" + this.activityId + ", prizeFlows=" + this.prizeFlows + ", banner=" + this.banner + ", bgImage=" + this.bgImage + ", userPrize=" + this.userPrize + ")";
    }
}
