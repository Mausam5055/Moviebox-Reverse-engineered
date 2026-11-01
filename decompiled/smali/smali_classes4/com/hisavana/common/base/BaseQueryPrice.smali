.class public abstract Lcom/hisavana/common/base/BaseQueryPrice;
.super Ljava/lang/Object;


# instance fields
.field public final mBundle:Landroid/os/Bundle;

.field private mInquiryStartTime:J

.field protected final mMainHandler:Landroid/os/Handler;

.field private mNetwork:Lcom/hisavana/common/bean/Network;

.field protected mQueryPriceListener:Lcom/hisavana/common/interfacz/QueryPriceListener;

.field private orientation:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisavana/common/base/BaseQueryPrice;->mQueryPriceListener:Lcom/hisavana/common/interfacz/QueryPriceListener;

    iput-object v0, p0, Lcom/hisavana/common/base/BaseQueryPrice;->mNetwork:Lcom/hisavana/common/bean/Network;

    const/4 v0, 0x1

    iput v0, p0, Lcom/hisavana/common/base/BaseQueryPrice;->orientation:I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/hisavana/common/base/BaseQueryPrice;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/hisavana/common/base/BaseQueryPrice;->mBundle:Landroid/os/Bundle;

    return-void
.end method

.method private fillParamsToBundle(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/hisavana/common/base/BaseQueryPrice;->mBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "trigger_id"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hisavana/common/base/BaseQueryPrice;->mBundle:Landroid/os/Bundle;

    const-string v1, "platform"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/hisavana/common/base/BaseQueryPrice;->mBundle:Landroid/os/Bundle;

    const-string v1, "app_id"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hisavana/common/base/BaseQueryPrice;->mBundle:Landroid/os/Bundle;

    const-string v1, "code_seat_id"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hisavana/common/base/BaseQueryPrice;->mBundle:Landroid/os/Bundle;

    const-string v1, "cld_code_seat_id"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hisavana/common/base/BaseQueryPrice;->mBundle:Landroid/os/Bundle;

    const-string v1, "cld_app_id"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hisavana/common/base/BaseQueryPrice;->mBundle:Landroid/os/Bundle;

    const-string v1, "ad_type"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/hisavana/common/base/BaseQueryPrice;->mBundle:Landroid/os/Bundle;

    const-string v1, "is_pre_trigger"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/hisavana/common/base/BaseQueryPrice;->mBundle:Landroid/os/Bundle;

    const-string v1, "traffic_group_id"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hisavana/common/base/BaseQueryPrice;->mBundle:Landroid/os/Bundle;

    const-string v1, "experiment_group_id"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisavana/common/base/BaseQueryPrice;->mQueryPriceListener:Lcom/hisavana/common/interfacz/QueryPriceListener;

    return-void
.end method

.method public getNetwork()Lcom/hisavana/common/bean/Network;
    .locals 1

    iget-object v0, p0, Lcom/hisavana/common/base/BaseQueryPrice;->mNetwork:Lcom/hisavana/common/bean/Network;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    iget v0, p0, Lcom/hisavana/common/base/BaseQueryPrice;->orientation:I

    return v0
.end method

.method public abstract queryPrice(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V
.end method

.method public abstract setBannerSize(I)V
.end method

.method public setNetwork(Lcom/hisavana/common/bean/Network;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/common/base/BaseQueryPrice;->mNetwork:Lcom/hisavana/common/bean/Network;

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/hisavana/common/base/BaseQueryPrice;->orientation:I

    return-void
.end method

.method public setQueryPriceListener(Lcom/hisavana/common/interfacz/QueryPriceListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/common/base/BaseQueryPrice;->mQueryPriceListener:Lcom/hisavana/common/interfacz/QueryPriceListener;

    return-void
.end method

.method public setTrackingBundle(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/hisavana/common/base/BaseQueryPrice;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    return-void
.end method

.method public trackingBiddingFailed(ILjava/lang/String;)V
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "inquiry_return_ts"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-wide v3, p0, Lcom/hisavana/common/base/BaseQueryPrice;->mInquiryStartTime:J

    sub-long/2addr v1, v3

    const-string v3, "inquiry_return_time"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "error_code"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "bidding_price"

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    invoke-static {p2}, Lcom/hisavana/common/bean/TAdErrorCode;->simpleErrorMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "error_message"

    invoke-virtual {v0, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/hisavana/common/base/BaseQueryPrice;->fillParamsToBundle(Landroid/os/Bundle;)V

    invoke-static {v0}, Lcom/hisavana/common/tracking/TrackingManager;->trackingAdBiddingReturn(Landroid/os/Bundle;)V

    return-void
.end method

.method public trackingBiddingStart()V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/hisavana/common/base/BaseQueryPrice;->mInquiryStartTime:J

    const-string v3, "inquiry_request_ts"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-direct {p0, v0}, Lcom/hisavana/common/base/BaseQueryPrice;->fillParamsToBundle(Landroid/os/Bundle;)V

    invoke-static {v0}, Lcom/hisavana/common/tracking/TrackingManager;->trackingAdBidding(Landroid/os/Bundle;)V

    return-void
.end method

.method public trackingBiddingSuccess(D)V
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "inquiry_return_ts"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "error_code"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "bidding_price"

    invoke-virtual {v0, v3, p1, p2}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    iget-wide p1, p0, Lcom/hisavana/common/base/BaseQueryPrice;->mInquiryStartTime:J

    sub-long/2addr v1, p1

    const-string p1, "inquiry_return_time"

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-direct {p0, v0}, Lcom/hisavana/common/base/BaseQueryPrice;->fillParamsToBundle(Landroid/os/Bundle;)V

    invoke-static {v0}, Lcom/hisavana/common/tracking/TrackingManager;->trackingAdBiddingReturn(Landroid/os/Bundle;)V

    return-void
.end method
