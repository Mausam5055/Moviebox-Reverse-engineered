.class final Lcom/transsnet/downloader/manager/FinishDownloadHelper$onDownloadSuccess$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/manager/FinishDownloadHelper;->e(Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;)V
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
    c = "com.transsnet.downloader.manager.FinishDownloadHelper$onDownloadSuccess$1"
    f = "FinishDownloadHelper.kt"
    l = {
        0x39,
        0x44
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $bean:Lcom/transsion/baselib/db/download/DownloadBean;

.field label:I

.field final synthetic this$0:Lcom/transsnet/downloader/manager/FinishDownloadHelper;


# direct methods
.method constructor <init>(Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsnet/downloader/manager/FinishDownloadHelper;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/baselib/db/download/DownloadBean;",
            "Lcom/transsnet/downloader/manager/FinishDownloadHelper;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsnet/downloader/manager/FinishDownloadHelper$onDownloadSuccess$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsnet/downloader/manager/FinishDownloadHelper$onDownloadSuccess$1;->$bean:Lcom/transsion/baselib/db/download/DownloadBean;

    iput-object p2, p0, Lcom/transsnet/downloader/manager/FinishDownloadHelper$onDownloadSuccess$1;->this$0:Lcom/transsnet/downloader/manager/FinishDownloadHelper;

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

    new-instance p1, Lcom/transsnet/downloader/manager/FinishDownloadHelper$onDownloadSuccess$1;

    iget-object v0, p0, Lcom/transsnet/downloader/manager/FinishDownloadHelper$onDownloadSuccess$1;->$bean:Lcom/transsion/baselib/db/download/DownloadBean;

    iget-object v1, p0, Lcom/transsnet/downloader/manager/FinishDownloadHelper$onDownloadSuccess$1;->this$0:Lcom/transsnet/downloader/manager/FinishDownloadHelper;

    invoke-direct {p1, v0, v1, p2}, Lcom/transsnet/downloader/manager/FinishDownloadHelper$onDownloadSuccess$1;-><init>(Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsnet/downloader/manager/FinishDownloadHelper;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/manager/FinishDownloadHelper$onDownloadSuccess$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/manager/FinishDownloadHelper$onDownloadSuccess$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsnet/downloader/manager/FinishDownloadHelper$onDownloadSuccess$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/manager/FinishDownloadHelper$onDownloadSuccess$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsnet/downloader/manager/FinishDownloadHelper$onDownloadSuccess$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_2
    iget-object p1, p0, Lcom/transsnet/downloader/manager/FinishDownloadHelper$onDownloadSuccess$1;->$bean:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isUGCVideo()Z

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v1, "toJson(...)"

    const-string v4, ", resourceId = "

    if-eqz p1, :cond_7

    :try_start_3
    iget-object p1, p0, Lcom/transsnet/downloader/manager/FinishDownloadHelper$onDownloadSuccess$1;->$bean:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_1

    :cond_3
    iget-object p1, p0, Lcom/transsnet/downloader/manager/FinishDownloadHelper$onDownloadSuccess$1;->$bean:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_1

    :cond_4
    new-instance p1, Lcom/transsnet/downloader/manager/UGCStartDownloadBean;

    iget-object v2, p0, Lcom/transsnet/downloader/manager/FinishDownloadHelper$onDownloadSuccess$1;->$bean:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoId()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/transsnet/downloader/manager/FinishDownloadHelper$onDownloadSuccess$1;->$bean:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/transsnet/downloader/manager/FinishDownloadHelper$onDownloadSuccess$1;->$bean:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v6}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubtitleIdType()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p1, v2, v5, v6}, Lcom/transsnet/downloader/manager/UGCStartDownloadBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    sget-object v5, Llg/a;->a:Llg/a$a;

    iget-object v2, p0, Lcom/transsnet/downloader/manager/FinishDownloadHelper$onDownloadSuccess$1;->this$0:Lcom/transsnet/downloader/manager/FinishDownloadHelper;

    invoke-static {v2}, Lcom/transsnet/downloader/manager/FinishDownloadHelper;->k(Lcom/transsnet/downloader/manager/FinishDownloadHelper;)Ljava/lang/String;

    move-result-object v6

    iget-object v2, p0, Lcom/transsnet/downloader/manager/FinishDownloadHelper$onDownloadSuccess$1;->$bean:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lcom/transsnet/downloader/manager/FinishDownloadHelper$onDownloadSuccess$1;->$bean:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v7}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoId()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/transsnet/downloader/manager/FinishDownloadHelper$onDownloadSuccess$1;->$bean:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/transsnet/downloader/manager/FinishDownloadHelper$onDownloadSuccess$1;->$bean:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v9}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubtitleIdType()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onDownloadSuccess UGC, name = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", ugcVideoId = "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", idType = "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v2, p0, Lcom/transsnet/downloader/manager/FinishDownloadHelper$onDownloadSuccess$1;->this$0:Lcom/transsnet/downloader/manager/FinishDownloadHelper;

    invoke-static {v2}, Lcom/transsnet/downloader/manager/FinishDownloadHelper;->j(Lcom/transsnet/downloader/manager/FinishDownloadHelper;)Lqy/a;

    move-result-object v2

    sget-object v4, Lvg/a;->a:Lvg/a$a;

    invoke-virtual {v4}, Lvg/a$a;->a()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lbh/b;->a:Lbh/b$a;

    new-instance v6, Lcom/transsnet/downloader/manager/UGCStartRequestBean;

    invoke-direct {v6, p1}, Lcom/transsnet/downloader/manager/UGCStartRequestBean;-><init>(Ljava/util/List;)V

    invoke-static {v6}, Lcom/blankj/utilcode/util/o;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Lbh/b$a;->a(Ljava/lang/Object;)Lokhttp3/RequestBody;

    move-result-object p1

    iput v3, p0, Lcom/transsnet/downloader/manager/FinishDownloadHelper$onDownloadSuccess$1;->label:I

    invoke-interface {v2, v4, p1, p0}, Lqy/a;->j(Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_0
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    goto/16 :goto_4

    :cond_6
    :goto_1
    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object p1, p0, Lcom/transsnet/downloader/manager/FinishDownloadHelper$onDownloadSuccess$1;->this$0:Lcom/transsnet/downloader/manager/FinishDownloadHelper;

    invoke-static {p1}, Lcom/transsnet/downloader/manager/FinishDownloadHelper;->k(Lcom/transsnet/downloader/manager/FinishDownloadHelper;)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/transsnet/downloader/manager/FinishDownloadHelper$onDownloadSuccess$1;->$bean:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDownloadSuccess UGC fail, has no ugcVideoId or resourceId, name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_7
    new-instance p1, Lcom/transsnet/downloader/bean/StartlDownloadBean;

    iget-object v3, p0, Lcom/transsnet/downloader/manager/FinishDownloadHelper$onDownloadSuccess$1;->$bean:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/transsnet/downloader/manager/FinishDownloadHelper$onDownloadSuccess$1;->$bean:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/transsnet/downloader/manager/FinishDownloadHelper$onDownloadSuccess$1;->$bean:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v6}, Lcom/transsion/baselib/db/download/DownloadBean;->getEpse()I

    move-result v6

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {p1, v3, v5, v6}, Lcom/transsnet/downloader/bean/StartlDownloadBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    sget-object v5, Llg/a;->a:Llg/a$a;

    iget-object v3, p0, Lcom/transsnet/downloader/manager/FinishDownloadHelper$onDownloadSuccess$1;->this$0:Lcom/transsnet/downloader/manager/FinishDownloadHelper;

    invoke-static {v3}, Lcom/transsnet/downloader/manager/FinishDownloadHelper;->k(Lcom/transsnet/downloader/manager/FinishDownloadHelper;)Ljava/lang/String;

    move-result-object v6

    iget-object v3, p0, Lcom/transsnet/downloader/manager/FinishDownloadHelper$onDownloadSuccess$1;->$bean:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lcom/transsnet/downloader/manager/FinishDownloadHelper$onDownloadSuccess$1;->$bean:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v7}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/transsnet/downloader/manager/FinishDownloadHelper$onDownloadSuccess$1;->$bean:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/transsnet/downloader/manager/FinishDownloadHelper$onDownloadSuccess$1;->$bean:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v9}, Lcom/transsion/baselib/db/download/DownloadBean;->getEpse()I

    move-result v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onDownloadSuccess, name = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", subjectId = "

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", episode = "

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v3, p0, Lcom/transsnet/downloader/manager/FinishDownloadHelper$onDownloadSuccess$1;->this$0:Lcom/transsnet/downloader/manager/FinishDownloadHelper;

    invoke-static {v3}, Lcom/transsnet/downloader/manager/FinishDownloadHelper;->j(Lcom/transsnet/downloader/manager/FinishDownloadHelper;)Lqy/a;

    move-result-object v4

    sget-object v3, Lbh/b;->a:Lbh/b$a;

    new-instance v5, Lcom/transsnet/downloader/bean/StartRequestBean;

    invoke-direct {v5, p1}, Lcom/transsnet/downloader/bean/StartRequestBean;-><init>(Ljava/util/List;)V

    invoke-static {v5}, Lcom/blankj/utilcode/util/o;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Lbh/b$a;->a(Ljava/lang/Object;)Lokhttp3/RequestBody;

    move-result-object v6

    iput v2, p0, Lcom/transsnet/downloader/manager/FinishDownloadHelper$onDownloadSuccess$1;->label:I

    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v7, p0

    invoke-static/range {v4 .. v9}, Lqy/a$a;->b(Lqy/a;Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    return-object v0

    :cond_8
    :goto_2
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :goto_3
    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsnet/downloader/manager/FinishDownloadHelper$onDownloadSuccess$1;->this$0:Lcom/transsnet/downloader/manager/FinishDownloadHelper;

    invoke-static {v1}, Lcom/transsnet/downloader/manager/FinishDownloadHelper;->k(Lcom/transsnet/downloader/manager/FinishDownloadHelper;)Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x8

    const/4 v6, 0x0

    const-string v2, "onDownloadSuccess error"

    const/4 v4, 0x0

    move-object v3, p1

    invoke-static/range {v0 .. v6}, Llg/a$a;->k(Llg/a$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
