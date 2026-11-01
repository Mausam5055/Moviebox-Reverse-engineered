.class final Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider$startClaim$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider;->J(Lcom/transsion/rewardscenterapi/MemberTaskItem;)V
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
    c = "com.transsion.rewardscenter.task.member.BaseTaskCommonProvider$startClaim$1"
    f = "BaseTaskCommonProvider.kt"
    l = {
        0x7a
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $item:Lcom/transsion/rewardscenterapi/MemberTaskItem;

.field label:I

.field final synthetic this$0:Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider;


# direct methods
.method constructor <init>(Lcom/transsion/rewardscenterapi/MemberTaskItem;Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/rewardscenterapi/MemberTaskItem;",
            "Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider$startClaim$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider$startClaim$1;->$item:Lcom/transsion/rewardscenterapi/MemberTaskItem;

    iput-object p2, p0, Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider$startClaim$1;->this$0:Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider;Lcom/transsion/rewardscenterapi/TaskRewards;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider$startClaim$1;->h(Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider;Lcom/transsion/rewardscenterapi/TaskRewards;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider$startClaim$1;->g(Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final g(Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider;->B()Lwp/a;

    move-result-object p1

    invoke-virtual {p1}, Lwp/a;->c()Lcom/transsion/rewardscenter/model/RewardsCenterModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->o()Landroidx/lifecycle/b0;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/transsion/rewardscenter/R$string;->claim_points_failed_tips:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "getString(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {p1, p0}, Lcom/transsion/rewardscenter/utils/p;->a(ZLjava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final h(Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider;Lcom/transsion/rewardscenterapi/TaskRewards;)Lkotlin/Unit;
    .locals 12

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider;->B()Lwp/a;

    move-result-object v1

    invoke-virtual {v1}, Lwp/a;->c()Lcom/transsion/rewardscenter/model/RewardsCenterModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->o()Landroidx/lifecycle/b0;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->g()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_8

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v4, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-gez v4, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    :cond_0
    check-cast v5, Lcom/transsion/rewardscenterapi/MemberTaskItem;

    invoke-virtual {v5}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->getTaskId()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/rewardscenterapi/TaskRewards;->getTaskInfo()Lcom/transsion/rewardscenterapi/MemberTaskItem;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->getTaskId()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_1
    move-object v9, v8

    :goto_1
    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v5}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->getTaskId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/rewardscenterapi/TaskRewards;->getTaskInfo()Lcom/transsion/rewardscenterapi/MemberTaskItem;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v8

    :goto_2
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->g()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/rewardscenterapi/MemberTaskItem;

    if-eqz v5, :cond_6

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->getStatus()Ljava/lang/Integer;

    move-result-object v7

    goto :goto_3

    :cond_3
    move-object v7, v8

    :goto_3
    invoke-virtual {v5, v7}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->setStatus(Ljava/lang/Integer;)V

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->getProgress()Ljava/lang/Integer;

    move-result-object v7

    goto :goto_4

    :cond_4
    move-object v7, v8

    :goto_4
    invoke-virtual {v5, v7}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->setProgress(Ljava/lang/Integer;)V

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->getTotalProgress()Ljava/lang/Integer;

    move-result-object v8

    :cond_5
    invoke-virtual {v5, v8}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->setTotalProgress(Ljava/lang/Integer;)V

    :cond_6
    move v3, v4

    :cond_7
    move v4, v6

    goto :goto_0

    :cond_8
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/transsion/rewardscenterapi/TaskRewards;->getCurrentPoint()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0}, Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider;->B()Lwp/a;

    move-result-object v1

    invoke-virtual {v1}, Lwp/a;->c()Lcom/transsion/rewardscenter/model/RewardsCenterModel;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->C(I)V

    :cond_9
    if-gez v3, :cond_a

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_a
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->g()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/rewardscenterapi/MemberTaskItem;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->getRewardAmount()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_5

    :cond_b
    move p1, v2

    :goto_5
    sget-object v4, Luh/b;->a:Luh/b$a;

    sget v5, Lcom/transsion/rewardscenter/R$layout;->claim_succeed_layout:I

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v1

    sget v6, Lcom/transsion/rewardscenter/R$string;->claim_points_receive_tips:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    invoke-virtual {v1, v6, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string p1, "getString(...)"

    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 p1, 0x42840000    # 66.0f

    invoke-static {p1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v9

    const/16 v10, 0x8

    const/4 v11, 0x0

    const/16 v7, 0x50

    const/4 v8, 0x0

    invoke-static/range {v4 .. v11}, Luh/b$a;->h(Luh/b$a;ILjava/lang/CharSequence;IIIILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider;->G()V

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->g()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    move-result-object p0

    if-eqz p0, :cond_c

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_c
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance p1, Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider$startClaim$1;

    iget-object v0, p0, Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider$startClaim$1;->$item:Lcom/transsion/rewardscenterapi/MemberTaskItem;

    iget-object v1, p0, Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider$startClaim$1;->this$0:Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider;

    invoke-direct {p1, v0, v1, p2}, Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider$startClaim$1;-><init>(Lcom/transsion/rewardscenterapi/MemberTaskItem;Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider$startClaim$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider$startClaim$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider$startClaim$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider$startClaim$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider$startClaim$1;->label:I

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

    iget-object v1, p0, Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider$startClaim$1;->$item:Lcom/transsion/rewardscenterapi/MemberTaskItem;

    invoke-virtual {v1}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->getTaskId()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider$startClaim$1;->this$0:Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider;

    new-instance v4, Lcom/transsion/rewardscenter/task/member/b;

    invoke-direct {v4, v3}, Lcom/transsion/rewardscenter/task/member/b;-><init>(Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider;)V

    iget-object v3, p0, Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider$startClaim$1;->this$0:Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider;

    new-instance v5, Lcom/transsion/rewardscenter/task/member/c;

    invoke-direct {v5, v3}, Lcom/transsion/rewardscenter/task/member/c;-><init>(Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider;)V

    iput v2, p0, Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider$startClaim$1;->label:I

    invoke-virtual {p1, v1, v4, v5, p0}, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;->u(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
