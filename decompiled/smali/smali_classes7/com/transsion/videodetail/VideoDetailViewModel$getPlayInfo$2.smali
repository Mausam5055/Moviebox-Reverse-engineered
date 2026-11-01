.class final Lcom/transsion/videodetail/VideoDetailViewModel$getPlayInfo$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/videodetail/VideoDetailViewModel;->v(Lcom/transsion/videodetail/bean/VideoDetailMediaSource;)V
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
    c = "com.transsion.videodetail.VideoDetailViewModel$getPlayInfo$2"
    f = "VideoDetailViewModel.kt"
    l = {
        0x115
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $ep:I

.field final synthetic $key:Ljava/lang/String;

.field final synthetic $se:I

.field final synthetic $subjectId:Ljava/lang/String;

.field final synthetic $videoDetailMediaSource:Lcom/transsion/videodetail/bean/VideoDetailMediaSource;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/videodetail/VideoDetailViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/videodetail/VideoDetailViewModel;Ljava/lang/String;IILcom/transsion/videodetail/bean/VideoDetailMediaSource;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/videodetail/VideoDetailViewModel;",
            "Ljava/lang/String;",
            "II",
            "Lcom/transsion/videodetail/bean/VideoDetailMediaSource;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/videodetail/VideoDetailViewModel$getPlayInfo$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/videodetail/VideoDetailViewModel$getPlayInfo$2;->this$0:Lcom/transsion/videodetail/VideoDetailViewModel;

    iput-object p2, p0, Lcom/transsion/videodetail/VideoDetailViewModel$getPlayInfo$2;->$subjectId:Ljava/lang/String;

    iput p3, p0, Lcom/transsion/videodetail/VideoDetailViewModel$getPlayInfo$2;->$se:I

    iput p4, p0, Lcom/transsion/videodetail/VideoDetailViewModel$getPlayInfo$2;->$ep:I

    iput-object p5, p0, Lcom/transsion/videodetail/VideoDetailViewModel$getPlayInfo$2;->$videoDetailMediaSource:Lcom/transsion/videodetail/bean/VideoDetailMediaSource;

    iput-object p6, p0, Lcom/transsion/videodetail/VideoDetailViewModel$getPlayInfo$2;->$key:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9
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

    new-instance v8, Lcom/transsion/videodetail/VideoDetailViewModel$getPlayInfo$2;

    iget-object v1, p0, Lcom/transsion/videodetail/VideoDetailViewModel$getPlayInfo$2;->this$0:Lcom/transsion/videodetail/VideoDetailViewModel;

    iget-object v2, p0, Lcom/transsion/videodetail/VideoDetailViewModel$getPlayInfo$2;->$subjectId:Ljava/lang/String;

    iget v3, p0, Lcom/transsion/videodetail/VideoDetailViewModel$getPlayInfo$2;->$se:I

    iget v4, p0, Lcom/transsion/videodetail/VideoDetailViewModel$getPlayInfo$2;->$ep:I

    iget-object v5, p0, Lcom/transsion/videodetail/VideoDetailViewModel$getPlayInfo$2;->$videoDetailMediaSource:Lcom/transsion/videodetail/bean/VideoDetailMediaSource;

    iget-object v6, p0, Lcom/transsion/videodetail/VideoDetailViewModel$getPlayInfo$2;->$key:Ljava/lang/String;

    move-object v0, v8

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/transsion/videodetail/VideoDetailViewModel$getPlayInfo$2;-><init>(Lcom/transsion/videodetail/VideoDetailViewModel;Ljava/lang/String;IILcom/transsion/videodetail/bean/VideoDetailMediaSource;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v8, Lcom/transsion/videodetail/VideoDetailViewModel$getPlayInfo$2;->L$0:Ljava/lang/Object;

    return-object v8
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/videodetail/VideoDetailViewModel$getPlayInfo$2;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/videodetail/VideoDetailViewModel$getPlayInfo$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/videodetail/VideoDetailViewModel$getPlayInfo$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/videodetail/VideoDetailViewModel$getPlayInfo$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v9, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, v9, Lcom/transsion/videodetail/VideoDetailViewModel$getPlayInfo$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v1, p1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v1, v9, Lcom/transsion/videodetail/VideoDetailViewModel$getPlayInfo$2;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/n0;

    iget-object v1, v9, Lcom/transsion/videodetail/VideoDetailViewModel$getPlayInfo$2;->this$0:Lcom/transsion/videodetail/VideoDetailViewModel;

    iget-object v3, v9, Lcom/transsion/videodetail/VideoDetailViewModel$getPlayInfo$2;->$subjectId:Ljava/lang/String;

    iget v4, v9, Lcom/transsion/videodetail/VideoDetailViewModel$getPlayInfo$2;->$se:I

    iget v5, v9, Lcom/transsion/videodetail/VideoDetailViewModel$getPlayInfo$2;->$ep:I

    :try_start_1
    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lcom/transsion/videodetail/VideoDetailViewModel;->l(Lcom/transsion/videodetail/VideoDetailViewModel;)Lcom/transsion/videodetail/b;

    move-result-object v1

    iput v2, v9, Lcom/transsion/videodetail/VideoDetailViewModel$getPlayInfo$2;->label:I

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    move-object/from16 v6, p0

    invoke-static/range {v1 .. v8}, Lcom/transsion/videodetail/b$a;->a(Lcom/transsion/videodetail/b;Ljava/lang/String;IILjava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast v1, Lcom/tn/lib/net/bean/BaseDto;

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_2
    iget-object v1, v9, Lcom/transsion/videodetail/VideoDetailViewModel$getPlayInfo$2;->this$0:Lcom/transsion/videodetail/VideoDetailViewModel;

    iget v2, v9, Lcom/transsion/videodetail/VideoDetailViewModel$getPlayInfo$2;->$se:I

    iget v3, v9, Lcom/transsion/videodetail/VideoDetailViewModel$getPlayInfo$2;->$ep:I

    iget-object v4, v9, Lcom/transsion/videodetail/VideoDetailViewModel$getPlayInfo$2;->$videoDetailMediaSource:Lcom/transsion/videodetail/bean/VideoDetailMediaSource;

    iget-object v5, v9, Lcom/transsion/videodetail/VideoDetailViewModel$getPlayInfo$2;->$key:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_8

    move-object v6, v0

    check-cast v6, Lcom/tn/lib/net/bean/BaseDto;

    invoke-static {v1}, Lcom/transsion/videodetail/VideoDetailViewModel;->i(Lcom/transsion/videodetail/VideoDetailViewModel;)Landroidx/lifecycle/b0;

    move-result-object v8

    invoke-virtual {v6}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/transsion/videodetail/bean/VideoDetailStreamList;

    if-eqz v10, :cond_6

    invoke-virtual {v10, v2}, Lcom/transsion/videodetail/bean/VideoDetailStreamList;->setSe(I)V

    invoke-virtual {v10, v3}, Lcom/transsion/videodetail/bean/VideoDetailStreamList;->setEp(I)V

    invoke-virtual {v4}, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->getDownloadBean()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v10}, Lcom/transsion/videodetail/bean/VideoDetailStreamList;->getStreams()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v12, v11

    check-cast v12, Lcom/transsion/videodetail/bean/VideoDetailStream;

    invoke-virtual {v12}, Lcom/transsion/videodetail/bean/VideoDetailStream;->getFormat()Ljava/lang/String;

    move-result-object v13

    const-string v14, "DEFAULT"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual {v12}, Lcom/transsion/videodetail/bean/VideoDetailStream;->getResolutions()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResolution()I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    goto :goto_3

    :cond_4
    move-object v11, v7

    :goto_3
    check-cast v11, Lcom/transsion/videodetail/bean/VideoDetailStream;

    if-eqz v11, :cond_5

    invoke-virtual {v11, v3}, Lcom/transsion/videodetail/bean/VideoDetailStream;->setUrl(Ljava/lang/String;)V

    sget-object v12, Llg/a;->a:Llg/a$a;

    const/16 v16, 0x4

    const/16 v17, 0x0

    const-string v13, "CommonInfo"

    const-string v14, "getVideoPlayInfo \u6709\u4e0b\u8f7d\u5730\u5740\uff0c\u76f4\u63a5\u7528\u4e0b\u8f7d\u5730\u5740"

    const/4 v15, 0x0

    invoke-static/range {v12 .. v17}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_5
    invoke-virtual {v6}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/videodetail/bean/VideoDetailStreamList;

    if-eqz v2, :cond_7

    invoke-static {v1}, Lcom/transsion/videodetail/VideoDetailViewModel;->j(Lcom/transsion/videodetail/VideoDetailViewModel;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_6
    move-object v10, v7

    :cond_7
    :goto_4
    invoke-virtual {v8, v10}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    :cond_8
    iget-object v1, v9, Lcom/transsion/videodetail/VideoDetailViewModel$getPlayInfo$2;->this$0:Lcom/transsion/videodetail/VideoDetailViewModel;

    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-static {v1}, Lcom/transsion/videodetail/VideoDetailViewModel;->i(Lcom/transsion/videodetail/VideoDetailViewModel;)Landroidx/lifecycle/b0;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    :cond_9
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
