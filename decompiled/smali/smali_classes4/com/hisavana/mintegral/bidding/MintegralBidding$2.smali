.class Lcom/hisavana/mintegral/bidding/MintegralBidding$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mbridge/msdk/mbbid/out/BidListennning;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisavana/mintegral/bidding/MintegralBidding;->startQueryPrice(Lcom/hisavana/common/bean/Network;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/hisavana/common/bean/Network;

.field final synthetic c:Lcom/hisavana/mintegral/bidding/MintegralBidding;


# direct methods
.method constructor <init>(Lcom/hisavana/mintegral/bidding/MintegralBidding;JLcom/hisavana/common/bean/Network;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$2;->c:Lcom/hisavana/mintegral/bidding/MintegralBidding;

    iput-wide p2, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$2;->a:J

    iput-object p4, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$2;->b:Lcom/hisavana/common/bean/Network;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/hisavana/mintegral/bidding/MintegralBidding$2;)V
    .locals 0

    invoke-direct {p0}, Lcom/hisavana/mintegral/bidding/MintegralBidding$2;->c()V

    return-void
.end method

.method public static synthetic b(Lcom/hisavana/mintegral/bidding/MintegralBidding$2;Lcom/hisavana/common/bean/Network;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hisavana/mintegral/bidding/MintegralBidding$2;->d(Lcom/hisavana/common/bean/Network;)V

    return-void
.end method

.method private synthetic c()V
    .locals 1

    iget-object v0, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$2;->c:Lcom/hisavana/mintegral/bidding/MintegralBidding;

    invoke-static {v0}, Lcom/hisavana/mintegral/bidding/MintegralBidding;->d(Lcom/hisavana/mintegral/bidding/MintegralBidding;)Lcom/hisavana/common/interfacz/QueryPriceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$2;->c:Lcom/hisavana/mintegral/bidding/MintegralBidding;

    invoke-static {v0}, Lcom/hisavana/mintegral/bidding/MintegralBidding;->e(Lcom/hisavana/mintegral/bidding/MintegralBidding;)Lcom/hisavana/common/interfacz/QueryPriceListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/hisavana/common/interfacz/QueryPriceListener;->onQueryPriceFailed()V

    :cond_0
    return-void
.end method

.method private synthetic d(Lcom/hisavana/common/bean/Network;)V
    .locals 1

    iget-object v0, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$2;->c:Lcom/hisavana/mintegral/bidding/MintegralBidding;

    invoke-static {v0}, Lcom/hisavana/mintegral/bidding/MintegralBidding;->a(Lcom/hisavana/mintegral/bidding/MintegralBidding;)Lcom/hisavana/common/interfacz/QueryPriceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$2;->c:Lcom/hisavana/mintegral/bidding/MintegralBidding;

    invoke-static {p1}, Lcom/hisavana/mintegral/bidding/MintegralBidding;->c(Lcom/hisavana/mintegral/bidding/MintegralBidding;)Lcom/hisavana/common/interfacz/QueryPriceListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/hisavana/common/interfacz/QueryPriceListener;->onQueryPriceSuccess(Ljava/util/List;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$2;->a:J

    sub-long/2addr v0, v2

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "*---->mintegral bidding request fail --- : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$2;->b:Lcom/hisavana/common/bean/Network;

    invoke-virtual {v4}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",time use:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mintegral_log"

    invoke-virtual {v2, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$2;->b:Lcom/hisavana/common/bean/Network;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$2;->c:Lcom/hisavana/mintegral/bidding/MintegralBidding;

    const/16 v1, 0x7536

    invoke-virtual {v0, v1, p1}, Lcom/hisavana/common/base/BaseQueryPrice;->trackingBiddingFailed(ILjava/lang/String;)V

    new-instance p1, Lcom/hisavana/mintegral/bidding/b;

    invoke-direct {p1, p0}, Lcom/hisavana/mintegral/bidding/b;-><init>(Lcom/hisavana/mintegral/bidding/MintegralBidding$2;)V

    invoke-static {p1}, Lcom/cloud/sdk/commonutil/util/Preconditions;->d(Lcom/cloud/sdk/commonutil/util/Preconditions$a;)V

    return-void
.end method

.method public onSuccessed(Lcom/mbridge/msdk/mbbid/out/BidResponsed;)V
    .locals 10

    const-string v0, "mintegral_log"

    const-string v1, ",id:"

    const-string v2, "*----> mintegral bidding success ---,price is:"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$2;->a:J

    sub-long/2addr v3, v5

    if-eqz p1, :cond_1

    iget-object v5, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$2;->b:Lcom/hisavana/common/bean/Network;

    if-nez v5, :cond_0

    goto/16 :goto_1

    :cond_0
    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    :try_start_0
    invoke-virtual {p1}, Lcom/mbridge/msdk/mbbid/out/BidResponsed;->getPrice()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$2;->b:Lcom/hisavana/common/bean/Network;

    invoke-virtual {v8}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",time use:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v3, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$2;->c:Lcom/hisavana/mintegral/bidding/MintegralBidding;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/hisavana/common/base/BaseQueryPrice;->trackingBiddingSuccess(D)V

    iget-object v3, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$2;->b:Lcom/hisavana/common/bean/Network;

    invoke-virtual {v3, v5}, Lcom/hisavana/common/bean/Network;->setPrice(Ljava/lang/Double;)V

    iget-object v3, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$2;->b:Lcom/hisavana/common/bean/Network;

    new-instance v4, Lcom/hisavana/mintegral/bidding/MintegralBidding$BidWithNotify;

    invoke-direct {v4, p1}, Lcom/hisavana/mintegral/bidding/MintegralBidding$BidWithNotify;-><init>(Lcom/mbridge/msdk/mbbid/out/BidResponsed;)V

    invoke-virtual {v3, v4}, Lcom/hisavana/common/bean/Network;->setBidInfo(Lcom/hisavana/common/interfacz/IBidWithNotify;)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$2;->b:Lcom/hisavana/common/bean/Network;

    invoke-virtual {v1}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$2;->b:Lcom/hisavana/common/bean/Network;

    new-instance v0, Lcom/hisavana/mintegral/bidding/a;

    invoke-direct {v0, p0, p1}, Lcom/hisavana/mintegral/bidding/a;-><init>(Lcom/hisavana/mintegral/bidding/MintegralBidding$2;Lcom/hisavana/common/bean/Network;)V

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/Preconditions;->d(Lcom/cloud/sdk/commonutil/util/Preconditions$a;)V

    :cond_1
    :goto_1
    return-void
.end method
