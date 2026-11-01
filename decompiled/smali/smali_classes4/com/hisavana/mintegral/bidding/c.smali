.class public final synthetic Lcom/hisavana/mintegral/bidding/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/hisavana/mintegral/bidding/MintegralBidding$BidWithNotify;


# direct methods
.method public synthetic constructor <init>(Lcom/hisavana/mintegral/bidding/MintegralBidding$BidWithNotify;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hisavana/mintegral/bidding/c;->a:Lcom/hisavana/mintegral/bidding/MintegralBidding$BidWithNotify;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/hisavana/mintegral/bidding/c;->a:Lcom/hisavana/mintegral/bidding/MintegralBidding$BidWithNotify;

    invoke-static {v0}, Lcom/hisavana/mintegral/bidding/MintegralBidding$BidWithNotify;->b(Lcom/hisavana/mintegral/bidding/MintegralBidding$BidWithNotify;)V

    return-void
.end method
