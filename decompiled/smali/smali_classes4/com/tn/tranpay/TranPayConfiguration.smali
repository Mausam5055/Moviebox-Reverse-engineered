.class public final Lcom/tn/tranpay/TranPayConfiguration;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/tn/tranpay/TranPayConfiguration;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Z

.field private static g:Z

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;

.field private static l:Ljava/lang/String;

.field private static m:Z

.field private static n:Lcom/tn/tranpay/bean/CurrencyInfoBean;

.field private static final o:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tn/tranpay/TranPayConfiguration;

    invoke-direct {v0}, Lcom/tn/tranpay/TranPayConfiguration;-><init>()V

    sput-object v0, Lcom/tn/tranpay/TranPayConfiguration;->a:Lcom/tn/tranpay/TranPayConfiguration;

    const-string v0, ""

    sput-object v0, Lcom/tn/tranpay/TranPayConfiguration;->c:Ljava/lang/String;

    sput-object v0, Lcom/tn/tranpay/TranPayConfiguration;->d:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tn/tranpay/TranPayConfiguration;->g:Z

    sget-object v0, Lcom/tn/tranpay/TranPayConfiguration$iPaymentApi$2;->INSTANCE:Lcom/tn/tranpay/TranPayConfiguration$iPaymentApi$2;

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/tn/tranpay/TranPayConfiguration;->o:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final E()V
    .locals 7

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/tn/tranpay/TranPayConfiguration$updateCurrencyInfo$1;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Lcom/tn/tranpay/TranPayConfiguration$updateCurrencyInfo$1;-><init>(Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public static final synthetic a(Lcom/tn/tranpay/TranPayConfiguration;Lcom/tn/tranpay/bean/CurrencyInfoBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tn/tranpay/TranPayConfiguration;->d(Lcom/tn/tranpay/bean/CurrencyInfoBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lcom/tn/tranpay/TranPayConfiguration;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tn/tranpay/TranPayConfiguration;->e(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lcom/tn/tranpay/TranPayConfiguration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/tn/tranpay/TranPayConfiguration;->o(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final d(Lcom/tn/tranpay/bean/CurrencyInfoBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, Lcom/tn/tranpay/TranPayConfiguration$cacheCurrencyInfo$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/tn/tranpay/TranPayConfiguration$cacheCurrencyInfo$1;

    iget v1, v0, Lcom/tn/tranpay/TranPayConfiguration$cacheCurrencyInfo$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/tn/tranpay/TranPayConfiguration$cacheCurrencyInfo$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/tn/tranpay/TranPayConfiguration$cacheCurrencyInfo$1;

    invoke-direct {v0, p0, p2}, Lcom/tn/tranpay/TranPayConfiguration$cacheCurrencyInfo$1;-><init>(Lcom/tn/tranpay/TranPayConfiguration;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/tn/tranpay/TranPayConfiguration$cacheCurrencyInfo$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/tn/tranpay/TranPayConfiguration$cacheCurrencyInfo$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p2, Lcom/tn/tranpay/TranPayConfiguration;->e:Ljava/lang/String;

    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    sget-object p2, Lcom/tn/tranpay/helper/PaymentMMKV;->a:Lcom/tn/tranpay/helper/PaymentMMKV;

    sget-object v0, Lcom/tn/tranpay/TranPayConfiguration;->e:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p2, v0, p1}, Lcom/tn/tranpay/helper/PaymentMMKV;->b(Ljava/lang/String;Lcom/tn/tranpay/bean/CurrencyInfoBean;)V

    sget-object p1, Lai/a;->a:Lai/a;

    sget-object p2, Lcom/tn/tranpay/TranPayConfiguration;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6309region\u7f13\u5b58\u8d27\u5e01\u4fe1\u606f: region="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v5, v3, v5}, Lai/a;->g(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_3

    :cond_4
    :goto_1
    sget-object p2, Lcom/tn/tranpay/helper/PaymentMMKV;->a:Lcom/tn/tranpay/helper/PaymentMMKV;

    iput v4, v0, Lcom/tn/tranpay/TranPayConfiguration$cacheCurrencyInfo$1;->label:I

    invoke-virtual {p2, p1, v0}, Lcom/tn/tranpay/helper/PaymentMMKV;->a(Lcom/tn/tranpay/bean/CurrencyInfoBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    sget-object p1, Lai/a;->a:Lai/a;

    const-string p2, "\u6309IP+\u65e5\u671f\u7f13\u5b58\u8d27\u5e01\u4fe1\u606f"

    invoke-static {p1, p2, v5, v3, v5}, Lai/a;->g(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method private final e(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lcom/tn/tranpay/TranPayConfiguration$fetchAndUpdateCurrencyInfo$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/tn/tranpay/TranPayConfiguration$fetchAndUpdateCurrencyInfo$1;

    iget v1, v0, Lcom/tn/tranpay/TranPayConfiguration$fetchAndUpdateCurrencyInfo$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/tn/tranpay/TranPayConfiguration$fetchAndUpdateCurrencyInfo$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/tn/tranpay/TranPayConfiguration$fetchAndUpdateCurrencyInfo$1;

    invoke-direct {v0, p0, p2}, Lcom/tn/tranpay/TranPayConfiguration$fetchAndUpdateCurrencyInfo$1;-><init>(Lcom/tn/tranpay/TranPayConfiguration;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/tn/tranpay/TranPayConfiguration$fetchAndUpdateCurrencyInfo$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/tn/tranpay/TranPayConfiguration$fetchAndUpdateCurrencyInfo$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-boolean p1, v0, Lcom/tn/tranpay/TranPayConfiguration$fetchAndUpdateCurrencyInfo$1;->Z$0:Z

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput-boolean p1, v0, Lcom/tn/tranpay/TranPayConfiguration$fetchAndUpdateCurrencyInfo$1;->Z$0:Z

    iput v3, v0, Lcom/tn/tranpay/TranPayConfiguration$fetchAndUpdateCurrencyInfo$1;->label:I

    invoke-direct {p0, v0}, Lcom/tn/tranpay/TranPayConfiguration;->o(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Lcom/tn/tranpay/network/BaseDto;

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/tn/tranpay/network/BaseDto;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tn/tranpay/bean/CurrencyInfoBean;

    goto :goto_2

    :cond_4
    move-object v1, v0

    :goto_2
    const/4 v2, 0x2

    if-eqz v1, :cond_8

    invoke-virtual {p2}, Lcom/tn/tranpay/network/BaseDto;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tn/tranpay/bean/CurrencyInfoBean;

    sput-object p2, Lcom/tn/tranpay/TranPayConfiguration;->n:Lcom/tn/tranpay/bean/CurrencyInfoBean;

    if-eqz p1, :cond_5

    sget-object p1, Lcom/tn/tranpay/report/h;->a:Lcom/tn/tranpay/report/h;

    invoke-virtual {p1, v3}, Lcom/tn/tranpay/report/h;->c(Z)V

    :cond_5
    sget-object p1, Lai/a;->a:Lai/a;

    sget-object p2, Lcom/tn/tranpay/TranPayConfiguration;->n:Lcom/tn/tranpay/bean/CurrencyInfoBean;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Currency info updated successfully: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0, v2, v0}, Lai/a;->g(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    sget-object p1, Lcom/tn/tranpay/TranPayConfiguration;->n:Lcom/tn/tranpay/bean/CurrencyInfoBean;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/tn/tranpay/bean/CurrencyInfoBean;->getCountryCode()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_6
    move-object p1, v0

    :goto_3
    sput-object p1, Lcom/tn/tranpay/TranPayConfiguration;->j:Ljava/lang/String;

    sget-object p1, Lcom/tn/tranpay/TranPayConfiguration;->n:Lcom/tn/tranpay/bean/CurrencyInfoBean;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/tn/tranpay/bean/CurrencyInfoBean;->getCurrency()Ljava/lang/String;

    move-result-object v0

    :cond_7
    sput-object v0, Lcom/tn/tranpay/TranPayConfiguration;->k:Ljava/lang/String;

    sget-object v0, Lcom/tn/tranpay/TranPayConfiguration;->n:Lcom/tn/tranpay/bean/CurrencyInfoBean;

    goto :goto_4

    :cond_8
    if-eqz p1, :cond_9

    sget-object p1, Lcom/tn/tranpay/report/h;->a:Lcom/tn/tranpay/report/h;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/tn/tranpay/report/h;->c(Z)V

    :cond_9
    sget-object p1, Lai/a;->a:Lai/a;

    const-string p2, "Failed to update currency info"

    invoke-static {p1, p2, v0, v2, v0}, Lai/a;->e(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_4
    return-object v0
.end method

.method private final i(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/tn/tranpay/TranPayConfiguration;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/tn/tranpay/helper/PaymentMMKV;->a:Lcom/tn/tranpay/helper/PaymentMMKV;

    sget-object v0, Lcom/tn/tranpay/TranPayConfiguration;->e:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/tn/tranpay/helper/PaymentMMKV;->g(Ljava/lang/String;)Lcom/tn/tranpay/bean/CurrencyInfoBean;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    sget-object v0, Lcom/tn/tranpay/helper/PaymentMMKV;->a:Lcom/tn/tranpay/helper/PaymentMMKV;

    invoke-virtual {v0, p1}, Lcom/tn/tranpay/helper/PaymentMMKV;->f(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final o(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p1, Lcom/tn/tranpay/TranPayConfiguration$getCurrencyInfoBean$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/tn/tranpay/TranPayConfiguration$getCurrencyInfoBean$1;

    iget v1, v0, Lcom/tn/tranpay/TranPayConfiguration$getCurrencyInfoBean$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/tn/tranpay/TranPayConfiguration$getCurrencyInfoBean$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/tn/tranpay/TranPayConfiguration$getCurrencyInfoBean$1;

    invoke-direct {v0, p0, p1}, Lcom/tn/tranpay/TranPayConfiguration$getCurrencyInfoBean$1;-><init>(Lcom/tn/tranpay/TranPayConfiguration;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/tn/tranpay/TranPayConfiguration$getCurrencyInfoBean$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/tn/tranpay/TranPayConfiguration$getCurrencyInfoBean$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v4, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lcom/tn/tranpay/TranPayConfiguration$getCurrencyInfoBean$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/tn/tranpay/network/BaseDto;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p1, Lcom/tn/tranpay/helper/PaymentMMKV;->a:Lcom/tn/tranpay/helper/PaymentMMKV;

    invoke-virtual {p1}, Lcom/tn/tranpay/helper/PaymentMMKV;->c()V

    iput v4, v0, Lcom/tn/tranpay/TranPayConfiguration$getCurrencyInfoBean$1;->label:I

    invoke-direct {p0, v0}, Lcom/tn/tranpay/TranPayConfiguration;->i(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_1
    check-cast p1, Lcom/tn/tranpay/bean/CurrencyInfoBean;

    if-eqz p1, :cond_6

    sget-object v0, Lai/a;->a:Lai/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4f7f\u7528\u7f13\u5b58\u7684\u8d27\u5e01\u4fe1\u606f: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6, v5, v6}, Lai/a;->g(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    new-instance v0, Lcom/tn/tranpay/network/BaseDto;

    const/16 v1, 0xc8

    invoke-direct {v0, v1, p1}, Lcom/tn/tranpay/network/BaseDto;-><init>(ILjava/lang/Object;)V

    return-object v0

    :cond_6
    :try_start_2
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object p1, Lcom/tn/tranpay/TranPayConfiguration;->a:Lcom/tn/tranpay/TranPayConfiguration;

    invoke-direct {p1}, Lcom/tn/tranpay/TranPayConfiguration;->r()Lcom/tn/tranpay/network/b;

    move-result-object p1

    sget-object v2, Lcom/tn/tranpay/TranPayConfiguration;->e:Ljava/lang/String;

    iput v5, v0, Lcom/tn/tranpay/TranPayConfiguration$getCurrencyInfoBean$1;->label:I

    invoke-interface {p1, v2, v0}, Lcom/tn/tranpay/network/b;->e(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    return-object v1

    :cond_7
    :goto_2
    check-cast p1, Lcom/tn/tranpay/network/BaseDto;

    invoke-virtual {p1}, Lcom/tn/tranpay/network/BaseDto;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tn/tranpay/bean/CurrencyInfoBean;

    if-eqz v2, :cond_9

    sget-object v4, Lcom/tn/tranpay/TranPayConfiguration;->a:Lcom/tn/tranpay/TranPayConfiguration;

    iput-object p1, v0, Lcom/tn/tranpay/TranPayConfiguration$getCurrencyInfoBean$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/tn/tranpay/TranPayConfiguration$getCurrencyInfoBean$1;->label:I

    invoke-direct {v4, v2, v0}, Lcom/tn/tranpay/TranPayConfiguration;->d(Lcom/tn/tranpay/bean/CurrencyInfoBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_8

    return-object v1

    :cond_8
    move-object v0, p1

    :goto_3
    move-object p1, v0

    :cond_9
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :goto_4
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_5
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_a

    move-object v6, p1

    goto :goto_6

    :cond_a
    sget-object p1, Lai/a;->a:Lai/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u83b7\u53d6\u8d27\u5e01\u4fe1\u606f\u5931\u8d25 ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v6, v5, v6}, Lai/a;->e(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    sget-boolean p1, Lcom/tn/tranpay/TranPayConfiguration;->f:Z

    if-eqz p1, :cond_b

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_b
    :goto_6
    return-object v6
.end method

.method private final r()Lcom/tn/tranpay/network/b;
    .locals 2

    sget-object v0, Lcom/tn/tranpay/TranPayConfiguration;->o:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-iPaymentApi>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/tn/tranpay/network/b;

    return-object v0
.end method


# virtual methods
.method public final A(Z)V
    .locals 0

    sput-boolean p1, Lcom/tn/tranpay/TranPayConfiguration;->g:Z

    return-void
.end method

.method public final B(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/tn/tranpay/TranPayConfiguration;->e:Ljava/lang/String;

    return-void
.end method

.method public final C()V
    .locals 0

    invoke-direct {p0}, Lcom/tn/tranpay/TranPayConfiguration;->E()V

    return-void
.end method

.method public final D(Lcom/tn/tranpay/BillingParams;)V
    .locals 1

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tn/tranpay/BillingParams;->getOrderId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tn/tranpay/TranPayConfiguration;->h:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/tn/tranpay/BillingParams;->getCurrency()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tn/tranpay/TranPayConfiguration;->k:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/tn/tranpay/BillingParams;->getAmount()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tn/tranpay/TranPayConfiguration;->l:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/tn/tranpay/BillingParams;->getTxnId()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/tn/tranpay/TranPayConfiguration;->i:Ljava/lang/String;

    return-void
.end method

.method public final f(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/tn/tranpay/TranPayConfiguration;->n:Lcom/tn/tranpay/bean/CurrencyInfoBean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/tn/tranpay/TranPayConfiguration;->e(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tn/tranpay/TranPayConfiguration;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tn/tranpay/TranPayConfiguration;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tn/tranpay/TranPayConfiguration;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tn/tranpay/TranPayConfiguration;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tn/tranpay/TranPayConfiguration;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tn/tranpay/TranPayConfiguration;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final n()Lcom/tn/tranpay/bean/CurrencyInfoBean;
    .locals 1

    sget-object v0, Lcom/tn/tranpay/TranPayConfiguration;->n:Lcom/tn/tranpay/bean/CurrencyInfoBean;

    return-object v0
.end method

.method public final p()Z
    .locals 1

    sget-boolean v0, Lcom/tn/tranpay/TranPayConfiguration;->f:Z

    return v0
.end method

.method public final q()Z
    .locals 1

    sget-boolean v0, Lcom/tn/tranpay/TranPayConfiguration;->m:Z

    return v0
.end method

.method public final s()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tn/tranpay/TranPayConfiguration;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final t()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tn/tranpay/TranPayConfiguration;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final u()Z
    .locals 1

    sget-boolean v0, Lcom/tn/tranpay/TranPayConfiguration;->g:Z

    return v0
.end method

.method public final v(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/tn/tranpay/TranPayConfiguration;->c:Ljava/lang/String;

    return-void
.end method

.method public final w(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/tn/tranpay/TranPayConfiguration;->d:Ljava/lang/String;

    return-void
.end method

.method public final x(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/tn/tranpay/TranPayConfiguration;->b:Ljava/lang/String;

    return-void
.end method

.method public final y(Z)V
    .locals 0

    sput-boolean p1, Lcom/tn/tranpay/TranPayConfiguration;->f:Z

    return-void
.end method

.method public final z(Z)V
    .locals 0

    sput-boolean p1, Lcom/tn/tranpay/TranPayConfiguration;->m:Z

    return-void
.end method
