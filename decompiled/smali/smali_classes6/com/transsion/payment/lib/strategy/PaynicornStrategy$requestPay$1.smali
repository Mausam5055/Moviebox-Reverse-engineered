.class final Lcom/transsion/payment/lib/strategy/PaynicornStrategy$requestPay$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/payment/lib/strategy/PaynicornStrategy;->b(Landroidx/appcompat/app/AppCompatActivity;Lcom/transsion/payment/lib/bean/CreateOrderReq;ZLcom/transsion/payment/lib/b;Lkotlin/jvm/functions/Function1;)V
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
    c = "com.transsion.payment.lib.strategy.PaynicornStrategy$requestPay$1"
    f = "PaynicornStrategy.kt"
    l = {
        0x60
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $activity:Landroidx/appcompat/app/AppCompatActivity;

.field final synthetic $createOrderCallback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $orderRequest:Lcom/transsion/payment/lib/bean/CreateOrderReq;

.field final synthetic $payCallback:Lcom/transsion/payment/lib/b;

.field label:I

.field final synthetic this$0:Lcom/transsion/payment/lib/strategy/PaynicornStrategy;


# direct methods
.method constructor <init>(Lcom/transsion/payment/lib/strategy/PaynicornStrategy;Lcom/transsion/payment/lib/bean/CreateOrderReq;Landroidx/appcompat/app/AppCompatActivity;Lcom/transsion/payment/lib/b;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/payment/lib/strategy/PaynicornStrategy;",
            "Lcom/transsion/payment/lib/bean/CreateOrderReq;",
            "Landroidx/appcompat/app/AppCompatActivity;",
            "Lcom/transsion/payment/lib/b;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/payment/lib/strategy/PaynicornStrategy$requestPay$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/payment/lib/strategy/PaynicornStrategy$requestPay$1;->this$0:Lcom/transsion/payment/lib/strategy/PaynicornStrategy;

    iput-object p2, p0, Lcom/transsion/payment/lib/strategy/PaynicornStrategy$requestPay$1;->$orderRequest:Lcom/transsion/payment/lib/bean/CreateOrderReq;

    iput-object p3, p0, Lcom/transsion/payment/lib/strategy/PaynicornStrategy$requestPay$1;->$activity:Landroidx/appcompat/app/AppCompatActivity;

    iput-object p4, p0, Lcom/transsion/payment/lib/strategy/PaynicornStrategy$requestPay$1;->$payCallback:Lcom/transsion/payment/lib/b;

    iput-object p5, p0, Lcom/transsion/payment/lib/strategy/PaynicornStrategy$requestPay$1;->$createOrderCallback:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance p1, Lcom/transsion/payment/lib/strategy/PaynicornStrategy$requestPay$1;

    iget-object v1, p0, Lcom/transsion/payment/lib/strategy/PaynicornStrategy$requestPay$1;->this$0:Lcom/transsion/payment/lib/strategy/PaynicornStrategy;

    iget-object v2, p0, Lcom/transsion/payment/lib/strategy/PaynicornStrategy$requestPay$1;->$orderRequest:Lcom/transsion/payment/lib/bean/CreateOrderReq;

    iget-object v3, p0, Lcom/transsion/payment/lib/strategy/PaynicornStrategy$requestPay$1;->$activity:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v4, p0, Lcom/transsion/payment/lib/strategy/PaynicornStrategy$requestPay$1;->$payCallback:Lcom/transsion/payment/lib/b;

    iget-object v5, p0, Lcom/transsion/payment/lib/strategy/PaynicornStrategy$requestPay$1;->$createOrderCallback:Lkotlin/jvm/functions/Function1;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/transsion/payment/lib/strategy/PaynicornStrategy$requestPay$1;-><init>(Lcom/transsion/payment/lib/strategy/PaynicornStrategy;Lcom/transsion/payment/lib/bean/CreateOrderReq;Landroidx/appcompat/app/AppCompatActivity;Lcom/transsion/payment/lib/b;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/payment/lib/strategy/PaynicornStrategy$requestPay$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/payment/lib/strategy/PaynicornStrategy$requestPay$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/payment/lib/strategy/PaynicornStrategy$requestPay$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/payment/lib/strategy/PaynicornStrategy$requestPay$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/payment/lib/strategy/PaynicornStrategy$requestPay$1;->label:I

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

    iget-object p1, p0, Lcom/transsion/payment/lib/strategy/PaynicornStrategy$requestPay$1;->this$0:Lcom/transsion/payment/lib/strategy/PaynicornStrategy;

    invoke-static {p1}, Lcom/transsion/payment/lib/strategy/PaynicornStrategy;->d(Lcom/transsion/payment/lib/strategy/PaynicornStrategy;)Lcom/transsion/payment/lib/PaymentService;

    move-result-object v3

    iget-object p1, p0, Lcom/transsion/payment/lib/strategy/PaynicornStrategy$requestPay$1;->$orderRequest:Lcom/transsion/payment/lib/bean/CreateOrderReq;

    invoke-virtual {p1}, Lcom/transsion/payment/lib/bean/CreateOrderReq;->getProductId()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/transsion/payment/lib/strategy/PaynicornStrategy$requestPay$1;->$orderRequest:Lcom/transsion/payment/lib/bean/CreateOrderReq;

    invoke-virtual {p1}, Lcom/transsion/payment/lib/bean/CreateOrderReq;->getPayAmount()Ljava/lang/Double;

    move-result-object v5

    iget-object p1, p0, Lcom/transsion/payment/lib/strategy/PaynicornStrategy$requestPay$1;->$orderRequest:Lcom/transsion/payment/lib/bean/CreateOrderReq;

    invoke-virtual {p1}, Lcom/transsion/payment/lib/bean/CreateOrderReq;->getCpFrontPage()Ljava/lang/String;

    move-result-object v6

    iget-object p1, p0, Lcom/transsion/payment/lib/strategy/PaynicornStrategy$requestPay$1;->$orderRequest:Lcom/transsion/payment/lib/bean/CreateOrderReq;

    invoke-virtual {p1}, Lcom/transsion/payment/lib/bean/CreateOrderReq;->getExtStrJson()Ljava/util/Map;

    move-result-object v7

    iput v2, p0, Lcom/transsion/payment/lib/strategy/PaynicornStrategy$requestPay$1;->label:I

    move-object v8, p0

    invoke-virtual/range {v3 .. v8}, Lcom/transsion/payment/lib/PaymentService;->i(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, v0

    :goto_1
    const-string v2, "0"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/transsion/payment/lib/strategy/PaynicornStrategy$requestPay$1;->this$0:Lcom/transsion/payment/lib/strategy/PaynicornStrategy;

    iget-object v1, p0, Lcom/transsion/payment/lib/strategy/PaynicornStrategy$requestPay$1;->$activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    check-cast v2, Lcom/transsion/payment/lib/bean/CreateOrderRes;

    iget-object v3, p0, Lcom/transsion/payment/lib/strategy/PaynicornStrategy$requestPay$1;->$payCallback:Lcom/transsion/payment/lib/b;

    invoke-static {v0, v1, v2, v3}, Lcom/transsion/payment/lib/strategy/PaynicornStrategy;->f(Lcom/transsion/payment/lib/strategy/PaynicornStrategy;Landroidx/appcompat/app/AppCompatActivity;Lcom/transsion/payment/lib/bean/CreateOrderRes;Lcom/transsion/payment/lib/b;)V

    iget-object v0, p0, Lcom/transsion/payment/lib/strategy/PaynicornStrategy$requestPay$1;->$createOrderCallback:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/payment/lib/bean/CreateOrderRes;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/transsion/payment/lib/bean/CreateOrderRes;->getPrePayInfo()Lcom/transsion/payment/lib/bean/PrePayInfo;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/transsion/payment/lib/bean/PrePayInfo;->getOrderId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_5

    :cond_4
    const-string p1, ""

    :cond_5
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lcom/transsion/payment/lib/strategy/PaynicornStrategy$requestPay$1;->$payCallback:Lcom/transsion/payment/lib/b;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_2

    :cond_7
    move-object v2, v0

    :goto_2
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getMsg()Ljava/lang/String;

    move-result-object v0

    :cond_8
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lcom/transsion/payment/lib/b$a;->a(Lcom/transsion/payment/lib/b;Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)V

    :cond_9
    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
