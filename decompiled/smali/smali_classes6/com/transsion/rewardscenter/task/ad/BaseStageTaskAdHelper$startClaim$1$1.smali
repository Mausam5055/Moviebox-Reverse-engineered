.class final Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper$startClaim$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->z(Lcom/transsion/rewardscenter/task/ad/v;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/n0;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lkotlinx/coroutines/n0;",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/n0;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsion.rewardscenter.task.ad.BaseStageTaskAdHelper$startClaim$1$1"
    f = "BaseStageTaskAdHelper.kt"
    l = {
        0x10c
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $callback:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $it:Lcom/transsion/rewardscenterapi/MemberTaskItem;

.field final synthetic $item:Lcom/transsion/rewardscenter/task/ad/v;

.field label:I

.field final synthetic this$0:Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;


# direct methods
.method constructor <init>(Lcom/transsion/rewardscenterapi/MemberTaskItem;Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;Lcom/transsion/rewardscenter/task/ad/v;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/rewardscenterapi/MemberTaskItem;",
            "Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;",
            "Lcom/transsion/rewardscenter/task/ad/v;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper$startClaim$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper$startClaim$1$1;->$it:Lcom/transsion/rewardscenterapi/MemberTaskItem;

    iput-object p2, p0, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper$startClaim$1$1;->this$0:Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;

    iput-object p3, p0, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper$startClaim$1$1;->$item:Lcom/transsion/rewardscenter/task/ad/v;

    iput-object p4, p0, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper$startClaim$1$1;->$callback:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/rewardscenter/task/ad/v;Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;Lkotlin/jvm/functions/Function0;Lcom/transsion/rewardscenterapi/TaskRewards;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper$startClaim$1$1;->h(Lcom/transsion/rewardscenter/task/ad/v;Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;Lkotlin/jvm/functions/Function0;Lcom/transsion/rewardscenterapi/TaskRewards;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper$startClaim$1$1;->g(Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final g(Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->a(Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;)Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper$a;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper$a;->b()V

    :cond_0
    if-nez p2, :cond_1

    invoke-static {p0}, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->b(Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;)Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/transsion/rewardscenter/R$string;->claim_failed:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string p0, "getString(...)"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x0

    invoke-static {p0, p2}, Lcom/transsion/rewardscenter/utils/p;->a(ZLjava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final h(Lcom/transsion/rewardscenter/task/ad/v;Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;Lkotlin/jvm/functions/Function0;Lcom/transsion/rewardscenterapi/TaskRewards;)Lkotlin/Unit;
    .locals 8

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/transsion/rewardscenterapi/TaskRewards;->getTips()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/transsion/rewardscenter/utils/p;->a(ZLjava/lang/String;)V

    :cond_0
    sget-object v2, Llg/a;->a:Llg/a$a;

    invoke-virtual {p3}, Lcom/transsion/rewardscenterapi/TaskRewards;->getTaskInfo()Lcom/transsion/rewardscenterapi/MemberTaskItem;

    move-result-object v0

    invoke-virtual {p3}, Lcom/transsion/rewardscenterapi/TaskRewards;->getCurrentPoint()Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "----> claimMemberShipReward: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "StageTaskAd"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object v0, Lcom/transsion/rewardscenter/task/ad/u;->a:Lcom/transsion/rewardscenter/task/ad/u;

    invoke-virtual {p3}, Lcom/transsion/rewardscenterapi/TaskRewards;->getTaskInfo()Lcom/transsion/rewardscenterapi/MemberTaskItem;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/transsion/rewardscenter/task/ad/u;->b(Lcom/transsion/rewardscenter/task/ad/v;Lcom/transsion/rewardscenterapi/MemberTaskItem;)V

    invoke-static {p1}, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->a(Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;)Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper$a;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p3}, Lcom/transsion/rewardscenterapi/TaskRewards;->getCurrentPoint()Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper$a;->a(Ljava/lang/Integer;)V

    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper$startClaim$1$1;

    iget-object v1, p0, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper$startClaim$1$1;->$it:Lcom/transsion/rewardscenterapi/MemberTaskItem;

    iget-object v2, p0, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper$startClaim$1$1;->this$0:Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;

    iget-object v3, p0, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper$startClaim$1$1;->$item:Lcom/transsion/rewardscenter/task/ad/v;

    iget-object v4, p0, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper$startClaim$1$1;->$callback:Lkotlin/jvm/functions/Function0;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper$startClaim$1$1;-><init>(Lcom/transsion/rewardscenterapi/MemberTaskItem;Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;Lcom/transsion/rewardscenter/task/ad/v;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper$startClaim$1$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/n0;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper$startClaim$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper$startClaim$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper$startClaim$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper$startClaim$1$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p1, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;->a:Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;

    iget-object v1, p0, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper$startClaim$1$1;->$it:Lcom/transsion/rewardscenterapi/MemberTaskItem;

    invoke-virtual {v1}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->getTaskId()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper$startClaim$1$1;->this$0:Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;

    new-instance v4, Lcom/transsion/rewardscenter/task/ad/b;

    invoke-direct {v4, v3}, Lcom/transsion/rewardscenter/task/ad/b;-><init>(Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;)V

    iget-object v3, p0, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper$startClaim$1$1;->$item:Lcom/transsion/rewardscenter/task/ad/v;

    iget-object v5, p0, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper$startClaim$1$1;->this$0:Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;

    iget-object v6, p0, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper$startClaim$1$1;->$callback:Lkotlin/jvm/functions/Function0;

    new-instance v7, Lcom/transsion/rewardscenter/task/ad/c;

    invoke-direct {v7, v3, v5, v6}, Lcom/transsion/rewardscenter/task/ad/c;-><init>(Lcom/transsion/rewardscenter/task/ad/v;Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;Lkotlin/jvm/functions/Function0;)V

    iput v2, p0, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper$startClaim$1$1;->label:I

    invoke-virtual {p1, v1, v4, v7, p0}, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;->u(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
