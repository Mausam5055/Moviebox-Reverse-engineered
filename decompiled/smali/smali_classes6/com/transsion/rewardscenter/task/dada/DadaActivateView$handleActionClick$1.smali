.class final Lcom/transsion/rewardscenter/task/dada/DadaActivateView$handleActionClick$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/rewardscenter/task/dada/DadaActivateView;->v()V
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
    c = "com.transsion.rewardscenter.task.dada.DadaActivateView$handleActionClick$1"
    f = "DaDaActivateView.kt"
    l = {
        0xfb
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/transsion/rewardscenter/task/dada/DadaActivateView;


# direct methods
.method constructor <init>(Lcom/transsion/rewardscenter/task/dada/DadaActivateView;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/rewardscenter/task/dada/DadaActivateView;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/rewardscenter/task/dada/DadaActivateView$handleActionClick$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/rewardscenter/task/dada/DadaActivateView$handleActionClick$1;->this$0:Lcom/transsion/rewardscenter/task/dada/DadaActivateView;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/rewardscenter/task/dada/DadaActivateView;Lcom/transsion/rewardscenterapi/TaskRewards;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/rewardscenter/task/dada/DadaActivateView$handleActionClick$1;->h(Lcom/transsion/rewardscenter/task/dada/DadaActivateView;Lcom/transsion/rewardscenterapi/TaskRewards;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/transsion/rewardscenter/task/dada/DadaActivateView;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/rewardscenter/task/dada/DadaActivateView$handleActionClick$1;->g(Lcom/transsion/rewardscenter/task/dada/DadaActivateView;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final g(Lcom/transsion/rewardscenter/task/dada/DadaActivateView;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    if-nez p2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/transsion/rewardscenter/R$string;->claim_failed:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string p0, "getString(...)"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    invoke-static {p0, p2}, Lcom/transsion/rewardscenter/utils/p;->a(ZLjava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final h(Lcom/transsion/rewardscenter/task/dada/DadaActivateView;Lcom/transsion/rewardscenterapi/TaskRewards;)Lkotlin/Unit;
    .locals 4

    const/4 v0, 0x1

    sget-object v1, Lcom/transsion/rewardscenter/task/dada/DadaTaskState;->CLAIMED_STAGE1:Lcom/transsion/rewardscenter/task/dada/DadaTaskState;

    invoke-static {p0, v1}, Lcom/transsion/rewardscenter/task/dada/DadaActivateView;->access$setTaskState(Lcom/transsion/rewardscenter/task/dada/DadaActivateView;Lcom/transsion/rewardscenter/task/dada/DadaTaskState;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/rewardscenterapi/TaskRewards;->getCurrentPoint()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {p0}, Lcom/transsion/rewardscenter/task/dada/DadaActivateView;->access$getCtxConfig$p(Lcom/transsion/rewardscenter/task/dada/DadaActivateView;)Lwp/a;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lwp/a;->c()Lcom/transsion/rewardscenter/model/RewardsCenterModel;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->C(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/transsion/rewardscenter/R$string;->claim_points_receive_tips:I

    invoke-virtual {p0}, Lcom/transsion/rewardscenter/task/dada/DadaActivateView;->getStage1stTaskInfo()Lcom/transsion/rewardscenterapi/MemberTaskItem;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->getRewardAmount()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x3

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "getString(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/transsion/rewardscenter/utils/p;->a(ZLjava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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

    new-instance p1, Lcom/transsion/rewardscenter/task/dada/DadaActivateView$handleActionClick$1;

    iget-object v0, p0, Lcom/transsion/rewardscenter/task/dada/DadaActivateView$handleActionClick$1;->this$0:Lcom/transsion/rewardscenter/task/dada/DadaActivateView;

    invoke-direct {p1, v0, p2}, Lcom/transsion/rewardscenter/task/dada/DadaActivateView$handleActionClick$1;-><init>(Lcom/transsion/rewardscenter/task/dada/DadaActivateView;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/rewardscenter/task/dada/DadaActivateView$handleActionClick$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/rewardscenter/task/dada/DadaActivateView$handleActionClick$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/rewardscenter/task/dada/DadaActivateView$handleActionClick$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/rewardscenter/task/dada/DadaActivateView$handleActionClick$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/rewardscenter/task/dada/DadaActivateView$handleActionClick$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p1, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;->a:Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;

    iget-object v1, p0, Lcom/transsion/rewardscenter/task/dada/DadaActivateView$handleActionClick$1;->this$0:Lcom/transsion/rewardscenter/task/dada/DadaActivateView;

    invoke-virtual {v1}, Lcom/transsion/rewardscenter/task/dada/DadaActivateView;->getStage1stTaskInfo()Lcom/transsion/rewardscenterapi/MemberTaskItem;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->getTaskId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/transsion/rewardscenter/task/dada/DadaActivateView$handleActionClick$1;->this$0:Lcom/transsion/rewardscenter/task/dada/DadaActivateView;

    new-instance v4, Lcom/transsion/rewardscenter/task/dada/l;

    invoke-direct {v4, v3}, Lcom/transsion/rewardscenter/task/dada/l;-><init>(Lcom/transsion/rewardscenter/task/dada/DadaActivateView;)V

    iget-object v3, p0, Lcom/transsion/rewardscenter/task/dada/DadaActivateView$handleActionClick$1;->this$0:Lcom/transsion/rewardscenter/task/dada/DadaActivateView;

    new-instance v5, Lcom/transsion/rewardscenter/task/dada/m;

    invoke-direct {v5, v3}, Lcom/transsion/rewardscenter/task/dada/m;-><init>(Lcom/transsion/rewardscenter/task/dada/DadaActivateView;)V

    iput v2, p0, Lcom/transsion/rewardscenter/task/dada/DadaActivateView$handleActionClick$1;->label:I

    invoke-virtual {p1, v1, v4, v5, p0}, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;->u(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
