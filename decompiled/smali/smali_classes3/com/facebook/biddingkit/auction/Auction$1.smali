.class Lcom/facebook/biddingkit/auction/Auction$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/facebook/biddingkit/auction/a;

.field final synthetic val$listener:Lcom/facebook/biddingkit/auction/c;

.field final synthetic val$waterfall:Lp8/a;


# direct methods
.method constructor <init>(Lcom/facebook/biddingkit/auction/a;Lp8/a;Lcom/facebook/biddingkit/auction/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const/4 v0, 0x0

    throw v0
.end method
