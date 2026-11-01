.class public final Lcom/transsion/commercialization/task/DownloadInterceptAdHelper$loadNativeAd$1$a;
.super Ldi/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/commercialization/task/DownloadInterceptAdHelper$loadNativeAd$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;


# direct methods
.method constructor <init>(Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper$loadNativeAd$1$a;->d:Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;

    invoke-direct {p0}, Ldi/a;-><init>()V

    return-void
.end method


# virtual methods
.method public i(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    invoke-super {p0, p1}, Ldi/a;->i(Lcom/hisavana/common/bean/TAdErrorCode;)V

    iget-object p1, p0, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper$loadNativeAd$1$a;->d:Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;

    invoke-static {p1}, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;->f(Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;)V

    return-void
.end method

.method public j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 1

    invoke-super {p0, p1}, Ldi/a;->j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    iget-object v0, p0, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper$loadNativeAd$1$a;->d:Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;

    invoke-virtual {v0, p1}, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;->o(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    return-void
.end method

.method public l(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 0

    invoke-super {p0, p1}, Ldi/a;->l(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    iget-object p1, p0, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper$loadNativeAd$1$a;->d:Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;

    invoke-static {p1}, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;->c(Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;)Lcom/transsion/commercialization/task/AdInterceptDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/commercialization/task/AdInterceptDialog;->E0()V

    :cond_0
    return-void
.end method
