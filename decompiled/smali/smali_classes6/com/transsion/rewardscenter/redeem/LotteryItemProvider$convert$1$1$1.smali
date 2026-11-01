.class final Lcom/transsion/rewardscenter/redeem/LotteryItemProvider$convert$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/rewardscenter/redeem/LotteryItemProvider;->A(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/rewardscenter/redeem/e;)V
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
    c = "com.transsion.rewardscenter.redeem.LotteryItemProvider$convert$1$1$1"
    f = "LotteryItemProvider.kt"
    l = {
        0x4b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $id:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/transsion/rewardscenter/redeem/LotteryItemProvider;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/transsion/rewardscenter/redeem/LotteryItemProvider;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/transsion/rewardscenter/redeem/LotteryItemProvider;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/rewardscenter/redeem/LotteryItemProvider$convert$1$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/rewardscenter/redeem/LotteryItemProvider$convert$1$1$1;->$id:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/rewardscenter/redeem/LotteryItemProvider$convert$1$1$1;->this$0:Lcom/transsion/rewardscenter/redeem/LotteryItemProvider;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/rewardscenter/redeem/LotteryItemProvider;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/rewardscenter/redeem/LotteryItemProvider$convert$1$1$1;->g(Lcom/transsion/rewardscenter/redeem/LotteryItemProvider;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/transsion/rewardscenter/redeem/LotteryItemProvider;Lcom/transsion/rewardscenterapi/RedeemLotteryResult;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/rewardscenter/redeem/LotteryItemProvider$convert$1$1$1;->h(Lcom/transsion/rewardscenter/redeem/LotteryItemProvider;Lcom/transsion/rewardscenterapi/RedeemLotteryResult;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final g(Lcom/transsion/rewardscenter/redeem/LotteryItemProvider;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    invoke-static {p0}, Lcom/transsion/rewardscenter/redeem/LotteryItemProvider;->z(Lcom/transsion/rewardscenter/redeem/LotteryItemProvider;)Lwp/a;

    move-result-object p1

    invoke-virtual {p1}, Lwp/a;->c()Lcom/transsion/rewardscenter/model/RewardsCenterModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->o()Landroidx/lifecycle/b0;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    invoke-static {p2}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/transsion/rewardscenter/R$string;->redeem_failed_tips:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_1
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    const/4 p0, 0x0

    invoke-static {p0, p2}, Lcom/transsion/rewardscenter/utils/p;->a(ZLjava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final h(Lcom/transsion/rewardscenter/redeem/LotteryItemProvider;Lcom/transsion/rewardscenterapi/RedeemLotteryResult;)Lkotlin/Unit;
    .locals 1

    invoke-static {p0}, Lcom/transsion/rewardscenter/redeem/LotteryItemProvider;->z(Lcom/transsion/rewardscenter/redeem/LotteryItemProvider;)Lwp/a;

    move-result-object p1

    invoke-virtual {p1}, Lwp/a;->c()Lcom/transsion/rewardscenter/model/RewardsCenterModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->o()Landroidx/lifecycle/b0;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/transsion/rewardscenter/R$string;->redeem_success:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0, p1}, Lcom/transsion/rewardscenter/utils/p;->a(ZLjava/lang/String;)V

    invoke-static {p0}, Lcom/transsion/rewardscenter/redeem/LotteryItemProvider;->z(Lcom/transsion/rewardscenter/redeem/LotteryItemProvider;)Lwp/a;

    move-result-object p0

    invoke-virtual {p0}, Lwp/a;->c()Lcom/transsion/rewardscenter/model/RewardsCenterModel;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1, v0, p1}, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->j(Lcom/transsion/rewardscenter/model/RewardsCenterModel;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

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

    new-instance p1, Lcom/transsion/rewardscenter/redeem/LotteryItemProvider$convert$1$1$1;

    iget-object v0, p0, Lcom/transsion/rewardscenter/redeem/LotteryItemProvider$convert$1$1$1;->$id:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/rewardscenter/redeem/LotteryItemProvider$convert$1$1$1;->this$0:Lcom/transsion/rewardscenter/redeem/LotteryItemProvider;

    invoke-direct {p1, v0, v1, p2}, Lcom/transsion/rewardscenter/redeem/LotteryItemProvider$convert$1$1$1;-><init>(Ljava/lang/String;Lcom/transsion/rewardscenter/redeem/LotteryItemProvider;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/rewardscenter/redeem/LotteryItemProvider$convert$1$1$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/rewardscenter/redeem/LotteryItemProvider$convert$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/rewardscenter/redeem/LotteryItemProvider$convert$1$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/rewardscenter/redeem/LotteryItemProvider$convert$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/rewardscenter/redeem/LotteryItemProvider$convert$1$1$1;->label:I

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

    iget-object v1, p0, Lcom/transsion/rewardscenter/redeem/LotteryItemProvider$convert$1$1$1;->$id:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/rewardscenter/redeem/LotteryItemProvider$convert$1$1$1;->this$0:Lcom/transsion/rewardscenter/redeem/LotteryItemProvider;

    new-instance v4, Lcom/transsion/rewardscenter/redeem/b;

    invoke-direct {v4, v3}, Lcom/transsion/rewardscenter/redeem/b;-><init>(Lcom/transsion/rewardscenter/redeem/LotteryItemProvider;)V

    iget-object v3, p0, Lcom/transsion/rewardscenter/redeem/LotteryItemProvider$convert$1$1$1;->this$0:Lcom/transsion/rewardscenter/redeem/LotteryItemProvider;

    new-instance v5, Lcom/transsion/rewardscenter/redeem/c;

    invoke-direct {v5, v3}, Lcom/transsion/rewardscenter/redeem/c;-><init>(Lcom/transsion/rewardscenter/redeem/LotteryItemProvider;)V

    iput v2, p0, Lcom/transsion/rewardscenter/redeem/LotteryItemProvider$convert$1$1$1;->label:I

    invoke-virtual {p1, v1, v4, v5, p0}, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;->q(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
