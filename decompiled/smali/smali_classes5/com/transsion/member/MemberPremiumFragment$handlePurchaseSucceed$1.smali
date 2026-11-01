.class final Lcom/transsion/member/MemberPremiumFragment$handlePurchaseSucceed$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/member/MemberPremiumFragment;->y0()V
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
    c = "com.transsion.member.MemberPremiumFragment$handlePurchaseSucceed$1"
    f = "MemberPremiumFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $buttonTitle:Ljava/lang/String;

.field final synthetic $title:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/transsion/member/MemberPremiumFragment;


# direct methods
.method constructor <init>(Lcom/transsion/member/MemberPremiumFragment;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/member/MemberPremiumFragment;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/member/MemberPremiumFragment$handlePurchaseSucceed$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/member/MemberPremiumFragment$handlePurchaseSucceed$1;->this$0:Lcom/transsion/member/MemberPremiumFragment;

    iput-object p2, p0, Lcom/transsion/member/MemberPremiumFragment$handlePurchaseSucceed$1;->$title:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/member/MemberPremiumFragment$handlePurchaseSucceed$1;->$buttonTitle:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance p1, Lcom/transsion/member/MemberPremiumFragment$handlePurchaseSucceed$1;

    iget-object v0, p0, Lcom/transsion/member/MemberPremiumFragment$handlePurchaseSucceed$1;->this$0:Lcom/transsion/member/MemberPremiumFragment;

    iget-object v1, p0, Lcom/transsion/member/MemberPremiumFragment$handlePurchaseSucceed$1;->$title:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/member/MemberPremiumFragment$handlePurchaseSucceed$1;->$buttonTitle:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/transsion/member/MemberPremiumFragment$handlePurchaseSucceed$1;-><init>(Lcom/transsion/member/MemberPremiumFragment;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/member/MemberPremiumFragment$handlePurchaseSucceed$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/member/MemberPremiumFragment$handlePurchaseSucceed$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/member/MemberPremiumFragment$handlePurchaseSucceed$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/member/MemberPremiumFragment$handlePurchaseSucceed$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    iget v0, p0, Lcom/transsion/member/MemberPremiumFragment$handlePurchaseSucceed$1;->label:I

    if-nez v0, :cond_6

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/member/MemberPremiumFragment$handlePurchaseSucceed$1;->this$0:Lcom/transsion/member/MemberPremiumFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/a;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/transsion/member/MemberPremiumFragment$handlePurchaseSucceed$1;->this$0:Lcom/transsion/member/MemberPremiumFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lcom/transsion/memberapi/IMemberApi;

    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/memberapi/IMemberApi;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/transsion/member/MemberPremiumFragment$handlePurchaseSucceed$1;->$title:Ljava/lang/String;

    const-string v2, ""

    if-nez v1, :cond_2

    move-object v1, v2

    :cond_2
    iget-object v3, p0, Lcom/transsion/member/MemberPremiumFragment$handlePurchaseSucceed$1;->$buttonTitle:Ljava/lang/String;

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    move-object v2, v3

    :goto_0
    new-instance v3, Lcom/transsion/member/MemberPremiumFragment$handlePurchaseSucceed$1$a;

    invoke-direct {v3, p1}, Lcom/transsion/member/MemberPremiumFragment$handlePurchaseSucceed$1$a;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/transsion/memberapi/IMemberApi;->y(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lzm/k;)V

    :cond_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_5
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
