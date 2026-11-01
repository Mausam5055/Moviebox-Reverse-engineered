.class public final synthetic Lcom/transsion/ad/bidding/base/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/ad/bidding/base/AbsAdBidding;

.field public final synthetic b:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/ad/bidding/base/h;->a:Lcom/transsion/ad/bidding/base/AbsAdBidding;

    iput-object p2, p0, Lcom/transsion/ad/bidding/base/h;->b:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    iput-wide p3, p0, Lcom/transsion/ad/bidding/base/h;->c:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/h;->a:Lcom/transsion/ad/bidding/base/AbsAdBidding;

    iget-object v1, p0, Lcom/transsion/ad/bidding/base/h;->b:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    iget-wide v2, p0, Lcom/transsion/ad/bidding/base/h;->c:J

    invoke-static {v0, v1, v2, v3}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->D(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;J)V

    return-void
.end method
