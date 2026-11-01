.class Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier$1;
.super Ljava/util/HashMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->k(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;

.field final synthetic val$cpmCents:Ljava/lang/Double;

.field final synthetic val$entryName:Ljava/lang/String;

.field final synthetic val$isDisplay:Z

.field final synthetic val$placementFbid:Ljava/lang/String;

.field final synthetic val$segment:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Z)V
    .locals 2

    iput-object p1, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier$1;->this$0:Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;

    iput-object p2, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier$1;->val$placementFbid:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier$1;->val$segment:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier$1;->val$entryName:Ljava/lang/String;

    iput-object p5, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier$1;->val$cpmCents:Ljava/lang/Double;

    iput-boolean p6, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier$1;->val$isDisplay:Z

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->b(Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;)Lcom/facebook/biddingkit/facebook/bidder/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/biddingkit/facebook/bidder/b$a;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "${PARTNER_FBID}"

    invoke-virtual {p0, v1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->b(Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;)Lcom/facebook/biddingkit/facebook/bidder/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/biddingkit/facebook/bidder/b$a;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "${APP_FBID}"

    invoke-virtual {p0, v1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "${PLACEMENT_FBID}"

    invoke-virtual {p0, v0, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "${BUNDLE}"

    invoke-virtual {p1}, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "${IDFA}"

    invoke-virtual {p1}, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->b(Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;)Lcom/facebook/biddingkit/facebook/bidder/b$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/facebook/biddingkit/facebook/bidder/b$a;->b()Ljava/lang/String;

    move-result-object p2

    const-string v0, "${AUCTION_ID}"

    invoke-virtual {p0, v0, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "${AB_TEST_SEGMENT}"

    invoke-virtual {p0, p2, p3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, p4}, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->g(Ljava/lang/String;)Lcom/facebook/biddingkit/bidders/LossCode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/biddingkit/bidders/LossCode;->getStringValue()Ljava/lang/String;

    move-result-object p1

    const-string p2, "${AUCTION_LOSS}"

    invoke-virtual {p0, p2, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    const-string p2, "${AUCTION_PRICE}"

    invoke-virtual {p0, p2, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p4, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    move-object p1, p4

    :goto_0
    const-string p2, "${WINNER_NAME}"

    invoke-virtual {p0, p2, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Lk8/a;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "bidding"

    goto :goto_1

    :cond_1
    const-string p1, "waterfall"

    :goto_1
    const-string p2, "${WINNER_TYPE}"

    invoke-virtual {p0, p2, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p6, :cond_2

    const-string p1, "display"

    goto :goto_2

    :cond_2
    const-string p1, "auction"

    :goto_2
    const-string p2, "${PHASE}"

    invoke-virtual {p0, p2, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
