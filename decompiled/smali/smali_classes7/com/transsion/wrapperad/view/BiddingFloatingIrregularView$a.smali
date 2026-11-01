.class public final Lcom/transsion/wrapperad/view/BiddingFloatingIrregularView$a;
.super Ldi/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/wrapperad/view/BiddingFloatingIrregularView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/wrapperad/view/BiddingFloatingIrregularView;


# direct methods
.method constructor <init>(Lcom/transsion/wrapperad/view/BiddingFloatingIrregularView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/wrapperad/view/BiddingFloatingIrregularView$a;->d:Lcom/transsion/wrapperad/view/BiddingFloatingIrregularView;

    invoke-direct {p0}, Ldi/a;-><init>()V

    return-void
.end method


# virtual methods
.method public i(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    invoke-super {p0, p1}, Ldi/a;->i(Lcom/hisavana/common/bean/TAdErrorCode;)V

    iget-object p1, p0, Lcom/transsion/wrapperad/view/BiddingFloatingIrregularView$a;->d:Lcom/transsion/wrapperad/view/BiddingFloatingIrregularView;

    invoke-static {p1}, Lcom/transsion/wrapperad/view/BiddingFloatingIrregularView;->access$hideAdView(Lcom/transsion/wrapperad/view/BiddingFloatingIrregularView;)V

    return-void
.end method

.method public j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 1

    invoke-super {p0, p1}, Ldi/a;->j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    iget-object v0, p0, Lcom/transsion/wrapperad/view/BiddingFloatingIrregularView$a;->d:Lcom/transsion/wrapperad/view/BiddingFloatingIrregularView;

    invoke-static {v0, p1}, Lcom/transsion/wrapperad/view/BiddingFloatingIrregularView;->access$setMMaxEcpmObject$p(Lcom/transsion/wrapperad/view/BiddingFloatingIrregularView;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    iget-object p1, p0, Lcom/transsion/wrapperad/view/BiddingFloatingIrregularView$a;->d:Lcom/transsion/wrapperad/view/BiddingFloatingIrregularView;

    invoke-virtual {p1}, Lcom/transsion/wrapperad/view/BiddingFloatingIrregularView;->showAd()V

    return-void
.end method

.method public l(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 2

    invoke-super {p0, p1}, Ldi/a;->l(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    iget-object p1, p0, Lcom/transsion/wrapperad/view/BiddingFloatingIrregularView$a;->d:Lcom/transsion/wrapperad/view/BiddingFloatingIrregularView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/wrapperad/view/BiddingFloatingIrregularView;->access$setMMaxEcpmObject$p(Lcom/transsion/wrapperad/view/BiddingFloatingIrregularView;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    iget-object p1, p0, Lcom/transsion/wrapperad/view/BiddingFloatingIrregularView$a;->d:Lcom/transsion/wrapperad/view/BiddingFloatingIrregularView;

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/transsion/wrapperad/view/BiddingFloatingIrregularView;->access$setLastRefreshTime$p(Lcom/transsion/wrapperad/view/BiddingFloatingIrregularView;J)V

    return-void
.end method

.method public p(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 0

    invoke-super {p0, p1}, Ldi/a;->p(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    iget-object p1, p0, Lcom/transsion/wrapperad/view/BiddingFloatingIrregularView$a;->d:Lcom/transsion/wrapperad/view/BiddingFloatingIrregularView;

    invoke-static {p1}, Lcom/transsion/wrapperad/view/BiddingFloatingIrregularView;->access$hideAdView(Lcom/transsion/wrapperad/view/BiddingFloatingIrregularView;)V

    return-void
.end method
