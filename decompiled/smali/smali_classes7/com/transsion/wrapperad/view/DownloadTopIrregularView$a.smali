.class public final Lcom/transsion/wrapperad/view/DownloadTopIrregularView$a;
.super Ldi/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/wrapperad/view/DownloadTopIrregularView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/wrapperad/view/DownloadTopIrregularView;


# direct methods
.method constructor <init>(Lcom/transsion/wrapperad/view/DownloadTopIrregularView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/wrapperad/view/DownloadTopIrregularView$a;->d:Lcom/transsion/wrapperad/view/DownloadTopIrregularView;

    invoke-direct {p0}, Ldi/a;-><init>()V

    return-void
.end method


# virtual methods
.method public i(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 1

    invoke-super {p0, p1}, Ldi/a;->i(Lcom/hisavana/common/bean/TAdErrorCode;)V

    iget-object p1, p0, Lcom/transsion/wrapperad/view/DownloadTopIrregularView$a;->d:Lcom/transsion/wrapperad/view/DownloadTopIrregularView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/wrapperad/view/DownloadTopIrregularView;->access$setMMaxEcpmObject$p(Lcom/transsion/wrapperad/view/DownloadTopIrregularView;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    iget-object p1, p0, Lcom/transsion/wrapperad/view/DownloadTopIrregularView$a;->d:Lcom/transsion/wrapperad/view/DownloadTopIrregularView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 1

    invoke-super {p0, p1}, Ldi/a;->j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    iget-object v0, p0, Lcom/transsion/wrapperad/view/DownloadTopIrregularView$a;->d:Lcom/transsion/wrapperad/view/DownloadTopIrregularView;

    invoke-static {v0, p1}, Lcom/transsion/wrapperad/view/DownloadTopIrregularView;->access$setMMaxEcpmObject$p(Lcom/transsion/wrapperad/view/DownloadTopIrregularView;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    iget-object p1, p0, Lcom/transsion/wrapperad/view/DownloadTopIrregularView$a;->d:Lcom/transsion/wrapperad/view/DownloadTopIrregularView;

    invoke-virtual {p1}, Lcom/transsion/wrapperad/view/DownloadTopIrregularView;->showAd()V

    iget-object p1, p0, Lcom/transsion/wrapperad/view/DownloadTopIrregularView$a;->d:Lcom/transsion/wrapperad/view/DownloadTopIrregularView;

    invoke-static {p1}, Lcom/transsion/wrapperad/view/DownloadTopIrregularView;->access$setDefaultHeight(Lcom/transsion/wrapperad/view/DownloadTopIrregularView;)V

    return-void
.end method

.method public p(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 1

    invoke-super {p0, p1}, Ldi/a;->p(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    iget-object p1, p0, Lcom/transsion/wrapperad/view/DownloadTopIrregularView$a;->d:Lcom/transsion/wrapperad/view/DownloadTopIrregularView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/wrapperad/view/DownloadTopIrregularView;->access$setMMaxEcpmObject$p(Lcom/transsion/wrapperad/view/DownloadTopIrregularView;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    iget-object p1, p0, Lcom/transsion/wrapperad/view/DownloadTopIrregularView$a;->d:Lcom/transsion/wrapperad/view/DownloadTopIrregularView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
