.class public abstract Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper$a;,
        Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper$b;
    }
.end annotation


# static fields
.field public static final e:Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper$b;

.field public static final f:I


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lkotlinx/coroutines/n0;

.field private c:J

.field private d:Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->e:Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper$b;

    const/16 v0, 0x8

    sput v0, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->f:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lkotlinx/coroutines/n0;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->b:Lkotlinx/coroutines/n0;

    return-void
.end method

.method public static synthetic A(Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;Lcom/transsion/rewardscenter/task/ad/v;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->z(Lcom/transsion/rewardscenter/task/ad/v;Lkotlin/jvm/functions/Function0;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: startClaim"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final synthetic a(Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;)Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper$a;
    .locals 0

    iget-object p0, p0, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->d:Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper$a;

    return-object p0
.end method

.method public static final synthetic b(Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->a:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public c(Lcom/transsion/rewardscenter/task/ad/v$c;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public final e(Ljava/lang/String;)J
    .locals 2

    sget-object v0, Lcom/transsion/ad/scene/d;->a:Lcom/transsion/ad/scene/d;

    invoke-virtual {v0, p1}, Lcom/transsion/ad/scene/d;->b(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "expDuration"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x7530

    :goto_0
    return-wide v0
.end method

.method public final f(Lkotlin/jvm/functions/Function0;)V
    .locals 8

    sget-object v0, Lcom/transsion/rewardscenter/task/ad/u;->a:Lcom/transsion/rewardscenter/task/ad/u;

    invoke-virtual {v0}, Lcom/transsion/rewardscenter/task/ad/u;->j()Lcom/transsion/rewardscenterapi/MemberTaskItem;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->b:Lkotlinx/coroutines/n0;

    if-eqz v2, :cond_2

    new-instance v5, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper$fetchMemberAdTaskInfo$2$1;

    invoke-direct {v5, p1, v1}, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper$fetchMemberAdTaskInfo$2$1;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_2
    return-void
.end method

.method public final g(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)Ljava/lang/String;
    .locals 2

    const-string v0, "adBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getNativeInfo()Lcom/hisavana/common/bean/TAdNativeInfo;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getNativeInfo()Lcom/hisavana/common/bean/TAdNativeInfo;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdNativeInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    move-object v1, p1

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getSspNativeInfo()Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getSspNativeInfo()Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getPsPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getPsPackageName()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getPackageName()Ljava/lang/String;

    move-result-object p1

    :goto_1
    if-nez p1, :cond_0

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdMaterialList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/ad/monopoly/model/AdMaterialList;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getPsRecommendInfo()Lcom/transsion/ad/ps/model/RecommendInfo;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/transsion/ad/ps/model/RecommendInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    :cond_5
    :goto_2
    return-object v1
.end method

.method public final h()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->c:J

    return-wide v0
.end method

.method public final i(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)Z
    .locals 4

    const-string v0, "adBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getSspNativeInfo()Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getSspNativeInfo()Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getPullNewestLive()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/transsion/rewardscenter/utils/o;->a:Lcom/transsion/rewardscenter/utils/o;

    iget-object v3, p0, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->a:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->g(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Lcom/transsion/rewardscenter/utils/o;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_3

    :cond_1
    :goto_0
    move v1, v2

    goto :goto_3

    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getSspNativeInfo()Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getPullNewestLive()Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdMaterialList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/ad/monopoly/model/AdMaterialList;

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getPsRecommendInfo()Lcom/transsion/ad/ps/model/RecommendInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/ad/ps/model/RecommendInfo;->getAdType()Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_1

    :goto_3
    return v1
.end method

.method public final j(Lcom/transsion/rewardscenter/task/ad/v$a;)Z
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$a;->e()Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/transsion/rewardscenter/task/ad/AdTaskState;->DOWNLOADING:Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$a;->g()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$a;->g()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x2bf20

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public final k(Lcom/transsion/rewardscenter/task/ad/v$c;)Z
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$c;->e()Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/transsion/rewardscenter/task/ad/AdTaskState;->DOWNLOADING:Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$c;->g()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$c;->g()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x2bf20

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public final l(Lcom/transsion/rewardscenter/task/ad/v$c;)Z
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$c;->e()Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    move-result-object v1

    sget-object v2, Lcom/transsion/rewardscenter/task/ad/AdTaskState;->PLAYING:Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    if-ne v1, v2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->c:J

    sub-long/2addr v1, v3

    invoke-virtual {p1, v1, v2}, Lcom/transsion/rewardscenter/task/ad/v$c;->q(J)V

    sget-object v3, Llg/a;->a:Llg/a$a;

    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$c;->j()J

    move-result-wide v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "----> onResume playedTime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "StageTaskAd"

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$c;->j()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$c;->c()Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getSceneId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->e(Ljava/lang/String;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    if-ltz v1, :cond_1

    sget-object v0, Lcom/transsion/rewardscenter/task/ad/AdTaskState;->PLAYED:Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    invoke-virtual {p1, v0}, Lcom/transsion/rewardscenter/task/ad/v$c;->m(Lcom/transsion/rewardscenter/task/ad/AdTaskState;)V

    sget-object v0, Lcom/transsion/rewardscenter/task/ad/u;->a:Lcom/transsion/rewardscenter/task/ad/u;

    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$c;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$c;->e()Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/transsion/rewardscenter/task/ad/u;->v(Ljava/lang/String;Lcom/transsion/rewardscenter/task/ad/AdTaskState;)V

    return v2

    :cond_1
    const-string v1, "Play for 30 seconds to get the reward."

    invoke-static {v0, v1}, Lcom/transsion/rewardscenter/utils/p;->a(ZLjava/lang/String;)V

    sget-object v0, Lcom/transsion/rewardscenter/task/ad/AdTaskState;->CLAIMED_STAGE1:Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    invoke-virtual {p1, v0}, Lcom/transsion/rewardscenter/task/ad/v$c;->m(Lcom/transsion/rewardscenter/task/ad/AdTaskState;)V

    sget-object v0, Lcom/transsion/rewardscenter/task/ad/u;->a:Lcom/transsion/rewardscenter/task/ad/u;

    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$c;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$c;->e()Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/transsion/rewardscenter/task/ad/u;->v(Ljava/lang/String;Lcom/transsion/rewardscenter/task/ad/AdTaskState;)V

    return v2

    :cond_2
    return v0
.end method

.method public final m(Lcom/transsion/rewardscenter/task/ad/v$a;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$a;->e()Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    move-result-object v1

    sget-object v2, Lcom/transsion/rewardscenter/task/ad/AdTaskState;->DOWNLOADING:Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_2

    sget-object v1, Lcom/transsion/rewardscenter/utils/o;->a:Lcom/transsion/rewardscenter/utils/o;

    iget-object v2, p0, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$a;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/transsion/rewardscenter/utils/o;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/transsion/rewardscenter/task/ad/AdTaskState;->INSTALLED:Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    invoke-virtual {p1, v1}, Lcom/transsion/rewardscenter/task/ad/v$a;->m(Lcom/transsion/rewardscenter/task/ad/AdTaskState;)V

    sget-object v1, Lcom/transsion/rewardscenter/task/ad/u;->a:Lcom/transsion/rewardscenter/task/ad/u;

    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$a;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$a;->e()Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/transsion/rewardscenter/task/ad/u;->v(Ljava/lang/String;Lcom/transsion/rewardscenter/task/ad/AdTaskState;)V

    move v1, v0

    move p1, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->j(Lcom/transsion/rewardscenter/task/ad/v$a;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/transsion/rewardscenter/task/ad/AdTaskState;->NORMAL:Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    invoke-virtual {p1, v1}, Lcom/transsion/rewardscenter/task/ad/v$a;->m(Lcom/transsion/rewardscenter/task/ad/AdTaskState;)V

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/transsion/rewardscenter/task/ad/v$a;->o(J)V

    sget-object v1, Lcom/transsion/rewardscenter/task/ad/u;->a:Lcom/transsion/rewardscenter/task/ad/u;

    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$a;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$a;->e()Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/transsion/rewardscenter/task/ad/u;->v(Ljava/lang/String;Lcom/transsion/rewardscenter/task/ad/AdTaskState;)V

    move p1, v0

    move v1, v3

    goto :goto_0

    :cond_2
    move p1, v0

    move v1, p1

    :goto_0
    if-nez p1, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    move v0, v3

    :cond_4
    return v0
.end method

.method public final n(Lcom/transsion/rewardscenter/task/ad/v$c;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$c;->e()Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    move-result-object v1

    sget-object v2, Lcom/transsion/rewardscenter/task/ad/AdTaskState;->NORMAL:Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$c;->e()Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    move-result-object v1

    sget-object v4, Lcom/transsion/rewardscenter/task/ad/AdTaskState;->DOWNLOADING:Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    if-ne v1, v4, :cond_3

    :cond_1
    sget-object v1, Lcom/transsion/rewardscenter/utils/o;->a:Lcom/transsion/rewardscenter/utils/o;

    iget-object v4, p0, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$c;->i()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/transsion/rewardscenter/utils/o;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/transsion/rewardscenter/task/ad/AdTaskState;->INSTALLED:Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    invoke-virtual {p1, v1}, Lcom/transsion/rewardscenter/task/ad/v$c;->m(Lcom/transsion/rewardscenter/task/ad/AdTaskState;)V

    sget-object v1, Lcom/transsion/rewardscenter/task/ad/u;->a:Lcom/transsion/rewardscenter/task/ad/u;

    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$c;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$c;->e()Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/transsion/rewardscenter/task/ad/u;->v(Ljava/lang/String;Lcom/transsion/rewardscenter/task/ad/AdTaskState;)V

    move v1, v0

    move p1, v3

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->k(Lcom/transsion/rewardscenter/task/ad/v$c;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1, v2}, Lcom/transsion/rewardscenter/task/ad/v$c;->m(Lcom/transsion/rewardscenter/task/ad/AdTaskState;)V

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/transsion/rewardscenter/task/ad/v$c;->o(J)V

    sget-object v1, Lcom/transsion/rewardscenter/task/ad/u;->a:Lcom/transsion/rewardscenter/task/ad/u;

    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$c;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$c;->e()Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/transsion/rewardscenter/task/ad/u;->v(Ljava/lang/String;Lcom/transsion/rewardscenter/task/ad/AdTaskState;)V

    move p1, v0

    move v1, v3

    goto :goto_0

    :cond_3
    move p1, v0

    move v1, p1

    :goto_0
    if-nez p1, :cond_4

    if-eqz v1, :cond_5

    :cond_4
    move v0, v3

    :cond_5
    return v0
.end method

.method public final o()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->c:J

    return-void
.end method

.method public final p()V
    .locals 0

    return-void
.end method

.method public final q(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lcom/transsion/ad/scene/d;->a:Lcom/transsion/ad/scene/d;

    invoke-virtual {v0, p1}, Lcom/transsion/ad/scene/d;->b(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "cooldownDays"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    :goto_0
    return p1
.end method

.method public final r()V
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->v()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-lez v0, :cond_0

    sget-object v0, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;->A:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager$Companion;

    const-string v3, "MemberTaskStageNativeScene"

    invoke-static {v0, v3, v2, v1, v2}, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager$Companion;->b(Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager$Companion;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->u()I

    move-result v0

    if-gtz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->t()I

    move-result v0

    if-lez v0, :cond_2

    :cond_1
    sget-object v0, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;->A:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager$Companion;

    const-string v3, "MemberTaskRegularNativeScene"

    invoke-static {v0, v3, v2, v1, v2}, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager$Companion;->b(Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager$Companion;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final s(Lcom/transsion/rewardscenterapi/MemberTaskItem;)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->getStatus()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->getTotalProgress()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->getProgress()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_2
    sub-int v0, v1, v0

    :cond_3
    :goto_1
    return v0
.end method

.method public final t()I
    .locals 1

    sget-object v0, Lcom/transsion/rewardscenter/task/ad/u;->a:Lcom/transsion/rewardscenter/task/ad/u;

    invoke-virtual {v0}, Lcom/transsion/rewardscenter/task/ad/u;->g()Lcom/transsion/rewardscenterapi/MemberTaskItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->s(Lcom/transsion/rewardscenterapi/MemberTaskItem;)I

    move-result v0

    return v0
.end method

.method public final u()I
    .locals 1

    sget-object v0, Lcom/transsion/rewardscenter/task/ad/u;->a:Lcom/transsion/rewardscenter/task/ad/u;

    invoke-virtual {v0}, Lcom/transsion/rewardscenter/task/ad/u;->h()Lcom/transsion/rewardscenterapi/MemberTaskItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->s(Lcom/transsion/rewardscenterapi/MemberTaskItem;)I

    move-result v0

    return v0
.end method

.method public final v()I
    .locals 1

    sget-object v0, Lcom/transsion/rewardscenter/task/ad/u;->a:Lcom/transsion/rewardscenter/task/ad/u;

    invoke-virtual {v0}, Lcom/transsion/rewardscenter/task/ad/u;->j()Lcom/transsion/rewardscenterapi/MemberTaskItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->s(Lcom/transsion/rewardscenterapi/MemberTaskItem;)I

    move-result v0

    return v0
.end method

.method public final w()I
    .locals 1

    sget-object v0, Lcom/transsion/rewardscenter/task/ad/u;->a:Lcom/transsion/rewardscenter/task/ad/u;

    invoke-virtual {v0}, Lcom/transsion/rewardscenter/task/ad/u;->k()Lcom/transsion/rewardscenterapi/MemberTaskItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->s(Lcom/transsion/rewardscenterapi/MemberTaskItem;)I

    move-result v0

    return v0
.end method

.method public final x(Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper$a;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->d:Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper$a;

    return-void
.end method

.method public final y(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/rewardscenter/task/ad/u;->a:Lcom/transsion/rewardscenter/task/ad/u;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/rewardscenter/task/ad/u;->u(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public final z(Lcom/transsion/rewardscenter/task/ad/v;Lkotlin/jvm/functions/Function0;)V
    .locals 10

    iget-object v0, p0, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->d:Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper$a;->start()V

    :cond_0
    instance-of v0, p1, Lcom/transsion/rewardscenter/task/ad/v$c;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/transsion/rewardscenter/task/ad/v$c;

    invoke-virtual {v0}, Lcom/transsion/rewardscenter/task/ad/v$c;->e()Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    move-result-object v0

    sget-object v2, Lcom/transsion/rewardscenter/task/ad/AdTaskState;->INSTALLED:Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    if-ne v0, v2, :cond_1

    sget-object v0, Lcom/transsion/rewardscenter/task/ad/u;->a:Lcom/transsion/rewardscenter/task/ad/u;

    invoke-virtual {v0}, Lcom/transsion/rewardscenter/task/ad/u;->j()Lcom/transsion/rewardscenterapi/MemberTaskItem;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/transsion/rewardscenter/task/ad/u;->a:Lcom/transsion/rewardscenter/task/ad/u;

    invoke-virtual {v0}, Lcom/transsion/rewardscenter/task/ad/u;->k()Lcom/transsion/rewardscenterapi/MemberTaskItem;

    move-result-object v0

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_2
    instance-of v0, p1, Lcom/transsion/rewardscenter/task/ad/v$a;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/transsion/rewardscenter/task/ad/v$a;

    invoke-virtual {v0}, Lcom/transsion/rewardscenter/task/ad/v$a;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/transsion/rewardscenter/task/ad/u;->a:Lcom/transsion/rewardscenter/task/ad/u;

    invoke-virtual {v0}, Lcom/transsion/rewardscenter/task/ad/u;->h()Lcom/transsion/rewardscenterapi/MemberTaskItem;

    move-result-object v0

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/transsion/rewardscenter/task/ad/u;->a:Lcom/transsion/rewardscenter/task/ad/u;

    invoke-virtual {v0}, Lcom/transsion/rewardscenter/task/ad/u;->g()Lcom/transsion/rewardscenterapi/MemberTaskItem;

    move-result-object v0

    goto :goto_0

    :cond_4
    instance-of v0, p1, Lcom/transsion/rewardscenter/task/ad/v$b;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/transsion/rewardscenter/task/ad/u;->a:Lcom/transsion/rewardscenter/task/ad/u;

    invoke-virtual {v0}, Lcom/transsion/rewardscenter/task/ad/u;->i()Lcom/transsion/rewardscenterapi/MemberTaskItem;

    move-result-object v0

    goto :goto_0

    :cond_5
    move-object v3, v1

    :goto_1
    if-eqz v3, :cond_7

    iget-object v0, p0, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->b:Lkotlinx/coroutines/n0;

    if-eqz v0, :cond_6

    new-instance v1, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper$startClaim$1$1;

    const/4 v7, 0x0

    move-object v2, v1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper$startClaim$1$1;-><init>(Lcom/transsion/rewardscenterapi/MemberTaskItem;Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;Lcom/transsion/rewardscenter/task/ad/v;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v0

    move-object v7, v1

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    move-result-object v1

    :cond_6
    if-nez v1, :cond_9

    :cond_7
    iget-object p1, p0, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->d:Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper$a;

    if-eqz p1, :cond_8

    invoke-interface {p1}, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper$a;->b()V

    :cond_8
    const/4 p1, 0x0

    const-string p2, "Failed to claim points."

    invoke-static {p1, p2}, Lcom/transsion/rewardscenter/utils/p;->a(ZLjava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_9
    return-void
.end method
