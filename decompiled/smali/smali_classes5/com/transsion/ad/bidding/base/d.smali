.class public final synthetic Lcom/transsion/ad/bidding/base/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/ad/bidding/base/AbsAdBidding;

.field public final synthetic b:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/ad/bidding/base/d;->a:Lcom/transsion/ad/bidding/base/AbsAdBidding;

    iput-object p2, p0, Lcom/transsion/ad/bidding/base/d;->b:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/d;->a:Lcom/transsion/ad/bidding/base/AbsAdBidding;

    iget-object v1, p0, Lcom/transsion/ad/bidding/base/d;->b:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    invoke-static {v0, v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->F(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    return-void
.end method
