.class public final Lcom/transsion/ad/monopoly/MonopolyAdManager;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/ad/monopoly/MonopolyAdManager;

.field private static final b:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/ad/monopoly/MonopolyAdManager;

    invoke-direct {v0}, Lcom/transsion/ad/monopoly/MonopolyAdManager;-><init>()V

    sput-object v0, Lcom/transsion/ad/monopoly/MonopolyAdManager;->a:Lcom/transsion/ad/monopoly/MonopolyAdManager;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/transsion/ad/monopoly/MonopolyAdManager;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function1;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/ad/monopoly/MonopolyAdManager;->d(Lkotlin/jvm/functions/Function1;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/transsion/ad/monopoly/MonopolyAdManager;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/ad/monopoly/MonopolyAdManager;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final d(Lkotlin/jvm/functions/Function1;Z)Lkotlin/Unit;
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/ad/strategy/c;->a:Lcom/transsion/ad/strategy/c;

    invoke-virtual {v0}, Lcom/transsion/ad/strategy/c;->b()V

    :cond_0
    if-eqz p0, :cond_1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final b(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    instance-of v2, v1, Lcom/transsion/ad/monopoly/MonopolyAdManager$init$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/transsion/ad/monopoly/MonopolyAdManager$init$1;

    iget v3, v2, Lcom/transsion/ad/monopoly/MonopolyAdManager$init$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/transsion/ad/monopoly/MonopolyAdManager$init$1;->label:I

    move-object/from16 v3, p0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/transsion/ad/monopoly/MonopolyAdManager$init$1;

    move-object/from16 v3, p0

    invoke-direct {v2, v3, v1}, Lcom/transsion/ad/monopoly/MonopolyAdManager$init$1;-><init>(Lcom/transsion/ad/monopoly/MonopolyAdManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/transsion/ad/monopoly/MonopolyAdManager$init$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v4

    iget v5, v2, Lcom/transsion/ad/monopoly/MonopolyAdManager$init$1;->label:I

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v5, :cond_4

    if-eq v5, v8, :cond_3

    if-eq v5, v7, :cond_2

    if-ne v5, v6, :cond_1

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, v2, Lcom/transsion/ad/monopoly/MonopolyAdManager$init$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iget-object v5, v2, Lcom/transsion/ad/monopoly/MonopolyAdManager$init$1;->L$0:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    :try_start_1
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_3
    iget-object v0, v2, Lcom/transsion/ad/monopoly/MonopolyAdManager$init$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iget-object v5, v2, Lcom/transsion/ad/monopoly/MonopolyAdManager$init$1;->L$0:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    :try_start_2
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_4
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object v1, Lcom/transsion/ad/monopoly/MonopolyAdManager;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v9, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v10, Loi/a;->a:Loi/a;

    const/4 v14, 0x6

    const/4 v15, 0x0

    const-string v11, "MonopolyAdManager --> init{} --> \u6b63\u5728\u521d\u59cb\u5316\u4e2d\uff0c\u8df3\u8fc7"

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Loi/a;->c(Loi/a;Ljava/lang/String;IZILjava/lang/Object;)V

    if-eqz v0, :cond_5

    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_6
    :try_start_3
    sget-object v1, Lcom/transsion/ad/monopoly/manager/AdPlansAssetsManager;->b:Lcom/transsion/ad/monopoly/manager/AdPlansAssetsManager;

    move-object/from16 v5, p1

    iput-object v5, v2, Lcom/transsion/ad/monopoly/MonopolyAdManager$init$1;->L$0:Ljava/lang/Object;

    iput-object v0, v2, Lcom/transsion/ad/monopoly/MonopolyAdManager$init$1;->L$1:Ljava/lang/Object;

    iput v8, v2, Lcom/transsion/ad/monopoly/MonopolyAdManager$init$1;->label:I

    invoke-virtual {v1, v2}, Lcom/transsion/ad/monopoly/manager/c;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_7

    return-object v4

    :cond_7
    :goto_1
    sget-object v1, Lcom/transsion/ad/monopoly/manager/AdSceneAssetsManager;->b:Lcom/transsion/ad/monopoly/manager/AdSceneAssetsManager;

    iput-object v5, v2, Lcom/transsion/ad/monopoly/MonopolyAdManager$init$1;->L$0:Ljava/lang/Object;

    iput-object v0, v2, Lcom/transsion/ad/monopoly/MonopolyAdManager$init$1;->L$1:Ljava/lang/Object;

    iput v7, v2, Lcom/transsion/ad/monopoly/MonopolyAdManager$init$1;->label:I

    invoke-virtual {v1, v2}, Lcom/transsion/ad/monopoly/manager/c;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_8

    return-object v4

    :cond_8
    :goto_2
    sget-object v1, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->c:Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;

    invoke-virtual {v1}, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->n()V

    sget-object v1, Lcom/transsion/ad/strategy/c;->a:Lcom/transsion/ad/strategy/c;

    invoke-virtual {v1}, Lcom/transsion/ad/strategy/c;->a()Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object v1, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;->a:Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;

    new-instance v7, Lcom/transsion/ad/monopoly/a;

    invoke-direct {v7, v0}, Lcom/transsion/ad/monopoly/a;-><init>(Lkotlin/jvm/functions/Function1;)V

    const/4 v0, 0x0

    iput-object v0, v2, Lcom/transsion/ad/monopoly/MonopolyAdManager$init$1;->L$0:Ljava/lang/Object;

    iput-object v0, v2, Lcom/transsion/ad/monopoly/MonopolyAdManager$init$1;->L$1:Ljava/lang/Object;

    iput v6, v2, Lcom/transsion/ad/monopoly/MonopolyAdManager$init$1;->label:I

    invoke-virtual {v1, v5, v7, v2}, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;->t(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_9

    return-object v4

    :cond_9
    :goto_3
    sget-object v0, Lcom/transsion/ad/ps/activate/PSActivateManager;->a:Lcom/transsion/ad/ps/activate/PSActivateManager;

    invoke-virtual {v0}, Lcom/transsion/ad/ps/activate/PSActivateManager;->e()V

    goto :goto_4

    :cond_a
    sget-object v10, Loi/a;->a:Loi/a;

    const-string v11, "MonopolyAdManager --> init{} --> \u672a\u6ee1\u8db3\u95f4\u9694\uff0c\u4e0d\u8bf7\u6c42ad/config\u63a5\u53e3"

    const/4 v14, 0x6

    const/4 v15, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Loi/a;->c(Loi/a;Ljava/lang/String;IZILjava/lang/Object;)V

    if-eqz v0, :cond_b

    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_b
    :goto_4
    sget-object v0, Lcom/transsion/ad/monopoly/MonopolyAdManager;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :goto_5
    sget-object v1, Lcom/transsion/ad/monopoly/MonopolyAdManager;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0
.end method
