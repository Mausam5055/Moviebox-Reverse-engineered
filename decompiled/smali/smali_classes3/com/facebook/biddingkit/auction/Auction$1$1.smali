.class Lcom/facebook/biddingkit/auction/Auction$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/biddingkit/auction/Auction$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/biddingkit/auction/Auction$1;


# direct methods
.method constructor <init>(Lcom/facebook/biddingkit/auction/Auction$1;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/biddingkit/auction/Auction$1$1;->this$1:Lcom/facebook/biddingkit/auction/Auction$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/facebook/biddingkit/auction/Auction$1$1;->this$1:Lcom/facebook/biddingkit/auction/Auction$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/biddingkit/auction/a;->b(Lcom/facebook/biddingkit/auction/a;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/facebook/biddingkit/auction/Auction$1$1;->this$1:Lcom/facebook/biddingkit/auction/Auction$1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/facebook/biddingkit/auction/a;->a(Lcom/facebook/biddingkit/auction/a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/biddingkit/facebook/bidder/b;->a(Ljava/lang/String;)Lj8/b;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/biddingkit/auction/Auction$1$1;->this$1:Lcom/facebook/biddingkit/auction/Auction$1;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/facebook/biddingkit/auction/a;->d(Lcom/facebook/biddingkit/auction/a;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/biddingkit/auction/Auction$1$1;->this$1:Lcom/facebook/biddingkit/auction/Auction$1;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1, v2, v0}, Lj8/b;->a(Ljava/lang/String;Lp8/a;)V

    return-void
.end method
