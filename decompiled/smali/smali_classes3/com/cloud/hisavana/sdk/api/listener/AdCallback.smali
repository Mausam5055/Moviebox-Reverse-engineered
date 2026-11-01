.class public abstract Lcom/cloud/hisavana/sdk/api/listener/AdCallback;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/cloud/hisavana/sdk/api/listener/d;Lcom/cloud/hisavana/sdk/api/adx/TBannerView;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->i(Lcom/cloud/hisavana/sdk/api/listener/d;Lcom/cloud/hisavana/sdk/api/adx/TBannerView;)V

    return-void
.end method

.method public static synthetic b(Lcom/cloud/hisavana/sdk/api/listener/d;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->j(Lcom/cloud/hisavana/sdk/api/listener/d;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    return-void
.end method

.method public static synthetic c(Lcom/cloud/hisavana/sdk/api/listener/d;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->h(Lcom/cloud/hisavana/sdk/api/listener/d;)V

    return-void
.end method

.method private static synthetic h(Lcom/cloud/hisavana/sdk/api/listener/d;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/api/listener/d;->onAdClosed()V

    :cond_0
    return-void
.end method

.method private static synthetic i(Lcom/cloud/hisavana/sdk/api/listener/d;Lcom/cloud/hisavana/sdk/api/adx/TBannerView;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/api/listener/d;->onAdClosed(Lcom/cloud/hisavana/sdk/api/adx/TBannerView;)V

    :cond_0
    return-void
.end method

.method private static synthetic j(Lcom/cloud/hisavana/sdk/api/listener/d;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/api/listener/d;->onAdClosed(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public A()V
    .locals 1

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->d()Lcom/cloud/hisavana/sdk/api/listener/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/listener/d;->onRewarded()V

    :cond_0
    return-void
.end method

.method public B()V
    .locals 1

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->f()Lcom/cloud/hisavana/sdk/api/listener/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/hisavana/sdk/api/listener/g;->onClick()V

    :cond_0
    return-void
.end method

.method public C()V
    .locals 1

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->f()Lcom/cloud/hisavana/sdk/api/listener/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/hisavana/sdk/api/listener/g;->a()V

    :cond_0
    return-void
.end method

.method public D(Lcom/cloud/hisavana/sdk/G;)V
    .locals 0

    return-void
.end method

.method public abstract d()Lcom/cloud/hisavana/sdk/api/listener/d;
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public f()Lcom/cloud/hisavana/sdk/api/listener/g;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract g()Ljava/lang/String;
.end method

.method public k(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->l(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/AdImage;)V

    return-void
.end method

.method public l(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/AdImage;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAdActivate --> packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ssp"

    invoke-virtual {v1, v3, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->d()Lcom/cloud/hisavana/sdk/api/listener/d;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    new-instance v2, Lcom/cloud/hisavana/sdk/common/bean/AdActiveInfo;

    invoke-direct {v2}, Lcom/cloud/hisavana/sdk/common/bean/AdActiveInfo;-><init>()V

    invoke-virtual {v2, v0}, Lcom/cloud/hisavana/sdk/common/bean/AdActiveInfo;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getFirstPrice()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/cloud/hisavana/sdk/common/bean/AdActiveInfo;->setEcpm(Ljava/lang/Double;)V

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->getImgUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/cloud/hisavana/sdk/common/bean/AdActiveInfo;->setImageUrl(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/api/listener/d;->onAdActivate(Lcom/cloud/hisavana/sdk/common/bean/AdActiveInfo;)V

    return-void
.end method

.method public m()V
    .locals 1

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->d()Lcom/cloud/hisavana/sdk/api/listener/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/listener/d;->onAdClicked()V

    :cond_0
    return-void
.end method

.method public n(Lcom/cloud/hisavana/sdk/api/adx/TBannerView;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 2

    invoke-static {p2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->e0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->d()Lcom/cloud/hisavana/sdk/api/listener/d;

    move-result-object p2

    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v1, Lcom/cloud/hisavana/sdk/api/listener/b;

    invoke-direct {v1, p2, p1}, Lcom/cloud/hisavana/sdk/api/listener/b;-><init>(Lcom/cloud/hisavana/sdk/api/listener/d;Lcom/cloud/hisavana/sdk/api/adx/TBannerView;)V

    invoke-virtual {v0, v1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->h(Ljava/lang/Runnable;)V

    return-void
.end method

.method public o(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 2

    invoke-static {p2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->e0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->d()Lcom/cloud/hisavana/sdk/api/listener/d;

    move-result-object p2

    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v1, Lcom/cloud/hisavana/sdk/api/listener/c;

    invoke-direct {v1, p2, p1}, Lcom/cloud/hisavana/sdk/api/listener/c;-><init>(Lcom/cloud/hisavana/sdk/api/listener/d;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    invoke-virtual {v0, v1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->h(Ljava/lang/Runnable;)V

    return-void
.end method

.method public p(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 2

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->e0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->d()Lcom/cloud/hisavana/sdk/api/listener/d;

    move-result-object p1

    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v1, Lcom/cloud/hisavana/sdk/api/listener/a;

    invoke-direct {v1, p1}, Lcom/cloud/hisavana/sdk/api/listener/a;-><init>(Lcom/cloud/hisavana/sdk/api/listener/d;)V

    invoke-virtual {v0, v1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->h(Ljava/lang/Runnable;)V

    return-void
.end method

.method public q(Lcom/cloud/hisavana/sdk/G;Landroid/os/Bundle;)V
    .locals 12

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->d()Lcom/cloud/hisavana/sdk/api/listener/d;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x3

    :goto_0
    move v11, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :goto_1
    :try_start_0
    sget-object v2, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/G;->p()Lcom/cloud/hisavana/sdk/q3;

    move-result-object v4

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/G;->s()Ljava/util/List;

    move-result-object v5

    const-string p1, "offline_ad_status"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string p1, "default_ad_status"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string p1, "cache_offline_ad_count"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string p1, "time_consuming"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    const/4 v3, 0x0

    invoke-virtual/range {v2 .. v11}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->A(ILcom/cloud/hisavana/sdk/q3;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;IJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/listener/d;->onAdLoaded()V

    :cond_1
    return-void
.end method

.method public r(Lcom/cloud/hisavana/sdk/G;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 15

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->d()Lcom/cloud/hisavana/sdk/api/listener/d;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    const/4 v4, 0x3

    move v14, v4

    goto :goto_0

    :cond_0
    move v14, v3

    :goto_0
    :try_start_0
    const-string v4, "s_recommend_req"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v6, "time_consuming"

    if-ne v4, v3, :cond_2

    :try_start_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_1

    :try_start_2
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getRecommendInfos()Ljava/util/List;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    :cond_1
    :try_start_3
    const-string v3, "s_rec_temp_data"

    invoke-virtual {v1, v3, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    sget-object v7, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    invoke-virtual/range {p1 .. p1}, Lcom/cloud/hisavana/sdk/G;->p()Lcom/cloud/hisavana/sdk/q3;

    move-result-object v8

    invoke-virtual {v1, v6}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual/range {v7 .. v12}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->G(Lcom/cloud/hisavana/sdk/q3;Ljava/util/List;JZ)V

    goto :goto_1

    :cond_2
    sget-object v5, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    invoke-virtual/range {p1 .. p1}, Lcom/cloud/hisavana/sdk/G;->p()Lcom/cloud/hisavana/sdk/q3;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/cloud/hisavana/sdk/G;->s()Ljava/util/List;

    move-result-object v8

    const-string v3, "offline_ad_status"

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v3, "default_ad_status"

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v3, "cache_offline_ad_count"

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v1, v6}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    const/4 v6, 0x0

    invoke-virtual/range {v5 .. v14}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->A(ILcom/cloud/hisavana/sdk/q3;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;IJI)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {v2, v0}, Lcom/cloud/hisavana/sdk/api/listener/d;->onAdLoaded(Ljava/util/List;)V

    :cond_3
    return-void
.end method

.method public s()V
    .locals 1

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->d()Lcom/cloud/hisavana/sdk/api/listener/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/listener/d;->onAdShow()V

    :cond_0
    return-void
.end method

.method public t(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Lcom/cloud/hisavana/sdk/G;)V
    .locals 5

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->d()Lcom/cloud/hisavana/sdk/api/listener/d;

    move-result-object v0

    sget-object v1, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, p2}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->m(Lcom/cloud/hisavana/sdk/G;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object p2

    invoke-virtual {v1, v2, v3, v4, p2}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->M(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/api/listener/d;->onAdShowError(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    :cond_0
    return-void
.end method

.method public u(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Lcom/cloud/hisavana/sdk/G;Landroid/os/Bundle;)V
    .locals 6

    sget-object v0, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p2}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->m(Lcom/cloud/hisavana/sdk/G;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v4

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->N(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;)V

    return-void
.end method

.method public v(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Lcom/cloud/hisavana/sdk/G;Landroid/os/Bundle;)V
    .locals 14

    move-object/from16 v0, p3

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->d()Lcom/cloud/hisavana/sdk/api/listener/d;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x3

    :goto_0
    move v12, v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    :goto_1
    sget-object v3, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Lcom/cloud/hisavana/sdk/G;->p()Lcom/cloud/hisavana/sdk/q3;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/cloud/hisavana/sdk/G;->s()Ljava/util/List;

    move-result-object v6

    const-string v2, "offline_ad_status"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v2, "default_ad_status"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v2, "cache_offline_ad_count"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v9

    const-string v2, "time_consuming"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    const/4 v13, 0x1

    invoke-virtual/range {v3 .. v13}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->B(ILcom/cloud/hisavana/sdk/q3;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;IJIZ)V

    if-eqz v1, :cond_1

    move-object v0, p1

    invoke-virtual {v1, p1}, Lcom/cloud/hisavana/sdk/api/listener/d;->onBiddingFailed(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    :cond_1
    return-void
.end method

.method public w(Lcom/cloud/hisavana/sdk/data/bean/response/BidInfo;Lcom/cloud/hisavana/sdk/G;Landroid/os/Bundle;)V
    .locals 14

    move-object/from16 v0, p3

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->d()Lcom/cloud/hisavana/sdk/api/listener/d;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x3

    :goto_0
    move v12, v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    :goto_1
    :try_start_0
    sget-object v3, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    invoke-virtual/range {p2 .. p2}, Lcom/cloud/hisavana/sdk/G;->p()Lcom/cloud/hisavana/sdk/q3;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/cloud/hisavana/sdk/G;->s()Ljava/util/List;

    move-result-object v6

    const-string v2, "offline_ad_status"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v2, "default_ad_status"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v2, "cache_offline_ad_count"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v9

    const-string v2, "time_consuming"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    const/4 v13, 0x1

    const/4 v4, 0x0

    invoke-virtual/range {v3 .. v13}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->B(ILcom/cloud/hisavana/sdk/q3;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;IJIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    if-eqz v1, :cond_1

    move-object v0, p1

    invoke-virtual {v1, p1}, Lcom/cloud/hisavana/sdk/api/listener/d;->onBiddingSuccess(Lcom/cloud/hisavana/sdk/data/bean/response/BidInfo;)V

    :cond_1
    return-void
.end method

.method public x(Lcom/cloud/hisavana/sdk/G;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V
    .locals 12

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->d()Lcom/cloud/hisavana/sdk/api/listener/d;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x3

    :goto_0
    move v11, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :goto_1
    sget-object v2, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    move-result v3

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/G;->p()Lcom/cloud/hisavana/sdk/q3;

    move-result-object v4

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/G;->s()Ljava/util/List;

    move-result-object v5

    const-string p1, "offline_ad_status"

    invoke-virtual {p3, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string p1, "default_ad_status"

    invoke-virtual {p3, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string p1, "cache_offline_ad_count"

    invoke-virtual {p3, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string p1, "time_consuming"

    invoke-virtual {p3, p1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-virtual/range {v2 .. v11}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->A(ILcom/cloud/hisavana/sdk/q3;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;IJI)V

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Lcom/cloud/hisavana/sdk/api/listener/d;->onError(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    :cond_1
    return-void
.end method

.method public y(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 1

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->d()Lcom/cloud/hisavana/sdk/api/listener/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/api/listener/d;->onNativeAdClick(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getImage()Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->l(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/AdImage;)V

    :cond_0
    return-void
.end method

.method public z(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 3

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->d()Lcom/cloud/hisavana/sdk/api/listener/d;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v2, Lcom/cloud/hisavana/sdk/api/listener/AdCallback$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback$1;-><init>(Lcom/cloud/hisavana/sdk/api/listener/AdCallback;Lcom/cloud/hisavana/sdk/api/listener/d;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    invoke-virtual {v1, v2}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->h(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
