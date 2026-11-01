.class public final Lcom/transsion/shorttv/order/PayLoadingVM;
.super Landroidx/lifecycle/t0;


# instance fields
.field private a:I

.field private b:J

.field private c:J

.field private final d:Landroidx/lifecycle/b0;

.field private final e:Landroidx/lifecycle/b0;

.field private final f:Landroidx/lifecycle/b0;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/lifecycle/t0;-><init>()V

    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/transsion/shorttv/order/PayLoadingVM;->b:J

    iput-wide v0, p0, Lcom/transsion/shorttv/order/PayLoadingVM;->c:J

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/shorttv/order/PayLoadingVM;->d:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/shorttv/order/PayLoadingVM;->e:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/shorttv/order/PayLoadingVM;->f:Landroidx/lifecycle/b0;

    return-void
.end method

.method public static final synthetic b(Lcom/transsion/shorttv/order/PayLoadingVM;)Landroidx/lifecycle/b0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/shorttv/order/PayLoadingVM;->d:Landroidx/lifecycle/b0;

    return-object p0
.end method

.method public static final synthetic c(Lcom/transsion/shorttv/order/PayLoadingVM;)J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/shorttv/order/PayLoadingVM;->c:J

    return-wide v0
.end method

.method public static final synthetic d(Lcom/transsion/shorttv/order/PayLoadingVM;)Landroidx/lifecycle/b0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/shorttv/order/PayLoadingVM;->e:Landroidx/lifecycle/b0;

    return-object p0
.end method

.method public static final synthetic e(Lcom/transsion/shorttv/order/PayLoadingVM;)J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/shorttv/order/PayLoadingVM;->b:J

    return-wide v0
.end method

.method public static final synthetic f(Lcom/transsion/shorttv/order/PayLoadingVM;)Landroidx/lifecycle/b0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/shorttv/order/PayLoadingVM;->f:Landroidx/lifecycle/b0;

    return-object p0
.end method

.method public static final synthetic g(Lcom/transsion/shorttv/order/PayLoadingVM;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/transsion/shorttv/order/PayLoadingVM;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static final synthetic h(Lcom/transsion/shorttv/order/PayLoadingVM;J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/shorttv/order/PayLoadingVM;->c:J

    return-void
.end method

.method private final k()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/transsion/shorttv/order/PayLoadingVM;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSimpleName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 15

    move-object v8, p0

    iget v0, v8, Lcom/transsion/shorttv/order/PayLoadingVM;->a:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    iget-object v0, v8, Lcom/transsion/shorttv/order/PayLoadingVM;->f:Landroidx/lifecycle/b0;

    new-instance v7, Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, v7

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v7}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    iput v0, v8, Lcom/transsion/shorttv/order/PayLoadingVM;->a:I

    sget-object v0, Lcom/transsion/shorttv/order/c;->a:Lcom/transsion/shorttv/order/c;

    invoke-direct {p0}, Lcom/transsion/shorttv/order/PayLoadingVM;->k()Ljava/lang/String;

    move-result-object v1

    iget v2, v8, Lcom/transsion/shorttv/order/PayLoadingVM;->a:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> retry() --> code = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -- msg = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p2

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> retryCount = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/shorttv/order/c;->a(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v9

    new-instance v12, Lcom/transsion/shorttv/order/PayLoadingVM$retry$1;

    const/4 v7, 0x0

    move-object v0, v12

    move-object v1, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/transsion/shorttv/order/PayLoadingVM$retry$1;-><init>(Lcom/transsion/shorttv/order/PayLoadingVM;JLjava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)V

    const/4 v13, 0x3

    const/4 v14, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v9 .. v14}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v0

    new-instance v7, Lcom/transsion/shorttv/order/PayLoadingVM$checkPayOrderId$1;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p0

    invoke-direct/range {v1 .. v6}, Lcom/transsion/shorttv/order/PayLoadingVM$checkPayOrderId$1;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/transsion/shorttv/order/PayLoadingVM;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v7

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final j(Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;)V
    .locals 6

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v0

    new-instance v3, Lcom/transsion/shorttv/order/PayLoadingVM$createPayOrderId$1;

    const/4 v1, 0x0

    invoke-direct {v3, p1, p0, v1}, Lcom/transsion/shorttv/order/PayLoadingVM$createPayOrderId$1;-><init>(Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;Lcom/transsion/shorttv/order/PayLoadingVM;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final l()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/order/PayLoadingVM;->d:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final m()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/order/PayLoadingVM;->e:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final n()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/order/PayLoadingVM;->f:Landroidx/lifecycle/b0;

    return-object v0
.end method
