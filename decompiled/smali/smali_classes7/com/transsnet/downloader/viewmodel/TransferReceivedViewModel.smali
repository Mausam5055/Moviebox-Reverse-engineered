.class public final Lcom/transsnet/downloader/viewmodel/TransferReceivedViewModel;
.super Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel;


# instance fields
.field private final d:Landroidx/lifecycle/b0;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel;-><init>()V

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/TransferReceivedViewModel;->d:Landroidx/lifecycle/b0;

    return-void
.end method

.method public static synthetic i(Lcom/transsnet/downloader/viewmodel/TransferReceivedViewModel;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsnet/downloader/viewmodel/TransferReceivedViewModel;->h(Z)V

    return-void
.end method


# virtual methods
.method public final h(Z)V
    .locals 6

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v1

    new-instance v3, Lcom/transsnet/downloader/viewmodel/TransferReceivedViewModel$getTransferReceivedList$1;

    const/4 v2, 0x0

    invoke-direct {v3, p1, p0, v2}, Lcom/transsnet/downloader/viewmodel/TransferReceivedViewModel$getTransferReceivedList$1;-><init>(ZLcom/transsnet/downloader/viewmodel/TransferReceivedViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final j()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/TransferReceivedViewModel;->d:Landroidx/lifecycle/b0;

    return-object v0
.end method
