.class public final Lcom/tn/tranpay/viewmodel/PaymentViewModel;
.super Landroidx/lifecycle/t0;


# instance fields
.field private final a:Lkotlin/Lazy;

.field private b:Lkotlinx/coroutines/t1;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Z

.field private k:Lcom/tn/tranpay/d;

.field private final l:Lcom/google/gson/Gson;

.field private final m:Landroidx/lifecycle/b0;

.field private final n:Landroidx/lifecycle/b0;

.field private final o:Landroidx/lifecycle/b0;

.field private final p:Landroidx/lifecycle/b0;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/t0;-><init>()V

    sget-object v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$iPaymentApi$2;->INSTANCE:Lcom/tn/tranpay/viewmodel/PaymentViewModel$iPaymentApi$2;

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->a:Lkotlin/Lazy;

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->l:Lcom/google/gson/Gson;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->m:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->n:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->o:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->p:Landroidx/lifecycle/b0;

    return-void
.end method

.method private final B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p4, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleCancelPay$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleCancelPay$1;

    iget v1, v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleCancelPay$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleCancelPay$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleCancelPay$1;

    invoke-direct {v0, p0, p4}, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleCancelPay$1;-><init>(Lcom/tn/tranpay/viewmodel/PaymentViewModel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleCancelPay$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleCancelPay$1;->label:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "txnId"

    invoke-virtual {p4, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "bindToken"

    invoke-virtual {p4, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "reason"

    invoke-virtual {p4, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p1, Lcom/tn/tranpay/helper/c;->a:Lcom/tn/tranpay/helper/c$a;

    invoke-virtual {p4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "json.toString()"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/tn/tranpay/helper/c$a;->a(Ljava/lang/Object;)Lokhttp3/RequestBody;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->v()Lcom/tn/tranpay/network/b;

    move-result-object p2

    iput v3, v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleCancelPay$1;->label:I

    invoke-interface {p2, p1, v0}, Lcom/tn/tranpay/network/b;->d(Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p4, Lcom/tn/tranpay/bean/QueryOrderResultContent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, p4

    :cond_4
    return-object v4

    :goto_2
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_5

    sget-object p2, Lai/a;->a:Lai/a;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "CancelOrder error is "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x2

    invoke-static {p2, p1, v4, p3, v4}, Lai/a;->e(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-object v4

    :cond_5
    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method private final C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p5, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleCashierPay$1;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleCashierPay$1;

    iget v1, v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleCashierPay$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleCashierPay$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleCashierPay$1;

    invoke-direct {v0, p0, p5}, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleCashierPay$1;-><init>(Lcom/tn/tranpay/viewmodel/PaymentViewModel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p5, v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleCashierPay$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleCashierPay$1;->label:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v3, :cond_2

    if-ne v2, v4, :cond_1

    :try_start_0
    invoke-static {p5}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleCashierPay$1;->L$4:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONObject;

    iget-object p2, v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleCashierPay$1;->L$3:Ljava/lang/Object;

    check-cast p2, Lorg/json/JSONObject;

    iget-object p3, v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleCashierPay$1;->L$2:Ljava/lang/Object;

    move-object p4, p3

    check-cast p4, Ljava/lang/String;

    iget-object p3, v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleCashierPay$1;->L$1:Ljava/lang/Object;

    check-cast p3, Ljava/lang/String;

    iget-object v2, v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleCashierPay$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/tn/tranpay/viewmodel/PaymentViewModel;

    :try_start_1
    invoke-static {p5}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_3
    invoke-static {p5}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_2
    sget-object p5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance p5, Lorg/json/JSONObject;

    invoke-direct {p5}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "txnId"

    invoke-virtual {p5, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "payMethod"

    invoke-virtual {p5, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    if-eqz p3, :cond_8

    sget-object p2, Lcom/tn/tranpay/TranPayConfiguration;->a:Lcom/tn/tranpay/TranPayConfiguration;

    iput-object p0, v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleCashierPay$1;->L$0:Ljava/lang/Object;

    iput-object p3, v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleCashierPay$1;->L$1:Ljava/lang/Object;

    iput-object p4, v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleCashierPay$1;->L$2:Ljava/lang/Object;

    iput-object p5, v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleCashierPay$1;->L$3:Ljava/lang/Object;

    iput-object p1, v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleCashierPay$1;->L$4:Ljava/lang/Object;

    iput v3, v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleCashierPay$1;->label:I

    invoke-virtual {p2, v0}, Lcom/tn/tranpay/TranPayConfiguration;->f(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    move-object v7, p5

    move-object p5, p2

    move-object p2, v7

    :goto_1
    check-cast p5, Lcom/tn/tranpay/bean/CurrencyInfoBean;

    iget-object v3, v2, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->m:Landroidx/lifecycle/b0;

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tn/tranpay/bean/LoadConfigContent;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/tn/tranpay/bean/LoadConfigContent;->getAreaCode()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_7

    :cond_5
    if-eqz p5, :cond_6

    invoke-virtual {p5}, Lcom/tn/tranpay/bean/CurrencyInfoBean;->getMobileCode()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_7

    :cond_6
    const-string v3, ""

    :cond_7
    const-string p5, "Phone"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p5, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object p5, p2

    goto :goto_2

    :cond_8
    move-object v2, p0

    :goto_2
    if-eqz p4, :cond_9

    const-string p2, "CNIC"

    invoke-virtual {p1, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_9
    const-string p2, "payInput"

    invoke-virtual {p5, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "pfId"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "gaid"

    sget-object p2, Lcom/tn/tranpay/device/TNDeviceHelper;->a:Lcom/tn/tranpay/device/TNDeviceHelper;

    invoke-virtual {p2}, Lcom/tn/tranpay/device/TNDeviceHelper;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p1, Lcom/tn/tranpay/helper/c;->a:Lcom/tn/tranpay/helper/c$a;

    invoke-virtual {p5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "json.toString()"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/tn/tranpay/helper/c$a;->a(Ljava/lang/Object;)Lokhttp3/RequestBody;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-direct {v2}, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->v()Lcom/tn/tranpay/network/b;

    move-result-object p2

    iput-object v5, v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleCashierPay$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleCashierPay$1;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleCashierPay$1;->L$2:Ljava/lang/Object;

    iput-object v5, v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleCashierPay$1;->L$3:Ljava/lang/Object;

    iput-object v5, v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleCashierPay$1;->L$4:Ljava/lang/Object;

    iput v4, v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleCashierPay$1;->label:I

    invoke-interface {p2, p1, v0}, Lcom/tn/tranpay/network/b;->c(Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p5

    if-ne p5, v1, :cond_a

    return-object v1

    :cond_a
    :goto_3
    check-cast p5, Lcom/tn/tranpay/bean/CreateOrderResultContent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v5, p5

    :cond_b
    return-object v5

    :goto_4
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_c

    sget-object p2, Lai/a;->a:Lai/a;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "CashierPay error is "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v5, v4, v5}, Lai/a;->e(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-object v5

    :cond_c
    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method private final D(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleQuery$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleQuery$1;

    iget v1, v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleQuery$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleQuery$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleQuery$1;

    invoke-direct {v0, p0, p2}, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleQuery$1;-><init>(Lcom/tn/tranpay/viewmodel/PaymentViewModel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleQuery$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleQuery$1;->label:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "txnId"

    invoke-virtual {p2, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p1, Lcom/tn/tranpay/helper/c;->a:Lcom/tn/tranpay/helper/c$a;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "json.toString()"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/tn/tranpay/helper/c$a;->a(Ljava/lang/Object;)Lokhttp3/RequestBody;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->v()Lcom/tn/tranpay/network/b;

    move-result-object p2

    iput v3, v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleQuery$1;->label:I

    invoke-interface {p2, p1, v0}, Lcom/tn/tranpay/network/b;->a(Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Lcom/tn/tranpay/bean/QueryOrderResultContent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, p2

    :cond_4
    return-object v4

    :goto_2
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_5

    sget-object p2, Lai/a;->a:Lai/a;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Query error is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p2, p1, v4, v0, v4}, Lai/a;->e(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-object v4

    :cond_5
    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method private final E(Lcom/tn/tranpay/BillingParams;)V
    .locals 7

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/tn/tranpay/viewmodel/PaymentViewModel$loadConfig$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/tn/tranpay/viewmodel/PaymentViewModel$loadConfig$1;-><init>(Lcom/tn/tranpay/viewmodel/PaymentViewModel;Lcom/tn/tranpay/BillingParams;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method private final F(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p3, Lcom/tn/tranpay/viewmodel/PaymentViewModel$loadConfigBean$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$loadConfigBean$1;

    iget v1, v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$loadConfigBean$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$loadConfigBean$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$loadConfigBean$1;

    invoke-direct {v0, p0, p3}, Lcom/tn/tranpay/viewmodel/PaymentViewModel$loadConfigBean$1;-><init>(Lcom/tn/tranpay/viewmodel/PaymentViewModel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$loadConfigBean$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$loadConfigBean$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "txnId"

    invoke-virtual {p3, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string p1, "language"

    if-eqz p2, :cond_3

    :try_start_2
    invoke-virtual {p3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_3
    :try_start_3
    sget-object p2, Lcom/tn/tranpay/TranPay;->a:Lcom/tn/tranpay/TranPay;

    invoke-virtual {p2}, Lcom/tn/tranpay/TranPay;->d()Landroid/app/Application;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->r(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p2

    :try_start_4
    sget-object v2, Lai/a;->a:Lai/a;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to get locale language: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2, v5, v3, v5}, Lai/a;->e(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    const-string p2, "en"

    invoke-virtual {p3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_1
    const-string p1, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p1, Lcom/tn/tranpay/helper/c;->a:Lcom/tn/tranpay/helper/c$a;

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "json.toString()"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/tn/tranpay/helper/c$a;->a(Ljava/lang/Object;)Lokhttp3/RequestBody;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->v()Lcom/tn/tranpay/network/b;

    move-result-object p2

    iput v4, v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$loadConfigBean$1;->label:I

    invoke-interface {p2, p1, v0}, Lcom/tn/tranpay/network/b;->b(Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    return-object v1

    :cond_4
    :goto_2
    check-cast p3, Lcom/tn/tranpay/bean/LoadConfigContent;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v5, p3

    :cond_5
    return-object v5

    :goto_3
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_6

    sget-object p2, Lai/a;->a:Lai/a;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "LoadConfigFailed error is "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v5, v3, v5}, Lai/a;->e(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-object v5

    :cond_6
    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method public static synthetic H(Lcom/tn/tranpay/viewmodel/PaymentViewModel;Ljava/lang/String;JJILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    const-wide/16 p2, 0x1388

    :cond_0
    move-wide v2, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    const-wide/32 p4, 0x927c0

    :cond_1
    move-wide v4, p4

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->G(Ljava/lang/String;JJ)V

    return-void
.end method

.method private final I(Ljava/lang/String;)V
    .locals 7

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/tn/tranpay/viewmodel/PaymentViewModel$queryOnce$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/tn/tranpay/viewmodel/PaymentViewModel$queryOnce$1;-><init>(Lcom/tn/tranpay/viewmodel/PaymentViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public static final synthetic b(Lcom/tn/tranpay/viewmodel/PaymentViewModel;)Lcom/google/gson/Gson;
    .locals 0

    iget-object p0, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->l:Lcom/google/gson/Gson;

    return-object p0
.end method

.method public static final synthetic c(Lcom/tn/tranpay/viewmodel/PaymentViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d(Lcom/tn/tranpay/viewmodel/PaymentViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic e(Lcom/tn/tranpay/viewmodel/PaymentViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->D(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic f(Lcom/tn/tranpay/viewmodel/PaymentViewModel;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->F(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lcom/tn/tranpay/viewmodel/PaymentViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic k(Lcom/tn/tranpay/viewmodel/PaymentViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    move-object p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const/4 p4, 0x0

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private final r(Landroid/content/Context;)Ljava/util/Locale;
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    invoke-static {p1}, Landroidx/appcompat/app/h;->a(Landroid/content/res/Configuration;)Landroid/os/LocaleList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ln0/d;->a(Landroid/os/LocaleList;I)Ljava/util/Locale;

    move-result-object p1

    const-string v0, "{\n            configuration.locales[0]\n        }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const-string v0, "{\n            configuration.locale\n        }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method private final v()Lcom/tn/tranpay/network/b;
    .locals 2

    iget-object v0, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->a:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-iPaymentApi>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/tn/tranpay/network/b;

    return-object v0
.end method


# virtual methods
.method public final A()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final G(Ljava/lang/String;JJ)V
    .locals 10

    const-string v0, "txnId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$query$1;

    const/4 v9, 0x0

    move-object v2, v0

    move-wide v3, p2

    move-wide v5, p4

    move-object v7, p0

    move-object v8, p1

    invoke-direct/range {v2 .. v9}, Lcom/tn/tranpay/viewmodel/PaymentViewModel$query$1;-><init>(JJLcom/tn/tranpay/viewmodel/PaymentViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    move-result-object p1

    iput-object p1, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->b:Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final J()V
    .locals 3

    iget-object v0, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->b:Lkotlinx/coroutines/t1;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/t1$a;->b(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->I(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final K(Lcom/tn/tranpay/d;)V
    .locals 0

    iput-object p1, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->k:Lcom/tn/tranpay/d;

    return-void
.end method

.method public final L(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->j:Z

    return-void
.end method

.method public final M(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->i:Z

    return-void
.end method

.method public final N(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->d:Ljava/lang/String;

    return-void
.end method

.method public final O(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->h:Ljava/lang/String;

    return-void
.end method

.method public final P(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->c:Ljava/lang/String;

    return-void
.end method

.method public final g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "txnId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reason"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$cancelPay$1;

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/tn/tranpay/viewmodel/PaymentViewModel$cancelPay$1;-><init>(Lcom/tn/tranpay/viewmodel/PaymentViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final i()V
    .locals 3

    iget-object v0, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->b:Lkotlinx/coroutines/t1;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/t1$a;->b(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    const-string v0, "payMethod"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->f:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->g:Z

    iget-object p4, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->p:Landroidx/lifecycle/b0;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p4, v0}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object p4

    invoke-static {p4}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v0

    new-instance p4, Lcom/tn/tranpay/viewmodel/PaymentViewModel$cashierPay$1;

    const/4 v6, 0x0

    move-object v1, p4

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/tn/tranpay/viewmodel/PaymentViewModel$cashierPay$1;-><init>(Lcom/tn/tranpay/viewmodel/PaymentViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, p4

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final l(Lcom/tn/tranpay/BillingParams;)V
    .locals 1

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->E(Lcom/tn/tranpay/BillingParams;)V

    return-void
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->m:Landroidx/lifecycle/b0;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tn/tranpay/bean/LoadConfigContent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tn/tranpay/bean/LoadConfigContent;->getAreaCode()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    sget-object v0, Lcom/tn/tranpay/TranPayConfiguration;->a:Lcom/tn/tranpay/TranPayConfiguration;

    invoke-virtual {v0}, Lcom/tn/tranpay/TranPayConfiguration;->n()Lcom/tn/tranpay/bean/CurrencyInfoBean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/tn/tranpay/bean/CurrencyInfoBean;->getMobileCode()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, ""

    :cond_2
    return-object v0
.end method

.method public final n()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->g:Z

    return v0
.end method

.method public final o()Lcom/tn/tranpay/d;
    .locals 1

    iget-object v0, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->k:Lcom/tn/tranpay/d;

    return-object v0
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final q()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->m:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final s()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->n:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final t()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->j:Z

    return v0
.end method

.method public final u()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->i:Z

    return v0
.end method

.method public final w()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->p:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final x()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final y()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final z()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->o:Landroidx/lifecycle/b0;

    return-object v0
.end method
