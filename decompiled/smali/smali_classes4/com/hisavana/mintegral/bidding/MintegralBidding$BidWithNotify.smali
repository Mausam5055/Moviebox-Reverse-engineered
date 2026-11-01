.class Lcom/hisavana/mintegral/bidding/MintegralBidding$BidWithNotify;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hisavana/common/interfacz/IBidWithNotify;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisavana/mintegral/bidding/MintegralBidding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BidWithNotify"
.end annotation


# instance fields
.field private final a:Lcom/mbridge/msdk/mbbid/out/BidResponsed;

.field private b:Z

.field private c:J


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/mbbid/out/BidResponsed;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$BidWithNotify;->b:Z

    iput-object p1, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$BidWithNotify;->a:Lcom/mbridge/msdk/mbbid/out/BidResponsed;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$BidWithNotify;->c:J

    return-void
.end method

.method public static synthetic a(Lcom/hisavana/mintegral/bidding/MintegralBidding$BidWithNotify;)V
    .locals 0

    invoke-direct {p0}, Lcom/hisavana/mintegral/bidding/MintegralBidding$BidWithNotify;->d()V

    return-void
.end method

.method public static synthetic b(Lcom/hisavana/mintegral/bidding/MintegralBidding$BidWithNotify;)V
    .locals 0

    invoke-direct {p0}, Lcom/hisavana/mintegral/bidding/MintegralBidding$BidWithNotify;->c()V

    return-void
.end method

.method private synthetic c()V
    .locals 3

    iget-object v0, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$BidWithNotify;->a:Lcom/mbridge/msdk/mbbid/out/BidResponsed;

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/mbridge/msdk/mbbid/out/BidLossCode;->bidPriceNotHighest()Lcom/mbridge/msdk/mbbid/out/BidLossCode;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/mbbid/out/BidResponsed;->sendLossNotice(Landroid/content/Context;Lcom/mbridge/msdk/mbbid/out/BidLossCode;)V

    return-void
.end method

.method private synthetic d()V
    .locals 2

    iget-object v0, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$BidWithNotify;->a:Lcom/mbridge/msdk/mbbid/out/BidResponsed;

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/mbbid/out/BidResponsed;->sendWinNotice(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$BidWithNotify;->b:Z

    return-void
.end method


# virtual methods
.method public getPayload()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$BidWithNotify;->a:Lcom/mbridge/msdk/mbbid/out/BidResponsed;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mintegral getPayload"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$BidWithNotify;->a:Lcom/mbridge/msdk/mbbid/out/BidResponsed;

    invoke-virtual {v2}, Lcom/mbridge/msdk/mbbid/out/BidResponsed;->getBidToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mintegral_log"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$BidWithNotify;->a:Lcom/mbridge/msdk/mbbid/out/BidResponsed;

    invoke-virtual {v0}, Lcom/mbridge/msdk/mbbid/out/BidResponsed;->getBidToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isExpired()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$BidWithNotify;->c:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    sget v2, Lcom/hisavana/common/constant/ComConstants;->BID_PRICE_CACHE_TIME:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public notifyLoss()V
    .locals 3

    iget-boolean v0, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$BidWithNotify;->b:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$BidWithNotify;->a:Lcom/mbridge/msdk/mbbid/out/BidResponsed;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v1, "mintegral_log"

    const-string v2, "notify mintegral bidding failed"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v1, Lcom/hisavana/mintegral/bidding/c;

    invoke-direct {v1, p0}, Lcom/hisavana/mintegral/bidding/c;-><init>(Lcom/hisavana/mintegral/bidding/MintegralBidding$BidWithNotify;)V

    invoke-virtual {v0, v1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->g(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$BidWithNotify;->a:Lcom/mbridge/msdk/mbbid/out/BidResponsed;

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/mbridge/msdk/mbbid/out/BidLossCode;->bidPriceNotHighest()Lcom/mbridge/msdk/mbbid/out/BidLossCode;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/mbbid/out/BidResponsed;->sendLossNotice(Landroid/content/Context;Lcom/mbridge/msdk/mbbid/out/BidLossCode;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public notifyWin()V
    .locals 3

    iget-object v0, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$BidWithNotify;->a:Lcom/mbridge/msdk/mbbid/out/BidResponsed;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v1, "mintegral_log"

    const-string v2, "notify mintegral bidding win"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v1, Lcom/hisavana/mintegral/bidding/d;

    invoke-direct {v1, p0}, Lcom/hisavana/mintegral/bidding/d;-><init>(Lcom/hisavana/mintegral/bidding/MintegralBidding$BidWithNotify;)V

    invoke-virtual {v0, v1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->g(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$BidWithNotify;->a:Lcom/mbridge/msdk/mbbid/out/BidResponsed;

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/mbbid/out/BidResponsed;->sendWinNotice(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$BidWithNotify;->b:Z

    :goto_0
    return-void
.end method
