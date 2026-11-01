.class final Lcom/transsion/videodetail/util/StreamFloatManager$getPlayInfo$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/videodetail/util/StreamFloatManager;->l(Ljava/lang/String;IILkotlin/jvm/functions/Function1;)V
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
    c = "com.transsion.videodetail.util.StreamFloatManager$getPlayInfo$1"
    f = "StreamFloatManager.kt"
    l = {
        0xdc,
        0xe3,
        0xed
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
            "Lcom/transsion/videodetail/bean/VideoDetailStreamList;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $ep:I

.field final synthetic $se:I

.field final synthetic $subjectId:Ljava/lang/String;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/String;IILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/transsion/videodetail/bean/VideoDetailStreamList;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/videodetail/util/StreamFloatManager$getPlayInfo$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/videodetail/util/StreamFloatManager$getPlayInfo$1;->$subjectId:Ljava/lang/String;

    iput p2, p0, Lcom/transsion/videodetail/util/StreamFloatManager$getPlayInfo$1;->$se:I

    iput p3, p0, Lcom/transsion/videodetail/util/StreamFloatManager$getPlayInfo$1;->$ep:I

    iput-object p4, p0, Lcom/transsion/videodetail/util/StreamFloatManager$getPlayInfo$1;->$callback:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance v6, Lcom/transsion/videodetail/util/StreamFloatManager$getPlayInfo$1;

    iget-object v1, p0, Lcom/transsion/videodetail/util/StreamFloatManager$getPlayInfo$1;->$subjectId:Ljava/lang/String;

    iget v2, p0, Lcom/transsion/videodetail/util/StreamFloatManager$getPlayInfo$1;->$se:I

    iget v3, p0, Lcom/transsion/videodetail/util/StreamFloatManager$getPlayInfo$1;->$ep:I

    iget-object v4, p0, Lcom/transsion/videodetail/util/StreamFloatManager$getPlayInfo$1;->$callback:Lkotlin/jvm/functions/Function1;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/transsion/videodetail/util/StreamFloatManager$getPlayInfo$1;-><init>(Ljava/lang/String;IILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v6, Lcom/transsion/videodetail/util/StreamFloatManager$getPlayInfo$1;->L$0:Ljava/lang/Object;

    return-object v6
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/videodetail/util/StreamFloatManager$getPlayInfo$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/videodetail/util/StreamFloatManager$getPlayInfo$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/videodetail/util/StreamFloatManager$getPlayInfo$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/videodetail/util/StreamFloatManager$getPlayInfo$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/videodetail/util/StreamFloatManager$getPlayInfo$1;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/transsion/videodetail/util/StreamFloatManager$getPlayInfo$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/videodetail/bean/VideoDetailStreamList;

    iget-object v0, p0, Lcom/transsion/videodetail/util/StreamFloatManager$getPlayInfo$1;->L$0:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lcom/transsion/videodetail/util/StreamFloatManager$getPlayInfo$1;->L$4:Ljava/lang/Object;

    check-cast v1, Lcom/transsion/videodetail/bean/VideoDetailStreamList;

    iget-object v3, p0, Lcom/transsion/videodetail/util/StreamFloatManager$getPlayInfo$1;->L$3:Ljava/lang/Object;

    check-cast v3, Lcom/transsion/videodetail/bean/VideoDetailStreamList;

    iget-object v6, p0, Lcom/transsion/videodetail/util/StreamFloatManager$getPlayInfo$1;->L$2:Ljava/lang/Object;

    check-cast v6, Lcom/tn/lib/net/bean/BaseDto;

    iget-object v7, p0, Lcom/transsion/videodetail/util/StreamFloatManager$getPlayInfo$1;->L$1:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/functions/Function1;

    iget-object v8, p0, Lcom/transsion/videodetail/util/StreamFloatManager$getPlayInfo$1;->L$0:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_2
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/videodetail/util/StreamFloatManager$getPlayInfo$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/n0;

    iget-object v7, p0, Lcom/transsion/videodetail/util/StreamFloatManager$getPlayInfo$1;->$subjectId:Ljava/lang/String;

    iget v8, p0, Lcom/transsion/videodetail/util/StreamFloatManager$getPlayInfo$1;->$se:I

    iget v9, p0, Lcom/transsion/videodetail/util/StreamFloatManager$getPlayInfo$1;->$ep:I

    :try_start_1
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object p1, Lcom/transsion/videodetail/util/StreamFloatManager;->b:Lcom/transsion/videodetail/util/StreamFloatManager;

    invoke-static {p1}, Lcom/transsion/videodetail/util/StreamFloatManager;->e(Lcom/transsion/videodetail/util/StreamFloatManager;)Lcom/transsion/videodetail/b;

    move-result-object v6

    iput v4, p0, Lcom/transsion/videodetail/util/StreamFloatManager$getPlayInfo$1;->label:I

    const/4 v10, 0x0

    const/16 v12, 0x8

    const/4 v13, 0x0

    move-object v11, p0

    invoke-static/range {v6 .. v13}, Lcom/transsion/videodetail/b$a;->a(Lcom/transsion/videodetail/b;Ljava/lang/String;IILjava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_0
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    iget v1, p0, Lcom/transsion/videodetail/util/StreamFloatManager$getPlayInfo$1;->$se:I

    iget v6, p0, Lcom/transsion/videodetail/util/StreamFloatManager$getPlayInfo$1;->$ep:I

    iget-object v7, p0, Lcom/transsion/videodetail/util/StreamFloatManager$getPlayInfo$1;->$subjectId:Ljava/lang/String;

    iget-object v8, p0, Lcom/transsion/videodetail/util/StreamFloatManager$getPlayInfo$1;->$callback:Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    move-object v9, p1

    check-cast v9, Lcom/tn/lib/net/bean/BaseDto;

    invoke-virtual {v9}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/transsion/videodetail/bean/VideoDetailStreamList;

    if-eqz v10, :cond_a

    invoke-virtual {v10, v1}, Lcom/transsion/videodetail/bean/VideoDetailStreamList;->setSe(I)V

    invoke-virtual {v10, v6}, Lcom/transsion/videodetail/bean/VideoDetailStreamList;->setEp(I)V

    sget-object v11, Lcom/transsnet/downloader/manager/p;->a:Lcom/transsnet/downloader/manager/p$a;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/transsnet/downloader/manager/p$a;->a(Landroid/content/Context;)Lcom/transsnet/downloader/manager/g;

    move-result-object v11

    iput-object p1, p0, Lcom/transsion/videodetail/util/StreamFloatManager$getPlayInfo$1;->L$0:Ljava/lang/Object;

    iput-object v8, p0, Lcom/transsion/videodetail/util/StreamFloatManager$getPlayInfo$1;->L$1:Ljava/lang/Object;

    iput-object v9, p0, Lcom/transsion/videodetail/util/StreamFloatManager$getPlayInfo$1;->L$2:Ljava/lang/Object;

    iput-object v10, p0, Lcom/transsion/videodetail/util/StreamFloatManager$getPlayInfo$1;->L$3:Ljava/lang/Object;

    iput-object v10, p0, Lcom/transsion/videodetail/util/StreamFloatManager$getPlayInfo$1;->L$4:Ljava/lang/Object;

    iput v3, p0, Lcom/transsion/videodetail/util/StreamFloatManager$getPlayInfo$1;->label:I

    invoke-interface {v11, v7, v1, v6, p0}, Lcom/transsnet/downloader/manager/g;->u(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_5

    return-object v0

    :cond_5
    move-object v7, v8

    move-object v6, v9

    move-object v3, v10

    move-object v8, p1

    move-object p1, v1

    move-object v1, v3

    :goto_3
    check-cast p1, Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_8

    invoke-virtual {v1}, Lcom/transsion/videodetail/bean/VideoDetailStreamList;->getStreams()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Lcom/transsion/videodetail/bean/VideoDetailStream;

    invoke-virtual {v11}, Lcom/transsion/videodetail/bean/VideoDetailStream;->getFormat()Ljava/lang/String;

    move-result-object v12

    const-string v13, "DEFAULT"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-virtual {v11}, Lcom/transsion/videodetail/bean/VideoDetailStream;->getResolutions()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResolution()I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    goto :goto_4

    :cond_7
    move-object v10, v5

    :goto_4
    check-cast v10, Lcom/transsion/videodetail/bean/VideoDetailStream;

    if-eqz v10, :cond_8

    invoke-virtual {v10, v9}, Lcom/transsion/videodetail/bean/VideoDetailStream;->setUrl(Ljava/lang/String;)V

    sget-object p1, Llg/a;->a:Llg/a$a;

    const-string v1, "VideoFloat"

    const-string v9, "getVideoPlayInfo \u6709\u4e0b\u8f7d\u5730\u5740\uff0c\u76f4\u63a5\u7528\u4e0b\u8f7d\u5730\u5740"

    invoke-virtual {p1, v1, v9, v4}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_8
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object p1

    new-instance v1, Lcom/transsion/videodetail/util/StreamFloatManager$getPlayInfo$1$2$1$2;

    invoke-direct {v1, v7, v6, v5}, Lcom/transsion/videodetail/util/StreamFloatManager$getPlayInfo$1$2$1$2;-><init>(Lkotlin/jvm/functions/Function1;Lcom/tn/lib/net/bean/BaseDto;Lkotlin/coroutines/Continuation;)V

    iput-object v8, p0, Lcom/transsion/videodetail/util/StreamFloatManager$getPlayInfo$1;->L$0:Ljava/lang/Object;

    iput-object v3, p0, Lcom/transsion/videodetail/util/StreamFloatManager$getPlayInfo$1;->L$1:Ljava/lang/Object;

    iput-object v5, p0, Lcom/transsion/videodetail/util/StreamFloatManager$getPlayInfo$1;->L$2:Ljava/lang/Object;

    iput-object v5, p0, Lcom/transsion/videodetail/util/StreamFloatManager$getPlayInfo$1;->L$3:Ljava/lang/Object;

    iput-object v5, p0, Lcom/transsion/videodetail/util/StreamFloatManager$getPlayInfo$1;->L$4:Ljava/lang/Object;

    iput v2, p0, Lcom/transsion/videodetail/util/StreamFloatManager$getPlayInfo$1;->label:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_9

    return-object v0

    :cond_9
    move-object v0, v8

    :goto_5
    move-object p1, v0

    :cond_a
    iget-object v0, p0, Lcom/transsion/videodetail/util/StreamFloatManager$getPlayInfo$1;->$callback:Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-interface {v0, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
