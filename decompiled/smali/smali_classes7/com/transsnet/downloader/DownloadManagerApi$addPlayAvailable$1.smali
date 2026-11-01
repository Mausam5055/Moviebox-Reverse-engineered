.class final Lcom/transsnet/downloader/DownloadManagerApi$addPlayAvailable$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/DownloadManagerApi;->T(Ljava/lang/String;Ljava/lang/String;ZIZZ)V
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
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
    c = "com.transsnet.downloader.DownloadManagerApi$addPlayAvailable$1"
    f = "DownloadManagerApi.kt"
    l = {
        0x330
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $needNotify:Z

.field final synthetic $resourceId:Ljava/lang/String;

.field final synthetic $subjectId:Ljava/lang/String;

.field final synthetic $totalEpisode:I

.field I$0:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field Z$0:Z

.field label:I

.field final synthetic this$0:Lcom/transsnet/downloader/DownloadManagerApi;


# direct methods
.method constructor <init>(Ljava/lang/String;ILcom/transsnet/downloader/DownloadManagerApi;ZLjava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/transsnet/downloader/DownloadManagerApi;",
            "Z",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsnet/downloader/DownloadManagerApi$addPlayAvailable$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsnet/downloader/DownloadManagerApi$addPlayAvailable$1;->$subjectId:Ljava/lang/String;

    iput p2, p0, Lcom/transsnet/downloader/DownloadManagerApi$addPlayAvailable$1;->$totalEpisode:I

    iput-object p3, p0, Lcom/transsnet/downloader/DownloadManagerApi$addPlayAvailable$1;->this$0:Lcom/transsnet/downloader/DownloadManagerApi;

    iput-boolean p4, p0, Lcom/transsnet/downloader/DownloadManagerApi$addPlayAvailable$1;->$needNotify:Z

    iput-object p5, p0, Lcom/transsnet/downloader/DownloadManagerApi$addPlayAvailable$1;->$resourceId:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance p1, Lcom/transsnet/downloader/DownloadManagerApi$addPlayAvailable$1;

    iget-object v1, p0, Lcom/transsnet/downloader/DownloadManagerApi$addPlayAvailable$1;->$subjectId:Ljava/lang/String;

    iget v2, p0, Lcom/transsnet/downloader/DownloadManagerApi$addPlayAvailable$1;->$totalEpisode:I

    iget-object v3, p0, Lcom/transsnet/downloader/DownloadManagerApi$addPlayAvailable$1;->this$0:Lcom/transsnet/downloader/DownloadManagerApi;

    iget-boolean v4, p0, Lcom/transsnet/downloader/DownloadManagerApi$addPlayAvailable$1;->$needNotify:Z

    iget-object v5, p0, Lcom/transsnet/downloader/DownloadManagerApi$addPlayAvailable$1;->$resourceId:Ljava/lang/String;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/transsnet/downloader/DownloadManagerApi$addPlayAvailable$1;-><init>(Ljava/lang/String;ILcom/transsnet/downloader/DownloadManagerApi;ZLjava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/DownloadManagerApi$addPlayAvailable$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/DownloadManagerApi$addPlayAvailable$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsnet/downloader/DownloadManagerApi$addPlayAvailable$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/DownloadManagerApi$addPlayAvailable$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsnet/downloader/DownloadManagerApi$addPlayAvailable$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-boolean v0, p0, Lcom/transsnet/downloader/DownloadManagerApi$addPlayAvailable$1;->Z$0:Z

    iget v1, p0, Lcom/transsnet/downloader/DownloadManagerApi$addPlayAvailable$1;->I$0:I

    iget-object v3, p0, Lcom/transsnet/downloader/DownloadManagerApi$addPlayAvailable$1;->L$2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/transsnet/downloader/DownloadManagerApi$addPlayAvailable$1;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/transsnet/downloader/DownloadManagerApi$addPlayAvailable$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/transsnet/downloader/DownloadManagerApi;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/transsnet/downloader/DownloadManagerApi$addPlayAvailable$1;->$subjectId:Ljava/lang/String;

    if-eqz v4, :cond_5

    iget v1, p0, Lcom/transsnet/downloader/DownloadManagerApi$addPlayAvailable$1;->$totalEpisode:I

    iget-object v5, p0, Lcom/transsnet/downloader/DownloadManagerApi$addPlayAvailable$1;->this$0:Lcom/transsnet/downloader/DownloadManagerApi;

    iget-boolean p1, p0, Lcom/transsnet/downloader/DownloadManagerApi$addPlayAvailable$1;->$needNotify:Z

    iget-object v3, p0, Lcom/transsnet/downloader/DownloadManagerApi$addPlayAvailable$1;->$resourceId:Ljava/lang/String;

    sget-object v6, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    invoke-virtual {v6}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    move-result-object v6

    iput-object v5, p0, Lcom/transsnet/downloader/DownloadManagerApi$addPlayAvailable$1;->L$0:Ljava/lang/Object;

    iput-object v4, p0, Lcom/transsnet/downloader/DownloadManagerApi$addPlayAvailable$1;->L$1:Ljava/lang/Object;

    iput-object v3, p0, Lcom/transsnet/downloader/DownloadManagerApi$addPlayAvailable$1;->L$2:Ljava/lang/Object;

    iput v1, p0, Lcom/transsnet/downloader/DownloadManagerApi$addPlayAvailable$1;->I$0:I

    iput-boolean p1, p0, Lcom/transsnet/downloader/DownloadManagerApi$addPlayAvailable$1;->Z$0:Z

    iput v2, p0, Lcom/transsnet/downloader/DownloadManagerApi$addPlayAvailable$1;->label:I

    invoke-virtual {v6, v4, p0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->o(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_2

    return-object v0

    :cond_2
    move v0, p1

    move-object p1, v6

    :goto_0
    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    goto :goto_1

    :cond_3
    const/4 p1, -0x1

    :goto_1
    if-gt v1, p1, :cond_4

    invoke-static {v5}, Lcom/transsnet/downloader/DownloadManagerApi;->y(Lcom/transsnet/downloader/DownloadManagerApi;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_4

    new-instance p1, Lcom/transsnet/flow/event/sync/event/AddToDownloadEvent;

    invoke-direct {p1, v4, v3, v2, v2}, Lcom/transsnet/flow/event/sync/event/AddToDownloadEvent;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    sget-object v0, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    const-class v1, Lcom/transsnet/flow/event/FlowEventBus;

    invoke-virtual {v0, v1}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object v0

    check-cast v0, Lcom/transsnet/flow/event/FlowEventBus;

    const-class v1, Lcom/transsnet/flow/event/sync/event/AddToDownloadEvent;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getName(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    :cond_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    :goto_2
    return-object p1
.end method
