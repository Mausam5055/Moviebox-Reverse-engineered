.class final Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/manager/DownloadManagerImpl;->l0(Lcom/transsion/baselib/db/download/DownloadBean;ZLkotlin/jvm/functions/Function1;)V
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
    c = "com.transsnet.downloader.manager.DownloadManagerImpl$deleteItem$1"
    f = "DownloadManagerImpl.kt"
    l = {
        0x5a9,
        0x5ae,
        0x5b9,
        0x5be,
        0x5c0
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
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsnet/downloader/manager/DownloadManagerImpl;


# direct methods
.method constructor <init>(Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsnet/downloader/manager/DownloadManagerImpl;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/baselib/db/download/DownloadBean;",
            "Lcom/transsnet/downloader/manager/DownloadManagerImpl;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;->$downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    iput-object p2, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;->this$0:Lcom/transsnet/downloader/manager/DownloadManagerImpl;

    iput-object p3, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;->$callback:Lkotlin/jvm/functions/Function1;

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

    new-instance p1, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;

    iget-object v0, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;->$downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    iget-object v1, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;->this$0:Lcom/transsnet/downloader/manager/DownloadManagerImpl;

    iget-object v2, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;->$callback:Lkotlin/jvm/functions/Function1;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;-><init>(Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsnet/downloader/manager/DownloadManagerImpl;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;->label:I

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v1, :cond_5

    if-eq v1, v6, :cond_4

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
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_3
    iget-object v1, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;->$downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setPreStatus(I)V

    iget-object p1, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;->$downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setStatus(I)V

    iget-object p1, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;->this$0:Lcom/transsnet/downloader/manager/DownloadManagerImpl;

    invoke-static {p1}, Lcom/transsnet/downloader/manager/DownloadManagerImpl;->V(Lcom/transsnet/downloader/manager/DownloadManagerImpl;)Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    iget-object v1, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;->$downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Llj/s0;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubtitleResId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Llj/s0;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    sget-object p1, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    invoke-virtual {p1}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    move-result-object p1

    iget-object v1, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;->$downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;->$downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v1

    :cond_7
    iget-object v7, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;->$downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v7}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoId()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;->$downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->getPostId()Ljava/lang/String;

    move-result-object v8

    iput v6, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;->label:I

    invoke-virtual {p1, v1, v7, v8, p0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    return-object v0

    :cond_8
    :goto_1
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    iget-object p1, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;->this$0:Lcom/transsnet/downloader/manager/DownloadManagerImpl;

    invoke-static {p1}, Lcom/transsnet/downloader/manager/DownloadManagerImpl;->a0(Lcom/transsnet/downloader/manager/DownloadManagerImpl;)Llj/n0;

    move-result-object p1

    iget-object v7, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;->$downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v7}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_9

    iget-object v7, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;->$downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v7}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v7

    :cond_9
    iput-object v1, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;->L$0:Ljava/lang/Object;

    iput v5, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;->label:I

    invoke-interface {p1, v7, p0}, Llj/n0;->b(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_a

    return-object v0

    :cond_a
    :goto_2
    sget-object p1, Llg/a;->a:Llg/a$a;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get deleteItem success "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {p1, v1, v7, v5, v8}, Llg/a$a;->g(Llg/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object p1

    new-instance v1, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1$2;

    iget-object v5, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;->$callback:Lkotlin/jvm/functions/Function1;

    invoke-direct {v1, v5, v8}, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1$2;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    iput-object v8, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;->L$0:Ljava/lang/Object;

    iput v4, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;->label:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_b

    return-object v0

    :cond_b
    :goto_3
    iget-object p1, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;->$downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getType()I

    move-result p1

    if-ne p1, v6, :cond_d

    iget-object p1, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;->this$0:Lcom/transsnet/downloader/manager/DownloadManagerImpl;

    invoke-static {p1}, Lcom/transsnet/downloader/manager/DownloadManagerImpl;->R(Lcom/transsnet/downloader/manager/DownloadManagerImpl;)Ljj/a;

    move-result-object p1

    if-eqz p1, :cond_d

    iget-object v1, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;->$downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v1

    iput v3, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;->label:I

    invoke-interface {p1, v1, p0}, Ljj/a;->c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_c

    return-object v0

    :cond_c
    :goto_4
    check-cast p1, Lcom/transsion/baselib/db/audio/AudioBean;

    if-eqz p1, :cond_d

    iget-object v1, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;->this$0:Lcom/transsnet/downloader/manager/DownloadManagerImpl;

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/transsion/baselib/db/audio/AudioBean;->setReadProcess(Ljava/lang/Long;)V

    invoke-static {v1}, Lcom/transsnet/downloader/manager/DownloadManagerImpl;->R(Lcom/transsnet/downloader/manager/DownloadManagerImpl;)Ljj/a;

    move-result-object v1

    if-eqz v1, :cond_d

    iput v2, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;->label:I

    invoke-interface {v1, p1, p0}, Ljj/a;->b(Lcom/transsion/baselib/db/audio/AudioBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_d

    return-object v0

    :cond_d
    :goto_5
    sget-object p1, Lcom/transsnet/downloader/DownloadManagerApi;->j:Lcom/transsnet/downloader/DownloadManagerApi$a;

    invoke-virtual {p1}, Lcom/transsnet/downloader/DownloadManagerApi$a;->a()Lcom/transsnet/downloader/DownloadManagerApi;

    move-result-object v0

    iget-object p1, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;->$downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;->$downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;->$downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isSeries()Z

    move-result v3

    iget-object p1, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$deleteItem$1;->$downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isMultiresolution()Z

    move-result v5

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v7}, Lcom/transsnet/downloader/DownloadManagerApi;->B0(Lcom/transsnet/downloader/DownloadManagerApi;Ljava/lang/String;Ljava/lang/String;ZZZILjava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
