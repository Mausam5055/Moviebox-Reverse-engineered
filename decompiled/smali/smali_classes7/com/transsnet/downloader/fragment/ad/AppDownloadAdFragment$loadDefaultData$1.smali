.class final Lcom/transsnet/downloader/fragment/ad/AppDownloadAdFragment$loadDefaultData$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/fragment/ad/AppDownloadAdFragment;->loadDefaultData()V
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
    c = "com.transsnet.downloader.fragment.ad.AppDownloadAdFragment$loadDefaultData$1"
    f = "AppDownloadAdFragment.kt"
    l = {
        0x6f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/transsnet/downloader/fragment/ad/AppDownloadAdFragment;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/fragment/ad/AppDownloadAdFragment;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsnet/downloader/fragment/ad/AppDownloadAdFragment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsnet/downloader/fragment/ad/AppDownloadAdFragment$loadDefaultData$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsnet/downloader/fragment/ad/AppDownloadAdFragment$loadDefaultData$1;->this$0:Lcom/transsnet/downloader/fragment/ad/AppDownloadAdFragment;

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

    new-instance p1, Lcom/transsnet/downloader/fragment/ad/AppDownloadAdFragment$loadDefaultData$1;

    iget-object v0, p0, Lcom/transsnet/downloader/fragment/ad/AppDownloadAdFragment$loadDefaultData$1;->this$0:Lcom/transsnet/downloader/fragment/ad/AppDownloadAdFragment;

    invoke-direct {p1, v0, p2}, Lcom/transsnet/downloader/fragment/ad/AppDownloadAdFragment$loadDefaultData$1;-><init>(Lcom/transsnet/downloader/fragment/ad/AppDownloadAdFragment;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/fragment/ad/AppDownloadAdFragment$loadDefaultData$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/fragment/ad/AppDownloadAdFragment$loadDefaultData$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsnet/downloader/fragment/ad/AppDownloadAdFragment$loadDefaultData$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/fragment/ad/AppDownloadAdFragment$loadDefaultData$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsnet/downloader/fragment/ad/AppDownloadAdFragment$loadDefaultData$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsnet/downloader/fragment/ad/AppDownloadAdFragment$loadDefaultData$1;->this$0:Lcom/transsnet/downloader/fragment/ad/AppDownloadAdFragment;

    invoke-static {p1}, Lcom/transsnet/downloader/fragment/ad/AppDownloadAdFragment;->k0(Lcom/transsnet/downloader/fragment/ad/AppDownloadAdFragment;)Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;

    move-result-object v3

    sget-object p1, Lcom/transsion/ad/scene/a;->a:Lcom/transsion/ad/scene/a;

    const/4 v1, 0x2

    const/4 v4, 0x0

    const-string v5, "DownloadCenterAppDistributionScene"

    const/4 v6, 0x0

    invoke-static {p1, v5, v6, v1, v4}, Lcom/transsion/ad/scene/a;->r(Lcom/transsion/ad/scene/a;Ljava/lang/String;IILjava/lang/Object;)I

    move-result v6

    iget-object p1, p0, Lcom/transsnet/downloader/fragment/ad/AppDownloadAdFragment$loadDefaultData$1;->this$0:Lcom/transsnet/downloader/fragment/ad/AppDownloadAdFragment;

    invoke-static {p1}, Lcom/transsnet/downloader/fragment/ad/AppDownloadAdFragment;->m0(Lcom/transsnet/downloader/fragment/ad/AppDownloadAdFragment;)Ldi/a;

    move-result-object v7

    iput v2, p0, Lcom/transsnet/downloader/fragment/ad/AppDownloadAdFragment$loadDefaultData$1;->label:I

    const-string v4, "DownloadCenterAppDistributionScene"

    const/4 v5, 0x1

    const/4 v8, 0x0

    const/16 v10, 0x10

    const/4 v11, 0x0

    move-object v9, p0

    invoke-static/range {v3 .. v11}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->S(Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;Ljava/lang/String;ZILdi/a;Ljava/util/Map;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
