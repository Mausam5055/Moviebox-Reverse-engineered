.class public final Lcom/transsion/wrapperad/view/secondfloor/TrendingTwoLevelIrregularView$a;
.super Ldi/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/wrapperad/view/secondfloor/TrendingTwoLevelIrregularView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/wrapperad/view/secondfloor/TrendingTwoLevelIrregularView;


# direct methods
.method constructor <init>(Lcom/transsion/wrapperad/view/secondfloor/TrendingTwoLevelIrregularView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/wrapperad/view/secondfloor/TrendingTwoLevelIrregularView$a;->d:Lcom/transsion/wrapperad/view/secondfloor/TrendingTwoLevelIrregularView;

    invoke-direct {p0}, Ldi/a;-><init>()V

    return-void
.end method


# virtual methods
.method public i(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 1

    invoke-super {p0, p1}, Ldi/a;->i(Lcom/hisavana/common/bean/TAdErrorCode;)V

    iget-object p1, p0, Lcom/transsion/wrapperad/view/secondfloor/TrendingTwoLevelIrregularView$a;->d:Lcom/transsion/wrapperad/view/secondfloor/TrendingTwoLevelIrregularView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/wrapperad/view/secondfloor/TrendingTwoLevelIrregularView;->access$setMMaxEcpmObject$p(Lcom/transsion/wrapperad/view/secondfloor/TrendingTwoLevelIrregularView;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    iget-object p1, p0, Lcom/transsion/wrapperad/view/secondfloor/TrendingTwoLevelIrregularView$a;->d:Lcom/transsion/wrapperad/view/secondfloor/TrendingTwoLevelIrregularView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/wrapperad/view/secondfloor/TrendingTwoLevelIrregularView;->access$setAdLoading$p(Lcom/transsion/wrapperad/view/secondfloor/TrendingTwoLevelIrregularView;Z)V

    iget-object p1, p0, Lcom/transsion/wrapperad/view/secondfloor/TrendingTwoLevelIrregularView$a;->d:Lcom/transsion/wrapperad/view/secondfloor/TrendingTwoLevelIrregularView;

    invoke-static {p1}, Lcom/transsion/wrapperad/view/secondfloor/TrendingTwoLevelIrregularView;->access$getLoadedCallback$p(Lcom/transsion/wrapperad/view/secondfloor/TrendingTwoLevelIrregularView;)Lkotlin/jvm/functions/Function1;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 1

    invoke-super {p0, p1}, Ldi/a;->j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    iget-object v0, p0, Lcom/transsion/wrapperad/view/secondfloor/TrendingTwoLevelIrregularView$a;->d:Lcom/transsion/wrapperad/view/secondfloor/TrendingTwoLevelIrregularView;

    invoke-static {v0, p1}, Lcom/transsion/wrapperad/view/secondfloor/TrendingTwoLevelIrregularView;->access$setMMaxEcpmObject$p(Lcom/transsion/wrapperad/view/secondfloor/TrendingTwoLevelIrregularView;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    iget-object p1, p0, Lcom/transsion/wrapperad/view/secondfloor/TrendingTwoLevelIrregularView$a;->d:Lcom/transsion/wrapperad/view/secondfloor/TrendingTwoLevelIrregularView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/wrapperad/view/secondfloor/TrendingTwoLevelIrregularView;->access$setAdLoading$p(Lcom/transsion/wrapperad/view/secondfloor/TrendingTwoLevelIrregularView;Z)V

    iget-object p1, p0, Lcom/transsion/wrapperad/view/secondfloor/TrendingTwoLevelIrregularView$a;->d:Lcom/transsion/wrapperad/view/secondfloor/TrendingTwoLevelIrregularView;

    invoke-static {p1}, Lcom/transsion/wrapperad/view/secondfloor/TrendingTwoLevelIrregularView;->access$getLoadedCallback$p(Lcom/transsion/wrapperad/view/secondfloor/TrendingTwoLevelIrregularView;)Lkotlin/jvm/functions/Function1;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public l(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 0

    invoke-super {p0, p1}, Ldi/a;->l(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    iget-object p1, p0, Lcom/transsion/wrapperad/view/secondfloor/TrendingTwoLevelIrregularView$a;->d:Lcom/transsion/wrapperad/view/secondfloor/TrendingTwoLevelIrregularView;

    invoke-static {p1}, Lcom/transsion/wrapperad/view/secondfloor/TrendingTwoLevelIrregularView;->access$getClickCallback$p(Lcom/transsion/wrapperad/view/secondfloor/TrendingTwoLevelIrregularView;)Lkotlin/jvm/functions/Function0;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public p(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 1

    invoke-super {p0, p1}, Ldi/a;->p(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    iget-object p1, p0, Lcom/transsion/wrapperad/view/secondfloor/TrendingTwoLevelIrregularView$a;->d:Lcom/transsion/wrapperad/view/secondfloor/TrendingTwoLevelIrregularView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/wrapperad/view/secondfloor/TrendingTwoLevelIrregularView;->access$setMMaxEcpmObject$p(Lcom/transsion/wrapperad/view/secondfloor/TrendingTwoLevelIrregularView;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    return-void
.end method
