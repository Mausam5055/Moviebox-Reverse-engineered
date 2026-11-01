.class public final Lcom/transsion/base/infras_config/InfraInitManager;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/base/infras_config/InfraInitManager;

.field private static final b:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/base/infras_config/InfraInitManager;

    invoke-direct {v0}, Lcom/transsion/base/infras_config/InfraInitManager;-><init>()V

    sput-object v0, Lcom/transsion/base/infras_config/InfraInitManager;->a:Lcom/transsion/base/infras_config/InfraInitManager;

    new-instance v0, Lcom/transsion/base/infras_config/a;

    invoke-direct {v0}, Lcom/transsion/base/infras_config/a;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsion/base/infras_config/InfraInitManager;->b:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/transsion/base/infras_config/api/InfraInitApi;
    .locals 1

    invoke-static {}, Lcom/transsion/base/infras_config/InfraInitManager;->b()Lcom/transsion/base/infras_config/api/InfraInitApi;

    move-result-object v0

    return-object v0
.end method

.method private static final b()Lcom/transsion/base/infras_config/api/InfraInitApi;
    .locals 2

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Lcom/transsion/base/infras_config/api/InfraInitApi;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/base/infras_config/api/InfraInitApi;

    return-object v0
.end method

.method private final c()Lcom/transsion/base/infras_config/api/InfraInitApi;
    .locals 1

    sget-object v0, Lcom/transsion/base/infras_config/InfraInitManager;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/base/infras_config/api/InfraInitApi;

    return-object v0
.end method

