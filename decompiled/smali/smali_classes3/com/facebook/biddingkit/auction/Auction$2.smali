.class Lcom/facebook/biddingkit/auction/Auction$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/facebook/biddingkit/auction/a;

.field final synthetic val$bidder:Ln8/b;

.field final synthetic val$listener:Lcom/facebook/biddingkit/auction/c;

.field final synthetic val$waterfall:Lp8/a;


# direct methods
.method constructor <init>(Lcom/facebook/biddingkit/auction/a;Ln8/b;Lp8/a;Lcom/facebook/biddingkit/auction/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/biddingkit/auction/a;->a(Lcom/facebook/biddingkit/auction/a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/facebook/biddingkit/auction/a;->c(Lcom/facebook/biddingkit/auction/a;)Lcom/facebook/biddingkit/auction/b;

    invoke-static {v1, v0, v0}, Lcom/facebook/biddingkit/auction/e;->a(Ljava/lang/String;Ln8/b;Lcom/facebook/biddingkit/auction/b;)Ljava/util/List;

    throw v0
.end method
