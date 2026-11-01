.class public final Lcom/transsion/payment/lib/strategy/PaynicornStrategy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/payment/lib/strategy/g;


# instance fields
.field private final a:Landroidx/lifecycle/b0;

.field private final b:Lkotlin/Lazy;

.field private c:Lkotlinx/coroutines/n0;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/payment/lib/strategy/PaynicornStrategy;->a:Landroidx/lifecycle/b0;

    new-instance v0, Lcom/transsion/payment/lib/strategy/h;

    invoke-direct {v0}, Lcom/transsion/payment/lib/strategy/h;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/payment/lib/strategy/PaynicornStrategy;->b:Lkotlin/Lazy;

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/payment/lib/strategy/PaynicornStrategy;->c:Lkotlinx/coroutines/n0;

    return-void
.end method

.method public static synthetic c()Lcom/transsion/payment/lib/PaymentService;
    .locals 1

    invoke-static {}, Lcom/transsion/payment/lib/strategy/PaynicornStrategy;->j()Lcom/transsion/payment/lib/PaymentService;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic d(Lcom/transsion/payment/lib/strategy/PaynicornStrategy;)Lcom/transsion/payment/lib/PaymentService;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/payment/lib/strategy/PaynicornStrategy;->i()Lcom/transsion/payment/lib/PaymentService;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic e(Lcom/transsion/payment/lib/strategy/PaynicornStrategy;)Landroidx/lifecycle/b0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/payment/lib/strategy/PaynicornStrategy;->a:Landroidx/lifecycle/b0;

    return-object p0
.end method

.method public static final synthetic f(Lcom/transsion/payment/lib/strategy/PaynicornStrategy;Landroidx/appcompat/app/AppCompatActivity;Lcom/transsion/payment/lib/bean/CreateOrderRes;Lcom/transsion/payment/lib/b;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/payment/lib/strategy/PaynicornStrategy;->k(Landroidx/appcompat/app/AppCompatActivity;Lcom/transsion/payment/lib/bean/CreateOrderRes;Lcom/transsion/payment/lib/b;)V

    return-void
.end method

.method private final i()Lcom/transsion/payment/lib/PaymentService;
    .locals 1

    iget-object v0, p0, Lcom/transsion/payment/lib/strategy/PaynicornStrategy;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/payment/lib/PaymentService;

    return-object v0
.end method

.method private static final j()Lcom/transsion/payment/lib/PaymentService;
    .locals 1

    new-instance v0, Lcom/transsion/payment/lib/PaymentService;

    invoke-direct {v0}, Lcom/transsion/payment/lib/PaymentService;-><init>()V

    return-object v0
.end method

.method private final k(Landroidx/appcompat/app/AppCompatActivity;Lcom/transsion/payment/lib/bean/CreateOrderRes;Lcom/transsion/payment/lib/b;)V
    .locals 2

    sget-object v0, Lcom/transsion/payment/lib/PaymentClientHelper;->a:Lcom/transsion/payment/lib/PaymentClientHelper;

    invoke-direct {p0}, Lcom/transsion/payment/lib/strategy/PaynicornStrategy;->i()Lcom/transsion/payment/lib/PaymentService;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/transsion/payment/lib/PaymentClientHelper;->d(Landroidx/appcompat/app/AppCompatActivity;Lcom/transsion/payment/lib/bean/CreateOrderRes;Lcom/transsion/payment/lib/b;Lcom/transsion/payment/lib/PaymentService;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;Lcom/transsion/payment/lib/b;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/payment/lib/strategy/PaynicornStrategy;->g()V

    return-void
.end method

.method public b(Landroidx/appcompat/app/AppCompatActivity;Lcom/transsion/payment/lib/bean/CreateOrderReq;ZLcom/transsion/payment/lib/b;Lkotlin/jvm/functions/Function1;)V
    .locals 8

    const-string p3, "activity"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "orderRequest"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "payCallback"

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p3, Lcom/transsion/payment/lib/d;->a:Lcom/transsion/payment/lib/d;

    invoke-virtual {p0}, Lcom/transsion/payment/lib/strategy/PaynicornStrategy;->h()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> requestPay() --> \u8bf7\u6c42\u63a5\u53e3\u521b\u5efa\u8ba2\u5355...."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/transsion/payment/lib/d;->a(Ljava/lang/String;)V

    const/4 p3, 0x1

    invoke-interface {p4, p3}, Lcom/transsion/payment/lib/b;->b(Z)V

    iget-object v0, p0, Lcom/transsion/payment/lib/strategy/PaynicornStrategy;->c:Lkotlinx/coroutines/n0;

    new-instance p3, Lcom/transsion/payment/lib/strategy/PaynicornStrategy$requestPay$1;

    const/4 v7, 0x0

    move-object v1, p3

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/transsion/payment/lib/strategy/PaynicornStrategy$requestPay$1;-><init>(Lcom/transsion/payment/lib/strategy/PaynicornStrategy;Lcom/transsion/payment/lib/bean/CreateOrderReq;Landroidx/appcompat/app/AppCompatActivity;Lcom/transsion/payment/lib/b;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public g()V
    .locals 6

    iget-object v0, p0, Lcom/transsion/payment/lib/strategy/PaynicornStrategy;->c:Lkotlinx/coroutines/n0;

    new-instance v3, Lcom/transsion/payment/lib/strategy/PaynicornStrategy$fetchSkuList$1;

    const/4 v1, 0x0

    invoke-direct {v3, p0, v1}, Lcom/transsion/payment/lib/strategy/PaynicornStrategy$fetchSkuList$1;-><init>(Lcom/transsion/payment/lib/strategy/PaynicornStrategy;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/transsion/payment/lib/strategy/g$a;->a(Lcom/transsion/payment/lib/strategy/g;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/app/Application;)V
    .locals 1

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/transsion/payment/lib/PaymentClientHelper;->a:Lcom/transsion/payment/lib/PaymentClientHelper;

    invoke-virtual {p1}, Lcom/transsion/payment/lib/PaymentClientHelper;->c()V

    return-void
.end method
