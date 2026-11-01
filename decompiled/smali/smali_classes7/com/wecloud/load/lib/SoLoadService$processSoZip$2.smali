.class final Lcom/wecloud/load/lib/SoLoadService$processSoZip$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wecloud/load/lib/SoLoadService;->y(Lcom/wecloud/load/lib/bean/SoZipInfo;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lcom/wecloud/load/lib/SoLoadService$b;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lkotlinx/coroutines/n0;",
        "Lcom/wecloud/load/lib/SoLoadService$b;",
        "<anonymous>",
        "(Lkotlinx/coroutines/n0;)Lcom/wecloud/load/lib/SoLoadService$b;"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.wecloud.load.lib.SoLoadService$processSoZip$2"
    f = "SoLoadService.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $soZipInfo:Lcom/wecloud/load/lib/bean/SoZipInfo;

.field final synthetic $zipIndex:I

.field label:I

.field final synthetic this$0:Lcom/wecloud/load/lib/SoLoadService;


# direct methods
.method constructor <init>(Lcom/wecloud/load/lib/bean/SoZipInfo;ILcom/wecloud/load/lib/SoLoadService;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wecloud/load/lib/bean/SoZipInfo;",
            "I",
            "Lcom/wecloud/load/lib/SoLoadService;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/wecloud/load/lib/SoLoadService$processSoZip$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/wecloud/load/lib/SoLoadService$processSoZip$2;->$soZipInfo:Lcom/wecloud/load/lib/bean/SoZipInfo;

    iput p2, p0, Lcom/wecloud/load/lib/SoLoadService$processSoZip$2;->$zipIndex:I

    iput-object p3, p0, Lcom/wecloud/load/lib/SoLoadService$processSoZip$2;->this$0:Lcom/wecloud/load/lib/SoLoadService;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance p1, Lcom/wecloud/load/lib/SoLoadService$processSoZip$2;

    iget-object v0, p0, Lcom/wecloud/load/lib/SoLoadService$processSoZip$2;->$soZipInfo:Lcom/wecloud/load/lib/bean/SoZipInfo;

    iget v1, p0, Lcom/wecloud/load/lib/SoLoadService$processSoZip$2;->$zipIndex:I

    iget-object v2, p0, Lcom/wecloud/load/lib/SoLoadService$processSoZip$2;->this$0:Lcom/wecloud/load/lib/SoLoadService;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/wecloud/load/lib/SoLoadService$processSoZip$2;-><init>(Lcom/wecloud/load/lib/bean/SoZipInfo;ILcom/wecloud/load/lib/SoLoadService;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/wecloud/load/lib/SoLoadService$processSoZip$2;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/wecloud/load/lib/SoLoadService$b;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/wecloud/load/lib/SoLoadService$processSoZip$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/wecloud/load/lib/SoLoadService$processSoZip$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/wecloud/load/lib/SoLoadService$processSoZip$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    iget v1, v0, Lcom/wecloud/load/lib/SoLoadService$processSoZip$2;->label:I

    if-nez v1, :cond_21

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v1, Lgz/e;

    invoke-direct {v1}, Lgz/e;-><init>()V

    iget-object v2, v0, Lcom/wecloud/load/lib/SoLoadService$processSoZip$2;->$soZipInfo:Lcom/wecloud/load/lib/bean/SoZipInfo;

    invoke-virtual {v2}, Lcom/wecloud/load/lib/bean/SoZipInfo;->getSo_names()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v6, Llg/a;->a:Llg/a$a;

    iget v1, v0, Lcom/wecloud/load/lib/SoLoadService$processSoZip$2;->$zipIndex:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ZIP\u5305 "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " \u6ca1\u6709\u6307\u5b9aSO\u6587\u4ef6\u540d"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x4

    const/4 v11, 0x0

    const-string v7, "SoLoadService"

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Llg/a$a;->z(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    new-instance v1, Lcom/wecloud/load/lib/SoLoadService$b;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/wecloud/load/lib/SoLoadService$b;-><init>(Ljava/util/List;Ljava/util/Map;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    :cond_1
    move-object v5, v2

    check-cast v5, Ljava/lang/Iterable;

    iget-object v6, v0, Lcom/wecloud/load/lib/SoLoadService$processSoZip$2;->this$0:Lcom/wecloud/load/lib/SoLoadService;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v6}, Lcom/wecloud/load/lib/SoLoadService;->e(Lcom/wecloud/load/lib/SoLoadService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v10

    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v10, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    sget-object v6, Lgz/c;->a:Lgz/c;

    iget-object v7, v0, Lcom/wecloud/load/lib/SoLoadService$processSoZip$2;->this$0:Lcom/wecloud/load/lib/SoLoadService;

    iget-object v8, v0, Lcom/wecloud/load/lib/SoLoadService$processSoZip$2;->$soZipInfo:Lcom/wecloud/load/lib/bean/SoZipInfo;

    invoke-virtual {v8}, Lcom/wecloud/load/lib/bean/SoZipInfo;->getZip_url()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lgz/c;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    iget-object v8, v0, Lcom/wecloud/load/lib/SoLoadService$processSoZip$2;->this$0:Lcom/wecloud/load/lib/SoLoadService;

    iget v10, v0, Lcom/wecloud/load/lib/SoLoadService$processSoZip$2;->$zipIndex:I

    invoke-virtual {v6, v8, v10}, Lgz/c;->d(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v6, v7}, Lgz/c;->c(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, v0, Lcom/wecloud/load/lib/SoLoadService$processSoZip$2;->$soZipInfo:Lcom/wecloud/load/lib/bean/SoZipInfo;

    invoke-virtual {v6}, Lcom/wecloud/load/lib/bean/SoZipInfo;->getMd5()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-static {v6}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    sget-object v6, Lgz/d;->a:Lgz/d;

    invoke-virtual {v6, v7}, Lgz/d;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v11

    iget-object v12, v0, Lcom/wecloud/load/lib/SoLoadService$processSoZip$2;->$soZipInfo:Lcom/wecloud/load/lib/bean/SoZipInfo;

    invoke-virtual {v12}, Lcom/wecloud/load/lib/bean/SoZipInfo;->getMd5()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Lgz/d;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    sget-object v11, Llg/a;->a:Llg/a$a;

    iget-object v6, v0, Lcom/wecloud/load/lib/SoLoadService$processSoZip$2;->$soZipInfo:Lcom/wecloud/load/lib/bean/SoZipInfo;

    invoke-virtual {v6}, Lcom/wecloud/load/lib/bean/SoZipInfo;->getZip_url()Ljava/lang/String;

    move-result-object v6

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ZIP\u6587\u4ef6MD5\u4e0d\u5339\u914d\uff0c\u9700\u8981\u91cd\u65b0\u4e0b\u8f7d: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x4

    const/16 v16, 0x0

    const-string v12, "SoLoadService"

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :goto_1
    const/4 v6, 0x1

    goto :goto_4

    :cond_4
    sget-object v17, Llg/a;->a:Llg/a$a;

    iget-object v6, v0, Lcom/wecloud/load/lib/SoLoadService$processSoZip$2;->$soZipInfo:Lcom/wecloud/load/lib/bean/SoZipInfo;

    invoke-virtual {v6}, Lcom/wecloud/load/lib/bean/SoZipInfo;->getZip_url()Ljava/lang/String;

    move-result-object v6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ZIP\u6587\u4ef6\u5df2\u5b58\u5728\u4e14MD5\u5339\u914d: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v21, 0x4

    const/16 v22, 0x0

    const-string v18, "SoLoadService"

    const/16 v20, 0x0

    invoke-static/range {v17 .. v22}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_3

    :cond_5
    :goto_2
    sget-object v11, Llg/a;->a:Llg/a$a;

    iget-object v6, v0, Lcom/wecloud/load/lib/SoLoadService$processSoZip$2;->$soZipInfo:Lcom/wecloud/load/lib/bean/SoZipInfo;

    invoke-virtual {v6}, Lcom/wecloud/load/lib/bean/SoZipInfo;->getZip_url()Ljava/lang/String;

    move-result-object v6

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ZIP\u6587\u4ef6\u5df2\u5b58\u5728\uff08\u65e0MD5\u6821\u9a8c\uff09: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x4

    const/16 v16, 0x0

    const-string v12, "SoLoadService"

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :goto_3
    move v6, v9

    goto :goto_4

    :cond_6
    sget-object v17, Llg/a;->a:Llg/a$a;

    iget-object v6, v0, Lcom/wecloud/load/lib/SoLoadService$processSoZip$2;->$soZipInfo:Lcom/wecloud/load/lib/bean/SoZipInfo;

    invoke-virtual {v6}, Lcom/wecloud/load/lib/bean/SoZipInfo;->getZip_url()Ljava/lang/String;

    move-result-object v6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ZIP\u6587\u4ef6\u4e0d\u5b58\u5728\uff0c\u9700\u8981\u4e0b\u8f7d: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v21, 0x4

    const/16 v22, 0x0

    const-string v18, "SoLoadService"

    const/16 v20, 0x0

    invoke-static/range {v17 .. v22}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_1

    :goto_4
    const/16 v11, 0x4b

    if-nez v6, :cond_a

    instance-of v12, v5, Ljava/util/Collection;

    if-eqz v12, :cond_8

    move-object v12, v5

    check-cast v12, Ljava/util/Collection;

    invoke-interface {v12}, Ljava/util/Collection;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_8

    :cond_7
    const/4 v12, 0x1

    goto :goto_6

    :cond_8
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v8, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-virtual {v14}, Ljava/io/File;->isFile()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-lez v13, :cond_9

    goto :goto_5

    :cond_9
    move v12, v9

    :goto_6
    if-eqz v12, :cond_b

    sget-object v13, Llg/a;->a:Llg/a$a;

    const/16 v17, 0x4

    const/16 v18, 0x0

    const-string v14, "SoLoadService"

    const-string v15, "\u6240\u6709SO\u6587\u4ef6\u5df2\u5b58\u5728\uff0c\u8df3\u8fc7\u4e0b\u8f7d\u548c\u89e3\u538b\uff0c\u76f4\u63a5\u590d\u7528"

    const/16 v16, 0x0

    invoke-static/range {v13 .. v18}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v13, v0, Lcom/wecloud/load/lib/SoLoadService$processSoZip$2;->this$0:Lcom/wecloud/load/lib/SoLoadService;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_7
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_b

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-static {v13}, Lcom/wecloud/load/lib/SoLoadService;->e(Lcom/wecloud/load/lib/SoLoadService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v9

    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v15, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v9, 0x0

    goto :goto_7

    :cond_a
    const/4 v12, 0x0

    :cond_b
    const-string v9, "SoLoadService"

    const/4 v10, -0x1

    if-nez v12, :cond_18

    const/16 v12, 0x32

    if-eqz v6, :cond_14

    iget-object v6, v0, Lcom/wecloud/load/lib/SoLoadService$processSoZip$2;->this$0:Lcom/wecloud/load/lib/SoLoadService;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_8
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-static {v6}, Lcom/wecloud/load/lib/SoLoadService;->e(Lcom/wecloud/load/lib/SoLoadService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v15

    const/16 v17, 0xa

    invoke-static/range {v17 .. v17}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v15, v14, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v11, 0x4b

    goto :goto_8

    :cond_c
    iget-object v6, v0, Lcom/wecloud/load/lib/SoLoadService$processSoZip$2;->$soZipInfo:Lcom/wecloud/load/lib/bean/SoZipInfo;

    invoke-virtual {v6}, Lcom/wecloud/load/lib/bean/SoZipInfo;->getZip_url()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v7}, Lgz/e;->b(Ljava/lang/String;Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, v0, Lcom/wecloud/load/lib/SoLoadService$processSoZip$2;->this$0:Lcom/wecloud/load/lib/SoLoadService;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "ZIP\u4e0b\u8f7d\u5931\u8d25"

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/wecloud/load/lib/SoLoadService;->e(Lcom/wecloud/load/lib/SoLoadService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_d
    sget-object v11, Llg/a;->a:Llg/a$a;

    iget-object v1, v0, Lcom/wecloud/load/lib/SoLoadService$processSoZip$2;->$soZipInfo:Lcom/wecloud/load/lib/bean/SoZipInfo;

    invoke-virtual {v1}, Lcom/wecloud/load/lib/bean/SoZipInfo;->getZip_url()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ZIP\u4e0b\u8f7d\u5931\u8d25: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x4

    const/16 v16, 0x0

    const-string v12, "SoLoadService"

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    new-instance v1, Lcom/wecloud/load/lib/SoLoadService$b;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/wecloud/load/lib/SoLoadService$b;-><init>(Ljava/util/List;Ljava/util/Map;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    :cond_e
    iget-object v1, v0, Lcom/wecloud/load/lib/SoLoadService$processSoZip$2;->this$0:Lcom/wecloud/load/lib/SoLoadService;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v1}, Lcom/wecloud/load/lib/SoLoadService;->e(Lcom/wecloud/load/lib/SoLoadService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v13

    const/16 v14, 0x1e

    invoke-static {v14}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v11, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_f
    iget-object v1, v0, Lcom/wecloud/load/lib/SoLoadService$processSoZip$2;->$soZipInfo:Lcom/wecloud/load/lib/bean/SoZipInfo;

    invoke-virtual {v1}, Lcom/wecloud/load/lib/bean/SoZipInfo;->getMd5()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-static {v1}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_b

    :cond_10
    const/4 v1, 0x0

    goto :goto_c

    :cond_11
    :goto_b
    const/4 v1, 0x1

    :goto_c
    if-nez v1, :cond_13

    sget-object v1, Lgz/d;->a:Lgz/d;

    invoke-virtual {v1, v7}, Lgz/d;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    sget-object v19, Llg/a;->a:Llg/a$a;

    iget-object v11, v0, Lcom/wecloud/load/lib/SoLoadService$processSoZip$2;->$soZipInfo:Lcom/wecloud/load/lib/bean/SoZipInfo;

    invoke-virtual {v11}, Lcom/wecloud/load/lib/bean/SoZipInfo;->getMd5()Ljava/lang/String;

    move-result-object v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ZIP\u6587\u4ef6MD5: downloadedMd5="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", soZipInfoMd5="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v23, 0x4

    const/16 v24, 0x0

    const-string v20, "SoLoadService"

    const/16 v22, 0x0

    invoke-static/range {v19 .. v24}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v11, v0, Lcom/wecloud/load/lib/SoLoadService$processSoZip$2;->$soZipInfo:Lcom/wecloud/load/lib/bean/SoZipInfo;

    invoke-virtual {v11}, Lcom/wecloud/load/lib/bean/SoZipInfo;->getMd5()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v6, v11}, Lgz/d;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    sget-object v1, Lgz/c;->a:Lgz/c;

    invoke-virtual {v1, v7}, Lgz/c;->b(Ljava/io/File;)Z

    iget-object v1, v0, Lcom/wecloud/load/lib/SoLoadService$processSoZip$2;->this$0:Lcom/wecloud/load/lib/SoLoadService;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "ZIP MD5\u6821\u9a8c\u5931\u8d25"

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/wecloud/load/lib/SoLoadService;->e(Lcom/wecloud/load/lib/SoLoadService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_12
    sget-object v11, Llg/a;->a:Llg/a$a;

    iget-object v1, v0, Lcom/wecloud/load/lib/SoLoadService$processSoZip$2;->$soZipInfo:Lcom/wecloud/load/lib/bean/SoZipInfo;

    invoke-virtual {v1}, Lcom/wecloud/load/lib/bean/SoZipInfo;->getZip_url()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ZIP\u6587\u4ef6MD5\u6821\u9a8c\u5931\u8d25: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x4

    const/16 v16, 0x0

    const-string v12, "SoLoadService"

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    new-instance v1, Lcom/wecloud/load/lib/SoLoadService$b;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/wecloud/load/lib/SoLoadService$b;-><init>(Ljava/util/List;Ljava/util/Map;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    :cond_13
    iget-object v1, v0, Lcom/wecloud/load/lib/SoLoadService$processSoZip$2;->this$0:Lcom/wecloud/load/lib/SoLoadService;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_15

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v1}, Lcom/wecloud/load/lib/SoLoadService;->e(Lcom/wecloud/load/lib/SoLoadService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v13

    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v11, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :cond_14
    iget-object v1, v0, Lcom/wecloud/load/lib/SoLoadService$processSoZip$2;->this$0:Lcom/wecloud/load/lib/SoLoadService;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_15

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v1}, Lcom/wecloud/load/lib/SoLoadService;->e(Lcom/wecloud/load/lib/SoLoadService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v13

    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v11, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    :cond_15
    sget-object v1, Lgz/c;->a:Lgz/c;

    invoke-virtual {v1, v8}, Lgz/c;->a(Ljava/io/File;)Z

    invoke-virtual {v1, v7, v8}, Lgz/c;->h(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_17

    iget-object v1, v0, Lcom/wecloud/load/lib/SoLoadService$processSoZip$2;->this$0:Lcom/wecloud/load/lib/SoLoadService;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "ZIP\u89e3\u538b\u5931\u8d25"

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/wecloud/load/lib/SoLoadService;->e(Lcom/wecloud/load/lib/SoLoadService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    :cond_16
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ZIP\u89e3\u538b\u5931\u8d25: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/wecloud/load/lib/SoLoadService$b;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/wecloud/load/lib/SoLoadService$b;-><init>(Ljava/util/List;Ljava/util/Map;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    :cond_17
    iget-object v1, v0, Lcom/wecloud/load/lib/SoLoadService$processSoZip$2;->this$0:Lcom/wecloud/load/lib/SoLoadService;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_11
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_18

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v1}, Lcom/wecloud/load/lib/SoLoadService;->e(Lcom/wecloud/load/lib/SoLoadService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v11

    const/16 v12, 0x4b

    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v11, v7, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    :cond_18
    iget-object v1, v0, Lcom/wecloud/load/lib/SoLoadService$processSoZip$2;->this$0:Lcom/wecloud/load/lib/SoLoadService;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_12
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v1}, Lcom/wecloud/load/lib/SoLoadService;->d(Lcom/wecloud/load/lib/SoLoadService;)Lkotlinx/coroutines/t1;

    move-result-object v7

    if-eqz v7, :cond_1a

    invoke-interface {v7}, Lkotlinx/coroutines/t1;->isCancelled()Z

    move-result v7

    const/4 v11, 0x1

    if-ne v7, v11, :cond_19

    move v7, v11

    goto :goto_14

    :cond_19
    :goto_13
    const/4 v7, 0x0

    goto :goto_14

    :cond_1a
    const/4 v11, 0x1

    goto :goto_13

    :goto_14
    if-eqz v7, :cond_1b

    goto :goto_12

    :cond_1b
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v8, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_1c

    const-string v12, "SO\u6587\u4ef6\u4e0d\u5b58\u5728"

    invoke-interface {v4, v6, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/wecloud/load/lib/SoLoadService;->e(Lcom/wecloud/load/lib/SoLoadService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v12

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v6, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v14, Llg/a;->a:Llg/a$a;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SO\u6587\u4ef6\u4e0d\u5b58\u5728: "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v18, 0x4

    const/16 v19, 0x0

    const-string v15, "SoLoadService"

    const/16 v17, 0x0

    invoke-static/range {v14 .. v19}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_12

    :cond_1c
    sget-object v12, Lgz/f;->a:Lgz/f;

    invoke-virtual {v12, v7}, Lgz/f;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1d

    invoke-static {v1}, Lcom/wecloud/load/lib/SoLoadService;->g(Lcom/wecloud/load/lib/SoLoadService;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Lcom/wecloud/load/lib/SoLoadService;->e(Lcom/wecloud/load/lib/SoLoadService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v7

    const/16 v12, 0x64

    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v7, v6, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v13, Llg/a;->a:Llg/a$a;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SO\u52a0\u8f7d\u6210\u529f: "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x4

    const/16 v18, 0x0

    const-string v14, "SoLoadService"

    const/16 v16, 0x0

    invoke-static/range {v13 .. v18}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    goto/16 :goto_12

    :cond_1d
    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/wecloud/load/lib/SoLoadService;->e(Lcom/wecloud/load/lib/SoLoadService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v12

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v6, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v14, Llg/a;->a:Llg/a$a;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SO\u52a0\u8f7d\u5931\u8d25: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", \u9519\u8bef: "

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v18, 0x4

    const/16 v19, 0x0

    const-string v15, "SoLoadService"

    const/16 v17, 0x0

    invoke-static/range {v14 .. v19}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    goto/16 :goto_12

    :cond_1e
    iget-object v1, v0, Lcom/wecloud/load/lib/SoLoadService$processSoZip$2;->$soZipInfo:Lcom/wecloud/load/lib/bean/SoZipInfo;

    invoke-virtual {v1}, Lcom/wecloud/load/lib/bean/SoZipInfo;->getMethod_name()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_20

    iget-object v5, v0, Lcom/wecloud/load/lib/SoLoadService$processSoZip$2;->$soZipInfo:Lcom/wecloud/load/lib/bean/SoZipInfo;

    iget-object v6, v0, Lcom/wecloud/load/lib/SoLoadService$processSoZip$2;->this$0:Lcom/wecloud/load/lib/SoLoadService;

    invoke-static {v1}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_20

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_20

    invoke-virtual {v5}, Lcom/wecloud/load/lib/bean/SoZipInfo;->getInput()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u51c6\u5907\u8c03\u7528\u521d\u59cb\u5316\u65b9\u6cd5: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " input="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->v0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_1f

    const-string v2, ""

    :cond_1f
    invoke-virtual {v5}, Lcom/wecloud/load/lib/bean/SoZipInfo;->getInput()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v1, v5, v2}, Lcom/wecloud/load/lib/SoLoadService;->a(Lcom/wecloud/load/lib/SoLoadService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20

    const-string v1, "init_method_fail"

    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20
    new-instance v1, Lcom/wecloud/load/lib/SoLoadService$b;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/wecloud/load/lib/SoLoadService$b;-><init>(Ljava/util/List;Ljava/util/Map;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    :cond_21
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
