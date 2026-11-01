.class public final Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView$a;
.super Ldi/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;


# direct methods
.method constructor <init>(Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView$a;->d:Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;

    invoke-direct {p0}, Ldi/a;-><init>()V

    return-void
.end method


# virtual methods
.method public i(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 2

    invoke-super {p0, p1}, Ldi/a;->i(Lcom/hisavana/common/bean/TAdErrorCode;)V

    iget-object v0, p0, Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView$a;->d:Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;->access$setMMaxEcpmObject$p(Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    iget-object v0, p0, Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView$a;->d:Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView$a;->d:Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;

    invoke-static {v0}, Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;->access$getMIrregularAdListener$p(Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;)Ldi/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ldi/a;->i(Lcom/hisavana/common/bean/TAdErrorCode;)V

    :cond_0
    return-void
.end method

.method public j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 1

    invoke-super {p0, p1}, Ldi/a;->j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    iget-object v0, p0, Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView$a;->d:Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;

    invoke-static {v0, p1}, Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;->access$setMMaxEcpmObject$p(Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    iget-object p1, p0, Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView$a;->d:Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;

    invoke-virtual {p1}, Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;->showAd()V

    return-void
.end method
