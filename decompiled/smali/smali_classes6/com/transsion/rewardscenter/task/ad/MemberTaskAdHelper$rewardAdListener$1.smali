.class public final Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$rewardAdListener$1;
.super Ldi/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;-><init>(Landroid/content/Context;Lkotlinx/coroutines/n0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;


# direct methods
.method constructor <init>(Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$rewardAdListener$1;->d:Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;

    invoke-direct {p0}, Ldi/a;-><init>()V

    return-void
.end method


# virtual methods
.method public i(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 1

    invoke-super {p0, p1}, Ldi/a;->i(Lcom/hisavana/common/bean/TAdErrorCode;)V

    iget-object p1, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$rewardAdListener$1;->d:Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;

    invoke-static {p1}, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->E(Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;)Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/tn/lib/widget/R$string;->common_failed:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/transsion/rewardscenter/utils/p;->a(ZLjava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$rewardAdListener$1;->d:Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;

    invoke-static {p1}, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->L(Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;)Lkotlin/jvm/functions/Function1;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 7

    invoke-super {p0, p1}, Ldi/a;->j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    iget-object v0, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$rewardAdListener$1;->d:Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;

    invoke-static {v0}, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->F(Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;)Lkotlinx/coroutines/n0;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v4, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$rewardAdListener$1$onBiddingLoad$1;

    iget-object v0, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$rewardAdListener$1;->d:Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;

    const/4 v2, 0x0

    invoke-direct {v4, v0, p1, v2}, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$rewardAdListener$1$onBiddingLoad$1;-><init>(Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_0
    return-void
.end method

.method public o(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 3

    invoke-super {p0, p1}, Ldi/a;->o(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$rewardAdListener$1;->d:Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;

    new-instance v0, Lcom/transsion/rewardscenter/task/ad/v$b;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lcom/transsion/rewardscenter/task/ad/v$b;-><init>(Lcom/transsion/rewardscenter/task/ad/AdTaskState;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v1, 0x2

    invoke-static {p1, v0, v2, v1, v2}, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->A(Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;Lcom/transsion/rewardscenter/task/ad/v;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    invoke-static {p1}, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->L(Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;)Lkotlin/jvm/functions/Function1;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
