.class final Lcom/transsnet/downloader/util/DownloadTransferUtils$getTransferDataList$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/util/DownloadTransferUtils;->e(Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
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
    c = "com.transsnet.downloader.util.DownloadTransferUtils$getTransferDataList$2$1"
    f = "DownloadTransferUtils.kt"
    l = {
        0x52
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $callback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "Lcom/transsion/transfer/impl/entity/FileData;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $coverWidth:I

.field final synthetic $pathMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $selectedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/baselib/db/download/DownloadBean;",
            ">;"
        }
    .end annotation
.end field

.field label:I


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/Map;ILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/baselib/db/download/DownloadBean;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Lcom/transsion/transfer/impl/entity/FileData;",
            ">;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsnet/downloader/util/DownloadTransferUtils$getTransferDataList$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsnet/downloader/util/DownloadTransferUtils$getTransferDataList$2$1;->$selectedList:Ljava/util/List;

    iput-object p2, p0, Lcom/transsnet/downloader/util/DownloadTransferUtils$getTransferDataList$2$1;->$pathMap:Ljava/util/Map;

    iput p3, p0, Lcom/transsnet/downloader/util/DownloadTransferUtils$getTransferDataList$2$1;->$coverWidth:I

    iput-object p4, p0, Lcom/transsnet/downloader/util/DownloadTransferUtils$getTransferDataList$2$1;->$callback:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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

    new-instance p1, Lcom/transsnet/downloader/util/DownloadTransferUtils$getTransferDataList$2$1;

    iget-object v1, p0, Lcom/transsnet/downloader/util/DownloadTransferUtils$getTransferDataList$2$1;->$selectedList:Ljava/util/List;

    iget-object v2, p0, Lcom/transsnet/downloader/util/DownloadTransferUtils$getTransferDataList$2$1;->$pathMap:Ljava/util/Map;

    iget v3, p0, Lcom/transsnet/downloader/util/DownloadTransferUtils$getTransferDataList$2$1;->$coverWidth:I

    iget-object v4, p0, Lcom/transsnet/downloader/util/DownloadTransferUtils$getTransferDataList$2$1;->$callback:Lkotlin/jvm/functions/Function1;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/transsnet/downloader/util/DownloadTransferUtils$getTransferDataList$2$1;-><init>(Ljava/util/List;Ljava/util/Map;ILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/util/DownloadTransferUtils$getTransferDataList$2$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/util/DownloadTransferUtils$getTransferDataList$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsnet/downloader/util/DownloadTransferUtils$getTransferDataList$2$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/util/DownloadTransferUtils$getTransferDataList$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsnet/downloader/util/DownloadTransferUtils$getTransferDataList$2$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/transsnet/downloader/util/DownloadTransferUtils$getTransferDataList$2$1;->$selectedList:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    iget-object v3, p0, Lcom/transsnet/downloader/util/DownloadTransferUtils$getTransferDataList$2$1;->$pathMap:Ljava/util/Map;

    iget v4, p0, Lcom/transsnet/downloader/util/DownloadTransferUtils$getTransferDataList$2$1;->$coverWidth:I

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->isSeriesCollection()Z

    move-result v6

    if-ne v6, v2, :cond_4

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getSeriesList()Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v7}, Lcom/transsion/baselib/db/download/DownloadBean;->isCheck()Z

    move-result v8

    if-eqz v8, :cond_3

    sget-object v8, Lcom/transsnet/downloader/util/DownloadTransferUtils;->a:Lcom/transsnet/downloader/util/DownloadTransferUtils;

    invoke-static {v8, v3, v4, v5}, Lcom/transsnet/downloader/util/DownloadTransferUtils;->b(Lcom/transsnet/downloader/util/DownloadTransferUtils;Ljava/util/Map;ILcom/transsion/baselib/db/download/DownloadBean;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v7}, Lcom/transsnet/downloader/util/DownloadTransferUtils;->c(Lcom/transsnet/downloader/util/DownloadTransferUtils;Ljava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;)Lcom/transsion/transfer/impl/entity/FileData;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    sget-object v6, Lcom/transsnet/downloader/util/DownloadTransferUtils;->a:Lcom/transsnet/downloader/util/DownloadTransferUtils;

    invoke-static {v6, v3, v4, v5}, Lcom/transsnet/downloader/util/DownloadTransferUtils;->b(Lcom/transsnet/downloader/util/DownloadTransferUtils;Ljava/util/Map;ILcom/transsion/baselib/db/download/DownloadBean;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Lcom/transsnet/downloader/util/DownloadTransferUtils;->c(Lcom/transsnet/downloader/util/DownloadTransferUtils;Ljava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;)Lcom/transsion/transfer/impl/entity/FileData;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    goto :goto_0

    :cond_5
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v1

    new-instance v3, Lcom/transsnet/downloader/util/DownloadTransferUtils$getTransferDataList$2$1$2;

    iget-object v4, p0, Lcom/transsnet/downloader/util/DownloadTransferUtils$getTransferDataList$2$1;->$callback:Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x0

    invoke-direct {v3, v4, p1, v5}, Lcom/transsnet/downloader/util/DownloadTransferUtils$getTransferDataList$2$1$2;-><init>(Lkotlin/jvm/functions/Function1;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    iput v2, p0, Lcom/transsnet/downloader/util/DownloadTransferUtils$getTransferDataList$2$1;->label:I

    invoke-static {v1, v3, p0}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    :cond_6
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
