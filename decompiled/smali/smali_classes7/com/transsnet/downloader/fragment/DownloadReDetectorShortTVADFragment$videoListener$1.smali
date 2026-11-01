.class public final Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment$videoListener$1;
.super Ldi/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private d:Z

.field final synthetic e:Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment$videoListener$1;->e:Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment;

    invoke-direct {p0}, Ldi/a;-><init>()V

    return-void
.end method


# virtual methods
.method public i(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    invoke-super {p0, p1}, Ldi/a;->i(Lcom/hisavana/common/bean/TAdErrorCode;)V

    iget-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment$videoListener$1;->e:Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment;

    invoke-static {p1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment;->M0(Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment;)V

    return-void
.end method

.method public j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 7

    invoke-super {p0, p1}, Ldi/a;->j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment$videoListener$1;->e:Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment;

    invoke-static {v0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v1

    new-instance v4, Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment$videoListener$1$onBiddingLoad$1;

    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment$videoListener$1;->e:Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment;

    const/4 v2, 0x0

    invoke-direct {v4, v0, p1, v2}, Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment$videoListener$1$onBiddingLoad$1;-><init>(Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public m(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 1

    invoke-super {p0, p1}, Ldi/a;->m(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    iget-boolean p1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment$videoListener$1;->d:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment$videoListener$1;->e:Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment;

    invoke-virtual {p1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->s0()Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "ad_success"

    invoke-virtual {p1, v0}, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->K(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment$videoListener$1;->e:Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment;

    invoke-virtual {p1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->s0()Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "ad_cancel"

    invoke-virtual {p1, v0}, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->K(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment$videoListener$1;->e:Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment;

    invoke-virtual {p1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->s0()Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->p()Landroidx/lifecycle/b0;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public o(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 0

    invoke-super {p0, p1}, Ldi/a;->o(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment$videoListener$1;->d:Z

    return-void
.end method

.method public p(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 0

    invoke-super {p0, p1}, Ldi/a;->p(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    iget-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment$videoListener$1;->e:Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment;

    invoke-static {p1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment;->M0(Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment;)V

    return-void
.end method
