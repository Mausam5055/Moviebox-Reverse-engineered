.class public final Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;

.field private static final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static c:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final d:Lkotlinx/coroutines/sync/a;

.field private static final e:Lkotlinx/coroutines/n0;

.field private static final f:Lkotlinx/coroutines/n0;

.field private static final g:Ljava/util/LinkedHashMap;

.field private static final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static i:Ljava/lang/String;

.field private static j:Lcom/transsion/lib_web/download_render/d;

.field private static final k:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;

    invoke-direct {v0}, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;-><init>()V

    sput-object v0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->a:Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x1

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->c:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lkotlinx/coroutines/sync/g;->b(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/a;

    move-result-object v0

    sput-object v0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->d:Lkotlinx/coroutines/sync/a;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const-string v2, "newSingleThreadExecutor(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlinx/coroutines/m1;->c(Ljava/util/concurrent/ExecutorService;)Lkotlinx/coroutines/k1;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v0

    sput-object v0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->e:Lkotlinx/coroutines/n0;

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v0

    sput-object v0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->f:Lkotlinx/coroutines/n0;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->g:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$a;

    invoke-direct {v0}, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$a;-><init>()V

    sput-object v0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->j:Lcom/transsion/lib_web/download_render/d;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->k:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()Ljava/util/LinkedHashMap;
    .locals 1

    sget-object v0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->g:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public static final synthetic b()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->k:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic c()Lkotlinx/coroutines/sync/a;
    .locals 1

    sget-object v0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->d:Lkotlinx/coroutines/sync/a;

    return-object v0
.end method

.method public static final synthetic d()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    sget-object v0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static final synthetic e(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->i:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic f(Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->m(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final k()V
    .locals 7

    sget-object v0, Lgm/i;->a:Lgm/i;

    sget-object v1, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<startDownloadExecution> isDownloadRunning value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", if value is true -> can\'t load download"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DR_FileDownloadTaskManager"

    invoke-virtual {v0, v3, v2}, Lgm/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->f:Lkotlinx/coroutines/n0;

    new-instance v4, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$startDownloadExecution$1;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$startDownloadExecution$1;-><init>(Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_0
    return-void
.end method

.method private final m(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    const/4 v2, 0x1

    instance-of v3, v0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$updateTask$1;

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$updateTask$1;

    iget v4, v3, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$updateTask$1;->label:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$updateTask$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$updateTask$1;

    invoke-direct {v3, v1, v0}, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$updateTask$1;-><init>(Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v3, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$updateTask$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v4

    iget v5, v3, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$updateTask$1;->label:I

    const-string v6, "DR_FileDownloadTaskManager"

    const/4 v7, 0x0

    if-eqz v5, :cond_2

    if-ne v5, v2, :cond_1

    iget-object v4, v3, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$updateTask$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/sync/a;

    iget-object v5, v3, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$updateTask$1;->L$1:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    iget-object v3, v3, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$updateTask$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;

    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object v0, Lgm/i;->a:Lgm/i;

    const-string v5, "<updateTask> start"

    invoke-virtual {v0, v6, v5}, Lgm/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->d:Lkotlinx/coroutines/sync/a;

    iput-object v1, v3, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$updateTask$1;->L$0:Ljava/lang/Object;

    move-object/from16 v5, p1

    iput-object v5, v3, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$updateTask$1;->L$1:Ljava/lang/Object;

    iput-object v0, v3, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$updateTask$1;->L$2:Ljava/lang/Object;

    iput v2, v3, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$updateTask$1;->label:I

    invoke-interface {v0, v7, v3}, Lkotlinx/coroutines/sync/a;->h(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v4, :cond_3

    return-object v4

    :cond_3
    move-object v4, v0

    move-object v3, v1

    :goto_1
    :try_start_0
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v8, Ljava/util/LinkedHashSet;

    invoke-direct {v8}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v9, Ljava/util/LinkedHashSet;

    invoke-direct {v9}, Ljava/util/LinkedHashSet;-><init>()V

    move-object v10, v5

    check-cast v10, Ljava/lang/Iterable;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v11, 0x0

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    add-int/lit8 v13, v11, 0x1

    if-gez v11, :cond_4

    :try_start_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v7

    goto/16 :goto_12

    :cond_4
    :goto_3
    :try_start_2
    check-cast v12, Lcom/transsion/lib_web/download_render/data/PageData;

    new-instance v14, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v14}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v15, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v15}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    move-object/from16 p1, v3

    const-wide/16 v2, -0x1

    iput-wide v2, v15, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    sget-object v17, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->g:Ljava/util/LinkedHashMap;

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Map$Entry;

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Number;

    move-object/from16 v20, v8

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v2, v18

    check-cast v2, Ljm/a;

    invoke-virtual {v2}, Ljm/a;->a()Lcom/transsion/lib_web/download_render/data/PageData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/lib_web/download_render/data/PageData;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12}, Lcom/transsion/lib_web/download_render/data/PageData;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iput-object v2, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iput-wide v7, v15, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    goto :goto_5

    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    goto/16 :goto_12

    :cond_5
    :goto_5
    move-object/from16 v1, p0

    move-object/from16 v8, v20

    const-wide/16 v2, -0x1

    const/4 v7, 0x0

    goto :goto_4

    :cond_6
    move-object/from16 v20, v8

    iget-wide v1, v15, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    const-wide/16 v7, -0x1

    cmp-long v1, v1, v7

    if-nez v1, :cond_7

    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_6
    move-object/from16 v2, v20

    goto :goto_8

    :cond_7
    invoke-virtual {v12}, Lcom/transsion/lib_web/download_render/data/PageData;->getVersionCode()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Ljm/a;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljm/a;->a()Lcom/transsion/lib_web/download_render/data/PageData;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/transsion/lib_web/download_render/data/PageData;->getVersionCode()Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_8
    const/4 v2, 0x0

    :goto_7
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-wide v1, v15, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-static {v1, v2}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_9
    iget-wide v1, v15, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-static {v1, v2}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v2, v20

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_8
    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object v8, v2

    move v11, v13

    const/4 v2, 0x1

    const/4 v7, 0x0

    goto/16 :goto_2

    :cond_a
    move-object/from16 p1, v3

    move-object v2, v8

    sget-object v1, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->g:Ljava/util/LinkedHashMap;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    invoke-static {v7, v8}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_c
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string v2, ", manifestUrl:"

    const-string v3, ", priority:"

    const-string v7, ", versionCode:"

    const-string v8, ", url:"

    if-eqz v1, :cond_12

    :try_start_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    sget-object v1, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->g:Ljava/util/LinkedHashMap;

    invoke-static {v10, v11}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljm/a;

    sget-object v10, Lgm/i;->a:Lgm/i;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljm/a;->b()J

    move-result-wide v11

    invoke-static {v11, v12}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    move-result-object v11

    goto :goto_b

    :cond_d
    const/4 v11, 0x0

    :goto_b
    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljm/a;->a()Lcom/transsion/lib_web/download_render/data/PageData;

    move-result-object v12

    if-eqz v12, :cond_e

    invoke-virtual {v12}, Lcom/transsion/lib_web/download_render/data/PageData;->getUrl()Ljava/lang/String;

    move-result-object v12

    goto :goto_c

    :cond_e
    const/4 v12, 0x0

    :goto_c
    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljm/a;->a()Lcom/transsion/lib_web/download_render/data/PageData;

    move-result-object v13

    if-eqz v13, :cond_f

    invoke-virtual {v13}, Lcom/transsion/lib_web/download_render/data/PageData;->getVersionCode()Ljava/lang/String;

    move-result-object v13

    goto :goto_d

    :cond_f
    const/4 v13, 0x0

    :goto_d
    if-eqz v1, :cond_10

    invoke-virtual {v1}, Ljm/a;->a()Lcom/transsion/lib_web/download_render/data/PageData;

    move-result-object v14

    if-eqz v14, :cond_10

    invoke-virtual {v14}, Lcom/transsion/lib_web/download_render/data/PageData;->getPriority()Ljava/lang/Long;

    move-result-object v14

    goto :goto_e

    :cond_10
    const/4 v14, 0x0

    :goto_e
    if-eqz v1, :cond_11

    invoke-virtual {v1}, Ljm/a;->a()Lcom/transsion/lib_web/download_render/data/PageData;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/transsion/lib_web/download_render/data/PageData;->getManifestUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_f

    :cond_11
    const/4 v1, 0x0

    :goto_f
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    const-string v0, "<updateTask> downloadTaskQueue \u79fb\u9664\u6389\u7684\u4efb\u52a1 taskId: "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v6, v0}, Lgm/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    goto/16 :goto_a

    :cond_12
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    sget-object v9, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->c:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v10, 0x1

    invoke-virtual {v9, v10, v11}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    move-result-wide v9

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/lib_web/download_render/data/PageData;

    sget-object v11, Lgm/i;->a:Lgm/i;

    invoke-virtual {v1}, Lcom/transsion/lib_web/download_render/data/PageData;->getUrl()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1}, Lcom/transsion/lib_web/download_render/data/PageData;->getVersionCode()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1}, Lcom/transsion/lib_web/download_render/data/PageData;->getPriority()Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v1}, Lcom/transsion/lib_web/download_render/data/PageData;->getManifestUrl()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v5

    const-string v5, "<updateTask> downloadTaskQueue \u6dfb\u52a0\u65b0\u4efb\u52a1 taskId: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v6, v0}, Lgm/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v9, v10}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v5, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->g:Ljava/util/LinkedHashMap;

    new-instance v11, Ljm/a;

    invoke-direct {v11, v9, v10, v1}, Ljm/a;-><init>(JLcom/transsion/lib_web/download_render/data/PageData;)V

    invoke-interface {v5, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v16

    move-object/from16 v5, v17

    goto :goto_10

    :cond_13
    sget-object v0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->g:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    const-string v2, "<get-values>(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$updateTask$lambda$9$$inlined$sortedByDescending$1;

    invoke-direct {v2}, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$updateTask$lambda$9$$inlined$sortedByDescending$1;-><init>()V

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->I0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "next(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljm/a;

    sget-object v2, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->g:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljm/a;->b()J

    move-result-wide v5

    invoke-static {v5, v6}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    :cond_14
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v1, 0x0

    invoke-interface {v4, v1}, Lkotlinx/coroutines/sync/a;->unlock(Ljava/lang/Object;)V

    invoke-direct/range {p1 .. p1}, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->k()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :goto_12
    invoke-interface {v4, v1}, Lkotlinx/coroutines/sync/a;->unlock(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public final g(Ljava/util/List;)V
    .locals 9

    sget-object v0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "DR_FileDownloadTaskManager"

    if-nez v0, :cond_0

    sget-object p1, Lgm/i;->a:Lgm/i;

    const-string v0, "<executeTask> fail, plz init first"

    invoke-virtual {p1, v1, v0}, Lgm/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_2

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_2

    sget-object v3, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->e:Lkotlinx/coroutines/n0;

    new-instance v6, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$executeTask$2$1;

    invoke-direct {v6, p1, v2}, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$executeTask$2$1;-><init>(Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    move-result-object p1

    if-nez p1, :cond_3

    :cond_2
    sget-object p1, Lgm/i;->a:Lgm/i;

    const-string v0, "<executeTask> fail: h5Pages is null or empty"

    invoke-virtual {p1, v1, v0}, Lgm/i;->f(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_3
    return-void
.end method

.method public final h()Lcom/transsion/lib_web/download_render/d;
    .locals 1

    sget-object v0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->j:Lcom/transsion/lib_web/download_render/d;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final j(Landroid/app/Application;ZZZLhj/j;Ljava/lang/String;)V
    .locals 13

    const-string v0, "context"

    move-object v10, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "api"

    move-object/from16 v11, p5

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    move-object/from16 v12, p6

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    sget-object v1, Lmg/c;->a:Lmg/c$a;

    sget-object v3, Lcom/tn/lib/logger/xlog/LogType;->TYPE_LOGCAT:Lcom/tn/lib/logger/xlog/LogType;

    const/16 v8, 0x18

    const/4 v9, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v2, p1

    move/from16 v4, p4

    invoke-static/range {v1 .. v9}, Lmg/c$a;->g(Lmg/c$a;Landroid/app/Application;Lcom/tn/lib/logger/xlog/LogType;ZLjava/lang/String;JILjava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    const-string v1, "DR_FileDownloadTaskManager"

    if-eqz v0, :cond_1

    sget-object v0, Lgm/i;->a:Lgm/i;

    const-string v2, "<init> start"

    invoke-virtual {v0, v1, v2}, Lgm/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->e:Lkotlinx/coroutines/n0;

    new-instance v7, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$init$1;

    const/4 v6, 0x0

    move-object v1, v7

    move-object/from16 v2, p6

    move-object v3, p1

    move v4, p2

    move-object/from16 v5, p5

    invoke-direct/range {v1 .. v6}, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$init$1;-><init>(Ljava/lang/String;Landroid/app/Application;ZLhj/j;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object p1, v0

    move-object p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v7

    move/from16 p5, v1

    move-object/from16 p6, v2

    invoke-static/range {p1 .. p6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    goto :goto_0

    :cond_1
    sget-object v0, Lgm/i;->a:Lgm/i;

    const-string v2, "<init> already done"

    invoke-virtual {v0, v1, v2}, Lgm/i;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final l()V
    .locals 1

    new-instance v0, Lcom/transsion/lib_web/download_render/init/b;

    invoke-direct {v0}, Lcom/transsion/lib_web/download_render/init/b;-><init>()V

    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/init/b;->invoke()V

    return-void
.end method
