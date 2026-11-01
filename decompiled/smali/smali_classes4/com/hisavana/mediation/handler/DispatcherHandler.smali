.class public Lcom/hisavana/mediation/handler/DispatcherHandler;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

.field public final c:I

.field public final d:Ljava/lang/String;

.field public final e:Lbe/i;


# direct methods
.method public constructor <init>(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;Lbe/i;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "LoadAdManager"

    iput-object v0, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->b:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    if-nez p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCodeSeatType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->c:I

    if-nez p1, :cond_1

    const-string p1, ""

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCodeSeatId()Ljava/lang/String;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lbe/i;

    return-void
.end method

.method public static a(Lbe/i;Lcom/hisavana/common/bean/Network;ILcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;)Landroid/os/Bundle;
    .locals 10

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "request_type"

    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/4 p2, -0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/hisavana/common/bean/Network;->getSource()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    const-string v2, "platform"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "-1"

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/hisavana/common/bean/Network;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    const-string v3, "app_id"

    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object v1

    :cond_2
    const-string v2, "code_seat_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/hisavana/common/bean/Network;->getPrice()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    goto :goto_2

    :cond_3
    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    :goto_2
    const-string v1, "bidding_price"

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/hisavana/common/bean/Network;->getAdt()I

    move-result p2

    :cond_4
    const-string v1, "ad_type"

    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-string p2, "request_ts"

    invoke-virtual {v0, p2, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->getAppId()Ljava/lang/String;

    move-result-object p2

    const-string v1, "cld_app_id"

    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lbe/i;->E()I

    move-result p2

    const-string v1, "priority"

    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "optimize_status"

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lbe/i;->D()I

    move-result p2

    const-string v1, "priority_code"

    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lbe/i;->v()Landroid/os/Bundle;

    move-result-object p0

    const-string p2, "cld_code_seat_id"

    const-string v1, "trigger_id"

    const-string v3, "experiment_group_id"

    const-string v4, "traffic_group_id"

    const-string v5, "trigger_ts"

    if-nez p0, :cond_6

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCodeSeatId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p2, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getTrafficGroupId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v4, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getExperimentGroupId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v3, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-static {}, Lcom/hisavana/common/tracking/TrackingUtil;->getTriggerId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    invoke-virtual {v0, v5, p0, p1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    return-object v0

    :cond_6
    :try_start_0
    const-string p3, "request_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p0, v5}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    long-to-int v6, v6

    invoke-virtual {v0, p3, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string p3, "is_pre_trigger"

    invoke-virtual {p0, p3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, p3, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "ad_trigger_status"

    invoke-virtual {p0, p2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {v0, p2, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v4, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v3, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/hisavana/common/bean/Network;->getShowPriceCoefficient()Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide p0

    goto :goto_3

    :cond_7
    const-wide/16 p0, 0x0

    :goto_3
    const-string p2, "price_coefficient"

    invoke-virtual {v0, p2, p0, p1}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    return-object v0
.end method

.method public static synthetic e(Lcom/hisavana/mediation/handler/DispatcherHandler;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic o(Lcom/hisavana/mediation/handler/DispatcherHandler;)Lbe/i;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lbe/i;

    return-object p0
.end method


# virtual methods
.method public b()Lcom/hisavana/common/bean/AdCache;
    .locals 1

    iget v0, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->c:I

    invoke-static {v0}, Lcom/hisavana/common/manager/AdCacheManager;->getCache(I)Lcom/hisavana/common/bean/AdCache;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/hisavana/common/bean/AdCache;

    invoke-direct {v0}, Lcom/hisavana/common/bean/AdCache;-><init>()V

    :cond_0
    return-object v0
.end method

.method public final c(Landroid/content/Context;Lcom/hisavana/common/bean/Network;II)Lcom/hisavana/common/interfacz/Iad;
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    iget v1, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->c:I

    invoke-virtual {p2, v1}, Lcom/hisavana/common/bean/Network;->setAdt(I)V

    invoke-static {}, Lbe/o;->a()Lbe/o;

    move-result-object v1

    invoke-virtual {p2}, Lcom/hisavana/common/bean/Network;->getSource()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lbe/o;->f(I)Lcom/hisavana/common/interfacz/IBaseAdSummary;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    iget v2, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->c:I

    const/16 v3, 0x3c

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    return-object v0

    :pswitch_0
    invoke-interface {v1, p1, p2}, Lcom/hisavana/common/interfacz/IBaseAdSummary;->getVideo(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)Lcom/hisavana/common/base/BaseVideo;

    move-result-object p1

    if-eqz p1, :cond_3

    if-gtz p4, :cond_2

    move p4, v3

    :cond_2
    invoke-virtual {p1, p4}, Lcom/hisavana/common/base/BaseAd;->setTtl(I)V

    invoke-virtual {p2}, Lcom/hisavana/common/bean/Network;->getSource()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/hisavana/common/base/BaseAd;->setAdSource(I)V

    invoke-virtual {p1, v4}, Lcom/hisavana/common/base/BaseAd;->setLoadStatus(I)V

    iget-object p2, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lbe/i;

    invoke-virtual {p2}, Lbe/i;->J()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/hisavana/common/base/BaseAd;->setContainVulgarContent(Z)V

    iget-object p2, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lbe/i;

    invoke-virtual {p2}, Lbe/i;->z()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lbe/i;

    invoke-virtual {p3}, Lbe/i;->B()Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lbe/i;

    invoke-virtual {p4}, Lbe/i;->x()Ljava/util/Map;

    move-result-object p4

    invoke-virtual {p1, p2, p3, p4}, Lcom/hisavana/common/base/BaseAd;->setAdLoadScenes(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    return-object p1

    :pswitch_1
    invoke-interface {v1, p1, p2}, Lcom/hisavana/common/interfacz/IBaseAdSummary;->getSplash(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)Lcom/hisavana/common/base/BaseSplash;

    move-result-object p1

    if-eqz p1, :cond_5

    if-gtz p4, :cond_4

    const/16 p4, 0xf0

    :cond_4
    invoke-virtual {p1, p4}, Lcom/hisavana/common/base/BaseAd;->setTtl(I)V

    invoke-virtual {p2}, Lcom/hisavana/common/bean/Network;->getSource()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/hisavana/common/base/BaseAd;->setAdSource(I)V

    invoke-virtual {p1, v4}, Lcom/hisavana/common/base/BaseAd;->setLoadStatus(I)V

    iget-object p2, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lbe/i;

    invoke-virtual {p2}, Lbe/i;->F()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/hisavana/common/base/BaseSplash;->setOrientation(I)V

    iget-object p2, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lbe/i;

    invoke-virtual {p2}, Lbe/i;->H()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/hisavana/common/base/BaseSplash;->setSplashMode(I)V

    iget-object p2, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lbe/i;

    invoke-virtual {p2}, Lbe/i;->J()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/hisavana/common/base/BaseAd;->setContainVulgarContent(Z)V

    iget-object p2, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lbe/i;

    invoke-virtual {p2}, Lbe/i;->z()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lbe/i;

    invoke-virtual {p3}, Lbe/i;->B()Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lbe/i;

    invoke-virtual {p4}, Lbe/i;->x()Ljava/util/Map;

    move-result-object p4

    invoke-virtual {p1, p2, p3, p4}, Lcom/hisavana/common/base/BaseAd;->setAdLoadScenes(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-object p2, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lbe/i;

    invoke-virtual {p2}, Lbe/i;->K()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/hisavana/common/base/BaseAd;->setCurrActivityFullscreen(Z)V

    :cond_5
    return-object p1

    :pswitch_2
    invoke-interface {v1, p1, p2}, Lcom/hisavana/common/interfacz/IBaseAdSummary;->getInterstitial(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)Lcom/hisavana/common/base/BaseInterstitial;

    move-result-object p1

    if-eqz p1, :cond_7

    if-gtz p4, :cond_6

    move p4, v3

    :cond_6
    invoke-virtual {p1, p4}, Lcom/hisavana/common/base/BaseAd;->setTtl(I)V

    invoke-virtual {p2}, Lcom/hisavana/common/bean/Network;->getSource()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/hisavana/common/base/BaseAd;->setAdSource(I)V

    invoke-virtual {p1, v4}, Lcom/hisavana/common/base/BaseAd;->setLoadStatus(I)V

    iget-object p2, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lbe/i;

    invoke-virtual {p2}, Lbe/i;->J()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/hisavana/common/base/BaseAd;->setContainVulgarContent(Z)V

    iget-object p2, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lbe/i;

    invoke-virtual {p2}, Lbe/i;->z()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lbe/i;

    invoke-virtual {p3}, Lbe/i;->B()Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lbe/i;

    invoke-virtual {p4}, Lbe/i;->x()Ljava/util/Map;

    move-result-object p4

    invoke-virtual {p1, p2, p3, p4}, Lcom/hisavana/common/base/BaseAd;->setAdLoadScenes(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-object p2, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lbe/i;

    invoke-virtual {p2}, Lbe/i;->K()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/hisavana/common/base/BaseAd;->setCurrActivityFullscreen(Z)V

    :cond_7
    return-object p1

    :pswitch_3
    iget-object p3, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lbe/i;

    invoke-virtual {p3}, Lbe/i;->r()I

    move-result p3

    iget-object v0, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lbe/i;

    invoke-virtual {v0}, Lbe/i;->t()I

    move-result v0

    invoke-interface {v1, p1, p2, p3, v0}, Lcom/hisavana/common/interfacz/IBaseAdSummary;->getBanner(Landroid/content/Context;Lcom/hisavana/common/bean/Network;II)Lcom/hisavana/common/base/BaseBanner;

    move-result-object p1

    if-eqz p1, :cond_9

    if-gtz p4, :cond_8

    move p4, v3

    :cond_8
    invoke-virtual {p1, p4}, Lcom/hisavana/common/base/BaseAd;->setTtl(I)V

    invoke-virtual {p2}, Lcom/hisavana/common/bean/Network;->getSource()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/hisavana/common/base/BaseAd;->setAdSource(I)V

    invoke-virtual {p1, v4}, Lcom/hisavana/common/base/BaseAd;->setLoadStatus(I)V

    iget-object p2, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lbe/i;

    invoke-virtual {p2}, Lbe/i;->L()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/hisavana/common/base/BaseBanner;->setHideAdCloseView(Z)V

    iget-object p2, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lbe/i;

    invoke-virtual {p2}, Lbe/i;->J()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/hisavana/common/base/BaseAd;->setContainVulgarContent(Z)V

    iget-object p2, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lbe/i;

    invoke-virtual {p2}, Lbe/i;->z()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lbe/i;

    invoke-virtual {p3}, Lbe/i;->B()Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lbe/i;

    invoke-virtual {p4}, Lbe/i;->x()Ljava/util/Map;

    move-result-object p4

    invoke-virtual {p1, p2, p3, p4}, Lcom/hisavana/common/base/BaseAd;->setAdLoadScenes(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-object p2, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lbe/i;

    invoke-virtual {p2}, Lbe/i;->K()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/hisavana/common/base/BaseAd;->setCurrActivityFullscreen(Z)V

    iget-object p2, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lbe/i;

    invoke-virtual {p2}, Lbe/i;->K()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/hisavana/common/base/BaseAd;->setCurrActivityFullscreen(Z)V

    iget-object p2, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lbe/i;

    invoke-virtual {p2}, Lbe/i;->o()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/hisavana/common/base/BaseBanner;->setBannerAdWidth(I)V

    iget-object p2, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lbe/i;

    invoke-virtual {p2}, Lbe/i;->l()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/hisavana/common/base/BaseBanner;->setBannerAdMaxHeight(I)V

    iget-object p2, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lbe/i;

    invoke-virtual {p2}, Lbe/i;->I()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/hisavana/common/base/BaseBanner;->setCloseDirectlyWithoutJumping(Z)V

    :cond_9
    return-object p1

    :pswitch_4
    invoke-interface {v1, p1, p2, v2}, Lcom/hisavana/common/interfacz/IBaseAdSummary;->getNative(Landroid/content/Context;Lcom/hisavana/common/bean/Network;I)Lcom/hisavana/common/base/BaseNative;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lbe/i;

    invoke-virtual {v0}, Lbe/i;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/hisavana/common/base/BaseNative;->setChoicesPosition(I)V

    iget-object v0, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lbe/i;

    invoke-virtual {v0}, Lbe/i;->h()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/hisavana/common/base/BaseNative;->setAdmobMediaAspectRatio(I)V

    if-gtz p4, :cond_a

    move p4, v3

    :cond_a
    invoke-virtual {p1, p4}, Lcom/hisavana/common/base/BaseAd;->setTtl(I)V

    invoke-virtual {p1, p3}, Lcom/hisavana/common/base/BaseNative;->setAdCount(I)V

    invoke-virtual {p1, v4}, Lcom/hisavana/common/base/BaseAd;->setLoadStatus(I)V

    invoke-virtual {p2}, Lcom/hisavana/common/bean/Network;->getSource()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/hisavana/common/base/BaseAd;->setAdSource(I)V

    iget-object p2, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lbe/i;

    invoke-virtual {p2}, Lbe/i;->J()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/hisavana/common/base/BaseAd;->setContainVulgarContent(Z)V

    iget-object p2, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lbe/i;

    invoke-virtual {p2}, Lbe/i;->z()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lbe/i;

    invoke-virtual {p3}, Lbe/i;->B()Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lbe/i;

    invoke-virtual {p4}, Lbe/i;->x()Ljava/util/Map;

    move-result-object p4

    invoke-virtual {p1, p2, p3, p4}, Lcom/hisavana/common/base/BaseAd;->setAdLoadScenes(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-object p2, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lbe/i;

    invoke-virtual {p2}, Lbe/i;->K()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/hisavana/common/base/BaseAd;->setCurrActivityFullscreen(Z)V

    iget-object p2, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lbe/i;

    invoke-virtual {p2}, Lbe/i;->G()Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/hisavana/common/base/BaseNative;->setRecommendReqInfo(Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;)V

    :cond_b
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public d(Landroid/content/Context;Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;Lcom/hisavana/common/bean/Network;)Lcom/hisavana/common/interfacz/Iad;
    .locals 4

    const-string v0, "LoadAdManager"

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/hisavana/common/utils/AdUtil;->requestStatusOff()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/hisavana/common/manager/RequestingAdManager;->getInstance()Lcom/hisavana/common/manager/RequestingAdManager;

    move-result-object v1

    invoke-virtual {p2}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCodeSeatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/hisavana/common/manager/RequestingAdManager;->getRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/hisavana/common/interfacz/Iad;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "*----> exist loading Ad id: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/hisavana/common/interfacz/ICacheAd;->getPlacementId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/hisavana/mediation/handler/DispatcherHandler;->p(Landroid/content/Context;Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;Lcom/hisavana/common/bean/Network;)Lcom/hisavana/common/interfacz/Iad;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    const-string p1, "create Executor, network or codeSeat of codeSeatId is empty"

    invoke-static {v0, p1}, Lcom/hisavana/common/utils/MediaLogUtil;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public f(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p5

    if-nez p4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    move-object/from16 v4, p4

    :goto_0
    if-eqz v2, :cond_1

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {v4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    invoke-virtual {v0, v4}, Lcom/hisavana/mediation/handler/DispatcherHandler;->q(Ljava/util/List;)V

    sget-boolean v2, Lcom/hisavana/common/base/LogSwitch;->isDebug:Z

    const-string v5, "LoadAdManager"

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "*----> loadWaterfallAd ---- netWorks = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/hisavana/mediation/handler/DispatcherHandler;->n()I

    move-result v6

    iget-object v7, v0, Lcom/hisavana/mediation/handler/DispatcherHandler;->b:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v7}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdRequestCount()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/4 v7, 0x1

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v8

    const-string v9, ",need number <= 0"

    const-string v10, " ,network codeSeat :"

    const-string v11, "*----> exist ad source:"

    if-nez v8, :cond_6

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/hisavana/common/bean/Network;

    invoke-virtual {v0, v12, v3}, Lcom/hisavana/mediation/handler/DispatcherHandler;->i(Lcom/hisavana/common/bean/Network;Z)Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/hisavana/mediation/handler/DispatcherHandler;->b()Lcom/hisavana/common/bean/AdCache;

    move-result-object v13

    iget-object v14, v0, Lcom/hisavana/mediation/handler/DispatcherHandler;->d:Ljava/lang/String;

    invoke-virtual {v12}, Lcom/hisavana/common/bean/Network;->getSource()Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v12}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object v7

    move-object/from16 p3, v8

    iget-object v8, v0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lbe/i;

    invoke-virtual {v8}, Lbe/i;->J()Z

    move-result v8

    invoke-virtual {v13, v14, v15, v7, v8}, Lcom/hisavana/common/bean/AdCache;->getAdNum(Ljava/lang/String;ILjava/lang/String;Z)I

    move-result v7

    invoke-virtual {v0, v12}, Lcom/hisavana/mediation/handler/DispatcherHandler;->h(Lcom/hisavana/common/bean/Network;)Z

    move-result v8

    sub-int v7, v6, v7

    if-gtz v7, :cond_5

    if-nez v8, :cond_5

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/hisavana/common/bean/Network;->getSource()Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    move-object/from16 v8, p3

    const/4 v7, 0x1

    goto :goto_1

    :cond_5
    iget-object v7, v0, Lcom/hisavana/mediation/handler/DispatcherHandler;->b:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v0, v1, v7, v12}, Lcom/hisavana/mediation/handler/DispatcherHandler;->d(Landroid/content/Context;Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;Lcom/hisavana/common/bean/Network;)Lcom/hisavana/common/interfacz/Iad;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v2, v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v8, 0x0

    :cond_7
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/hisavana/common/bean/Network;

    if-nez v12, :cond_8

    goto :goto_3

    :cond_8
    if-eqz v8, :cond_9

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v12

    const-string v13, "*----> exist higher ecpm ad in current waterfall."

    invoke-virtual {v12, v5, v13}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/hisavana/mediation/handler/DispatcherHandler;->b()Lcom/hisavana/common/bean/AdCache;

    move-result-object v8

    iget-object v13, v0, Lcom/hisavana/mediation/handler/DispatcherHandler;->d:Ljava/lang/String;

    invoke-virtual {v12}, Lcom/hisavana/common/bean/Network;->getSource()Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v12}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object v15

    iget-object v7, v0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lbe/i;

    invoke-virtual {v7}, Lbe/i;->J()Z

    move-result v7

    invoke-virtual {v8, v13, v14, v15, v7}, Lcom/hisavana/common/bean/AdCache;->getAdNum(Ljava/lang/String;ILjava/lang/String;Z)I

    move-result v7

    if-lez v7, :cond_a

    const/4 v8, 0x1

    goto :goto_4

    :cond_a
    const/4 v8, 0x0

    :goto_4
    invoke-virtual {v0, v12}, Lcom/hisavana/mediation/handler/DispatcherHandler;->h(Lcom/hisavana/common/bean/Network;)Z

    move-result v13

    sub-int v7, v6, v7

    if-gtz v7, :cond_b

    if-nez v13, :cond_b

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v7

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/hisavana/common/bean/Network;->getSource()Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v5, v12}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    invoke-virtual {v0, v12, v3}, Lcom/hisavana/mediation/handler/DispatcherHandler;->i(Lcom/hisavana/common/bean/Network;Z)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, v0, Lcom/hisavana/mediation/handler/DispatcherHandler;->b:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v0, v1, v7, v12}, Lcom/hisavana/mediation/handler/DispatcherHandler;->d(Landroid/content/Context;Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;Lcom/hisavana/common/bean/Network;)Lcom/hisavana/common/interfacz/Iad;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-virtual {v2, v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_c
    return-object v2
.end method

.method public g(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v1, "sort executer list"

    const-string v2, "LoadAdManager"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/hisavana/common/base/LogSwitch;->isDebug:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hisavana/common/interfacz/Iad;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/hisavana/common/interfacz/ICacheAd;->getNetwork()Lcom/hisavana/common/bean/Network;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Lcom/hisavana/common/interfacz/ICacheAd;->getNetwork()Lcom/hisavana/common/bean/Network;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hisavana/common/bean/Network;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "*before* sort executer list are: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Lcom/hisavana/mediation/handler/DispatcherHandler$2;

    invoke-direct {v1, p0}, Lcom/hisavana/mediation/handler/DispatcherHandler$2;-><init>(Lcom/hisavana/mediation/handler/DispatcherHandler;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    sget-boolean v0, Lcom/hisavana/common/base/LogSwitch;->isDebug:Z

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hisavana/common/interfacz/Iad;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/hisavana/common/interfacz/ICacheAd;->getNetwork()Lcom/hisavana/common/bean/Network;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Lcom/hisavana/common/interfacz/ICacheAd;->getNetwork()Lcom/hisavana/common/bean/Network;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hisavana/common/bean/Network;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*after* sort executer list are: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public final h(Lcom/hisavana/common/bean/Network;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/hisavana/common/bean/Network;->getAdt()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    invoke-virtual {p1}, Lcom/hisavana/common/bean/Network;->getSource()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/cloud/hisavana/sdk/manager/b;->a:Lcom/cloud/hisavana/sdk/manager/b;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/manager/b;->b()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/hisavana/mediation/handler/DispatcherHandler;->b()Lcom/hisavana/common/bean/AdCache;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    iget-object v3, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/hisavana/common/bean/Network;->getSource()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v4, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lbe/i;

    invoke-virtual {v4}, Lbe/i;->J()Z

    move-result v4

    invoke-virtual {v1, v3, p1, v4}, Lcom/hisavana/common/bean/AdCache;->getAdBySourceAndUnitID(Ljava/lang/String;IZ)Lcom/hisavana/common/interfacz/ICacheAd;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->isInternalAd()Z

    move-result p1

    if-eqz p1, :cond_2

    move v0, v2

    :cond_2
    :goto_0
    return v0
.end method

.method public final i(Lcom/hisavana/common/bean/Network;Z)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/hisavana/common/bean/Network;->getSource()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IronSource Do not preload  mLoadType = preload ---  network.getSource() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hisavana/common/bean/Network;->getSource()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "iron_source_log"

    invoke-virtual {p2, v1, p1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/hisavana/common/bean/Network;->getSource()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/16 v1, 0xe

    if-ne p2, v1, :cond_2

    invoke-virtual {p1}, Lcom/hisavana/common/bean/Network;->getAdt()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    const-string p2, "LoadAdManager"

    const-string v1, "MAX Do not preload"

    invoke-virtual {p1, p2, v1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public final j(Lcom/hisavana/common/interfacz/Iad;II)Z
    .locals 4

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*----> loadAd id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",EcpmPrice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getEcpmPrice()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ",AdSource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getAdSource()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LoadAdManager"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lbe/i;

    invoke-virtual {v0}, Lbe/i;->D()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/hisavana/common/interfacz/Iad;->setSupportFlag(I)V

    iget-object v0, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lbe/i;

    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getNetwork()Lcom/hisavana/common/bean/Network;

    move-result-object v1

    iget-object v3, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->b:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-static {v0, v1, p2, v3}, Lcom/hisavana/mediation/handler/DispatcherHandler;->a(Lbe/i;Lcom/hisavana/common/bean/Network;ILcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;)Landroid/os/Bundle;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/hisavana/common/interfacz/Iad;->setTrackingBundle(Landroid/os/Bundle;)V

    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-ne p2, v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-interface {p1, v0}, Lcom/hisavana/common/interfacz/Iad;->setOfflineAd(Z)V

    invoke-interface {p1, p2}, Lcom/hisavana/common/interfacz/ICacheAd;->setRequestType(I)V

    invoke-interface {p1, p3}, Lcom/hisavana/common/interfacz/Iad;->setRequestRound(I)V

    invoke-interface {p1, v3}, Lcom/hisavana/common/interfacz/Iad;->setLoadStatus(I)V

    const/4 p3, 0x2

    if-ne p2, p3, :cond_1

    move v1, v3

    :cond_1
    invoke-interface {p1, v1}, Lcom/hisavana/common/interfacz/ICacheAd;->setPreload(Z)V

    invoke-interface {p1}, Lcom/hisavana/common/interfacz/Iad;->loadAd()V

    sget-boolean p2, Lcom/hisavana/common/base/LogSwitch;->isDebug:Z

    if-eqz p2, :cond_2

    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getAdSource()I

    move-result p2

    invoke-static {p2}, Lcom/hisavana/common/constant/ComConstants;->transferSourceToStr(I)Ljava/lang/String;

    move-result-object p2

    sget p3, Lcom/hisavana/common/mock/RecordTestInfo;->LOG_CODE5:I

    invoke-static {p2, p3}, Lcom/hisavana/common/mock/RecordTestInfo;->LogMsg(Ljava/lang/String;I)V

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ad start load,adSource "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getAdSource()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ",id "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getNetwork()Lcom/hisavana/common/bean/Network;

    move-result-object p3

    if-nez p3, :cond_3

    const-string p1, ""

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getNetwork()Lcom/hisavana/common/bean/Network;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/hisavana/common/utils/MediaLogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return v3
.end method

.method public k(Lcom/hisavana/common/interfacz/Iad;IILcom/hisavana/common/bean/TInnerAdRequestBody;)Z
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/hisavana/mediation/handler/DispatcherHandler;->l(Lcom/hisavana/common/interfacz/Iad;IILcom/hisavana/common/bean/TInnerAdRequestBody;Z)Z

    move-result p1

    return p1
.end method

.method public l(Lcom/hisavana/common/interfacz/Iad;IILcom/hisavana/common/bean/TInnerAdRequestBody;Z)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-eqz p5, :cond_1

    invoke-interface {p1}, Lcom/hisavana/common/interfacz/Iad;->getLoadStatus()I

    move-result p5

    if-nez p5, :cond_5

    invoke-interface {p1, p4}, Lcom/hisavana/common/interfacz/Iad;->addRequestBody(Lcom/hisavana/common/bean/TInnerAdRequestBody;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/hisavana/mediation/handler/DispatcherHandler;->j(Lcom/hisavana/common/interfacz/Iad;II)Z

    move-result p1

    return p1

    :cond_1
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/Iad;->getLoadStatus()I

    move-result p5

    if-nez p5, :cond_2

    invoke-interface {p1, p4}, Lcom/hisavana/common/interfacz/Iad;->addRequestBody(Lcom/hisavana/common/bean/TInnerAdRequestBody;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/hisavana/mediation/handler/DispatcherHandler;->j(Lcom/hisavana/common/interfacz/Iad;II)Z

    move-result p1

    return p1

    :cond_2
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/Iad;->getLoadStatus()I

    move-result p2

    const/4 p3, 0x4

    if-ne p2, p3, :cond_5

    invoke-interface {p1, p4}, Lcom/hisavana/common/interfacz/Iad;->addRequestBody(Lcom/hisavana/common/bean/TInnerAdRequestBody;)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "*----> exist loading Ad id: "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getPlacementId()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ",bind context for it"

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p5, "LoadAdManager"

    invoke-virtual {p2, p5, p3}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/hisavana/common/interfacz/Iad;->setLoadStatus(I)V

    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getNetwork()Lcom/hisavana/common/bean/Network;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-virtual {p0}, Lcom/hisavana/mediation/handler/DispatcherHandler;->b()Lcom/hisavana/common/bean/AdCache;

    move-result-object v1

    iget-object v2, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->d:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/hisavana/common/bean/Network;->getSource()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p3}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object p3

    iget-object v4, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->e:Lbe/i;

    invoke-virtual {v4}, Lbe/i;->J()Z

    move-result v4

    invoke-virtual {v1, v2, v3, p3, v4}, Lcom/hisavana/common/bean/AdCache;->getAdNum(Ljava/lang/String;ILjava/lang/String;Z)I

    move-result p3

    if-lez p3, :cond_3

    invoke-virtual {p4}, Lcom/hisavana/common/bean/TInnerAdRequestBody;->getAdListener()Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-virtual {p4}, Lcom/hisavana/common/bean/TInnerAdRequestBody;->getAdListener()Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hisavana/common/interfacz/TInnerAdListener;->onLoad()V

    return p2

    :cond_3
    invoke-static {}, Lcom/hisavana/common/manager/RequestingAdManager;->getInstance()Lcom/hisavana/common/manager/RequestingAdManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/hisavana/common/manager/RequestingAdManager;->removeRequest(Lcom/hisavana/common/interfacz/Iad;)Z

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ad start load,adSource "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getAdSource()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ",id "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getNetwork()Lcom/hisavana/common/bean/Network;

    move-result-object p3

    if-nez p3, :cond_4

    const-string p1, ""

    goto :goto_0

    :cond_4
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getNetwork()Lcom/hisavana/common/bean/Network;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p5, p1}, Lcom/hisavana/common/utils/MediaLogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    return v0
.end method

.method public m(Ljava/util/List;)Z
    .locals 3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hisavana/common/interfacz/Iad;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/hisavana/common/interfacz/Iad;->getLoadStatus()I

    move-result v0

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    return v1
.end method

.method public final n()I
    .locals 2

    iget v0, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->c:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const v0, 0x7fffffff

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final p(Landroid/content/Context;Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;Lcom/hisavana/common/bean/Network;)Lcom/hisavana/common/interfacz/Iad;
    .locals 4

    invoke-virtual {p0}, Lcom/hisavana/mediation/handler/DispatcherHandler;->n()I

    move-result v0

    iget-object v1, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->b:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdRequestCount()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p2}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCacheTimeout()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p3, v0, p2}, Lcom/hisavana/mediation/handler/DispatcherHandler;->c(Landroid/content/Context;Lcom/hisavana/common/bean/Network;II)Lcom/hisavana/common/interfacz/Iad;

    move-result-object p1

    const-string p2, ",id "

    const-string v1, "LoadAdManager"

    if-nez p1, :cond_0

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create execute:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/hisavana/common/bean/Network;->getSource()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " fail"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "create executor,source "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/hisavana/common/bean/Network;->getSource()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/hisavana/common/utils/MediaLogUtil;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p3}, Lcom/hisavana/common/bean/Network;->getPrice()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-interface {p1, v2, v3}, Lcom/hisavana/common/interfacz/ICacheAd;->setEcpmPrice(D)V

    iget-object v2, p0, Lcom/hisavana/mediation/handler/DispatcherHandler;->d:Ljava/lang/String;

    invoke-interface {p1, v2}, Lcom/hisavana/common/interfacz/Iad;->setAdUnit(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add ad to list adSource:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getAdSource()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",network codeSeat:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " request num:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hisavana/common/mock/RecordTestInfo;->record(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add ad executor to list,adSource "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getAdSource()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/hisavana/common/utils/MediaLogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p1
.end method

.method public final q(Ljava/util/List;)V
    .locals 1

    new-instance v0, Lcom/hisavana/mediation/handler/DispatcherHandler$1;

    invoke-direct {v0, p0}, Lcom/hisavana/mediation/handler/DispatcherHandler$1;-><init>(Lcom/hisavana/mediation/handler/DispatcherHandler;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method
