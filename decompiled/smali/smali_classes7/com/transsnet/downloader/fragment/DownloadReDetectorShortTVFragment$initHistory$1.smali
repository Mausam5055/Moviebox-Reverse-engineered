.class final Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVFragment$initHistory$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVFragment;->initHistory()V
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
    c = "com.transsnet.downloader.fragment.DownloadReDetectorShortTVFragment$initHistory$1"
    f = "DownloadReDetectorShortTVFragment.kt"
    l = {
        0xe2,
        0xe3
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVFragment;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVFragment;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVFragment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVFragment$initHistory$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVFragment$initHistory$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVFragment;

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

    new-instance p1, Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVFragment$initHistory$1;

    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVFragment$initHistory$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVFragment;

    invoke-direct {p1, v0, p2}, Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVFragment$initHistory$1;-><init>(Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVFragment;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVFragment$initHistory$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVFragment$initHistory$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVFragment$initHistory$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVFragment$initHistory$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVFragment$initHistory$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVFragment$initHistory$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVFragment;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVFragment$initHistory$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVFragment;

    invoke-static {p1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVFragment;->j1(Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVFragment;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVFragment$initHistory$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVFragment;

    invoke-static {v1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVFragment;->h1(Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVFragment;)Lcom/transsion/baselib/db/video/ShortTVPlayDao;

    move-result-object v4

    iput-object v1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVFragment$initHistory$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVFragment$initHistory$1;->label:I

    invoke-interface {v4, p1, p0}, Lcom/transsion/baselib/db/video/ShortTVPlayDao;->e(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    check-cast p1, Lcom/transsion/baselib/db/video/ShortTVPlayBean;

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v3

    new-instance v4, Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVFragment$initHistory$1$1$1;

    const/4 v5, 0x0

    invoke-direct {v4, v1, p1, v5}, Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVFragment$initHistory$1$1$1;-><init>(Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVFragment;Lcom/transsion/baselib/db/video/ShortTVPlayBean;Lkotlin/coroutines/Continuation;)V

    iput-object v5, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVFragment$initHistory$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVFragment$initHistory$1;->label:I

    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
