.class final Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog$orderCheck4Paynicorn$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;->I0()V
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
    c = "com.transsion.payment.lib.dialog.PaynicornDuringThePaymentDialog$orderCheck4Paynicorn$1"
    f = "PaynicornDuringThePaymentDialog.kt"
    l = {
        0xbd
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;


# direct methods
.method constructor <init>(Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog$orderCheck4Paynicorn$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog$orderCheck4Paynicorn$1;->this$0:Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;

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

    new-instance p1, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog$orderCheck4Paynicorn$1;

    iget-object v0, p0, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog$orderCheck4Paynicorn$1;->this$0:Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;

    invoke-direct {p1, v0, p2}, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog$orderCheck4Paynicorn$1;-><init>(Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog$orderCheck4Paynicorn$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog$orderCheck4Paynicorn$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog$orderCheck4Paynicorn$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog$orderCheck4Paynicorn$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog$orderCheck4Paynicorn$1;->label:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog$orderCheck4Paynicorn$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_8

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog$orderCheck4Paynicorn$1;->this$0:Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;

    :try_start_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;->x0(Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;)Lcom/transsion/payment/lib/PaymentService;

    move-result-object v1

    invoke-static {p1}, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;->w0(Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;)Lcom/transsion/payment/lib/bean/CreateOrderRes;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/transsion/payment/lib/bean/CreateOrderRes;->getTradingOrderId()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_2
    move-object v6, v5

    :goto_0
    iput-object p1, p0, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog$orderCheck4Paynicorn$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog$orderCheck4Paynicorn$1;->label:I

    invoke-virtual {v1, v6, p0}, Lcom/transsion/payment/lib/PaymentService;->e(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_3

    return-object v0

    :cond_3
    move-object v0, p1

    move-object p1, v1

    :goto_1
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    move-object v1, v5

    :goto_2
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v6, 0x30

    if-eq v2, v6, :cond_b

    const v6, 0xc934

    if-eq v2, v6, :cond_7

    const v6, 0xccf5

    if-eq v2, v6, :cond_5

    goto/16 :goto_3

    :cond_5
    const-string v2, "500"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_3

    :cond_6
    const-string p1, "orderCheck4Paynicorn() --> 500 --> \u670d\u52a1\u5668\u5185\u90e8\u9519\u8bef"

    const/16 v1, 0x3ed

    invoke-static {v0, v1, p1}, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;->A0(Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;ILjava/lang/String;)V

    goto/16 :goto_7

    :cond_7
    const-string v2, "400"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getReason()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PAY_PROCESSING"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string p1, "orderCheck4Paynicorn() --> code = 400 -- \u652f\u4ed8\u672a\u5b8c\u6210"

    const/16 v1, 0x3eb

    invoke-static {v0, p1, v1}, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;->D0(Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;Ljava/lang/String;I)V

    goto/16 :goto_7

    :cond_9
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getReason()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PAY_FAILED"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string p1, "orderCheck4Paynicorn() --> 400 --> \u652f\u4ed8\u5931\u8d25: \u5c31\u662f\u4ed8\u94b1\u4e86\uff0c\u4f46\u662f\u7b2c\u4e09\u65b9\u6e20\u9053\u6ca1\u6709\u6210\u529f"

    const/16 v1, 0x3ec

    invoke-static {v0, v1, p1}, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;->A0(Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;ILjava/lang/String;)V

    goto :goto_7

    :cond_a
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getReason()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "orderCheck4Paynicorn() --> code = 400 -- reason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v4, v3, v5}, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;->R0(Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;Ljava/lang/String;IILjava/lang/Object;)V

    goto :goto_7

    :cond_b
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_3

    :cond_c
    invoke-static {v0, p1}, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;->B0(Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;Lcom/tn/lib/net/bean/BaseDto;)V

    goto :goto_7

    :cond_d
    :goto_3
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_e
    move-object v1, v5

    :goto_4
    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getMsg()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_f
    move-object v2, v5

    :goto_5
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getReason()Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    :cond_10
    move-object p1, v5

    :goto_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "orderCheck4Paynicorn() --> code = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -- msg = "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -- reason = "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v4, v3, v5}, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;->R0(Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;Ljava/lang/String;IILjava/lang/Object;)V

    :goto_7
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_9

    :goto_8
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_9
    iget-object v0, p0, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog$orderCheck4Paynicorn$1;->this$0:Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_11

    goto :goto_a

    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "orderCheck4Paynicorn() --> getOrElse() --> it = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v4, v3, v5}, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;->R0(Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;Ljava/lang/String;IILjava/lang/Object;)V

    :goto_a
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
