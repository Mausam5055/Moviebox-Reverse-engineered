.class final Lcom/tn/tranpay/viewmodel/PaymentViewModel$query$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tn/tranpay/viewmodel/PaymentViewModel;->G(Ljava/lang/String;JJ)V
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
    c = "com.tn.tranpay.viewmodel.PaymentViewModel$query$1"
    f = "PaymentViewModel.kt"
    l = {
        0x18d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $maxTotalTimeMills:J

.field final synthetic $retryIntervalMills:J

.field final synthetic $txnId:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/tn/tranpay/viewmodel/PaymentViewModel;


# direct methods
.method constructor <init>(JJLcom/tn/tranpay/viewmodel/PaymentViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lcom/tn/tranpay/viewmodel/PaymentViewModel;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/tn/tranpay/viewmodel/PaymentViewModel$query$1;",
            ">;)V"
        }
    .end annotation

    iput-wide p1, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$query$1;->$retryIntervalMills:J

    iput-wide p3, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$query$1;->$maxTotalTimeMills:J

    iput-object p5, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$query$1;->this$0:Lcom/tn/tranpay/viewmodel/PaymentViewModel;

    iput-object p6, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$query$1;->$txnId:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8
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

    new-instance p1, Lcom/tn/tranpay/viewmodel/PaymentViewModel$query$1;

    iget-wide v1, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$query$1;->$retryIntervalMills:J

    iget-wide v3, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$query$1;->$maxTotalTimeMills:J

    iget-object v5, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$query$1;->this$0:Lcom/tn/tranpay/viewmodel/PaymentViewModel;

    iget-object v6, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$query$1;->$txnId:Ljava/lang/String;

    move-object v0, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/tn/tranpay/viewmodel/PaymentViewModel$query$1;-><init>(JJLcom/tn/tranpay/viewmodel/PaymentViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/tn/tranpay/viewmodel/PaymentViewModel$query$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/tn/tranpay/viewmodel/PaymentViewModel$query$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/tn/tranpay/viewmodel/PaymentViewModel$query$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/tn/tranpay/viewmodel/PaymentViewModel$query$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$query$1;->label:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object v5, Lcom/tn/tranpay/helper/PayUtils;->a:Lcom/tn/tranpay/helper/PayUtils;

    iget-wide v6, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$query$1;->$retryIntervalMills:J

    iget-wide v8, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$query$1;->$maxTotalTimeMills:J

    new-instance v10, Lcom/tn/tranpay/viewmodel/PaymentViewModel$query$1$1;

    iget-object p1, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$query$1;->this$0:Lcom/tn/tranpay/viewmodel/PaymentViewModel;

    iget-object v1, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$query$1;->$txnId:Ljava/lang/String;

    invoke-direct {v10, p1, v1, v4}, Lcom/tn/tranpay/viewmodel/PaymentViewModel$query$1$1;-><init>(Lcom/tn/tranpay/viewmodel/PaymentViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput v2, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$query$1;->label:I

    move-object v11, p0

    invoke-virtual/range {v5 .. v11}, Lcom/tn/tranpay/helper/PayUtils;->m(JJLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p1, v0, :cond_2

    return-object v0

    :goto_0
    sget-object v0, Lai/a;->a:Lai/a;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QueryOrder failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v4, v3, v4}, Lai/a;->e(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$query$1;->this$0:Lcom/tn/tranpay/viewmodel/PaymentViewModel;

    invoke-virtual {p1}, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->z()Landroidx/lifecycle/b0;

    move-result-object p1

    new-instance v0, Lyh/b;

    sget-object v1, Lcom/tn/tranpay/bean/QueryStatus;->ERROR:Lcom/tn/tranpay/bean/QueryStatus;

    invoke-direct {v0, v4, v1}, Lyh/b;-><init>(Lcom/tn/tranpay/bean/QueryOrderResultContent;Lcom/tn/tranpay/bean/QueryStatus;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    goto :goto_2

    :goto_1
    sget-object v0, Lai/a;->a:Lai/a;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QueryOrder timed out: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v4, v3, v4}, Lai/a;->g(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$query$1;->this$0:Lcom/tn/tranpay/viewmodel/PaymentViewModel;

    invoke-virtual {p1}, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->z()Landroidx/lifecycle/b0;

    move-result-object p1

    new-instance v0, Lyh/b;

    sget-object v1, Lcom/tn/tranpay/bean/QueryStatus;->PROCESSING:Lcom/tn/tranpay/bean/QueryStatus;

    invoke-direct {v0, v4, v1}, Lyh/b;-><init>(Lcom/tn/tranpay/bean/QueryOrderResultContent;Lcom/tn/tranpay/bean/QueryStatus;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    goto :goto_2

    :catch_2
    sget-object p1, Lai/a;->a:Lai/a;

    const-string v0, "Query operation was cancelled"

    invoke-static {p1, v0, v4, v3, v4}, Lai/a;->g(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$query$1;->this$0:Lcom/tn/tranpay/viewmodel/PaymentViewModel;

    invoke-virtual {p1}, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->z()Landroidx/lifecycle/b0;

    move-result-object p1

    new-instance v0, Lyh/b;

    sget-object v1, Lcom/tn/tranpay/bean/QueryStatus;->CANCELLED:Lcom/tn/tranpay/bean/QueryStatus;

    invoke-direct {v0, v4, v1}, Lyh/b;-><init>(Lcom/tn/tranpay/bean/QueryOrderResultContent;Lcom/tn/tranpay/bean/QueryStatus;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    :cond_2
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
