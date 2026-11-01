.class final Lcom/transsion/shorttv/order/PayLoadingVM$createPayOrderId$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/order/PayLoadingVM;->j(Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;)V
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
    c = "com.transsion.shorttv.order.PayLoadingVM$createPayOrderId$1"
    f = "PayLoadingVM.kt"
    l = {
        0x33
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $orderReq:Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/shorttv/order/PayLoadingVM;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;Lcom/transsion/shorttv/order/PayLoadingVM;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;",
            "Lcom/transsion/shorttv/order/PayLoadingVM;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/shorttv/order/PayLoadingVM$createPayOrderId$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/shorttv/order/PayLoadingVM$createPayOrderId$1;->$orderReq:Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;

    iput-object p2, p0, Lcom/transsion/shorttv/order/PayLoadingVM$createPayOrderId$1;->this$0:Lcom/transsion/shorttv/order/PayLoadingVM;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance v0, Lcom/transsion/shorttv/order/PayLoadingVM$createPayOrderId$1;

    iget-object v1, p0, Lcom/transsion/shorttv/order/PayLoadingVM$createPayOrderId$1;->$orderReq:Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;

    iget-object v2, p0, Lcom/transsion/shorttv/order/PayLoadingVM$createPayOrderId$1;->this$0:Lcom/transsion/shorttv/order/PayLoadingVM;

    invoke-direct {v0, v1, v2, p2}, Lcom/transsion/shorttv/order/PayLoadingVM$createPayOrderId$1;-><init>(Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;Lcom/transsion/shorttv/order/PayLoadingVM;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/transsion/shorttv/order/PayLoadingVM$createPayOrderId$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/order/PayLoadingVM$createPayOrderId$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/order/PayLoadingVM$createPayOrderId$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/shorttv/order/PayLoadingVM$createPayOrderId$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/shorttv/order/PayLoadingVM$createPayOrderId$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/shorttv/order/PayLoadingVM$createPayOrderId$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/transsion/shorttv/order/PayLoadingVM$createPayOrderId$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/shorttv/order/PayLoadingVM;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/shorttv/order/PayLoadingVM$createPayOrderId$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/n0;

    iget-object p1, p0, Lcom/transsion/shorttv/order/PayLoadingVM$createPayOrderId$1;->$orderReq:Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;

    iget-object v1, p0, Lcom/transsion/shorttv/order/PayLoadingVM$createPayOrderId$1;->this$0:Lcom/transsion/shorttv/order/PayLoadingVM;

    :try_start_1
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v3, Lcom/transsion/shorttv/order/g;->a:Lcom/transsion/shorttv/order/g;

    iput-object v1, p0, Lcom/transsion/shorttv/order/PayLoadingVM$createPayOrderId$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/transsion/shorttv/order/PayLoadingVM$createPayOrderId$1;->label:I

    invoke-virtual {v3, p1, p0}, Lcom/transsion/shorttv/order/g;->b(Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, v1

    :goto_0
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    invoke-static {v0}, Lcom/transsion/shorttv/order/PayLoadingVM;->b(Lcom/transsion/shorttv/order/PayLoadingVM;)Landroidx/lifecycle/b0;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    iget-object v0, p0, Lcom/transsion/shorttv/order/PayLoadingVM$createPayOrderId$1;->this$0:Lcom/transsion/shorttv/order/PayLoadingVM;

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_4

    :cond_3
    instance-of v1, p1, Lretrofit2/HttpException;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean;->Companion:Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean$a;

    check-cast p1, Lretrofit2/HttpException;

    invoke-virtual {v1, p1}, Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean$a;->a(Lretrofit2/HttpException;)Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean;

    move-result-object p1

    goto :goto_3

    :cond_4
    new-instance v1, Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v2, ""

    if-nez p1, :cond_5

    move-object p1, v2

    :cond_5
    const-string v3, "-1"

    invoke-direct {v1, p1, v3, v2}, Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v1

    :goto_3
    invoke-static {v0}, Lcom/transsion/shorttv/order/PayLoadingVM;->f(Lcom/transsion/shorttv/order/PayLoadingVM;)Landroidx/lifecycle/b0;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    :goto_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
