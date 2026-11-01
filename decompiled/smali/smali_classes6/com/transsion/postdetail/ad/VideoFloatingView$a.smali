.class public final Lcom/transsion/postdetail/ad/VideoFloatingView$a;
.super Ldi/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/ad/VideoFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/postdetail/ad/VideoFloatingView;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/ad/VideoFloatingView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/ad/VideoFloatingView$a;->d:Lcom/transsion/postdetail/ad/VideoFloatingView;

    invoke-direct {p0}, Ldi/a;-><init>()V

    return-void
.end method


# virtual methods
.method public i(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    invoke-super {p0, p1}, Ldi/a;->i(Lcom/hisavana/common/bean/TAdErrorCode;)V

    iget-object p1, p0, Lcom/transsion/postdetail/ad/VideoFloatingView$a;->d:Lcom/transsion/postdetail/ad/VideoFloatingView;

    invoke-static {p1}, Lcom/transsion/postdetail/ad/VideoFloatingView;->access$destroy(Lcom/transsion/postdetail/ad/VideoFloatingView;)V

    return-void
.end method

.method public j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 1

    invoke-super {p0, p1}, Ldi/a;->j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    iget-object v0, p0, Lcom/transsion/postdetail/ad/VideoFloatingView$a;->d:Lcom/transsion/postdetail/ad/VideoFloatingView;

    invoke-static {v0, p1}, Lcom/transsion/postdetail/ad/VideoFloatingView;->access$setMMaxEcpmObject$p(Lcom/transsion/postdetail/ad/VideoFloatingView;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    iget-object p1, p0, Lcom/transsion/postdetail/ad/VideoFloatingView$a;->d:Lcom/transsion/postdetail/ad/VideoFloatingView;

    invoke-static {p1}, Lcom/transsion/postdetail/ad/VideoFloatingView;->access$showAd(Lcom/transsion/postdetail/ad/VideoFloatingView;)V

    return-void
.end method

.method public p(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 0

    invoke-super {p0, p1}, Ldi/a;->p(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    iget-object p1, p0, Lcom/transsion/postdetail/ad/VideoFloatingView$a;->d:Lcom/transsion/postdetail/ad/VideoFloatingView;

    invoke-static {p1}, Lcom/transsion/postdetail/ad/VideoFloatingView;->access$destroy(Lcom/transsion/postdetail/ad/VideoFloatingView;)V

    return-void
.end method
