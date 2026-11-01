.class final Lcom/transsion/shorttv/order/PayLoadingVM$retry$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/order/PayLoadingVM;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
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
    c = "com.transsion.shorttv.order.PayLoadingVM$retry$1"
    f = "PayLoadingVM.kt"
    l = {
        0x89
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $isDebug:Z

.field final synthetic $projectName:Ljava/lang/String;

.field final synthetic $startTime:J

.field final synthetic $tradingOrderId:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/transsion/shorttv/order/PayLoadingVM;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv/order/PayLoadingVM;JLjava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/shorttv/order/PayLoadingVM;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/shorttv/order/PayLoadingVM$retry$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/shorttv/order/PayLoadingVM$retry$1;->this$0:Lcom/transsion/shorttv/order/PayLoadingVM;

    iput-wide p2, p0, Lcom/transsion/shorttv/order/PayLoadingVM$retry$1;->$startTime:J

    iput-object p4, p0, Lcom/transsion/shorttv/order/PayLoadingVM$retry$1;->$tradingOrderId:Ljava/lang/String;

    iput-object p5, p0, Lcom/transsion/shorttv/order/PayLoadingVM$retry$1;->$projectName:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/transsion/shorttv/order/PayLoadingVM$retry$1;->$isDebug:Z

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

    new-instance p1, Lcom/transsion/shorttv/order/PayLoadingVM$retry$1;

    iget-object v1, p0, Lcom/transsion/shorttv/order/PayLoadingVM$retry$1;->this$0:Lcom/transsion/shorttv/order/PayLoadingVM;

    iget-wide v2, p0, Lcom/transsion/shorttv/order/PayLoadingVM$retry$1;->$startTime:J

    iget-object v4, p0, Lcom/transsion/shorttv/order/PayLoadingVM$retry$1;->$tradingOrderId:Ljava/lang/String;

    iget-object v5, p0, Lcom/transsion/shorttv/order/PayLoadingVM$retry$1;->$projectName:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/transsion/shorttv/order/PayLoadingVM$retry$1;->$isDebug:Z

    move-object v0, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/transsion/shorttv/order/PayLoadingVM$retry$1;-><init>(Lcom/transsion/shorttv/order/PayLoadingVM;JLjava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/order/PayLoadingVM$retry$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/order/PayLoadingVM$retry$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/shorttv/order/PayLoadingVM$retry$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/shorttv/order/PayLoadingVM$retry$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/shorttv/order/PayLoadingVM$retry$1;->label:I

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

    iget-object p1, p0, Lcom/transsion/shorttv/order/PayLoadingVM$retry$1;->this$0:Lcom/transsion/shorttv/order/PayLoadingVM;

    invoke-static {p1}, Lcom/transsion/shorttv/order/PayLoadingVM;->e(Lcom/transsion/shorttv/order/PayLoadingVM;)J

    move-result-wide v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/transsion/shorttv/order/PayLoadingVM$retry$1;->$startTime:J

    sub-long/2addr v5, v7

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x0

    invoke-static {v3, v4, v5, v6}, Lkotlin/ranges/RangesKt;->g(JJ)J

    move-result-wide v3

    invoke-static {p1, v3, v4}, Lcom/transsion/shorttv/order/PayLoadingVM;->h(Lcom/transsion/shorttv/order/PayLoadingVM;J)V

    iget-object p1, p0, Lcom/transsion/shorttv/order/PayLoadingVM$retry$1;->this$0:Lcom/transsion/shorttv/order/PayLoadingVM;

    invoke-static {p1}, Lcom/transsion/shorttv/order/PayLoadingVM;->c(Lcom/transsion/shorttv/order/PayLoadingVM;)J

    move-result-wide v3

    iput v2, p0, Lcom/transsion/shorttv/order/PayLoadingVM$retry$1;->label:I

    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/u0;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/transsion/shorttv/order/PayLoadingVM$retry$1;->this$0:Lcom/transsion/shorttv/order/PayLoadingVM;

    iget-object v0, p0, Lcom/transsion/shorttv/order/PayLoadingVM$retry$1;->$tradingOrderId:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/shorttv/order/PayLoadingVM$retry$1;->$projectName:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/transsion/shorttv/order/PayLoadingVM$retry$1;->$isDebug:Z

    invoke-virtual {p1, v0, v1, v2}, Lcom/transsion/shorttv/order/PayLoadingVM;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
