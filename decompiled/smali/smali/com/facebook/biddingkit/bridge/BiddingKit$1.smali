.class final Lcom/facebook/biddingkit/bridge/BiddingKit$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$configuration:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/biddingkit/bridge/BiddingKit$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/biddingkit/bridge/BiddingKit$1;->val$configuration:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/facebook/biddingkit/bridge/BiddingKit$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lo8/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0.5.1"

    iget-object v3, p0, Lcom/facebook/biddingkit/bridge/BiddingKit$1;->val$configuration:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/biddingkit/logging/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
