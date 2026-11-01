.class final Lcom/transsion/shorttv/order/PayLoadingVM$checkPayOrderId$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/order/PayLoadingVM;->i(Ljava/lang/String;Ljava/lang/String;Z)V
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
    c = "com.transsion.shorttv.order.PayLoadingVM$checkPayOrderId$1"
    f = "PayLoadingVM.kt"
    l = {
        0x47
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $isDebug:Z

.field final synthetic $projectName:Ljava/lang/String;

.field final synthetic $tradingOrderId:Ljava/lang/String;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field Z$0:Z

.field label:I

.field final synthetic this$0:Lcom/transsion/shorttv/order/PayLoadingVM;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLcom/transsion/shorttv/order/PayLoadingVM;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/transsion/shorttv/order/PayLoadingVM;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/shorttv/order/PayLoadingVM$checkPayOrderId$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/shorttv/order/PayLoadingVM$checkPayOrderId$1;->$tradingOrderId:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/shorttv/order/PayLoadingVM$checkPayOrderId$1;->$projectName:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/transsion/shorttv/order/PayLoadingVM$checkPayOrderId$1;->$isDebug:Z

    iput-object p4, p0, Lcom/transsion/shorttv/order/PayLoadingVM$checkPayOrderId$1;->this$0:Lcom/transsion/shorttv/order/PayLoadingVM;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance v6, Lcom/transsion/shorttv/order/PayLoadingVM$checkPayOrderId$1;

    iget-object v1, p0, Lcom/transsion/shorttv/order/PayLoadingVM$checkPayOrderId$1;->$tradingOrderId:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/shorttv/order/PayLoadingVM$checkPayOrderId$1;->$projectName:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/transsion/shorttv/order/PayLoadingVM$checkPayOrderId$1;->$isDebug:Z

    iget-object v4, p0, Lcom/transsion/shorttv/order/PayLoadingVM$checkPayOrderId$1;->this$0:Lcom/transsion/shorttv/order/PayLoadingVM;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/transsion/shorttv/order/PayLoadingVM$checkPayOrderId$1;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/transsion/shorttv/order/PayLoadingVM;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v6, Lcom/transsion/shorttv/order/PayLoadingVM$checkPayOrderId$1;->L$0:Ljava/lang/Object;

    return-object v6
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/order/PayLoadingVM$checkPayOrderId$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/order/PayLoadingVM$checkPayOrderId$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/shorttv/order/PayLoadingVM$checkPayOrderId$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/shorttv/order/PayLoadingVM$checkPayOrderId$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/shorttv/order/PayLoadingVM$checkPayOrderId$1;->label:I

    const/4 v2, 0x1

    const-string v3, ""

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-boolean v0, p0, Lcom/transsion/shorttv/order/PayLoadingVM$checkPayOrderId$1;->Z$0:Z

    iget-object v1, p0, Lcom/transsion/shorttv/order/PayLoadingVM$checkPayOrderId$1;->L$2:Ljava/lang/Object;

    check-cast v1, Lcom/transsion/shorttv/order/PayLoadingVM;

    iget-object v4, p0, Lcom/transsion/shorttv/order/PayLoadingVM$checkPayOrderId$1;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/transsion/shorttv/order/PayLoadingVM$checkPayOrderId$1;->L$0:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v9, v0

    move-object v8, v4

    move-object v7, v5

    :goto_0
    move-object v4, v1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_12

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/shorttv/order/PayLoadingVM$checkPayOrderId$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/n0;

    iget-object v5, p0, Lcom/transsion/shorttv/order/PayLoadingVM$checkPayOrderId$1;->$tradingOrderId:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/shorttv/order/PayLoadingVM$checkPayOrderId$1;->$projectName:Ljava/lang/String;

    iget-boolean p1, p0, Lcom/transsion/shorttv/order/PayLoadingVM$checkPayOrderId$1;->$isDebug:Z

    iget-object v1, p0, Lcom/transsion/shorttv/order/PayLoadingVM$checkPayOrderId$1;->this$0:Lcom/transsion/shorttv/order/PayLoadingVM;

    :try_start_1
    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v6, Lcom/transsion/shorttv/order/g;->a:Lcom/transsion/shorttv/order/g;

    iput-object v5, p0, Lcom/transsion/shorttv/order/PayLoadingVM$checkPayOrderId$1;->L$0:Ljava/lang/Object;

    iput-object v4, p0, Lcom/transsion/shorttv/order/PayLoadingVM$checkPayOrderId$1;->L$1:Ljava/lang/Object;

    iput-object v1, p0, Lcom/transsion/shorttv/order/PayLoadingVM$checkPayOrderId$1;->L$2:Ljava/lang/Object;

    iput-boolean p1, p0, Lcom/transsion/shorttv/order/PayLoadingVM$checkPayOrderId$1;->Z$0:Z

    iput v2, p0, Lcom/transsion/shorttv/order/PayLoadingVM$checkPayOrderId$1;->label:I

    invoke-virtual {v6, v5, v4, p1, p0}, Lcom/transsion/shorttv/order/g;->c(Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_2

    return-object v0

    :cond_2
    move v9, p1

    move-object v8, v4

    move-object v7, v5

    move-object p1, v6

    goto :goto_0

    :goto_1
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;->getOrderStatus()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_11

    :goto_3
    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v2, :cond_11

    :goto_4
    if-nez v0, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_7

    goto/16 :goto_c

    :cond_7
    :goto_5
    if-nez v0, :cond_8

    goto :goto_6

    :cond_8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_9

    invoke-static {v4}, Lcom/transsion/shorttv/order/PayLoadingVM;->d(Lcom/transsion/shorttv/order/PayLoadingVM;)Landroidx/lifecycle/b0;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    goto/16 :goto_11

    :cond_9
    :goto_6
    if-nez v0, :cond_a

    goto :goto_7

    :cond_a
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_c

    :goto_7
    if-nez v0, :cond_b

    goto/16 :goto_11

    :cond_b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_16

    :cond_c
    invoke-static {v4}, Lcom/transsion/shorttv/order/PayLoadingVM;->f(Lcom/transsion/shorttv/order/PayLoadingVM;)Landroidx/lifecycle/b0;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;->getOrderStatus()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_d

    goto :goto_8

    :cond_d
    move-object v6, v1

    goto :goto_9

    :cond_e
    :goto_8
    move-object v6, v3

    :goto_9
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;->getDescription()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_f

    goto :goto_a

    :cond_f
    move-object v5, p1

    goto :goto_b

    :cond_10
    :goto_a
    move-object v5, v3

    :goto_b
    new-instance p1, Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean;

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    goto :goto_11

    :cond_11
    :goto_c
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;->getOrderStatus()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12

    goto :goto_d

    :cond_12
    move-object v5, v0

    goto :goto_e

    :cond_13
    :goto_d
    move-object v5, v3

    :goto_e
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;->getDescription()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_14

    goto :goto_f

    :cond_14
    move-object v6, p1

    goto :goto_10

    :cond_15
    :goto_f
    move-object v6, v3

    :goto_10
    invoke-static/range {v4 .. v9}, Lcom/transsion/shorttv/order/PayLoadingVM;->g(Lcom/transsion/shorttv/order/PayLoadingVM;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_16
    :goto_11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_13

    :goto_12
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_13
    iget-object v0, p0, Lcom/transsion/shorttv/order/PayLoadingVM$checkPayOrderId$1;->this$0:Lcom/transsion/shorttv/order/PayLoadingVM;

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_17

    goto :goto_15

    :cond_17
    instance-of v1, p1, Lretrofit2/HttpException;

    if-eqz v1, :cond_18

    sget-object v1, Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean;->Companion:Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean$a;

    check-cast p1, Lretrofit2/HttpException;

    invoke-virtual {v1, p1}, Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean$a;->a(Lretrofit2/HttpException;)Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean;

    move-result-object p1

    goto :goto_14

    :cond_18
    new-instance v1, Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_19

    move-object p1, v3

    :cond_19
    const-string v2, "-1"

    invoke-direct {v1, p1, v2, v3}, Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v1

    :goto_14
    invoke-static {v0}, Lcom/transsion/shorttv/order/PayLoadingVM;->f(Lcom/transsion/shorttv/order/PayLoadingVM;)Landroidx/lifecycle/b0;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    :goto_15
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
