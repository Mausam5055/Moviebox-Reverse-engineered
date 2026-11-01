.class final Lcom/transsnet/downloader/core/DownloadResponseImpl$createOrUpdateDownloadInfo$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/core/DownloadResponseImpl;->h(Lcom/transsion/baselib/db/download/DownloadBean;)V
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
    c = "com.transsnet.downloader.core.DownloadResponseImpl$createOrUpdateDownloadInfo$1"
    f = "DownloadResponseImpl.kt"
    l = {
        0xb7,
        0xb8,
        0xbe,
        0xc6,
        0xd1
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsnet/downloader/core/DownloadResponseImpl;


# direct methods
.method constructor <init>(Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsnet/downloader/core/DownloadResponseImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/baselib/db/download/DownloadBean;",
            "Lcom/transsnet/downloader/core/DownloadResponseImpl;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsnet/downloader/core/DownloadResponseImpl$createOrUpdateDownloadInfo$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsnet/downloader/core/DownloadResponseImpl$createOrUpdateDownloadInfo$1;->$downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    iput-object p2, p0, Lcom/transsnet/downloader/core/DownloadResponseImpl$createOrUpdateDownloadInfo$1;->this$0:Lcom/transsnet/downloader/core/DownloadResponseImpl;

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

    new-instance p1, Lcom/transsnet/downloader/core/DownloadResponseImpl$createOrUpdateDownloadInfo$1;

    iget-object v0, p0, Lcom/transsnet/downloader/core/DownloadResponseImpl$createOrUpdateDownloadInfo$1;->$downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    iget-object v1, p0, Lcom/transsnet/downloader/core/DownloadResponseImpl$createOrUpdateDownloadInfo$1;->this$0:Lcom/transsnet/downloader/core/DownloadResponseImpl;

    invoke-direct {p1, v0, v1, p2}, Lcom/transsnet/downloader/core/DownloadResponseImpl$createOrUpdateDownloadInfo$1;-><init>(Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsnet/downloader/core/DownloadResponseImpl;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/core/DownloadResponseImpl$createOrUpdateDownloadInfo$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/core/DownloadResponseImpl$createOrUpdateDownloadInfo$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsnet/downloader/core/DownloadResponseImpl$createOrUpdateDownloadInfo$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/core/DownloadResponseImpl$createOrUpdateDownloadInfo$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsnet/downloader/core/DownloadResponseImpl$createOrUpdateDownloadInfo$1;->label:I

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v1, :cond_5

    if-eq v1, v7, :cond_4

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_2
    iget-object v1, p0, Lcom/transsnet/downloader/core/DownloadResponseImpl$createOrUpdateDownloadInfo$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/util/Iterator;

    iget-object v5, p0, Lcom/transsnet/downloader/core/DownloadResponseImpl$createOrUpdateDownloadInfo$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/transsnet/downloader/core/DownloadResponseImpl;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsnet/downloader/core/DownloadResponseImpl$createOrUpdateDownloadInfo$1;->$downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result p1

    const/4 v1, 0x7

    if-ne p1, v1, :cond_6

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_6
    iget-object p1, p0, Lcom/transsnet/downloader/core/DownloadResponseImpl$createOrUpdateDownloadInfo$1;->$downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result p1

    const/4 v1, 0x6

    if-ne p1, v1, :cond_7

    sget-object p1, Lnh/m;->a:Lnh/m;

    invoke-virtual {p1}, Lnh/m;->e()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/transsnet/downloader/core/DownloadResponseImpl$createOrUpdateDownloadInfo$1;->$downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getDownloadErrorCount()I

    move-result v1

    add-int/2addr v1, v7

    invoke-virtual {p1, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setDownloadErrorCount(I)V

    sget-object v8, Llg/a;->a:Llg/a$a;

    iget-object p1, p0, Lcom/transsnet/downloader/core/DownloadResponseImpl$createOrUpdateDownloadInfo$1;->$downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getDownloadErrorCount()I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "download error , save error count = "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x4

    const/4 v13, 0x0

    const-string v9, "DownloadImp-ResponseImpl"

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_7
    sget-object p1, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    invoke-virtual {p1}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    move-result-object p1

    iget-object v1, p0, Lcom/transsnet/downloader/core/DownloadResponseImpl$createOrUpdateDownloadInfo$1;->$downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    iput v7, p0, Lcom/transsnet/downloader/core/DownloadResponseImpl$createOrUpdateDownloadInfo$1;->label:I

    invoke-virtual {p1, v1, p0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->T(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    return-object v0

    :cond_8
    :goto_0
    sget-object p1, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    invoke-virtual {p1}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    move-result-object p1

    iget-object v1, p0, Lcom/transsnet/downloader/core/DownloadResponseImpl$createOrUpdateDownloadInfo$1;->$downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/transsnet/downloader/core/DownloadResponseImpl$createOrUpdateDownloadInfo$1;->$downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v1

    :cond_9
    iget-object v8, p0, Lcom/transsnet/downloader/core/DownloadResponseImpl$createOrUpdateDownloadInfo$1;->$downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result v8

    iput v5, p0, Lcom/transsnet/downloader/core/DownloadResponseImpl$createOrUpdateDownloadInfo$1;->label:I

    invoke-virtual {p1, v1, v8, p0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->f0(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_a

    return-object v0

    :cond_a
    :goto_1
    iget-object p1, p0, Lcom/transsnet/downloader/core/DownloadResponseImpl$createOrUpdateDownloadInfo$1;->$downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getDownloadRanges()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_c

    sget-object v8, Llg/a;->a:Llg/a$a;

    iget-object p1, p0, Lcom/transsnet/downloader/core/DownloadResponseImpl$createOrUpdateDownloadInfo$1;->$downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getDownloadRanges()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Response, insert ranges, size = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x4

    const/4 v13, 0x0

    const-string v9, "DownloadImp-ResponseImpl"

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :try_start_1
    iget-object p1, p0, Lcom/transsnet/downloader/core/DownloadResponseImpl$createOrUpdateDownloadInfo$1;->$downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getDownloadRanges()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    iget-object v1, p0, Lcom/transsnet/downloader/core/DownloadResponseImpl$createOrUpdateDownloadInfo$1;->this$0:Lcom/transsnet/downloader/core/DownloadResponseImpl;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v5, v1

    move-object v1, p1

    :cond_b
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-static {v5}, Lcom/transsnet/downloader/core/DownloadResponseImpl;->e(Lcom/transsnet/downloader/core/DownloadResponseImpl;)Llj/n0;

    move-result-object v8

    iput-object v5, p0, Lcom/transsnet/downloader/core/DownloadResponseImpl$createOrUpdateDownloadInfo$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/transsnet/downloader/core/DownloadResponseImpl$createOrUpdateDownloadInfo$1;->L$1:Ljava/lang/Object;

    iput v4, p0, Lcom/transsnet/downloader/core/DownloadResponseImpl$createOrUpdateDownloadInfo$1;->label:I

    invoke-interface {v8, p1, p0}, Llj/n0;->d(Lcom/transsion/baselib/db/download/DownloadRange;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v0, :cond_b

    return-object v0

    :goto_3
    sget-object v1, Llg/a;->a:Llg/a$a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createOrUpdateDownloadInfo, insert ranges error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v4, "DownloadImp-ResponseImpl"

    invoke-virtual {v1, v4, p1, v7}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_c
    iget-object p1, p0, Lcom/transsnet/downloader/core/DownloadResponseImpl$createOrUpdateDownloadInfo$1;->$downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isCompleted()Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/transsnet/downloader/core/DownloadResponseImpl$createOrUpdateDownloadInfo$1;->this$0:Lcom/transsnet/downloader/core/DownloadResponseImpl;

    invoke-static {p1}, Lcom/transsnet/downloader/core/DownloadResponseImpl;->e(Lcom/transsnet/downloader/core/DownloadResponseImpl;)Llj/n0;

    move-result-object p1

    iget-object v1, p0, Lcom/transsnet/downloader/core/DownloadResponseImpl$createOrUpdateDownloadInfo$1;->$downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/transsnet/downloader/core/DownloadResponseImpl$createOrUpdateDownloadInfo$1;->$downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v1

    :cond_d
    iput-object v6, p0, Lcom/transsnet/downloader/core/DownloadResponseImpl$createOrUpdateDownloadInfo$1;->L$0:Ljava/lang/Object;

    iput-object v6, p0, Lcom/transsnet/downloader/core/DownloadResponseImpl$createOrUpdateDownloadInfo$1;->L$1:Ljava/lang/Object;

    iput v3, p0, Lcom/transsnet/downloader/core/DownloadResponseImpl$createOrUpdateDownloadInfo$1;->label:I

    invoke-interface {p1, v1, p0}, Llj/n0;->b(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_e

    return-object v0

    :cond_e
    :goto_4
    iget-object p1, p0, Lcom/transsnet/downloader/core/DownloadResponseImpl$createOrUpdateDownloadInfo$1;->$downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getCover()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_f

    const/high16 v1, 0x42f00000    # 120.0f

    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v1

    sget-object v3, Lej/f;->a:Lej/f$a;

    const/4 v12, 0x4

    const/4 v13, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v7, v3

    move-object v8, p1

    move v9, v1

    invoke-static/range {v7 .. v13}, Lej/f$a;->e(Lej/f$a;Ljava/lang/String;IZZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v12, 0x8

    const/4 v11, 0x0

    move-object v9, p1

    move v10, v1

    invoke-static/range {v7 .. v13}, Lej/f$a;->j(Lej/f$a;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    :cond_f
    iget-object p1, p0, Lcom/transsnet/downloader/core/DownloadResponseImpl$createOrUpdateDownloadInfo$1;->this$0:Lcom/transsnet/downloader/core/DownloadResponseImpl;

    iget-object v1, p0, Lcom/transsnet/downloader/core/DownloadResponseImpl$createOrUpdateDownloadInfo$1;->$downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    iput-object v6, p0, Lcom/transsnet/downloader/core/DownloadResponseImpl$createOrUpdateDownloadInfo$1;->L$0:Ljava/lang/Object;

    iput-object v6, p0, Lcom/transsnet/downloader/core/DownloadResponseImpl$createOrUpdateDownloadInfo$1;->L$1:Ljava/lang/Object;

    iput v2, p0, Lcom/transsnet/downloader/core/DownloadResponseImpl$createOrUpdateDownloadInfo$1;->label:I

    invoke-static {p1, v1, p0}, Lcom/transsnet/downloader/core/DownloadResponseImpl;->g(Lcom/transsnet/downloader/core/DownloadResponseImpl;Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_10

    return-object v0

    :cond_10
    :goto_5
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
