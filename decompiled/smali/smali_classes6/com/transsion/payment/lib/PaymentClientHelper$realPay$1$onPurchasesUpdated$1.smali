.class final Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1$onPurchasesUpdated$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1;->a(Lcom/tn/tranpay/b;Lcom/tn/tranpay/c;)V
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
    c = "com.transsion.payment.lib.PaymentClientHelper$realPay$1$onPurchasesUpdated$1"
    f = "PaymentClientHelper.kt"
    l = {
        0x7e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $orderRequest:Lcom/transsion/payment/lib/bean/CreateOrderRes;

.field final synthetic $payCallback:Lcom/transsion/payment/lib/b;

.field final synthetic $paymentService:Lcom/transsion/payment/lib/PaymentService;

.field label:I


# direct methods
.method constructor <init>(Lcom/transsion/payment/lib/b;Lcom/transsion/payment/lib/bean/CreateOrderRes;Lcom/transsion/payment/lib/PaymentService;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/payment/lib/b;",
            "Lcom/transsion/payment/lib/bean/CreateOrderRes;",
            "Lcom/transsion/payment/lib/PaymentService;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1$onPurchasesUpdated$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1$onPurchasesUpdated$1;->$payCallback:Lcom/transsion/payment/lib/b;

    iput-object p2, p0, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1$onPurchasesUpdated$1;->$orderRequest:Lcom/transsion/payment/lib/bean/CreateOrderRes;

    iput-object p3, p0, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1$onPurchasesUpdated$1;->$paymentService:Lcom/transsion/payment/lib/PaymentService;

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

    new-instance p1, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1$onPurchasesUpdated$1;

    iget-object v0, p0, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1$onPurchasesUpdated$1;->$payCallback:Lcom/transsion/payment/lib/b;

    iget-object v1, p0, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1$onPurchasesUpdated$1;->$orderRequest:Lcom/transsion/payment/lib/bean/CreateOrderRes;

    iget-object v2, p0, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1$onPurchasesUpdated$1;->$paymentService:Lcom/transsion/payment/lib/PaymentService;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1$onPurchasesUpdated$1;-><init>(Lcom/transsion/payment/lib/b;Lcom/transsion/payment/lib/bean/CreateOrderRes;Lcom/transsion/payment/lib/PaymentService;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1$onPurchasesUpdated$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1$onPurchasesUpdated$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1$onPurchasesUpdated$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1$onPurchasesUpdated$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1$onPurchasesUpdated$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object v1, Lcom/transsion/payment/lib/PayUtils;->a:Lcom/transsion/payment/lib/PayUtils;

    new-instance v5, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1$onPurchasesUpdated$1$1;

    iget-object p1, p0, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1$onPurchasesUpdated$1;->$paymentService:Lcom/transsion/payment/lib/PaymentService;

    iget-object v3, p0, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1$onPurchasesUpdated$1;->$orderRequest:Lcom/transsion/payment/lib/bean/CreateOrderRes;

    iget-object v4, p0, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1$onPurchasesUpdated$1;->$payCallback:Lcom/transsion/payment/lib/b;

    const/4 v6, 0x0

    invoke-direct {v5, p1, v3, v4, v6}, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1$onPurchasesUpdated$1$1;-><init>(Lcom/transsion/payment/lib/PaymentService;Lcom/transsion/payment/lib/bean/CreateOrderRes;Lcom/transsion/payment/lib/b;Lkotlin/coroutines/Continuation;)V

    iput v2, p0, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1$onPurchasesUpdated$1;->label:I

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    move-object v6, p0

    invoke-static/range {v1 .. v8}, Lcom/transsion/payment/lib/PayUtils;->b(Lcom/transsion/payment/lib/PayUtils;JILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p1, v0, :cond_2

    return-object v0

    :goto_0
    sget-object v0, Lcom/transsion/payment/lib/d;->a:Lcom/transsion/payment/lib/d;

    sget-object v1, Lcom/transsion/payment/lib/PaymentClientHelper;->a:Lcom/transsion/payment/lib/PaymentClientHelper;

    invoke-static {v1}, Lcom/transsion/payment/lib/PaymentClientHelper;->a(Lcom/transsion/payment/lib/PaymentClientHelper;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> realPay() --> handlePurchase \u53d1\u8d27\u8fdb\u884c\u4e2ding --> e = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/payment/lib/d;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1$onPurchasesUpdated$1;->$payCallback:Lcom/transsion/payment/lib/b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/transsion/payment/lib/b;->b(Z)V

    iget-object v0, p0, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1$onPurchasesUpdated$1;->$payCallback:Lcom/transsion/payment/lib/b;

    const/16 v2, -0x1e

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1$onPurchasesUpdated$1;->$orderRequest:Lcom/transsion/payment/lib/bean/CreateOrderRes;

    invoke-virtual {v3}, Lcom/transsion/payment/lib/bean/CreateOrderRes;->getTradingOrderId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, p1, v1, v3}, Lcom/transsion/payment/lib/b;->a(Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/String;)V

    :cond_2
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
