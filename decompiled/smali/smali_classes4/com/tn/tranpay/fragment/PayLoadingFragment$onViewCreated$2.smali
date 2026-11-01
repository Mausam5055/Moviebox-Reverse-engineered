.class final Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tn/tranpay/fragment/PayLoadingFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lkotlinx/coroutines/n0;",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/n0;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.tn.tranpay.fragment.PayLoadingFragment$onViewCreated$2"
    f = "PayLoadingFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/tn/tranpay/fragment/PayLoadingFragment;


# direct methods
.method constructor <init>(Lcom/tn/tranpay/fragment/PayLoadingFragment;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tn/tranpay/fragment/PayLoadingFragment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$2;->this$0:Lcom/tn/tranpay/fragment/PayLoadingFragment;

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

    new-instance p1, Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$2;

    iget-object v0, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$2;->this$0:Lcom/tn/tranpay/fragment/PayLoadingFragment;

    invoke-direct {p1, v0, p2}, Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$2;-><init>(Lcom/tn/tranpay/fragment/PayLoadingFragment;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$2;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    iget v0, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$2;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->n()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$2;->this$0:Lcom/tn/tranpay/fragment/PayLoadingFragment;

    invoke-static {p1}, Lcom/tn/tranpay/fragment/PayLoadingFragment;->a0(Lcom/tn/tranpay/fragment/PayLoadingFragment;)Lcom/tn/tranpay/viewmodel/PaymentViewModel;

    move-result-object p1

    iget-object v0, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$2;->this$0:Lcom/tn/tranpay/fragment/PayLoadingFragment;

    invoke-static {v0}, Lcom/tn/tranpay/fragment/PayLoadingFragment;->Z(Lcom/tn/tranpay/fragment/PayLoadingFragment;)Lcom/tn/tranpay/BillingParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tn/tranpay/BillingParams;->getTxnId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->P(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$2;->this$0:Lcom/tn/tranpay/fragment/PayLoadingFragment;

    invoke-static {p1}, Lcom/tn/tranpay/fragment/PayLoadingFragment;->a0(Lcom/tn/tranpay/fragment/PayLoadingFragment;)Lcom/tn/tranpay/viewmodel/PaymentViewModel;

    move-result-object p1

    iget-object v0, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$2;->this$0:Lcom/tn/tranpay/fragment/PayLoadingFragment;

    invoke-static {v0}, Lcom/tn/tranpay/fragment/PayLoadingFragment;->Z(Lcom/tn/tranpay/fragment/PayLoadingFragment;)Lcom/tn/tranpay/BillingParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->l(Lcom/tn/tranpay/BillingParams;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$2;->this$0:Lcom/tn/tranpay/fragment/PayLoadingFragment;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v2, -0x2

    const-string v3, "No network connection"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/tn/tranpay/fragment/PayLoadingFragment;->g0(Lcom/tn/tranpay/fragment/PayLoadingFragment;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
