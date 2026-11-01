.class public final synthetic Lcom/transsion/ad/bidding/base/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/ad/bidding/base/AbsAdBidding;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/ad/bidding/base/AbsAdBidding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/ad/bidding/base/k;->a:Lcom/transsion/ad/bidding/base/AbsAdBidding;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/k;->a:Lcom/transsion/ad/bidding/base/AbsAdBidding;

    invoke-static {v0}, Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2;->a(Lcom/transsion/ad/bidding/base/AbsAdBidding;)V

    return-void
.end method
