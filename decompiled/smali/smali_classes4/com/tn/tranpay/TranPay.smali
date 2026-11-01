.class public final Lcom/tn/tranpay/TranPay;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/tn/tranpay/TranPay;

.field private static b:Landroid/app/Application;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tn/tranpay/TranPay;

    invoke-direct {v0}, Lcom/tn/tranpay/TranPay;-><init>()V

    sput-object v0, Lcom/tn/tranpay/TranPay;->a:Lcom/tn/tranpay/TranPay;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic c(Lcom/tn/tranpay/TranPay;Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tn/tranpay/logger/LogLevel;ZZLjava/lang/String;Lcom/tn/tranpay/e;ILjava/lang/Object;)V
    .locals 12

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_0

    sget-object v1, Lcom/tn/tranpay/logger/LogLevel;->INFO:Lcom/tn/tranpay/logger/LogLevel;

    move-object v7, v1

    goto :goto_0

    :cond_0
    move-object/from16 v7, p5

    :goto_0
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    move v8, v1

    goto :goto_1

    :cond_1
    move/from16 v8, p6

    :goto_1
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    move v9, v1

    goto :goto_2

    :cond_2
    move/from16 v9, p7

    :goto_2
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    move-object v10, v1

    goto :goto_3

    :cond_3
    move-object/from16 v10, p8

    :goto_3
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_4

    sget-object v0, Lcom/tn/tranpay/e;->c:Lcom/tn/tranpay/e$a;

    invoke-virtual {v0}, Lcom/tn/tranpay/e$a;->b()Lcom/tn/tranpay/e;

    move-result-object v0

    move-object v11, v0

    goto :goto_4

    :cond_4
    move-object/from16 v11, p9

    :goto_4
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    invoke-virtual/range {v2 .. v11}, Lcom/tn/tranpay/TranPay;->b(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tn/tranpay/logger/LogLevel;ZZLjava/lang/String;Lcom/tn/tranpay/e;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tn/tranpay/logger/LoggerPlugin;)V
    .locals 1

    const-string v0, "plugin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lai/a;->a:Lai/a;

    invoke-virtual {v0, p1}, Lai/a;->a(Lcom/tn/tranpay/logger/LoggerPlugin;)V

    return-void
.end method

.method public final b(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tn/tranpay/logger/LogLevel;ZZLjava/lang/String;Lcom/tn/tranpay/e;)V
    .locals 15

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    const-string v8, "application"

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "cpId"

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "appKey"

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "channel"

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "level"

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "theme"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/tn/tranpay/TranPay;->b:Landroid/app/Application;

    sget-object v8, Lcom/tn/tranpay/TranPayConfiguration;->a:Lcom/tn/tranpay/TranPayConfiguration;

    invoke-virtual {v8, v1}, Lcom/tn/tranpay/TranPayConfiguration;->x(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Lcom/tn/tranpay/TranPayConfiguration;->v(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Lcom/tn/tranpay/TranPayConfiguration;->w(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Lcom/tn/tranpay/TranPayConfiguration;->B(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Lcom/tn/tranpay/TranPayConfiguration;->y(Z)V

    move/from16 v2, p7

    invoke-virtual {v8, v2}, Lcom/tn/tranpay/TranPayConfiguration;->A(Z)V

    sget-object v2, Lcom/tn/tranpay/e;->c:Lcom/tn/tranpay/e$a;

    invoke-virtual {v2, v7}, Lcom/tn/tranpay/e$a;->a(Lcom/tn/tranpay/e;)V

    sget-object v2, Lai/a;->a:Lai/a;

    invoke-virtual {v2, v4, v5}, Lai/a;->h(Lcom/tn/tranpay/logger/LogLevel;Z)V

    sget-object v3, Lcom/tn/tranpay/event/a;->a:Lcom/tn/tranpay/event/a;

    invoke-virtual {v3, v0}, Lcom/tn/tranpay/event/a;->b(Landroid/app/Application;)V

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v3

    invoke-static {v3}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v9

    new-instance v12, Lcom/tn/tranpay/TranPay$configure$1;

    const/4 v3, 0x0

    invoke-direct {v12, v0, v5, v6, v3}, Lcom/tn/tranpay/TranPay$configure$1;-><init>(Landroid/app/Application;ZLjava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v13, 0x3

    const/4 v14, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v9 .. v14}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TranPay init succeed "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v2, v0, v3, v1, v3}, Lai/a;->g(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Lcom/tn/tranpay/TranPayConfiguration;->z(Z)V

    return-void
.end method

.method public final d()Landroid/app/Application;
    .locals 2

    sget-object v0, Lcom/tn/tranpay/TranPay;->b:Landroid/app/Application;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TranPay SDK not initialized. Please call TranPay.configure() first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    const-string v0, "1.0.6.3"

    return-object v0
.end method
