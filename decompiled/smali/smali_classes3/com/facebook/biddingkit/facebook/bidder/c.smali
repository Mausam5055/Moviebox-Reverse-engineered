.class Lcom/facebook/biddingkit/facebook/bidder/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const-string v0, "notify_url"

    const-string v1, "bid_url"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v2, "https://an.facebook.com/placementbid.ortb"

    iput-object v2, p0, Lcom/facebook/biddingkit/facebook/bidder/c;->a:Ljava/lang/String;

    const-string v2, "https://www.facebook.com/audiencenetwork/nurl/?partner=${PARTNER_FBID}&app=${APP_FBID}&placement=${PLACEMENT_FBID}&auction=${AUCTION_ID}&clearing_price=${AUCTION_PRICE}&ortb_loss_code=${AUCTION_LOSS}&ab_test_segment=${AB_TEST_SEGMENT}&winner_name=${WINNER_NAME}&winner_type=${WINNER_TYPE}&bundle=${BUNDLE}&phase=${PHASE}&idfa=${IDFA}"

    iput-object v2, p0, Lcom/facebook/biddingkit/facebook/bidder/c;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "facebook"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/biddingkit/facebook/bidder/c;->a:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/biddingkit/facebook/bidder/c;->b:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const-string v0, "FacebookConfig"

    const-string v1, "Failed to parse configuration."

    invoke-static {v0, v1, p1}, Lcom/facebook/biddingkit/logging/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/biddingkit/facebook/bidder/c;->b:Ljava/lang/String;

    return-object v0
.end method
