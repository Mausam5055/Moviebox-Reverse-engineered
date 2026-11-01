.class public final Lcom/cloud/hisavana/sdk/e2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/hisavana/sdk/q;


# instance fields
.field private a:Lcom/cloud/hisavana/sdk/x3;

.field private final b:Ljava/lang/String;

.field private c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field private d:J


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/x3;)V
    .locals 2

    const-string v0, "tranRewarded"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/e2;->a:Lcom/cloud/hisavana/sdk/x3;

    const-string p1, "Rewarded"

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/e2;->b:Ljava/lang/String;

    sget-object p1, Lcom/cloud/hisavana/sdk/b2;->a:Lcom/cloud/hisavana/sdk/b2;

    invoke-virtual {p1, p0}, Lcom/cloud/hisavana/sdk/b2;->b(Lcom/cloud/hisavana/sdk/q;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cloud/hisavana/sdk/e2;->d:J

    return-void
.end method

.method private final d()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->d()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_rewarded"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final e()V
    .locals 5

    :try_start_0
    sget-object v0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->I:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$a;

    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/e2;->a:Lcom/cloud/hisavana/sdk/x3;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$a;->a(Ljava/lang/ref/WeakReference;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e2;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/e2;->a:Lcom/cloud/hisavana/sdk/x3;

    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/G;->n(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setCloseDelayTime(I)V

    :goto_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e2;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getAdType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    const-class v0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialRewardedActivity;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    const-class v0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    :goto_1
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10010000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "adBean"

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/e2;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "prefix"

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/e2;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "observerId"

    iget-wide v2, p0, Lcom/cloud/hisavana/sdk/e2;->d:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "triggerTs"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v1

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/e2;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "show failed --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method


# virtual methods
.method public a(JLjava/lang/String;Ljava/lang/Object;)V
    .locals 4

    const-string v0, "event"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/e2;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onEvent --> id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", event = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", params = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/e2;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_show"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/e2;->a:Lcom/cloud/hisavana/sdk/x3;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/x3;->I()V

    goto/16 :goto_5

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/e2;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_rewarded"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    if-eqz p4, :cond_3

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/e2;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    check-cast p4, Ljava/lang/Long;

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setTriggerShowSpend(J)V

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/e2;->a:Lcom/cloud/hisavana/sdk/x3;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/x3;->J()V

    goto/16 :goto_5

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/e2;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_error"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    if-nez p4, :cond_5

    new-instance p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    const/4 p2, -0x1

    const-string p3, "ad show error"

    invoke-direct {p1, p2, p3}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;-><init>(ILjava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object p1, p4

    check-cast p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    :goto_1
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/e2;->a:Lcom/cloud/hisavana/sdk/x3;

    invoke-virtual {p2, p1}, Lcom/cloud/hisavana/sdk/x3;->F(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    goto/16 :goto_5

    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/e2;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_click"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    new-instance p1, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;

    invoke-direct {p1}, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;-><init>()V

    if-eqz p4, :cond_7

    check-cast p4, Lkotlin/Pair;

    invoke-virtual {p4}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p2

    const-string p3, "null cannot be cast to non-null type com.cloud.hisavana.sdk.data.bean.response.AdsDTO"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/e2;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {p4}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p4}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type com.cloud.hisavana.sdk.common.tracking.DownUpPointBean"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;

    :cond_7
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/e2;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    const/4 p3, 0x1

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isAllowTrackingADClick()Z

    move-result p2

    goto :goto_2

    :cond_8
    move p2, p3

    :goto_2
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object p4

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e2;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/e2;->a:Lcom/cloud/hisavana/sdk/x3;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/G;->p()Lcom/cloud/hisavana/sdk/q3;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/q3;->v()Z

    move-result v1

    if-ne v1, p3, :cond_9

    move v1, p3

    goto :goto_3

    :cond_9
    const/4 v1, 0x0

    :goto_3
    xor-int/lit8 v2, p2, 0x1

    invoke-static {p4, v0, p1, v1, v2}, Lcom/cloud/hisavana/sdk/N0;->c(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;ZZ)I

    if-eqz p2, :cond_a

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/e2;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->W(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    goto :goto_4

    :cond_a
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/e2;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz p1, :cond_b

    invoke-virtual {p1, p3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setAdClickTracking(Z)V

    :cond_b
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    const-string p2, "ssp"

    const-string p3, "tracking is not allowed\uff0cchange isAdClickTracking = true"

    invoke-virtual {p1, p2, p3}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/e2;->a:Lcom/cloud/hisavana/sdk/x3;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/x3;->G()V

    goto :goto_5

    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/e2;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_close"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/e2;->a:Lcom/cloud/hisavana/sdk/x3;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/x3;->H()V

    :cond_d
    :goto_5
    return-void
.end method

.method public final b()V
    .locals 3

    sget-object v0, Lcom/cloud/hisavana/sdk/b2;->a:Lcom/cloud/hisavana/sdk/b2;

    iget-wide v1, p0, Lcom/cloud/hisavana/sdk/e2;->d:J

    invoke-virtual {v0, v1, v2}, Lcom/cloud/hisavana/sdk/b2;->c(J)V

    return-void
.end method

.method public final c(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 2

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/e2;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/e2;->e()V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/e2;->a:Lcom/cloud/hisavana/sdk/x3;

    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_ADBEAN_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/x3;->F(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e2;->b:Ljava/lang/String;

    const-string v1, "show() --> adBean == null"

    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
