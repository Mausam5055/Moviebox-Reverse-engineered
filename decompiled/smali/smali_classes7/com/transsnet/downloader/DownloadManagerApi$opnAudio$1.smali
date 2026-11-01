.class final Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/DownloadManagerApi;->v0(Landroid/content/Context;)V
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
    c = "com.transsnet.downloader.DownloadManagerApi$opnAudio$1"
    f = "DownloadManagerApi.kt"
    l = {
        0x3b1,
        0x3b1
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsnet/downloader/DownloadManagerApi;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/DownloadManagerApi;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsnet/downloader/DownloadManagerApi;",
            "Landroid/content/Context;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;->this$0:Lcom/transsnet/downloader/DownloadManagerApi;

    iput-object p2, p0, Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;->$context:Landroid/content/Context;

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

    new-instance p1, Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;

    iget-object v0, p0, Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;->this$0:Lcom/transsnet/downloader/DownloadManagerApi;

    iget-object v1, p0, Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;->$context:Landroid/content/Context;

    invoke-direct {p1, v0, v1, p2}, Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;-><init>(Lcom/transsnet/downloader/DownloadManagerApi;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 29

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v5, :cond_0

    iget-object v1, v0, Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;->L$0:Ljava/lang/Object;

    check-cast v1, Landroidx/appcompat/app/AppCompatActivity;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v4, p1

    goto/16 :goto_2

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v2, v0, Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;->L$0:Ljava/lang/Object;

    check-cast v2, Landroidx/appcompat/app/AppCompatActivity;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v4, p1

    goto :goto_1

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;->this$0:Lcom/transsnet/downloader/DownloadManagerApi;

    invoke-static {v2}, Lcom/transsnet/downloader/DownloadManagerApi;->w(Lcom/transsnet/downloader/DownloadManagerApi;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v2

    if-nez v2, :cond_3

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v1

    :cond_3
    iget-object v2, v0, Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;->$context:Landroid/content/Context;

    instance-of v6, v2, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v6, :cond_4

    check-cast v2, Landroidx/appcompat/app/AppCompatActivity;

    goto :goto_0

    :cond_4
    move-object v2, v3

    :goto_0
    if-nez v2, :cond_5

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v1

    :cond_5
    iget-object v6, v0, Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;->this$0:Lcom/transsnet/downloader/DownloadManagerApi;

    invoke-static {v6}, Lcom/transsnet/downloader/DownloadManagerApi;->z(Lcom/transsnet/downloader/DownloadManagerApi;)Lcom/transsnet/downloader/manager/g;

    move-result-object v6

    iget-object v7, v0, Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;->this$0:Lcom/transsnet/downloader/DownloadManagerApi;

    invoke-static {v7}, Lcom/transsnet/downloader/DownloadManagerApi;->w(Lcom/transsnet/downloader/DownloadManagerApi;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {v6, v7}, Lcom/transsnet/downloader/manager/g;->k(Lcom/transsion/baselib/db/download/DownloadBean;)V

    iget-object v6, v0, Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;->this$0:Lcom/transsnet/downloader/DownloadManagerApi;

    invoke-static {v6}, Lcom/transsnet/downloader/DownloadManagerApi;->v(Lcom/transsnet/downloader/DownloadManagerApi;)Ljj/a;

    move-result-object v6

    iget-object v7, v0, Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;->this$0:Lcom/transsnet/downloader/DownloadManagerApi;

    invoke-static {v7}, Lcom/transsnet/downloader/DownloadManagerApi;->w(Lcom/transsnet/downloader/DownloadManagerApi;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v7}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_6

    iget-object v7, v0, Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;->this$0:Lcom/transsnet/downloader/DownloadManagerApi;

    invoke-static {v7}, Lcom/transsnet/downloader/DownloadManagerApi;->w(Lcom/transsnet/downloader/DownloadManagerApi;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v7}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v7

    :cond_6
    iput-object v2, v0, Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;->label:I

    invoke-interface {v6, v7, v0}, Ljj/a;->d(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_7

    return-object v1

    :cond_7
    :goto_1
    check-cast v4, Lcom/transsion/baselib/db/audio/AudioBean;

    if-nez v4, :cond_9

    iget-object v4, v0, Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;->this$0:Lcom/transsnet/downloader/DownloadManagerApi;

    invoke-static {v4}, Lcom/transsnet/downloader/DownloadManagerApi;->v(Lcom/transsnet/downloader/DownloadManagerApi;)Ljj/a;

    move-result-object v4

    iget-object v6, v0, Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;->this$0:Lcom/transsnet/downloader/DownloadManagerApi;

    invoke-static {v6}, Lcom/transsnet/downloader/DownloadManagerApi;->w(Lcom/transsnet/downloader/DownloadManagerApi;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v6}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v6

    iput-object v2, v0, Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;->L$0:Ljava/lang/Object;

    iput v5, v0, Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;->label:I

    invoke-interface {v4, v6, v0}, Ljj/a;->c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_8

    return-object v1

    :cond_8
    move-object v1, v2

    :goto_2
    check-cast v4, Lcom/transsion/baselib/db/audio/AudioBean;

    move-object v2, v1

    :cond_9
    const/4 v1, 0x0

    if-nez v4, :cond_c

    new-instance v4, Lcom/transsion/baselib/db/audio/AudioBean;

    iget-object v6, v0, Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;->this$0:Lcom/transsnet/downloader/DownloadManagerApi;

    invoke-static {v6}, Lcom/transsnet/downloader/DownloadManagerApi;->w(Lcom/transsnet/downloader/DownloadManagerApi;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v6}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v7

    iget-object v6, v0, Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;->this$0:Lcom/transsnet/downloader/DownloadManagerApi;

    invoke-static {v6}, Lcom/transsnet/downloader/DownloadManagerApi;->w(Lcom/transsnet/downloader/DownloadManagerApi;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v6}, Lcom/transsion/baselib/db/download/DownloadBean;->getCover()Ljava/lang/String;

    move-result-object v8

    const-wide/16 v9, 0x0

    invoke-static {v9, v10}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    move-result-object v9

    iget-object v6, v0, Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;->this$0:Lcom/transsnet/downloader/DownloadManagerApi;

    invoke-static {v6}, Lcom/transsnet/downloader/DownloadManagerApi;->w(Lcom/transsnet/downloader/DownloadManagerApi;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v6}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    move-result-object v10

    iget-object v6, v0, Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;->this$0:Lcom/transsnet/downloader/DownloadManagerApi;

    invoke-static {v6}, Lcom/transsnet/downloader/DownloadManagerApi;->w(Lcom/transsnet/downloader/DownloadManagerApi;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v6}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v11

    iget-object v6, v0, Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;->this$0:Lcom/transsnet/downloader/DownloadManagerApi;

    invoke-static {v6}, Lcom/transsnet/downloader/DownloadManagerApi;->w(Lcom/transsnet/downloader/DownloadManagerApi;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v6}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    move-result-object v12

    iget-object v6, v0, Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;->this$0:Lcom/transsnet/downloader/DownloadManagerApi;

    invoke-static {v6}, Lcom/transsnet/downloader/DownloadManagerApi;->w(Lcom/transsnet/downloader/DownloadManagerApi;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v6

    if-eqz v6, :cond_a

    invoke-virtual {v6}, Lcom/transsion/baselib/db/download/DownloadBean;->getSe()I

    move-result v6

    move/from16 v25, v6

    goto :goto_3

    :cond_a
    move/from16 v25, v1

    :goto_3
    iget-object v6, v0, Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;->this$0:Lcom/transsnet/downloader/DownloadManagerApi;

    invoke-static {v6}, Lcom/transsnet/downloader/DownloadManagerApi;->w(Lcom/transsnet/downloader/DownloadManagerApi;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v6

    if-eqz v6, :cond_b

    invoke-virtual {v6}, Lcom/transsion/baselib/db/download/DownloadBean;->getEp()I

    move-result v6

    move/from16 v26, v6

    goto :goto_4

    :cond_b
    move/from16 v26, v1

    :goto_4
    const v27, 0x3ffc0

    const/16 v28, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object v6, v4

    invoke-direct/range {v6 .. v28}, Lcom/transsion/baselib/db/audio/AudioBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v6, v0, Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;->this$0:Lcom/transsnet/downloader/DownloadManagerApi;

    invoke-static {v6}, Lcom/transsnet/downloader/DownloadManagerApi;->w(Lcom/transsnet/downloader/DownloadManagerApi;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v6}, Lcom/transsion/baselib/db/download/DownloadBean;->getPostId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/transsion/baselib/db/audio/AudioBean;->setPostId(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;->this$0:Lcom/transsnet/downloader/DownloadManagerApi;

    invoke-static {v6}, Lcom/transsnet/downloader/DownloadManagerApi;->w(Lcom/transsnet/downloader/DownloadManagerApi;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v6}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/transsion/baselib/db/audio/AudioBean;->setResourceId(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;->this$0:Lcom/transsnet/downloader/DownloadManagerApi;

    invoke-static {v6}, Lcom/transsnet/downloader/DownloadManagerApi;->w(Lcom/transsnet/downloader/DownloadManagerApi;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v6}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/transsion/baselib/db/audio/AudioBean;->setSubjectId(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;->this$0:Lcom/transsnet/downloader/DownloadManagerApi;

    invoke-static {v6}, Lcom/transsnet/downloader/DownloadManagerApi;->w(Lcom/transsnet/downloader/DownloadManagerApi;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v6}, Lcom/transsion/baselib/db/download/DownloadBean;->getGroupId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/transsion/baselib/db/audio/AudioBean;->setGroupId(Ljava/lang/String;)V

    :cond_c
    iget-object v6, v0, Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;->this$0:Lcom/transsnet/downloader/DownloadManagerApi;

    invoke-static {v6}, Lcom/transsnet/downloader/DownloadManagerApi;->C(Lcom/transsnet/downloader/DownloadManagerApi;)Lcom/transsion/room/api/IFloatingApi;

    move-result-object v6

    if-eqz v6, :cond_d

    new-instance v7, Ljava/lang/ref/WeakReference;

    invoke-direct {v7, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v6, v7, v4}, Lcom/transsion/room/api/IFloatingApi;->a(Ljava/lang/ref/WeakReference;Lcom/transsion/baselib/db/audio/AudioBean;)V

    :cond_d
    iget-object v2, v0, Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;->this$0:Lcom/transsnet/downloader/DownloadManagerApi;

    invoke-static {v2}, Lcom/transsnet/downloader/DownloadManagerApi;->B(Lcom/transsnet/downloader/DownloadManagerApi;)Lcom/transsion/room/api/IAudioApi;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-static {v2, v4, v1, v5, v3}, Lcom/transsion/room/api/IAudioApi$a;->a(Lcom/transsion/room/api/IAudioApi;Lcom/transsion/baselib/db/audio/AudioBean;ZILjava/lang/Object;)V

    :cond_e
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v1
.end method
