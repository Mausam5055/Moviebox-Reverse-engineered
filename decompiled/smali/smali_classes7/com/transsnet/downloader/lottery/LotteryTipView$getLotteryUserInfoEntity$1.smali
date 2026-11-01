.class final Lcom/transsnet/downloader/lottery/LotteryTipView$getLotteryUserInfoEntity$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/lottery/LotteryTipView;->getLotteryUserInfoEntity()V
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
    c = "com.transsnet.downloader.lottery.LotteryTipView$getLotteryUserInfoEntity$1"
    f = "LotteryTipView.kt"
    l = {
        0x6f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsnet/downloader/lottery/LotteryTipView;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/lottery/LotteryTipView;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsnet/downloader/lottery/LotteryTipView;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsnet/downloader/lottery/LotteryTipView$getLotteryUserInfoEntity$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsnet/downloader/lottery/LotteryTipView$getLotteryUserInfoEntity$1;->this$0:Lcom/transsnet/downloader/lottery/LotteryTipView;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
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

    new-instance p1, Lcom/transsnet/downloader/lottery/LotteryTipView$getLotteryUserInfoEntity$1;

    iget-object v0, p0, Lcom/transsnet/downloader/lottery/LotteryTipView$getLotteryUserInfoEntity$1;->this$0:Lcom/transsnet/downloader/lottery/LotteryTipView;

    invoke-direct {p1, v0, p2}, Lcom/transsnet/downloader/lottery/LotteryTipView$getLotteryUserInfoEntity$1;-><init>(Lcom/transsnet/downloader/lottery/LotteryTipView;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/lottery/LotteryTipView$getLotteryUserInfoEntity$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/lottery/LotteryTipView$getLotteryUserInfoEntity$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsnet/downloader/lottery/LotteryTipView$getLotteryUserInfoEntity$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/lottery/LotteryTipView$getLotteryUserInfoEntity$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsnet/downloader/lottery/LotteryTipView$getLotteryUserInfoEntity$1;->label:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/transsnet/downloader/lottery/LotteryTipView$getLotteryUserInfoEntity$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/transsnet/downloader/lottery/LotteryTipView;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsnet/downloader/lottery/LotteryTipView$getLotteryUserInfoEntity$1;->this$0:Lcom/transsnet/downloader/lottery/LotteryTipView;

    const-class v1, Lcom/transsion/commercializationapi/ITaskCenterApi;

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v1, v5}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/commercializationapi/ITaskCenterApi;

    if-eqz v1, :cond_3

    iput-object p1, p0, Lcom/transsnet/downloader/lottery/LotteryTipView$getLotteryUserInfoEntity$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/transsnet/downloader/lottery/LotteryTipView$getLotteryUserInfoEntity$1;->label:I

    invoke-interface {v1, p0}, Lcom/transsion/commercializationapi/ITaskCenterApi;->e(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    move-object p1, v1

    :goto_0
    check-cast p1, Lcom/transsion/bean/lottery/LotteryUserInfoEntity;

    move-object v6, v0

    move-object v0, p1

    move-object p1, v6

    goto :goto_1

    :cond_3
    move-object v0, v3

    :goto_1
    invoke-static {p1, v0}, Lcom/transsnet/downloader/lottery/LotteryTipView;->access$setLotteryUserInfoEntity$p(Lcom/transsnet/downloader/lottery/LotteryTipView;Lcom/transsion/bean/lottery/LotteryUserInfoEntity;)V

    iget-object p1, p0, Lcom/transsnet/downloader/lottery/LotteryTipView$getLotteryUserInfoEntity$1;->this$0:Lcom/transsnet/downloader/lottery/LotteryTipView;

    invoke-static {p1, v4}, Lcom/transsnet/downloader/lottery/LotteryTipView;->access$setRequesting$p(Lcom/transsnet/downloader/lottery/LotteryTipView;Z)V

    iget-object p1, p0, Lcom/transsnet/downloader/lottery/LotteryTipView$getLotteryUserInfoEntity$1;->this$0:Lcom/transsnet/downloader/lottery/LotteryTipView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/transsnet/downloader/lottery/LotteryTipView$getLotteryUserInfoEntity$1;->this$0:Lcom/transsnet/downloader/lottery/LotteryTipView;

    invoke-static {v0}, Lcom/transsnet/downloader/lottery/LotteryTipView;->access$getLotteryUserInfoEntity$p(Lcom/transsnet/downloader/lottery/LotteryTipView;)Lcom/transsion/bean/lottery/LotteryUserInfoEntity;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/transsion/bean/lottery/LotteryUserInfoEntity;->getPriceItems()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_2

    :cond_4
    move v1, v4

    :goto_2
    if-lez v1, :cond_5

    sget v2, Lcom/transsnet/downloader/R$string;->lottery_unclaimed_rewards:I

    invoke-static {p1, v2}, Landroidx/core/content/b;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "getString(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Lcom/transsnet/downloader/lottery/LotteryTipView;->access$getBinding$p(Lcom/transsnet/downloader/lottery/LotteryTipView;)Lpy/i1;

    move-result-object v2

    iget-object v2, v2, Lpy/i1;->d:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_5
    invoke-static {v0}, Lcom/transsnet/downloader/lottery/LotteryTipView;->access$getBinding$p(Lcom/transsnet/downloader/lottery/LotteryTipView;)Lpy/i1;

    move-result-object v2

    iget-object v2, v2, Lpy/i1;->d:Landroid/widget/TextView;

    sget v5, Lcom/transsnet/downloader/R$string;->lottery_win_big_prizes:I

    invoke-static {p1, v5}, Landroidx/core/content/b;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    invoke-static {v0}, Lcom/transsnet/downloader/lottery/LotteryTipView;->access$getLotteryUserInfoEntity$p(Lcom/transsnet/downloader/lottery/LotteryTipView;)Lcom/transsion/bean/lottery/LotteryUserInfoEntity;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/transsion/bean/lottery/LotteryUserInfoEntity;->getInfo()Lcom/transsion/bean/lottery/LotteryUserInfoInfoBean;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/transsion/bean/lottery/LotteryUserInfoInfoBean;->getActivityId()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_6
    move-object p1, v3

    :goto_4
    const-string v2, "0"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {v0, v4}, Lcom/transsnet/downloader/lottery/LotteryTipView;->access$setCountryEnable$p(Lcom/transsnet/downloader/lottery/LotteryTipView;Z)V

    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_7
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    sget-object p1, Lok/c;->a:Lok/c;

    invoke-static {v0}, Lcom/transsnet/downloader/lottery/LotteryTipView;->access$getClassTag(Lcom/transsnet/downloader/lottery/LotteryTipView;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/transsnet/downloader/lottery/LotteryTipView;->access$getLotteryUserInfoEntity$p(Lcom/transsnet/downloader/lottery/LotteryTipView;)Lcom/transsion/bean/lottery/LotteryUserInfoEntity;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/transsion/bean/lottery/LotteryUserInfoEntity;->getInfo()Lcom/transsion/bean/lottery/LotteryUserInfoInfoBean;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/transsion/bean/lottery/LotteryUserInfoInfoBean;->getActivityId()Ljava/lang/String;

    move-result-object v3

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --> getLotteryUserInfoEntity() --> size = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " --> activityId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lok/c;->a(Ljava/lang/String;)V

    :cond_9
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
