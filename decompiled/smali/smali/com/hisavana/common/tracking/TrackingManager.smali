.class public Lcom/hisavana/common/tracking/TrackingManager;
.super Ljava/lang/Object;


# static fields
.field public static final CODE_ERROR:I = 0x1

.field public static final CODE_SUCCESS:I = 0x0

.field public static final TID:I = 0x21d5

.field public static final TRIGGER_TYPE_AD_FILLING:I = 0x3

.field public static final TRIGGER_TYPE_AD_UNIT_IS_CLOSED:I = 0x6

.field public static final TRIGGER_TYPE_AHA_ADD_IDS:I = 0x5

.field public static final TRIGGER_TYPE_COLD:I = 0x1

.field public static final TRIGGER_TYPE_CONFIG_IS_EMPTY:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static track(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, p0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    new-instance p0, Lcom/hisavana/common/tracking/TrackingManager$1;

    invoke-direct {p0, p1, v0}, Lcom/hisavana/common/tracking/TrackingManager$1;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {p0}, Li7/b;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static trackEnterScene(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "enter_scene"

    invoke-static {p0, v0}, Lcom/hisavana/common/tracking/TrackingManager;->track(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public static trackGetNativeInfo(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "get_native_Info"

    invoke-static {p0, v0}, Lcom/hisavana/common/tracking/TrackingManager;->track(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public static trackInit(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "app_init"

    invoke-static {p0, v0}, Lcom/hisavana/common/tracking/TrackingManager;->track(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public static trackInterstitialRewardGuideClose(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "interstitial_reward_guideclose"

    invoke-static {p0, v0}, Lcom/hisavana/common/tracking/TrackingManager;->track(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public static trackIsReady(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "is_ready"

    invoke-static {p0, v0}, Lcom/hisavana/common/tracking/TrackingManager;->track(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public static trackTriggerStart(I)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "ts"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "trigger_source"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "ad_trigger_start"

    invoke-static {v0, p0}, Lcom/hisavana/common/tracking/TrackingManager;->track(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public static trackingADCldRequest(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "ad_cld_request"

    invoke-static {p0, v0}, Lcom/hisavana/common/tracking/TrackingManager;->track(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public static trackingADTrigger(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "ad_trigger"

    invoke-static {p0, v0}, Lcom/hisavana/common/tracking/TrackingManager;->track(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public static trackingAdBidding(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "inquiry_request"

    invoke-static {p0, v0}, Lcom/hisavana/common/tracking/TrackingManager;->track(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public static trackingAdBiddingReturn(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "inquiry_return"

    invoke-static {p0, v0}, Lcom/hisavana/common/tracking/TrackingManager;->track(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public static trackingAdCancel(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "ad_cancel"

    invoke-static {p0, v0}, Lcom/hisavana/common/tracking/TrackingManager;->track(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public static trackingAdClick(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "ad_click"

    invoke-static {p0, v0}, Lcom/hisavana/common/tracking/TrackingManager;->track(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public static trackingAdClose(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "ad_closure"

    invoke-static {p0, v0}, Lcom/hisavana/common/tracking/TrackingManager;->track(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public static trackingAdLoaded(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "ad_filling"

    invoke-static {p0, v0}, Lcom/hisavana/common/tracking/TrackingManager;->track(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public static trackingAdRequest(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "ad_request"

    invoke-static {p0, v0}, Lcom/hisavana/common/tracking/TrackingManager;->track(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public static trackingAdReturn(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "ad_return"

    invoke-static {p0, v0}, Lcom/hisavana/common/tracking/TrackingManager;->track(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public static trackingAdmobShowPrice(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "show_price"

    invoke-static {p0, v0}, Lcom/hisavana/common/tracking/TrackingManager;->track(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public static trackingCldReturn(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "ad_cld_return"

    invoke-static {p0, v0}, Lcom/hisavana/common/tracking/TrackingManager;->track(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public static trackingErrorLog(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "ad_error_log"

    invoke-static {p0, v0}, Lcom/hisavana/common/tracking/TrackingManager;->track(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public static trackingImpression(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "ad_show"

    invoke-static {p0, v0}, Lcom/hisavana/common/tracking/TrackingManager;->track(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public static trackingStartBid(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "ad_start_bid"

    invoke-static {p0, v0}, Lcom/hisavana/common/tracking/TrackingManager;->track(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public static trackingTriggerShow(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "ad_trigger_show"

    invoke-static {p0, v0}, Lcom/hisavana/common/tracking/TrackingManager;->track(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method
