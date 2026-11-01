.class final Lcom/transsion/audio/fragment/SubjectListFragment$initView$1$3$onPlayItem$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/fragment/SubjectListFragment$initView$1$3;->a(Lcom/transsion/moviedetailapi/DownloadItem;)V
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
    c = "com.transsion.audio.fragment.SubjectListFragment$initView$1$3$onPlayItem$1"
    f = "SubjectListFragment.kt"
    l = {
        0x93
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $download:Lcom/transsion/moviedetailapi/DownloadItem;

.field label:I

.field final synthetic this$0:Lcom/transsion/audio/fragment/SubjectListFragment;


# direct methods
.method constructor <init>(Lcom/transsion/moviedetailapi/DownloadItem;Lcom/transsion/audio/fragment/SubjectListFragment;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/moviedetailapi/DownloadItem;",
            "Lcom/transsion/audio/fragment/SubjectListFragment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/audio/fragment/SubjectListFragment$initView$1$3$onPlayItem$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/audio/fragment/SubjectListFragment$initView$1$3$onPlayItem$1;->$download:Lcom/transsion/moviedetailapi/DownloadItem;

    iput-object p2, p0, Lcom/transsion/audio/fragment/SubjectListFragment$initView$1$3$onPlayItem$1;->this$0:Lcom/transsion/audio/fragment/SubjectListFragment;

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

    new-instance p1, Lcom/transsion/audio/fragment/SubjectListFragment$initView$1$3$onPlayItem$1;

    iget-object v0, p0, Lcom/transsion/audio/fragment/SubjectListFragment$initView$1$3$onPlayItem$1;->$download:Lcom/transsion/moviedetailapi/DownloadItem;

    iget-object v1, p0, Lcom/transsion/audio/fragment/SubjectListFragment$initView$1$3$onPlayItem$1;->this$0:Lcom/transsion/audio/fragment/SubjectListFragment;

    invoke-direct {p1, v0, v1, p2}, Lcom/transsion/audio/fragment/SubjectListFragment$initView$1$3$onPlayItem$1;-><init>(Lcom/transsion/moviedetailapi/DownloadItem;Lcom/transsion/audio/fragment/SubjectListFragment;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/fragment/SubjectListFragment$initView$1$3$onPlayItem$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/fragment/SubjectListFragment$initView$1$3$onPlayItem$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/audio/fragment/SubjectListFragment$initView$1$3$onPlayItem$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/audio/fragment/SubjectListFragment$initView$1$3$onPlayItem$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 31

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/audio/fragment/SubjectListFragment$initView$1$3$onPlayItem$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/transsion/audio/fragment/SubjectListFragment$initView$1$3$onPlayItem$1;->$download:Lcom/transsion/moviedetailapi/DownloadItem;

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/DownloadItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    iget-object v5, v0, Lcom/transsion/audio/fragment/SubjectListFragment$initView$1$3$onPlayItem$1;->this$0:Lcom/transsion/audio/fragment/SubjectListFragment;

    invoke-static {v5}, Lcom/transsion/audio/fragment/SubjectListFragment;->i0(Lcom/transsion/audio/fragment/SubjectListFragment;)Ljj/a;

    move-result-object v5

    if-eqz v5, :cond_3

    iput v3, v0, Lcom/transsion/audio/fragment/SubjectListFragment$initView$1$3$onPlayItem$1;->label:I

    invoke-interface {v5, v2, v0}, Ljj/a;->c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_2

    return-object v1

    :cond_2
    :goto_0
    move-object v4, v2

    check-cast v4, Lcom/transsion/baselib/db/audio/AudioBean;

    :cond_3
    const-wide/16 v1, 0x0

    const-class v5, Lcom/transsion/room/api/IAudioApi;

    const/4 v6, 0x3

    const/4 v7, 0x0

    if-eqz v4, :cond_b

    sget-object v8, Lcom/transsion/audio/player/AudioPlayer;->i:Lcom/transsion/audio/player/AudioPlayer$a;

    invoke-virtual {v8}, Lcom/transsion/audio/player/AudioPlayer$a;->a()Lcom/transsion/audio/player/AudioPlayer;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/transsion/audio/player/AudioPlayer;->y(Lcom/transsion/baselib/db/audio/AudioBean;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v4}, Lcom/transsion/baselib/db/audio/AudioBean;->getStatus()I

    move-result v1

    if-ne v1, v6, :cond_4

    iget-object v1, v0, Lcom/transsion/audio/fragment/SubjectListFragment$initView$1$3$onPlayItem$1;->this$0:Lcom/transsion/audio/fragment/SubjectListFragment;

    invoke-static {v1}, Lcom/transsion/audio/fragment/SubjectListFragment;->l0(Lcom/transsion/audio/fragment/SubjectListFragment;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v1, 0x4

    invoke-virtual {v4, v1}, Lcom/transsion/baselib/db/audio/AudioBean;->setStatus(I)V

    iget-object v2, v0, Lcom/transsion/audio/fragment/SubjectListFragment$initView$1$3$onPlayItem$1;->$download:Lcom/transsion/moviedetailapi/DownloadItem;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/transsion/moviedetailapi/DownloadItem;->setStatus(Ljava/lang/Integer;)V

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v5, v1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/room/api/IAudioApi;

    if-eqz v1, :cond_d

    invoke-interface {v1}, Lcom/transsion/room/api/IAudioApi;->stop()V

    goto/16 :goto_4

    :cond_4
    iget-object v1, v0, Lcom/transsion/audio/fragment/SubjectListFragment$initView$1$3$onPlayItem$1;->this$0:Lcom/transsion/audio/fragment/SubjectListFragment;

    invoke-static {v1}, Lcom/transsion/audio/fragment/SubjectListFragment;->l0(Lcom/transsion/audio/fragment/SubjectListFragment;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {v4, v6}, Lcom/transsion/baselib/db/audio/AudioBean;->setStatus(I)V

    iget-object v1, v0, Lcom/transsion/audio/fragment/SubjectListFragment$initView$1$3$onPlayItem$1;->$download:Lcom/transsion/moviedetailapi/DownloadItem;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/moviedetailapi/DownloadItem;->setStatus(Ljava/lang/Integer;)V

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v5, v1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/room/api/IAudioApi;

    if-eqz v1, :cond_d

    invoke-interface {v1}, Lcom/transsion/room/api/IAudioApi;->prepare()V

    goto/16 :goto_4

    :cond_5
    invoke-virtual {v4}, Lcom/transsion/baselib/db/audio/AudioBean;->getReadProcess()Ljava/lang/Long;

    move-result-object v8

    if-eqz v8, :cond_6

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    goto :goto_1

    :cond_6
    move-wide v8, v1

    :goto_1
    invoke-virtual {v4}, Lcom/transsion/baselib/db/audio/AudioBean;->getDuration()Ljava/lang/Long;

    move-result-object v10

    if-eqz v10, :cond_7

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    goto :goto_2

    :cond_7
    const-wide/16 v10, -0x1f4

    :goto_2
    cmp-long v8, v8, v10

    if-ltz v8, :cond_8

    goto :goto_3

    :cond_8
    move v3, v7

    :goto_3
    invoke-virtual {v4}, Lcom/transsion/baselib/db/audio/AudioBean;->getStatus()I

    move-result v8

    const/4 v9, 0x6

    if-eq v8, v9, :cond_9

    if-eqz v3, :cond_a

    :cond_9
    invoke-static {v1, v2}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/transsion/baselib/db/audio/AudioBean;->setReadProcess(Ljava/lang/Long;)V

    :cond_a
    iget-object v1, v0, Lcom/transsion/audio/fragment/SubjectListFragment$initView$1$3$onPlayItem$1;->this$0:Lcom/transsion/audio/fragment/SubjectListFragment;

    invoke-static {v1}, Lcom/transsion/audio/fragment/SubjectListFragment;->l0(Lcom/transsion/audio/fragment/SubjectListFragment;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {v4, v6}, Lcom/transsion/baselib/db/audio/AudioBean;->setStatus(I)V

    iget-object v1, v0, Lcom/transsion/audio/fragment/SubjectListFragment$initView$1$3$onPlayItem$1;->$download:Lcom/transsion/moviedetailapi/DownloadItem;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/moviedetailapi/DownloadItem;->setStatus(Ljava/lang/Integer;)V

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v5, v1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/room/api/IAudioApi;

    if-eqz v1, :cond_d

    invoke-interface {v1, v4, v7}, Lcom/transsion/room/api/IAudioApi;->d(Lcom/transsion/baselib/db/audio/AudioBean;Z)V

    goto/16 :goto_4

    :cond_b
    new-instance v4, Lcom/transsion/baselib/db/audio/AudioBean;

    iget-object v3, v0, Lcom/transsion/audio/fragment/SubjectListFragment$initView$1$3$onPlayItem$1;->$download:Lcom/transsion/moviedetailapi/DownloadItem;

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/DownloadItem;->getUrl()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_c

    const-string v3, ""

    :cond_c
    move-object v9, v3

    iget-object v3, v0, Lcom/transsion/audio/fragment/SubjectListFragment$initView$1$3$onPlayItem$1;->this$0:Lcom/transsion/audio/fragment/SubjectListFragment;

    invoke-static {v3}, Lcom/transsion/audio/fragment/SubjectListFragment;->n0(Lcom/transsion/audio/fragment/SubjectListFragment;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v2}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    move-result-object v11

    iget-object v1, v0, Lcom/transsion/audio/fragment/SubjectListFragment$initView$1$3$onPlayItem$1;->$download:Lcom/transsion/moviedetailapi/DownloadItem;

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/DownloadItem;->getSize()Ljava/lang/Long;

    move-result-object v12

    iget-object v1, v0, Lcom/transsion/audio/fragment/SubjectListFragment$initView$1$3$onPlayItem$1;->$download:Lcom/transsion/moviedetailapi/DownloadItem;

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/DownloadItem;->getUrl()Ljava/lang/String;

    move-result-object v13

    iget-object v1, v0, Lcom/transsion/audio/fragment/SubjectListFragment$initView$1$3$onPlayItem$1;->$download:Lcom/transsion/moviedetailapi/DownloadItem;

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/DownloadItem;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v16

    iget-object v1, v0, Lcom/transsion/audio/fragment/SubjectListFragment$initView$1$3$onPlayItem$1;->$download:Lcom/transsion/moviedetailapi/DownloadItem;

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/DownloadItem;->getResourceId()Ljava/lang/String;

    move-result-object v21

    iget-object v1, v0, Lcom/transsion/audio/fragment/SubjectListFragment$initView$1$3$onPlayItem$1;->$download:Lcom/transsion/moviedetailapi/DownloadItem;

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/DownloadItem;->getPostId()Ljava/lang/String;

    move-result-object v22

    iget-object v1, v0, Lcom/transsion/audio/fragment/SubjectListFragment$initView$1$3$onPlayItem$1;->this$0:Lcom/transsion/audio/fragment/SubjectListFragment;

    invoke-static {v1}, Lcom/transsion/audio/fragment/SubjectListFragment;->o0(Lcom/transsion/audio/fragment/SubjectListFragment;)Ljava/lang/String;

    move-result-object v23

    iget-object v1, v0, Lcom/transsion/audio/fragment/SubjectListFragment$initView$1$3$onPlayItem$1;->this$0:Lcom/transsion/audio/fragment/SubjectListFragment;

    invoke-static {v1}, Lcom/transsion/audio/fragment/SubjectListFragment;->j0(Lcom/transsion/audio/fragment/SubjectListFragment;)Ljava/lang/String;

    move-result-object v24

    iget-object v1, v0, Lcom/transsion/audio/fragment/SubjectListFragment$initView$1$3$onPlayItem$1;->this$0:Lcom/transsion/audio/fragment/SubjectListFragment;

    invoke-static {v1}, Lcom/transsion/audio/fragment/SubjectListFragment;->p0(Lcom/transsion/audio/fragment/SubjectListFragment;)Ljava/lang/String;

    move-result-object v26

    iget-object v1, v0, Lcom/transsion/audio/fragment/SubjectListFragment$initView$1$3$onPlayItem$1;->$download:Lcom/transsion/moviedetailapi/DownloadItem;

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/DownloadItem;->getSe()I

    move-result v27

    iget-object v1, v0, Lcom/transsion/audio/fragment/SubjectListFragment$initView$1$3$onPlayItem$1;->$download:Lcom/transsion/moviedetailapi/DownloadItem;

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/DownloadItem;->getEp()I

    move-result v28

    const v29, 0x10700

    const/16 v30, 0x0

    const-string v15, ""

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-string v20, ""

    const/16 v25, 0x0

    move-object v8, v4

    invoke-direct/range {v8 .. v30}, Lcom/transsion/baselib/db/audio/AudioBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v1, v0, Lcom/transsion/audio/fragment/SubjectListFragment$initView$1$3$onPlayItem$1;->$download:Lcom/transsion/moviedetailapi/DownloadItem;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/moviedetailapi/DownloadItem;->setStatus(Ljava/lang/Integer;)V

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v5, v1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/room/api/IAudioApi;

    if-eqz v1, :cond_d

    invoke-interface {v1, v4, v7}, Lcom/transsion/room/api/IAudioApi;->d(Lcom/transsion/baselib/db/audio/AudioBean;Z)V

    :cond_d
    :goto_4
    iget-object v1, v0, Lcom/transsion/audio/fragment/SubjectListFragment$initView$1$3$onPlayItem$1;->this$0:Lcom/transsion/audio/fragment/SubjectListFragment;

    iget-object v2, v0, Lcom/transsion/audio/fragment/SubjectListFragment$initView$1$3$onPlayItem$1;->$download:Lcom/transsion/moviedetailapi/DownloadItem;

    invoke-static {v1, v2, v4}, Lcom/transsion/audio/fragment/SubjectListFragment;->r0(Lcom/transsion/audio/fragment/SubjectListFragment;Lcom/transsion/moviedetailapi/DownloadItem;Lcom/transsion/baselib/db/audio/AudioBean;)V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v1
.end method
