.class final Lcom/transsion/videodetail/music/ui/MusicDetailFragment$saveDownloadHistory$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/videodetail/music/ui/MusicDetailFragment;->l2()V
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
    c = "com.transsion.videodetail.music.ui.MusicDetailFragment$saveDownloadHistory$1"
    f = "MusicDetailFragment.kt"
    l = {
        0x71d
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $progress:J

.field J$0:J

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/videodetail/music/ui/MusicDetailFragment;


# direct methods
.method constructor <init>(Lcom/transsion/videodetail/music/ui/MusicDetailFragment;JLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/videodetail/music/ui/MusicDetailFragment;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/videodetail/music/ui/MusicDetailFragment$saveDownloadHistory$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/videodetail/music/ui/MusicDetailFragment$saveDownloadHistory$1;->this$0:Lcom/transsion/videodetail/music/ui/MusicDetailFragment;

    iput-wide p2, p0, Lcom/transsion/videodetail/music/ui/MusicDetailFragment$saveDownloadHistory$1;->$progress:J

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

    new-instance p1, Lcom/transsion/videodetail/music/ui/MusicDetailFragment$saveDownloadHistory$1;

    iget-object v0, p0, Lcom/transsion/videodetail/music/ui/MusicDetailFragment$saveDownloadHistory$1;->this$0:Lcom/transsion/videodetail/music/ui/MusicDetailFragment;

    iget-wide v1, p0, Lcom/transsion/videodetail/music/ui/MusicDetailFragment$saveDownloadHistory$1;->$progress:J

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/transsion/videodetail/music/ui/MusicDetailFragment$saveDownloadHistory$1;-><init>(Lcom/transsion/videodetail/music/ui/MusicDetailFragment;JLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/videodetail/music/ui/MusicDetailFragment$saveDownloadHistory$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/videodetail/music/ui/MusicDetailFragment$saveDownloadHistory$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/videodetail/music/ui/MusicDetailFragment$saveDownloadHistory$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/videodetail/music/ui/MusicDetailFragment$saveDownloadHistory$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/videodetail/music/ui/MusicDetailFragment$saveDownloadHistory$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    iget-wide v1, v0, Lcom/transsion/videodetail/music/ui/MusicDetailFragment$saveDownloadHistory$1;->J$0:J

    iget-object v4, v0, Lcom/transsion/videodetail/music/ui/MusicDetailFragment$saveDownloadHistory$1;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v0, Lcom/transsion/videodetail/music/ui/MusicDetailFragment$saveDownloadHistory$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/transsion/videodetail/music/ui/MusicDetailFragment;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-wide v10, v1

    move-object v9, v4

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/transsion/videodetail/music/ui/MusicDetailFragment$saveDownloadHistory$1;->this$0:Lcom/transsion/videodetail/music/ui/MusicDetailFragment;

    invoke-static {v2}, Lcom/transsion/videodetail/music/ui/MusicDetailFragment;->P0(Lcom/transsion/videodetail/music/ui/MusicDetailFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-wide v5, v0, Lcom/transsion/videodetail/music/ui/MusicDetailFragment$saveDownloadHistory$1;->$progress:J

    iget-object v2, v0, Lcom/transsion/videodetail/music/ui/MusicDetailFragment$saveDownloadHistory$1;->this$0:Lcom/transsion/videodetail/music/ui/MusicDetailFragment;

    sget-object v7, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    invoke-virtual {v7}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    move-result-object v7

    iput-object v2, v0, Lcom/transsion/videodetail/music/ui/MusicDetailFragment$saveDownloadHistory$1;->L$0:Ljava/lang/Object;

    iput-object v4, v0, Lcom/transsion/videodetail/music/ui/MusicDetailFragment$saveDownloadHistory$1;->L$1:Ljava/lang/Object;

    iput-wide v5, v0, Lcom/transsion/videodetail/music/ui/MusicDetailFragment$saveDownloadHistory$1;->J$0:J

    iput v3, v0, Lcom/transsion/videodetail/music/ui/MusicDetailFragment$saveDownloadHistory$1;->label:I

    invoke-virtual {v7, v4, v5, v6, v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->e0(Ljava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_2

    return-object v1

    :cond_2
    move-object v9, v4

    move-wide v10, v5

    move-object v5, v2

    :goto_0
    new-instance v1, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;

    invoke-static {v5}, Lcom/transsion/videodetail/music/ui/MusicDetailFragment;->P0(Lcom/transsion/videodetail/music/ui/MusicDetailFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v2

    const-wide/16 v6, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getDuration()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    goto :goto_1

    :cond_3
    move-wide v12, v6

    :goto_1
    const/16 v16, 0x10

    const/16 v17, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v8, v1

    invoke-direct/range {v8 .. v17}, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;-><init>(Ljava/lang/String;JJZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v2, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    const-class v4, Lcom/transsnet/flow/event/FlowEventBus;

    invoke-virtual {v2, v4}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object v8

    check-cast v8, Lcom/transsnet/flow/event/FlowEventBus;

    const-class v9, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "getName(...)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8, v9, v1, v6, v7}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    new-instance v1, Lmy/e;

    invoke-static {v5}, Lcom/transsion/videodetail/music/ui/MusicDetailFragment;->P0(Lcom/transsion/videodetail/music/ui/MusicDetailFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v5

    const/4 v8, 0x0

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->isOutside()Z

    move-result v5

    if-ne v5, v3, :cond_4

    move v8, v3

    :cond_4
    invoke-direct {v1, v3, v8}, Lmy/e;-><init>(ZZ)V

    invoke-virtual {v2, v4}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object v2

    check-cast v2, Lcom/transsnet/flow/event/FlowEventBus;

    const-class v3, Lmy/e;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v10}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v1, v6, v7}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    :cond_5
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v1
.end method
