.class public Lcom/hisavana/mintegral/bidding/MintegralBidding;
.super Lcom/hisavana/common/base/BaseQueryPrice;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hisavana/mintegral/bidding/MintegralBidding$BidWithNotify;
    }
.end annotation


# instance fields
.field private a:I

.field b:I

.field c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hisavana/common/base/BaseQueryPrice;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/hisavana/mintegral/bidding/MintegralBidding;)Lcom/hisavana/common/interfacz/QueryPriceListener;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/common/base/BaseQueryPrice;->mQueryPriceListener:Lcom/hisavana/common/interfacz/QueryPriceListener;

    return-object p0
.end method

.method private b()V
    .locals 3

    iget v0, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding;->a:I

    const/4 v1, 0x1

    const/16 v2, 0x140

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/16 v0, 0x32

    iput v0, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding;->b:I

    iput v2, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding;->c:I

    goto :goto_0

    :cond_0
    const/16 v0, 0x5a

    iput v0, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding;->b:I

    iput v2, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding;->c:I

    goto :goto_0

    :cond_1
    const/16 v0, 0xfa

    iput v0, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding;->b:I

    iput v2, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding;->c:I

    goto :goto_0

    :cond_2
    const/16 v0, 0x64

    iput v0, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding;->b:I

    iput v2, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding;->c:I

    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/hisavana/mintegral/bidding/MintegralBidding;)Lcom/hisavana/common/interfacz/QueryPriceListener;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/common/base/BaseQueryPrice;->mQueryPriceListener:Lcom/hisavana/common/interfacz/QueryPriceListener;

    return-object p0
.end method

.method static synthetic d(Lcom/hisavana/mintegral/bidding/MintegralBidding;)Lcom/hisavana/common/interfacz/QueryPriceListener;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/common/base/BaseQueryPrice;->mQueryPriceListener:Lcom/hisavana/common/interfacz/QueryPriceListener;

    return-object p0
.end method

.method static synthetic e(Lcom/hisavana/mintegral/bidding/MintegralBidding;)Lcom/hisavana/common/interfacz/QueryPriceListener;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/common/base/BaseQueryPrice;->mQueryPriceListener:Lcom/hisavana/common/interfacz/QueryPriceListener;

    return-object p0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisavana/common/base/BaseQueryPrice;->mQueryPriceListener:Lcom/hisavana/common/interfacz/QueryPriceListener;

    return-void
.end method

.method public queryPrice(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V
    .locals 4

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/hisavana/common/bean/Network;->getApplicationId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/hisavana/common/bean/Network;->getApplicationKey()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/hisavana/mintegral/bidding/MintegralBidding$1;

    invoke-direct {v3, p0, v0, v1, p2}, Lcom/hisavana/mintegral/bidding/MintegralBidding$1;-><init>(Lcom/hisavana/mintegral/bidding/MintegralBidding;JLcom/hisavana/common/bean/Network;)V

    invoke-static {p1, v2, v3}, Lcom/hisavana/mintegral/check/ExistsCheck;->initAdSource(Ljava/lang/String;Ljava/lang/String;Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setBannerSize(I)V
    .locals 0

    iput p1, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding;->a:I

    return-void
.end method

.method public startQueryPrice(Lcom/hisavana/common/bean/Network;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/hisavana/common/bean/Network;->getAdt()I

    move-result v0

    const/4 v1, 0x2

    const-string v2, ""

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    new-instance v0, Lcom/mbridge/msdk/mbbid/out/BidManager;

    invoke-virtual {p1}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/mbridge/msdk/mbbid/out/BidManager;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*---->mintegral bidding getOrientation() --- :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseQueryPrice;->getOrientation()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mintegral_log"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/mbridge/msdk/mbbid/out/BidManager;

    new-instance v8, Lcom/mbridge/msdk/mbbid/out/SplashBidRequestParams;

    invoke-virtual {p1}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseQueryPrice;->getOrientation()I

    move-result v5

    const/16 v6, 0x1e

    const/16 v7, 0x1e

    const-string v2, ""

    const/4 v4, 0x1

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/mbridge/msdk/mbbid/out/SplashBidRequestParams;-><init>(Ljava/lang/String;Ljava/lang/String;ZIII)V

    invoke-direct {v0, v8}, Lcom/mbridge/msdk/mbbid/out/BidManager;-><init>(Lcom/mbridge/msdk/mbbid/out/CommonBidRequestParams;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/hisavana/mintegral/bidding/MintegralBidding;->b()V

    new-instance v0, Lcom/mbridge/msdk/mbbid/out/BidManager;

    new-instance v1, Lcom/mbridge/msdk/mbbid/out/BannerBidRequestParams;

    invoke-virtual {p1}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding;->c:I

    iget v5, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding;->b:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mbridge/msdk/mbbid/out/BannerBidRequestParams;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-direct {v0, v1}, Lcom/mbridge/msdk/mbbid/out/BidManager;-><init>(Lcom/mbridge/msdk/mbbid/out/CommonBidRequestParams;)V

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseQueryPrice;->trackingBiddingStart()V

    new-instance v3, Lcom/hisavana/mintegral/bidding/MintegralBidding$2;

    invoke-direct {v3, p0, v1, v2, p1}, Lcom/hisavana/mintegral/bidding/MintegralBidding$2;-><init>(Lcom/hisavana/mintegral/bidding/MintegralBidding;JLcom/hisavana/common/bean/Network;)V

    invoke-virtual {v0, v3}, Lcom/mbridge/msdk/mbbid/out/BidManager;->setBidListener(Lcom/mbridge/msdk/mbbid/out/BidListennning;)V

    invoke-virtual {v0}, Lcom/mbridge/msdk/mbbid/out/BidManager;->bid()V

    return-void
.end method
