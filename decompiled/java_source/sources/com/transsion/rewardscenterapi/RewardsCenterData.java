package com.transsion.rewardscenterapi;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001BC\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\f\u0010\rJ\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u000bHÆ\u0003JE\u0010\u001d\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000bHÆ\u0001J\u0013\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010!HÖ\u0003J\t\u0010\"\u001a\u00020#HÖ\u0001J\t\u0010$\u001a\u00020%HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0013\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017¨\u0006&"}, d2 = {"Lcom/transsion/rewardscenterapi/RewardsCenterData;", "Ljava/io/Serializable;", "lottery", "Lcom/transsion/rewardscenterapi/Lottery;", "user", "Lcom/transsion/rewardscenterapi/User;", "redeem", "Lcom/transsion/rewardscenterapi/Redeem;", "task", "Lcom/transsion/rewardscenterapi/Task;", "rule", "Lcom/transsion/rewardscenterapi/Rule;", "<init>", "(Lcom/transsion/rewardscenterapi/Lottery;Lcom/transsion/rewardscenterapi/User;Lcom/transsion/rewardscenterapi/Redeem;Lcom/transsion/rewardscenterapi/Task;Lcom/transsion/rewardscenterapi/Rule;)V", "getLottery", "()Lcom/transsion/rewardscenterapi/Lottery;", "getUser", "()Lcom/transsion/rewardscenterapi/User;", "getRedeem", "()Lcom/transsion/rewardscenterapi/Redeem;", "getTask", "()Lcom/transsion/rewardscenterapi/Task;", "getRule", "()Lcom/transsion/rewardscenterapi/Rule;", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "", "RewardsCenterApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class RewardsCenterData implements Serializable {
    private final Lottery lottery;
    private final Redeem redeem;
    private final Rule rule;
    private final Task task;
    private final User user;

    public RewardsCenterData() {
        this(null, null, null, null, null, 31, null);
    }

    public RewardsCenterData(Lottery lottery, User user, Redeem redeem, Task task, Rule rule) {
        this.lottery = lottery;
        this.user = user;
        this.redeem = redeem;
        this.task = task;
        this.rule = rule;
    }

    public /* synthetic */ RewardsCenterData(Lottery lottery, User user, Redeem redeem, Task task, Rule rule, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : lottery, (i11 & 2) != 0 ? null : user, (i11 & 4) != 0 ? null : redeem, (i11 & 8) != 0 ? null : task, (i11 & 16) != 0 ? null : rule);
    }

    public static /* synthetic */ RewardsCenterData copy$default(RewardsCenterData rewardsCenterData, Lottery lottery, User user, Redeem redeem, Task task, Rule rule, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            lottery = rewardsCenterData.lottery;
        }
        if ((i11 & 2) != 0) {
            user = rewardsCenterData.user;
        }
        User user2 = user;
        if ((i11 & 4) != 0) {
            redeem = rewardsCenterData.redeem;
        }
        Redeem redeem2 = redeem;
        if ((i11 & 8) != 0) {
            task = rewardsCenterData.task;
        }
        Task task2 = task;
        if ((i11 & 16) != 0) {
            rule = rewardsCenterData.rule;
        }
        return rewardsCenterData.copy(lottery, user2, redeem2, task2, rule);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Lottery getLottery() {
        return this.lottery;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final User getUser() {
        return this.user;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Redeem getRedeem() {
        return this.redeem;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Task getTask() {
        return this.task;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final Rule getRule() {
        return this.rule;
    }

    public final RewardsCenterData copy(Lottery lottery, User user, Redeem redeem, Task task, Rule rule) {
        return new RewardsCenterData(lottery, user, redeem, task, rule);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof RewardsCenterData)) {
            return false;
        }
        RewardsCenterData rewardsCenterData = (RewardsCenterData) other;
        return Intrinsics.c(this.lottery, rewardsCenterData.lottery) && Intrinsics.c(this.user, rewardsCenterData.user) && Intrinsics.c(this.redeem, rewardsCenterData.redeem) && Intrinsics.c(this.task, rewardsCenterData.task) && Intrinsics.c(this.rule, rewardsCenterData.rule);
    }

    public final Lottery getLottery() {
        return this.lottery;
    }

    public final Redeem getRedeem() {
        return this.redeem;
    }

    public final Rule getRule() {
        return this.rule;
    }

    public final Task getTask() {
        return this.task;
    }

    public final User getUser() {
        return this.user;
    }

    public int hashCode() {
        Lottery lottery = this.lottery;
        int iHashCode = (lottery == null ? 0 : lottery.hashCode()) * 31;
        User user = this.user;
        int iHashCode2 = (iHashCode + (user == null ? 0 : user.hashCode())) * 31;
        Redeem redeem = this.redeem;
        int iHashCode3 = (iHashCode2 + (redeem == null ? 0 : redeem.hashCode())) * 31;
        Task task = this.task;
        int iHashCode4 = (iHashCode3 + (task == null ? 0 : task.hashCode())) * 31;
        Rule rule = this.rule;
        return iHashCode4 + (rule != null ? rule.hashCode() : 0);
    }

    public String toString() {
        return "RewardsCenterData(lottery=" + this.lottery + ", user=" + this.user + ", redeem=" + this.redeem + ", task=" + this.task + ", rule=" + this.rule + ")";
    }
}
