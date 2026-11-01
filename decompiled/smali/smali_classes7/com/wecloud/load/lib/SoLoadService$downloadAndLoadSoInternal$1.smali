.class final Lcom/wecloud/load/lib/SoLoadService$downloadAndLoadSoInternal$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wecloud/load/lib/SoLoadService;->r(Lcom/wecloud/load/lib/SoDownloadRequest;)V
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
    c = "com.wecloud.load.lib.SoLoadService$downloadAndLoadSoInternal$1"
    f = "SoLoadService.kt"
    l = {
        0xd1
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $soZipList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wecloud/load/lib/bean/SoZipInfo;",
            ">;"
        }
    .end annotation
.end field

.field I$0:I

.field I$1:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/wecloud/load/lib/SoLoadService;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/wecloud/load/lib/SoLoadService;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wecloud/load/lib/bean/SoZipInfo;",
            ">;",
            "Lcom/wecloud/load/lib/SoLoadService;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/wecloud/load/lib/SoLoadService$downloadAndLoadSoInternal$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/wecloud/load/lib/SoLoadService$downloadAndLoadSoInternal$1;->$soZipList:Ljava/util/List;

    iput-object p2, p0, Lcom/wecloud/load/lib/SoLoadService$downloadAndLoadSoInternal$1;->this$0:Lcom/wecloud/load/lib/SoLoadService;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance p1, Lcom/wecloud/load/lib/SoLoadService$downloadAndLoadSoInternal$1;

    iget-object v0, p0, Lcom/wecloud/load/lib/SoLoadService$downloadAndLoadSoInternal$1;->$soZipList:Ljava/util/List;

    iget-object v1, p0, Lcom/wecloud/load/lib/SoLoadService$downloadAndLoadSoInternal$1;->this$0:Lcom/wecloud/load/lib/SoLoadService;

    invoke-direct {p1, v0, v1, p2}, Lcom/wecloud/load/lib/SoLoadService$downloadAndLoadSoInternal$1;-><init>(Ljava/util/List;Lcom/wecloud/load/lib/SoLoadService;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/wecloud/load/lib/SoLoadService$downloadAndLoadSoInternal$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/wecloud/load/lib/SoLoadService$downloadAndLoadSoInternal$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/wecloud/load/lib/SoLoadService$downloadAndLoadSoInternal$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/wecloud/load/lib/SoLoadService$downloadAndLoadSoInternal$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v1, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v2, v1, Lcom/wecloud/load/lib/SoLoadService$downloadAndLoadSoInternal$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    iget v2, v1, Lcom/wecloud/load/lib/SoLoadService$downloadAndLoadSoInternal$1;->I$1:I

    iget v4, v1, Lcom/wecloud/load/lib/SoLoadService$downloadAndLoadSoInternal$1;->I$0:I

    iget-object v5, v1, Lcom/wecloud/load/lib/SoLoadService$downloadAndLoadSoInternal$1;->L$3:Ljava/lang/Object;

    check-cast v5, Ljava/util/Iterator;

    iget-object v6, v1, Lcom/wecloud/load/lib/SoLoadService$downloadAndLoadSoInternal$1;->L$2:Ljava/lang/Object;

    check-cast v6, Lcom/wecloud/load/lib/SoLoadService;

    iget-object v7, v1, Lcom/wecloud/load/lib/SoLoadService$downloadAndLoadSoInternal$1;->L$1:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v8, v1, Lcom/wecloud/load/lib/SoLoadService$downloadAndLoadSoInternal$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/internal/Ref$IntRef;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v11, v5

    move-object v12, v6

    move-object v13, v7

    move-object v14, v8

    move v6, v2

    move v2, v4

    move-object/from16 v4, p1

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_2

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object v4, Llg/a;->a:Llg/a$a;

    const-string v5, "SoLoadService"

    iget-object v2, v1, Lcom/wecloud/load/lib/SoLoadService$downloadAndLoadSoInternal$1;->$soZipList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u5f00\u59cb\u5904\u7406 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " \u4e2aZIP\u5305"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    new-instance v2, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    new-instance v4, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iget-object v5, v1, Lcom/wecloud/load/lib/SoLoadService$downloadAndLoadSoInternal$1;->$soZipList:Ljava/util/List;

    check-cast v5, Ljava/lang/Iterable;

    iget-object v6, v1, Lcom/wecloud/load/lib/SoLoadService$downloadAndLoadSoInternal$1;->this$0:Lcom/wecloud/load/lib/SoLoadService;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v7, 0x0

    move-object v8, v2

    move v2, v7

    move-object v7, v4

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v9, v2, 0x1

    if-gez v2, :cond_2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    :cond_2
    check-cast v4, Lcom/wecloud/load/lib/bean/SoZipInfo;

    invoke-static {v6}, Lcom/wecloud/load/lib/SoLoadService;->d(Lcom/wecloud/load/lib/SoLoadService;)Lkotlinx/coroutines/t1;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-interface {v10}, Lkotlinx/coroutines/t1;->isCancelled()Z

    move-result v10

    if-ne v10, v3, :cond_3

    move v2, v9

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Lcom/wecloud/load/lib/bean/SoZipInfo;->getSo_names()Ljava/util/List;

    move-result-object v10

    if-nez v10, :cond_4

    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object v10

    :cond_4
    sget-object v11, Llg/a;->a:Llg/a$a;

    const-string v12, "SoLoadService"

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\u5904\u7406\u7b2c "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " \u4e2aZIP\u5305\uff0c\u5305\u542b "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " \u4e2aSO\u6587\u4ef6"

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x4

    const/16 v16, 0x0

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iput-object v8, v1, Lcom/wecloud/load/lib/SoLoadService$downloadAndLoadSoInternal$1;->L$0:Ljava/lang/Object;

    iput-object v7, v1, Lcom/wecloud/load/lib/SoLoadService$downloadAndLoadSoInternal$1;->L$1:Ljava/lang/Object;

    iput-object v6, v1, Lcom/wecloud/load/lib/SoLoadService$downloadAndLoadSoInternal$1;->L$2:Ljava/lang/Object;

    iput-object v5, v1, Lcom/wecloud/load/lib/SoLoadService$downloadAndLoadSoInternal$1;->L$3:Ljava/lang/Object;

    iput v9, v1, Lcom/wecloud/load/lib/SoLoadService$downloadAndLoadSoInternal$1;->I$0:I

    iput v2, v1, Lcom/wecloud/load/lib/SoLoadService$downloadAndLoadSoInternal$1;->I$1:I

    iput v3, v1, Lcom/wecloud/load/lib/SoLoadService$downloadAndLoadSoInternal$1;->label:I

    invoke-static {v6, v4, v2, v1}, Lcom/wecloud/load/lib/SoLoadService;->n(Lcom/wecloud/load/lib/SoLoadService;Lcom/wecloud/load/lib/bean/SoZipInfo;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_5

    return-object v0

    :cond_5
    move-object v11, v5

    move-object v12, v6

    move-object v13, v7

    move-object v14, v8

    move v6, v2

    move v2, v9

    :goto_1
    check-cast v4, Lcom/wecloud/load/lib/SoLoadService$b;

    iget v5, v14, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v4}, Lcom/wecloud/load/lib/SoLoadService$b;->c()I

    move-result v7

    add-int/2addr v5, v7

    iput v5, v14, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget v5, v13, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v4}, Lcom/wecloud/load/lib/SoLoadService$b;->a()I

    move-result v7

    add-int/2addr v5, v7

    iput v5, v13, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v4}, Lcom/wecloud/load/lib/SoLoadService$b;->c()I

    move-result v7

    invoke-virtual {v4}, Lcom/wecloud/load/lib/SoLoadService$b;->a()I

    move-result v8

    invoke-virtual {v4}, Lcom/wecloud/load/lib/SoLoadService$b;->d()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v4}, Lcom/wecloud/load/lib/SoLoadService$b;->b()Ljava/util/Map;

    move-result-object v10

    move-object v5, v12

    invoke-static/range {v5 .. v10}, Lcom/wecloud/load/lib/SoLoadService;->k(Lcom/wecloud/load/lib/SoLoadService;IIILjava/util/List;Ljava/util/Map;)V

    move-object v5, v11

    move-object v6, v12

    move-object v7, v13

    move-object v8, v14

    goto/16 :goto_0

    :cond_6
    sget-object v0, Lcom/wecloud/load/lib/b;->a:Lcom/wecloud/load/lib/b;

    iget-object v2, v1, Lcom/wecloud/load/lib/SoLoadService$downloadAndLoadSoInternal$1;->this$0:Lcom/wecloud/load/lib/SoLoadService;

    invoke-virtual {v0, v2}, Lcom/wecloud/load/lib/b;->a(Landroid/content/Context;)V

    iget-object v0, v1, Lcom/wecloud/load/lib/SoLoadService$downloadAndLoadSoInternal$1;->this$0:Lcom/wecloud/load/lib/SoLoadService;

    iget-object v2, v1, Lcom/wecloud/load/lib/SoLoadService$downloadAndLoadSoInternal$1;->$soZipList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget v4, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {v0, v2, v3, v4}, Lcom/wecloud/load/lib/SoLoadService;->i(Lcom/wecloud/load/lib/SoLoadService;III)V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :goto_2
    sget-object v5, Llg/a;->a:Llg/a$a;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5904\u7406\u5f02\u5e38: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v10, 0x8

    const/4 v11, 0x0

    const-string v6, "SoLoadService"

    const/4 v9, 0x0

    move-object v8, v0

    invoke-static/range {v5 .. v11}, Llg/a$a;->k(Llg/a$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    iget-object v2, v1, Lcom/wecloud/load/lib/SoLoadService$downloadAndLoadSoInternal$1;->this$0:Lcom/wecloud/load/lib/SoLoadService;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x3e9

    invoke-static {v2, v3, v0}, Lcom/wecloud/load/lib/SoLoadService;->j(Lcom/wecloud/load/lib/SoLoadService;ILjava/lang/String;)V

    goto :goto_3

    :catch_1
    sget-object v4, Llg/a;->a:Llg/a$a;

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v5, "SoLoadService"

    const-string v6, "\u4efb\u52a1\u88ab\u53d6\u6d88"

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :goto_3
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
