.class public final synthetic Lcom/transsion/ad/bidding/icon/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/ad/bidding/icon/e;->a:Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/bidding/icon/e;->a:Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;

    invoke-static {v0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->x(Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;)V

    return-void
.end method
