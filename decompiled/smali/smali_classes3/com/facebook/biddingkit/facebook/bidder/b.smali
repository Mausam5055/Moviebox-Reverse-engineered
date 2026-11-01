.class public abstract Lcom/facebook/biddingkit/facebook/bidder/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/biddingkit/facebook/bidder/b$a;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String; = "FACEBOOK_BIDDER"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Ljava/lang/String;)Lj8/b;
    .locals 3

    new-instance v0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;

    new-instance v1, Lcom/facebook/biddingkit/facebook/bidder/c;

    invoke-static {}, Lcom/facebook/biddingkit/bridge/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/biddingkit/facebook/bidder/c;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p0, v1}, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;-><init>(Ljava/lang/String;Lcom/facebook/biddingkit/facebook/bidder/c;)V

    return-object v0
.end method