.method public static synthetic g(Lcom/transsion/base/infras_config/InfraInitManager;Ljava/util/List;Ljava/lang/String;JLjava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 9

    and-int/lit8 v0, p7, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v4, v1

    goto :goto_0

    :cond_0
    move-object v4, p2

    :goto_0
    and-int/lit8 v0, p7, 0x4

    if-eqz v0, :cond_1

    const-wide/32 v2, 0x36ee80

    move-wide v5, v2

    goto :goto_1

    :cond_1
    move-wide v5, p3

    :goto_1
    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_2

    move-object v7, v1

    goto :goto_2

    :cond_2
    move-object v7, p5

    :goto_2
    move-object v2, p0

    move-object v3, p1

    move-object v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/transsion/base/infras_config/InfraInitManager;->f(Ljava/util/List;Ljava/lang/String;JLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final d(Lcom/transsion/base/infras_config/model/InfrasSourceType;)Lcom/transsion/base/infras_config/model/ConfigInitDataItem;
    .locals 1

    const-string v0, "sourceType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lgj/b;->a:Lgj/b;

    invoke-virtual {v0, p1}, Lgj/b;->c(Lcom/transsion/base/infras_config/model/InfrasSourceType;)Lcom/transsion/base/infras_config/model/ConfigInitDataItem;

    move-result-object p1

    return-object p1
.end method

.method public final e(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p4, Lcom/transsion/base/infras_config/InfraInitManager$init$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/transsion/base/infras_config/InfraInitManager$init$1;

    iget v1, v0, Lcom/transsion/base/infras_config/InfraInitManager$init$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/base/infras_config/InfraInitManager$init$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/base/infras_config/InfraInitManager$init$1;

    invoke-direct {v0, p0, p4}, Lcom/transsion/base/infras_config/InfraInitManager$init$1;-><init>(Lcom/transsion/base/infras_config/InfraInitManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Lcom/transsion/base/infras_config/InfraInitManager$init$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/base/infras_config/InfraInitManager$init$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object p4

    new-instance v2, Lcom/transsion/base/infras_config/InfraInitManager$init$2;

    const/4 v4, 0x0

    invoke-direct {v2, p1, p2, p3, v4}, Lcom/transsion/base/infras_config/InfraInitManager$init$2;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput v3, v0, Lcom/transsion/base/infras_config/InfraInitManager$init$1;->label:I

    invoke-static {p4, v2, v0}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p4, Lkotlin/Result;

    invoke-virtual {p4}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final f(Ljava/util/List;Ljava/lang/String;JLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13

    move-object/from16 v0, p6

    instance-of v1, v0, Lcom/transsion/base/infras_config/InfraInitManager$initIfNeeded$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/transsion/base/infras_config/InfraInitManager$initIfNeeded$1;

    iget v2, v1, Lcom/transsion/base/infras_config/InfraInitManager$initIfNeeded$1;->label:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/transsion/base/infras_config/InfraInitManager$initIfNeeded$1;->label:I

    move-object v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/transsion/base/infras_config/InfraInitManager$initIfNeeded$1;

    move-object v2, p0

    invoke-direct {v1, p0, v0}, Lcom/transsion/base/infras_config/InfraInitManager$initIfNeeded$1;-><init>(Lcom/transsion/base/infras_config/InfraInitManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v1, Lcom/transsion/base/infras_config/InfraInitManager$initIfNeeded$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v3

    iget v4, v1, Lcom/transsion/base/infras_config/InfraInitManager$initIfNeeded$1;->label:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    new-instance v4, Lcom/transsion/base/infras_config/InfraInitManager$initIfNeeded$2;

    const/4 v12, 0x0

    move-object v6, v4

    move-wide/from16 v7, p3

    move-object v9, p1

    move-object v10, p2

    move-object/from16 v11, p5

    invoke-direct/range {v6 .. v12}, Lcom/transsion/base/infras_config/InfraInitManager$initIfNeeded$2;-><init>(JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput v5, v1, Lcom/transsion/base/infras_config/InfraInitManager$initIfNeeded$1;->label:I

    invoke-static {v0, v4, v1}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_3

    return-object v3

    :cond_3
    :goto_1
    check-cast v0, Lkotlin/Result;

    invoke-virtual {v0}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final h(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/rxjava3/core/j;
    .locals 8

    const-string v0, "sourceVersions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Llg/a;->a:Llg/a$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initRx() start, sourceCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", version="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", baseUrl="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "InfraInitManager"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object v2, Lgj/b;->a:Lgj/b;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    move-object v3, v4

    goto :goto_0

    :cond_0
    move-object v3, p1

    :goto_0
    check-cast v3, Ljava/util/List;

    invoke-virtual {v2, v3}, Lgj/b;->l(Ljava/util/List;)V

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object p1, v4

    :cond_1
    check-cast p1, Ljava/util/List;

    new-instance v2, Lcom/transsion/base/infras_config/model/ConfigInitMobileInfraReq;

    invoke-direct {v2, p1, p2}, Lcom/transsion/base/infras_config/model/ConfigInitMobileInfraReq;-><init>(Ljava/util/List;Ljava/lang/String;)V

    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    invoke-direct {p0}, Lcom/transsion/base/infras_config/InfraInitManager;->c()Lcom/transsion/base/infras_config/api/InfraInitApi;

    move-result-object p1

    invoke-interface {p1, p3, v2}, Lcom/transsion/base/infras_config/api/InfraInitApi;->initMobileInfra(Ljava/lang/String;Lcom/transsion/base/infras_config/model/ConfigInitMobileInfraReq;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    sget-object p2, Lsg/d;->a:Lsg/d;

    invoke-virtual {p2}, Lsg/d;->e()Lio/reactivex/rxjava3/core/n;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/j;->f(Lio/reactivex/rxjava3/core/n;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    sget-object p2, Lcom/transsion/base/infras_config/InfraInitManager$a;->a:Lcom/transsion/base/infras_config/InfraInitManager$a;

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/j;->y(Llz/d;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    new-instance p2, Lcom/transsion/base/infras_config/InfraInitManager$b;

    invoke-direct {p2, v0, v1}, Lcom/transsion/base/infras_config/InfraInitManager$b;-><init>(J)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/j;->u(Llz/h;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    new-instance p2, Lcom/transsion/base/infras_config/InfraInitManager$c;

    invoke-direct {p2, v0, v1}, Lcom/transsion/base/infras_config/InfraInitManager$c;-><init>(J)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/j;->j(Llz/f;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    const-string p2, "doOnError(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
