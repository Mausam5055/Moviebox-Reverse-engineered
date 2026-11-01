.class final Lcom/transsnet/downloader/core/DownloadTaskImpl2$start$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/core/DownloadTaskImpl2;->start()V
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
    c = "com.transsnet.downloader.core.DownloadTaskImpl2$start$1"
    f = "DownloadTaskImpl2.kt"
    l = {
        0x6b,
        0x72,
        0x86
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsnet/downloader/core/DownloadTaskImpl2;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/core/DownloadTaskImpl2;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsnet/downloader/core/DownloadTaskImpl2;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsnet/downloader/core/DownloadTaskImpl2$start$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl2$start$1;->this$0:Lcom/transsnet/downloader/core/DownloadTaskImpl2;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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

    new-instance p1, Lcom/transsnet/downloader/core/DownloadTaskImpl2$start$1;

    iget-object v0, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl2$start$1;->this$0:Lcom/transsnet/downloader/core/DownloadTaskImpl2;

    invoke-direct {p1, v0, p2}, Lcom/transsnet/downloader/core/DownloadTaskImpl2$start$1;-><init>(Lcom/transsnet/downloader/core/DownloadTaskImpl2;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/core/DownloadTaskImpl2$start$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/core/DownloadTaskImpl2$start$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsnet/downloader/core/DownloadTaskImpl2$start$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/core/DownloadTaskImpl2$start$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl2$start$1;->label:I

    const-wide/16 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v6, :cond_2

    if-eq v1, v5, :cond_1

    if-ne v1, v4, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl2$start$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/transsnet/downloader/core/DownloadTaskImpl2;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_2
    iget-object v1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl2$start$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/transsnet/downloader/core/DownloadTaskImpl2;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl2$start$1;->this$0:Lcom/transsnet/downloader/core/DownloadTaskImpl2;

    invoke-static {p1}, Lcom/transsnet/downloader/core/DownloadTaskImpl2;->i(Lcom/transsnet/downloader/core/DownloadTaskImpl2;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object v1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl2$start$1;->this$0:Lcom/transsnet/downloader/core/DownloadTaskImpl2;

    invoke-static {v1}, Lcom/transsnet/downloader/core/DownloadTaskImpl2;->m(Lcom/transsnet/downloader/core/DownloadTaskImpl2;)Llj/n0;

    move-result-object v7

    iput-object v1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl2$start$1;->L$0:Ljava/lang/Object;

    iput v6, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl2$start$1;->label:I

    invoke-interface {v7, p1, p0}, Llj/n0;->c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_0
    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_8

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v11, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/transsnet/downloader/core/DownloadTaskImpl2;->i(Lcom/transsnet/downloader/core/DownloadTaskImpl2;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    goto :goto_1

    :cond_5
    move-wide v7, v2

    :goto_1
    invoke-static {v1}, Lcom/transsnet/downloader/core/DownloadTaskImpl2;->n(Lcom/transsnet/downloader/core/DownloadTaskImpl2;)J

    move-result-wide v9

    div-long/2addr v7, v9

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_7

    int-to-long v9, p1

    cmp-long p1, v7, v9

    if-lez p1, :cond_7

    sget-object v7, Lcom/transsnet/downloader/core/task/DownloadTaskUtil;->a:Lcom/transsnet/downloader/core/task/DownloadTaskUtil;

    invoke-static {v1}, Lcom/transsnet/downloader/core/DownloadTaskImpl2;->n(Lcom/transsnet/downloader/core/DownloadTaskImpl2;)J

    move-result-wide v8

    invoke-static {v1}, Lcom/transsnet/downloader/core/DownloadTaskImpl2;->i(Lcom/transsnet/downloader/core/DownloadTaskImpl2;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v10

    iput-object v1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl2$start$1;->L$0:Ljava/lang/Object;

    iput v5, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl2$start$1;->label:I

    move-object v12, p0

    invoke-virtual/range {v7 .. v12}, Lcom/transsnet/downloader/core/task/DownloadTaskUtil;->d(JLcom/transsion/baselib/db/download/DownloadBean;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    :cond_6
    :goto_2
    move-object v11, p1

    check-cast v11, Ljava/util/List;

    :cond_7
    invoke-static {v1}, Lcom/transsnet/downloader/core/DownloadTaskImpl2;->i(Lcom/transsnet/downloader/core/DownloadTaskImpl2;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getDownloadRanges()Ljava/util/List;

    move-result-object p1

    check-cast v11, Ljava/util/Collection;

    invoke-interface {p1, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    :cond_8
    iget-object p1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl2$start$1;->this$0:Lcom/transsnet/downloader/core/DownloadTaskImpl2;

    invoke-static {p1}, Lcom/transsnet/downloader/core/DownloadTaskImpl2;->i(Lcom/transsnet/downloader/core/DownloadTaskImpl2;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getDownloadRanges()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    const-string v1, "download"

    if-nez p1, :cond_a

    sget-object p1, Llg/a;->a:Llg/a$a;

    iget-object v0, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl2$start$1;->this$0:Lcom/transsnet/downloader/core/DownloadTaskImpl2;

    invoke-static {v0}, Lcom/transsnet/downloader/core/DownloadTaskImpl2;->i(Lcom/transsnet/downloader/core/DownloadTaskImpl2;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DownloadTask2 has task, name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0, v6}, Llg/a$a;->p(Ljava/lang/String;[Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl2$start$1;->this$0:Lcom/transsnet/downloader/core/DownloadTaskImpl2;

    invoke-static {p1}, Lcom/transsnet/downloader/core/DownloadTaskImpl2;->k(Lcom/transsnet/downloader/core/DownloadTaskImpl2;)Lcom/transsnet/downloader/core/task/c;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl2$start$1;->this$0:Lcom/transsnet/downloader/core/DownloadTaskImpl2;

    invoke-static {v0}, Lcom/transsnet/downloader/core/DownloadTaskImpl2;->i(Lcom/transsnet/downloader/core/DownloadTaskImpl2;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/transsnet/downloader/core/task/c;->c(Lcom/transsion/baselib/db/download/DownloadBean;Z)V

    :cond_9
    iget-object p1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl2$start$1;->this$0:Lcom/transsnet/downloader/core/DownloadTaskImpl2;

    invoke-static {p1}, Lcom/transsnet/downloader/core/DownloadTaskImpl2;->o(Lcom/transsnet/downloader/core/DownloadTaskImpl2;)V

    iget-object p1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl2$start$1;->this$0:Lcom/transsnet/downloader/core/DownloadTaskImpl2;

    invoke-static {p1}, Lcom/transsnet/downloader/core/DownloadTaskImpl2;->j(Lcom/transsnet/downloader/core/DownloadTaskImpl2;)Lcom/transsnet/downloader/core/c;

    move-result-object p1

    iget-object v0, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl2$start$1;->this$0:Lcom/transsnet/downloader/core/DownloadTaskImpl2;

    invoke-static {v0}, Lcom/transsnet/downloader/core/DownloadTaskImpl2;->i(Lcom/transsnet/downloader/core/DownloadTaskImpl2;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/transsnet/downloader/core/c;->a(Lcom/transsion/baselib/db/download/DownloadBean;)V

    goto :goto_3

    :cond_a
    sget-object p1, Llg/a;->a:Llg/a$a;

    iget-object v5, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl2$start$1;->this$0:Lcom/transsnet/downloader/core/DownloadTaskImpl2;

    invoke-static {v5}, Lcom/transsnet/downloader/core/DownloadTaskImpl2;->i(Lcom/transsnet/downloader/core/DownloadTaskImpl2;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DownloadTask2 stat new task, name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v1, v5, v6}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object p1, Lcom/transsnet/downloader/core/task/DownloadTaskUtil;->a:Lcom/transsnet/downloader/core/task/DownloadTaskUtil;

    iget-object v1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl2$start$1;->this$0:Lcom/transsnet/downloader/core/DownloadTaskImpl2;

    invoke-static {v1}, Lcom/transsnet/downloader/core/DownloadTaskImpl2;->i(Lcom/transsnet/downloader/core/DownloadTaskImpl2;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/transsnet/downloader/core/task/DownloadTaskUtil;->e(Lcom/transsion/baselib/db/download/DownloadBean;)V

    iget-object p1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl2$start$1;->this$0:Lcom/transsnet/downloader/core/DownloadTaskImpl2;

    invoke-static {p1}, Lcom/transsnet/downloader/core/DownloadTaskImpl2;->i(Lcom/transsnet/downloader/core/DownloadTaskImpl2;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getDownloadHeaderSize()J

    move-result-wide v7

    cmp-long p1, v7, v2

    if-gtz p1, :cond_b

    iget-object p1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl2$start$1;->this$0:Lcom/transsnet/downloader/core/DownloadTaskImpl2;

    invoke-static {p1}, Lcom/transsnet/downloader/core/DownloadTaskImpl2;->i(Lcom/transsnet/downloader/core/DownloadTaskImpl2;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object p1

    sget-object v1, Lcom/transsnet/downloader/util/DownloadUtil;->a:Lcom/transsnet/downloader/util/DownloadUtil;

    iget-object v2, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl2$start$1;->this$0:Lcom/transsnet/downloader/core/DownloadTaskImpl2;

    invoke-static {v2}, Lcom/transsnet/downloader/core/DownloadTaskImpl2;->i(Lcom/transsnet/downloader/core/DownloadTaskImpl2;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsnet/downloader/util/DownloadUtil;->o(Lcom/transsion/baselib/db/download/DownloadBean;)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/transsion/baselib/db/download/DownloadBean;->setDownloadHeaderSize(J)V

    :cond_b
    iget-object p1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl2$start$1;->this$0:Lcom/transsnet/downloader/core/DownloadTaskImpl2;

    invoke-static {p1}, Lcom/transsnet/downloader/core/DownloadTaskImpl2;->k(Lcom/transsnet/downloader/core/DownloadTaskImpl2;)Lcom/transsnet/downloader/core/task/c;

    move-result-object p1

    if-eqz p1, :cond_c

    iget-object v1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl2$start$1;->this$0:Lcom/transsnet/downloader/core/DownloadTaskImpl2;

    invoke-static {v1}, Lcom/transsnet/downloader/core/DownloadTaskImpl2;->i(Lcom/transsnet/downloader/core/DownloadTaskImpl2;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v1

    invoke-interface {p1, v1, v6}, Lcom/transsnet/downloader/core/task/c;->c(Lcom/transsion/baselib/db/download/DownloadBean;Z)V

    :cond_c
    iget-object p1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl2$start$1;->this$0:Lcom/transsnet/downloader/core/DownloadTaskImpl2;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl2$start$1;->L$0:Ljava/lang/Object;

    iput v4, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl2$start$1;->label:I

    invoke-static {p1, p0}, Lcom/transsnet/downloader/core/DownloadTaskImpl2;->h(Lcom/transsnet/downloader/core/DownloadTaskImpl2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_d

    return-object v0

    :cond_d
    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
