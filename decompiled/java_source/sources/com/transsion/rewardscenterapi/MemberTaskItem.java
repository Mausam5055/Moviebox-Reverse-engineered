package com.transsion.rewardscenterapi;

import androidx.annotation.Keep;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.RewardPlus;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0000\n\u0002\b&\n\u0002\u0010\u000b\n\u0002\b.\b\u0087\b\u0018\u0000 s2\u00020\u0001:\u0001tB³\u0002\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0004\u0012\u0010\b\u0002\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0010\u0012\u0010\b\u0002\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0013\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0016\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010!\u001a\u0004\u0018\u00010 ¢\u0006\u0004\b\"\u0010#J\u0012\u0010$\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b$\u0010%J\u0012\u0010&\u001a\u0004\u0018\u00010\u0004HÆ\u0003¢\u0006\u0004\b&\u0010'J\u0012\u0010(\u001a\u0004\u0018\u00010\u0004HÆ\u0003¢\u0006\u0004\b(\u0010'J\u0012\u0010)\u001a\u0004\u0018\u00010\u0004HÆ\u0003¢\u0006\u0004\b)\u0010'J\u0012\u0010*\u001a\u0004\u0018\u00010\u0004HÆ\u0003¢\u0006\u0004\b*\u0010'J\u0012\u0010+\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b+\u0010%J\u0012\u0010,\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b,\u0010%J\u0012\u0010-\u001a\u0004\u0018\u00010\u0004HÆ\u0003¢\u0006\u0004\b-\u0010'J\u0012\u0010.\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b.\u0010%J\u0012\u0010/\u001a\u0004\u0018\u00010\u0004HÆ\u0003¢\u0006\u0004\b/\u0010'J\u0012\u00100\u001a\u0004\u0018\u00010\u0004HÆ\u0003¢\u0006\u0004\b0\u0010'J\u0012\u00101\u001a\u0004\u0018\u00010\u0004HÆ\u0003¢\u0006\u0004\b1\u0010'J\u0018\u00102\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0010HÆ\u0003¢\u0006\u0004\b2\u00103J\u0018\u00104\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0013HÆ\u0003¢\u0006\u0004\b4\u00103J\u0012\u00105\u001a\u0004\u0018\u00010\u0016HÆ\u0003¢\u0006\u0004\b5\u00106J\u0012\u00107\u001a\u0004\u0018\u00010\u0004HÆ\u0003¢\u0006\u0004\b7\u0010'J\u0012\u00108\u001a\u0004\u0018\u00010\u0004HÆ\u0003¢\u0006\u0004\b8\u0010'J\u0012\u00109\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b9\u0010%J\u0012\u0010:\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b:\u0010%J\u0012\u0010;\u001a\u0004\u0018\u00010\u0004HÆ\u0003¢\u0006\u0004\b;\u0010'J\u0012\u0010<\u001a\u0004\u0018\u00010\u0004HÆ\u0003¢\u0006\u0004\b<\u0010'J\u0012\u0010=\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b=\u0010%J\u0012\u0010>\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b>\u0010%J\u0012\u0010?\u001a\u0004\u0018\u00010 HÆ\u0003¢\u0006\u0004\b?\u0010@J¼\u0002\u0010A\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00042\u0010\b\u0002\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u00102\u0010\b\u0002\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u00132\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010!\u001a\u0004\u0018\u00010 HÆ\u0001¢\u0006\u0004\bA\u0010BJ\u0010\u0010C\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\bC\u0010%J\u0010\u0010D\u001a\u00020\u0004HÖ\u0001¢\u0006\u0004\bD\u0010EJ\u001a\u0010H\u001a\u00020G2\b\u0010F\u001a\u0004\u0018\u00010 HÖ\u0003¢\u0006\u0004\bH\u0010IR\u0019\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010J\u001a\u0004\bK\u0010%R\u0019\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010L\u001a\u0004\bM\u0010'R\u0019\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\u0006\u0010L\u001a\u0004\bN\u0010'R\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\u0007\u0010L\u001a\u0004\bO\u0010'R\u0019\u0010\b\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\b\u0010L\u001a\u0004\bP\u0010'R\u0019\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\t\u0010J\u001a\u0004\bQ\u0010%R\u0019\u0010\n\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\n\u0010J\u001a\u0004\bR\u0010%R\u0019\u0010\u000b\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\u000b\u0010L\u001a\u0004\bS\u0010'R\u0019\u0010\f\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\f\u0010J\u001a\u0004\bT\u0010%R$\u0010\r\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010L\u001a\u0004\bU\u0010'\"\u0004\bV\u0010WR$\u0010\u000e\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010L\u001a\u0004\bX\u0010'\"\u0004\bY\u0010WR$\u0010\u000f\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010L\u001a\u0004\bZ\u0010'\"\u0004\b[\u0010WR*\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\\\u001a\u0004\b]\u00103\"\u0004\b^\u0010_R*\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u00138\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\\\u001a\u0004\b`\u00103\"\u0004\ba\u0010_R$\u0010\u0017\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010b\u001a\u0004\bc\u00106\"\u0004\bd\u0010eR\u0019\u0010\u0018\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\u0018\u0010L\u001a\u0004\bf\u0010'R\u0019\u0010\u0019\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\u0019\u0010L\u001a\u0004\bg\u0010'R\u0019\u0010\u001a\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u001a\u0010J\u001a\u0004\bh\u0010%R\u0019\u0010\u001b\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u001b\u0010J\u001a\u0004\bi\u0010%R\u0019\u0010\u001c\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\u001c\u0010L\u001a\u0004\bj\u0010'R$\u0010\u001d\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001d\u0010L\u001a\u0004\bk\u0010'\"\u0004\bl\u0010WR\u0019\u0010\u001e\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u001e\u0010J\u001a\u0004\bm\u0010%R\u0019\u0010\u001f\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u001f\u0010J\u001a\u0004\bn\u0010%R\u0019\u0010!\u001a\u0004\u0018\u00010 8\u0006¢\u0006\f\n\u0004\b!\u0010o\u001a\u0004\bp\u0010@R\u0011\u0010q\u001a\u00020G8F¢\u0006\u0006\u001a\u0004\bq\u0010r¨\u0006u"}, d2 = {"Lcom/transsion/rewardscenterapi/MemberTaskItem;", "Ljava/io/Serializable;", "", "taskId", "", "taskType", "taskSubType", "durationCondition", "timesCondition", CampaignEx.JSON_KEY_TITLE, "subTitle", "jumpType", "jumpUrl", NotificationCompat.CATEGORY_PROGRESS, "totalProgress", NotificationCompat.CATEGORY_STATUS, "", "Lcom/transsion/rewardscenterapi/MemberTaskItemInvite;", "inviteList", "", "Lcom/transsion/rewardscenterapi/MemberTaskItemCheckInInfo;", "checkInList", "Lcom/transsion/rewardscenterapi/MemberTaskRewardInfo;", "rewardInfo", "rewardType", "rewardAmount", "buttonName", RewardPlus.ICON, "timeInterval", "lastId", "groupName", "groupUrl", "", "groupInfo", "<init>", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Lcom/transsion/rewardscenterapi/MemberTaskRewardInfo;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V", "component1", "()Ljava/lang/String;", "component2", "()Ljava/lang/Integer;", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "()Ljava/util/List;", "component14", "component15", "()Lcom/transsion/rewardscenterapi/MemberTaskRewardInfo;", "component16", "component17", "component18", "component19", "component20", "component21", "component22", "component23", "component24", "()Ljava/lang/Object;", "copy", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Lcom/transsion/rewardscenterapi/MemberTaskRewardInfo;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/transsion/rewardscenterapi/MemberTaskItem;", "toString", "hashCode", "()I", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getTaskId", "Ljava/lang/Integer;", "getTaskType", "getTaskSubType", "getDurationCondition", "getTimesCondition", "getTitle", "getSubTitle", "getJumpType", "getJumpUrl", "getProgress", "setProgress", "(Ljava/lang/Integer;)V", "getTotalProgress", "setTotalProgress", "getStatus", "setStatus", "Ljava/util/List;", "getInviteList", "setInviteList", "(Ljava/util/List;)V", "getCheckInList", "setCheckInList", "Lcom/transsion/rewardscenterapi/MemberTaskRewardInfo;", "getRewardInfo", "setRewardInfo", "(Lcom/transsion/rewardscenterapi/MemberTaskRewardInfo;)V", "getRewardType", "getRewardAmount", "getButtonName", "getIcon", "getTimeInterval", "getLastId", "setLastId", "getGroupName", "getGroupUrl", "Ljava/lang/Object;", "getGroupInfo", "isClaimCompleted", "()Z", "Companion", "a", "RewardsCenterApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class MemberTaskItem implements Serializable {
    public static final int TASK_STATUS_END = 3;
    private final String buttonName;
    private List<MemberTaskItemCheckInInfo> checkInList;
    private final Integer durationCondition;
    private final Object groupInfo;
    private final String groupName;
    private final String groupUrl;
    private final String icon;
    private List<MemberTaskItemInvite> inviteList;
    private final Integer jumpType;
    private final String jumpUrl;
    private Integer lastId;
    private Integer progress;
    private final Integer rewardAmount;
    private MemberTaskRewardInfo rewardInfo;
    private final Integer rewardType;
    private Integer status;
    private final String subTitle;
    private final String taskId;
    private final Integer taskSubType;
    private final Integer taskType;
    private final Integer timeInterval;
    private final Integer timesCondition;
    private final String title;
    private Integer totalProgress;

    public MemberTaskItem() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 16777215, null);
    }

    public MemberTaskItem(String str, Integer num, Integer num2, Integer num3, Integer num4, String str2, String str3, Integer num5, String str4, Integer num6, Integer num7, Integer num8, List<MemberTaskItemInvite> list, List<MemberTaskItemCheckInInfo> list2, MemberTaskRewardInfo memberTaskRewardInfo, Integer num9, Integer num10, String str5, String str6, Integer num11, Integer num12, String str7, String str8, Object obj) {
        this.taskId = str;
        this.taskType = num;
        this.taskSubType = num2;
        this.durationCondition = num3;
        this.timesCondition = num4;
        this.title = str2;
        this.subTitle = str3;
        this.jumpType = num5;
        this.jumpUrl = str4;
        this.progress = num6;
        this.totalProgress = num7;
        this.status = num8;
        this.inviteList = list;
        this.checkInList = list2;
        this.rewardInfo = memberTaskRewardInfo;
        this.rewardType = num9;
        this.rewardAmount = num10;
        this.buttonName = str5;
        this.icon = str6;
        this.timeInterval = num11;
        this.lastId = num12;
        this.groupName = str7;
        this.groupUrl = str8;
        this.groupInfo = obj;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ MemberTaskItem(String str, Integer num, Integer num2, Integer num3, Integer num4, String str2, String str3, Integer num5, String str4, Integer num6, Integer num7, Integer num8, List list, List list2, MemberTaskRewardInfo memberTaskRewardInfo, Integer num9, Integer num10, String str5, String str6, Integer num11, Integer num12, String str7, String str8, Object obj, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        int i12;
        Integer num13;
        String str9 = (i11 & 1) != 0 ? null : str;
        Integer num14 = (i11 & 2) != 0 ? 0 : num;
        Integer num15 = (i11 & 4) != 0 ? 0 : num2;
        Integer num16 = (i11 & 8) != 0 ? 0 : num3;
        Integer num17 = (i11 & 16) != 0 ? 0 : num4;
        String str10 = (i11 & 32) != 0 ? null : str2;
        String str11 = (i11 & 64) != 0 ? null : str3;
        Integer num18 = (i11 & 128) != 0 ? 0 : num5;
        String str12 = (i11 & 256) != 0 ? "" : str4;
        Integer num19 = (i11 & 512) != 0 ? 0 : num6;
        Integer num20 = (i11 & 1024) != 0 ? 0 : num7;
        Integer num21 = (i11 & 2048) != 0 ? 0 : num8;
        List list3 = (i11 & 4096) != 0 ? null : list;
        List list4 = (i11 & 8192) != 0 ? null : list2;
        MemberTaskRewardInfo memberTaskRewardInfo2 = (i11 & 16384) != 0 ? null : memberTaskRewardInfo;
        if ((i11 & 32768) != 0) {
            i12 = 0;
            num13 = 0;
        } else {
            i12 = 0;
            num13 = num9;
        }
        this(str9, num14, num15, num16, num17, str10, str11, num18, str12, num19, num20, num21, list3, list4, memberTaskRewardInfo2, num13, (i11 & 65536) != 0 ? Integer.valueOf(i12) : num10, (i11 & 131072) != 0 ? null : str5, (i11 & 262144) != 0 ? null : str6, (i11 & 524288) != 0 ? 0 : num11, (i11 & 1048576) != 0 ? null : num12, (i11 & 2097152) != 0 ? null : str7, (i11 & 4194304) != 0 ? null : str8, (i11 & 8388608) != 0 ? null : obj);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getTaskId() {
        return this.taskId;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final Integer getProgress() {
        return this.progress;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final Integer getTotalProgress() {
        return this.totalProgress;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final Integer getStatus() {
        return this.status;
    }

    public final List<MemberTaskItemInvite> component13() {
        return this.inviteList;
    }

    public final List<MemberTaskItemCheckInInfo> component14() {
        return this.checkInList;
    }

    /* JADX INFO: renamed from: component15, reason: from getter */
    public final MemberTaskRewardInfo getRewardInfo() {
        return this.rewardInfo;
    }

    /* JADX INFO: renamed from: component16, reason: from getter */
    public final Integer getRewardType() {
        return this.rewardType;
    }

    /* JADX INFO: renamed from: component17, reason: from getter */
    public final Integer getRewardAmount() {
        return this.rewardAmount;
    }

    /* JADX INFO: renamed from: component18, reason: from getter */
    public final String getButtonName() {
        return this.buttonName;
    }

    /* JADX INFO: renamed from: component19, reason: from getter */
    public final String getIcon() {
        return this.icon;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Integer getTaskType() {
        return this.taskType;
    }

    /* JADX INFO: renamed from: component20, reason: from getter */
    public final Integer getTimeInterval() {
        return this.timeInterval;
    }

    /* JADX INFO: renamed from: component21, reason: from getter */
    public final Integer getLastId() {
        return this.lastId;
    }

    /* JADX INFO: renamed from: component22, reason: from getter */
    public final String getGroupName() {
        return this.groupName;
    }

    /* JADX INFO: renamed from: component23, reason: from getter */
    public final String getGroupUrl() {
        return this.groupUrl;
    }

    /* JADX INFO: renamed from: component24, reason: from getter */
    public final Object getGroupInfo() {
        return this.groupInfo;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Integer getTaskSubType() {
        return this.taskSubType;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Integer getDurationCondition() {
        return this.durationCondition;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final Integer getTimesCondition() {
        return this.timesCondition;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getSubTitle() {
        return this.subTitle;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final Integer getJumpType() {
        return this.jumpType;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getJumpUrl() {
        return this.jumpUrl;
    }

    public final MemberTaskItem copy(String taskId, Integer taskType, Integer taskSubType, Integer durationCondition, Integer timesCondition, String title, String subTitle, Integer jumpType, String jumpUrl, Integer progress, Integer totalProgress, Integer status, List<MemberTaskItemInvite> inviteList, List<MemberTaskItemCheckInInfo> checkInList, MemberTaskRewardInfo rewardInfo, Integer rewardType, Integer rewardAmount, String buttonName, String icon, Integer timeInterval, Integer lastId, String groupName, String groupUrl, Object groupInfo) {
        return new MemberTaskItem(taskId, taskType, taskSubType, durationCondition, timesCondition, title, subTitle, jumpType, jumpUrl, progress, totalProgress, status, inviteList, checkInList, rewardInfo, rewardType, rewardAmount, buttonName, icon, timeInterval, lastId, groupName, groupUrl, groupInfo);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MemberTaskItem)) {
            return false;
        }
        MemberTaskItem memberTaskItem = (MemberTaskItem) other;
        return Intrinsics.c(this.taskId, memberTaskItem.taskId) && Intrinsics.c(this.taskType, memberTaskItem.taskType) && Intrinsics.c(this.taskSubType, memberTaskItem.taskSubType) && Intrinsics.c(this.durationCondition, memberTaskItem.durationCondition) && Intrinsics.c(this.timesCondition, memberTaskItem.timesCondition) && Intrinsics.c(this.title, memberTaskItem.title) && Intrinsics.c(this.subTitle, memberTaskItem.subTitle) && Intrinsics.c(this.jumpType, memberTaskItem.jumpType) && Intrinsics.c(this.jumpUrl, memberTaskItem.jumpUrl) && Intrinsics.c(this.progress, memberTaskItem.progress) && Intrinsics.c(this.totalProgress, memberTaskItem.totalProgress) && Intrinsics.c(this.status, memberTaskItem.status) && Intrinsics.c(this.inviteList, memberTaskItem.inviteList) && Intrinsics.c(this.checkInList, memberTaskItem.checkInList) && Intrinsics.c(this.rewardInfo, memberTaskItem.rewardInfo) && Intrinsics.c(this.rewardType, memberTaskItem.rewardType) && Intrinsics.c(this.rewardAmount, memberTaskItem.rewardAmount) && Intrinsics.c(this.buttonName, memberTaskItem.buttonName) && Intrinsics.c(this.icon, memberTaskItem.icon) && Intrinsics.c(this.timeInterval, memberTaskItem.timeInterval) && Intrinsics.c(this.lastId, memberTaskItem.lastId) && Intrinsics.c(this.groupName, memberTaskItem.groupName) && Intrinsics.c(this.groupUrl, memberTaskItem.groupUrl) && Intrinsics.c(this.groupInfo, memberTaskItem.groupInfo);
    }

    public final String getButtonName() {
        return this.buttonName;
    }

    public final List<MemberTaskItemCheckInInfo> getCheckInList() {
        return this.checkInList;
    }

    public final Integer getDurationCondition() {
        return this.durationCondition;
    }

    public final Object getGroupInfo() {
        return this.groupInfo;
    }

    public final String getGroupName() {
        return this.groupName;
    }

    public final String getGroupUrl() {
        return this.groupUrl;
    }

    public final String getIcon() {
        return this.icon;
    }

    public final List<MemberTaskItemInvite> getInviteList() {
        return this.inviteList;
    }

    public final Integer getJumpType() {
        return this.jumpType;
    }

    public final String getJumpUrl() {
        return this.jumpUrl;
    }

    public final Integer getLastId() {
        return this.lastId;
    }

    public final Integer getProgress() {
        return this.progress;
    }

    public final Integer getRewardAmount() {
        return this.rewardAmount;
    }

    public final MemberTaskRewardInfo getRewardInfo() {
        return this.rewardInfo;
    }

    public final Integer getRewardType() {
        return this.rewardType;
    }

    public final Integer getStatus() {
        return this.status;
    }

    public final String getSubTitle() {
        return this.subTitle;
    }

    public final String getTaskId() {
        return this.taskId;
    }

    public final Integer getTaskSubType() {
        return this.taskSubType;
    }

    public final Integer getTaskType() {
        return this.taskType;
    }

    public final Integer getTimeInterval() {
        return this.timeInterval;
    }

    public final Integer getTimesCondition() {
        return this.timesCondition;
    }

    public final String getTitle() {
        return this.title;
    }

    public final Integer getTotalProgress() {
        return this.totalProgress;
    }

    public int hashCode() {
        String str = this.taskId;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        Integer num = this.taskType;
        int iHashCode2 = (iHashCode + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.taskSubType;
        int iHashCode3 = (iHashCode2 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.durationCondition;
        int iHashCode4 = (iHashCode3 + (num3 == null ? 0 : num3.hashCode())) * 31;
        Integer num4 = this.timesCondition;
        int iHashCode5 = (iHashCode4 + (num4 == null ? 0 : num4.hashCode())) * 31;
        String str2 = this.title;
        int iHashCode6 = (iHashCode5 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.subTitle;
        int iHashCode7 = (iHashCode6 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Integer num5 = this.jumpType;
        int iHashCode8 = (iHashCode7 + (num5 == null ? 0 : num5.hashCode())) * 31;
        String str4 = this.jumpUrl;
        int iHashCode9 = (iHashCode8 + (str4 == null ? 0 : str4.hashCode())) * 31;
        Integer num6 = this.progress;
        int iHashCode10 = (iHashCode9 + (num6 == null ? 0 : num6.hashCode())) * 31;
        Integer num7 = this.totalProgress;
        int iHashCode11 = (iHashCode10 + (num7 == null ? 0 : num7.hashCode())) * 31;
        Integer num8 = this.status;
        int iHashCode12 = (iHashCode11 + (num8 == null ? 0 : num8.hashCode())) * 31;
        List<MemberTaskItemInvite> list = this.inviteList;
        int iHashCode13 = (iHashCode12 + (list == null ? 0 : list.hashCode())) * 31;
        List<MemberTaskItemCheckInInfo> list2 = this.checkInList;
        int iHashCode14 = (iHashCode13 + (list2 == null ? 0 : list2.hashCode())) * 31;
        MemberTaskRewardInfo memberTaskRewardInfo = this.rewardInfo;
        int iHashCode15 = (iHashCode14 + (memberTaskRewardInfo == null ? 0 : memberTaskRewardInfo.hashCode())) * 31;
        Integer num9 = this.rewardType;
        int iHashCode16 = (iHashCode15 + (num9 == null ? 0 : num9.hashCode())) * 31;
        Integer num10 = this.rewardAmount;
        int iHashCode17 = (iHashCode16 + (num10 == null ? 0 : num10.hashCode())) * 31;
        String str5 = this.buttonName;
        int iHashCode18 = (iHashCode17 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.icon;
        int iHashCode19 = (iHashCode18 + (str6 == null ? 0 : str6.hashCode())) * 31;
        Integer num11 = this.timeInterval;
        int iHashCode20 = (iHashCode19 + (num11 == null ? 0 : num11.hashCode())) * 31;
        Integer num12 = this.lastId;
        int iHashCode21 = (iHashCode20 + (num12 == null ? 0 : num12.hashCode())) * 31;
        String str7 = this.groupName;
        int iHashCode22 = (iHashCode21 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.groupUrl;
        int iHashCode23 = (iHashCode22 + (str8 == null ? 0 : str8.hashCode())) * 31;
        Object obj = this.groupInfo;
        return iHashCode23 + (obj != null ? obj.hashCode() : 0);
    }

    public final boolean isClaimCompleted() {
        Integer num = this.status;
        return num != null && num.intValue() == 3;
    }

    public final void setCheckInList(List<MemberTaskItemCheckInInfo> list) {
        this.checkInList = list;
    }

    public final void setInviteList(List<MemberTaskItemInvite> list) {
        this.inviteList = list;
    }

    public final void setLastId(Integer num) {
        this.lastId = num;
    }

    public final void setProgress(Integer num) {
        this.progress = num;
    }

    public final void setRewardInfo(MemberTaskRewardInfo memberTaskRewardInfo) {
        this.rewardInfo = memberTaskRewardInfo;
    }

    public final void setStatus(Integer num) {
        this.status = num;
    }

    public final void setTotalProgress(Integer num) {
        this.totalProgress = num;
    }

    public String toString() {
        return "MemberTaskItem(taskId=" + this.taskId + ", taskType=" + this.taskType + ", taskSubType=" + this.taskSubType + ", durationCondition=" + this.durationCondition + ", timesCondition=" + this.timesCondition + ", title=" + this.title + ", subTitle=" + this.subTitle + ", jumpType=" + this.jumpType + ", jumpUrl=" + this.jumpUrl + ", progress=" + this.progress + ", totalProgress=" + this.totalProgress + ", status=" + this.status + ", inviteList=" + this.inviteList + ", checkInList=" + this.checkInList + ", rewardInfo=" + this.rewardInfo + ", rewardType=" + this.rewardType + ", rewardAmount=" + this.rewardAmount + ", buttonName=" + this.buttonName + ", icon=" + this.icon + ", timeInterval=" + this.timeInterval + ", lastId=" + this.lastId + ", groupName=" + this.groupName + ", groupUrl=" + this.groupUrl + ", groupInfo=" + this.groupInfo + ")";
    }
}
