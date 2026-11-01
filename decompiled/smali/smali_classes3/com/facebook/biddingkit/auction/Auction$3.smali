.class Lcom/facebook/biddingkit/auction/Auction$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/facebook/biddingkit/auction/a;

.field final synthetic val$displayWinnerEntry:Lp8/b;


# direct methods
.method constructor <init>(Lcom/facebook/biddingkit/auction/a;Lp8/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/biddingkit/auction/a;->e(Lcom/facebook/biddingkit/auction/a;)Ln8/b;

    invoke-static {v0, v0}, Lcom/facebook/biddingkit/auction/a;->f(Lcom/facebook/biddingkit/auction/a;Lp8/b;)V

    return-void
.end method
