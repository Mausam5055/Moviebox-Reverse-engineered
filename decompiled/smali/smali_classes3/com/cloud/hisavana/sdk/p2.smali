.class public Lcom/cloud/hisavana/sdk/p2;
.super Lcom/cloud/hisavana/sdk/l4;


# instance fields
.field private e:Lcom/cloud/hisavana/sdk/q3;

.field private f:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/l4;-><init>()V

    return-void
.end method

.method public static synthetic f(Lcom/cloud/hisavana/sdk/p2;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/p2;->n(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method private g(Ljava/util/List;)Ljava/util/List;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/p2;->e:Lcom/cloud/hisavana/sdk/q3;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/q3;->e()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {v2, v1}, Lcom/cloud/hisavana/sdk/v2;->c(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ExoPlayer unavailable, remove video ad: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdCreativeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "DefaultAdNode"

    invoke-virtual {v3, v4, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method private h(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/p2;->e:Lcom/cloud/hisavana/sdk/q3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/q3;->n()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->p(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    const-string v1, "s_default_status"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/cloud/hisavana/sdk/common/util/g0;->e(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;I)V

    if-eqz p1, :cond_0

    const-string v1, "s_default_failed_reason"

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/cloud/hisavana/sdk/common/util/g0;->e(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private i(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x3

    :try_start_0
    iput v0, p0, Lcom/cloud/hisavana/sdk/l4;->b:I

    invoke-static {}, La7/c;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "offline ad fetch failed, error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/p2;->j(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/p2;->h(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/l4;->a:Lcom/cloud/hisavana/sdk/l4$a;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "default_ad_status"

    invoke-static {v0, v1, p2}, Lcom/cloud/hisavana/sdk/common/util/g0;->g(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/l4;->a:Lcom/cloud/hisavana/sdk/l4$a;

    invoke-interface {p2, p1, v0}, Lcom/cloud/hisavana/sdk/l4$a;->a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method private j(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, La7/c;->p()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/p2;->e:Lcom/cloud/hisavana/sdk/q3;

    if-eqz p1, :cond_2

    const-string p1, ", codeSeatId="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/p2;->e:Lcom/cloud/hisavana/sdk/q3;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/q3;->i()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    const-string v1, "DefaultAdNode"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private k(Ljava/util/List;Ljava/lang/String;)V
    .locals 5

    const-string v0, "\n"

    const/4 v1, 0x3

    iput v1, p0, Lcom/cloud/hisavana/sdk/l4;->b:I

    invoke-static {}, La7/c;->p()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "default ad fetch succeed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v4, "adCreativeId: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdCreativeId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\uff0cis_offline_ad: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isOfflineAd()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", source:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/p2;->j(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/p2;->m()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/l4;->a:Lcom/cloud/hisavana/sdk/l4$a;

    if-eqz v0, :cond_6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "default_ad_status"

    invoke-static {v0, v1, p2}, Lcom/cloud/hisavana/sdk/common/util/g0;->g(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/cloud/hisavana/sdk/d4;->a:Lcom/cloud/hisavana/sdk/d4;

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/d4;->b()Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/p2;->g(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/l4;->a:Lcom/cloud/hisavana/sdk/l4$a;

    invoke-interface {p2, p1, v0}, Lcom/cloud/hisavana/sdk/l4$a;->b(Ljava/util/List;Landroid/os/Bundle;)V

    goto :goto_3

    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/l4;->a:Lcom/cloud/hisavana/sdk/l4$a;

    sget-object p2, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_AD_DEFAULT_DATA_IS_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-interface {p1, p2, v0}, Lcom/cloud/hisavana/sdk/l4$a;->a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    :cond_6
    :goto_3
    return-void
.end method

.method private l(Lcom/cloud/hisavana/sdk/q3;)Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;
    .locals 3

    new-instance v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;-><init>()V

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/q3;->e()I

    move-result v1

    iput v1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->adt:I

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/q3;->i()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->pmid:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/q3;->a()I

    move-result v1

    iput v1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->mAdCount:I

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/q3;->j()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->requestId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/q3;->k()I

    move-result v1

    iput v1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->requestType:I

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/q3;->n()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->triggerId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/q3;->l()Lb7/b;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/q3;->l()Lb7/b;

    move-result-object v1

    invoke-virtual {v1}, Lb7/b;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->gameName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/q3;->l()Lb7/b;

    move-result-object v1

    invoke-virtual {v1}, Lb7/b;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->gameScene:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/q3;->l()Lb7/b;

    move-result-object v1

    invoke-virtual {v1}, Lb7/b;->a()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->extInfo:Ljava/util/Map;

    :cond_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/q3;->y()Z

    move-result v1

    iput-boolean v1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->supportEw:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->requestTs:Ljava/lang/Long;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/q3;->q()Z

    move-result v1

    iput-boolean v1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->isAutoPlayVideoAd:Z

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/q3;->f()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->isOfflineAdEnable()Z

    move-result v1

    iput-boolean v1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->offlineAdEnable:Z

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/q3;->a()I

    move-result v1

    iput v1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->cacheAdCount:I

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/q3;->o()I

    move-result p1

    iput p1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->mTriggerNetState:I

    return-object v0
.end method

.method private m()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/p2;->e:Lcom/cloud/hisavana/sdk/q3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/q3;->n()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->p(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    const-string v1, "s_default_status"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/cloud/hisavana/sdk/common/util/g0;->e(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private synthetic n(Ljava/util/List;Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getFirstPrice()Ljava/lang/Double;

    move-result-object v2

    invoke-static {v2}, Lcom/cloud/hisavana/sdk/common/util/o0;->b(Ljava/lang/Double;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->setFirstPrice(Ljava/lang/Double;)V

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/p2;->f:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setImpBeanRequest(Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/p2;->k(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_AD_DEFAULT_DATA_IS_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/p2;->i(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Ljava/lang/String;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/q3;)V
    .locals 9

    invoke-static {}, La7/c;->p()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/cloud/sdk/commonutil/R$string;->ssp_log_msg13:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/cloud/sdk/commonutil/util/q;->b(Ljava/lang/String;I)V

    const-string v0, "start load default ad."

    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/p2;->j(Ljava/lang/String;)V

    :cond_0
    iput v1, p0, Lcom/cloud/hisavana/sdk/l4;->b:I

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/p2;->e:Lcom/cloud/hisavana/sdk/q3;

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/p2;->l(Lcom/cloud/hisavana/sdk/q3;)Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/p2;->f:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/p2;->e:Lcom/cloud/hisavana/sdk/q3;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/q3;->n()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    const-string v2, "1"

    invoke-virtual {v1, v0, v2}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->z(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->p(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    :goto_0
    move-object v7, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/q3;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/q3;->e()I

    move-result v2

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/q3;->u()Z

    move-result v5

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/p2;->e:Lcom/cloud/hisavana/sdk/q3;

    if-eqz p1, :cond_2

    sget-object v1, Lcom/cloud/hisavana/sdk/Z;->a:Lcom/cloud/hisavana/sdk/Z;

    iget v4, p0, Lcom/cloud/hisavana/sdk/l4;->d:I

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/q3;->o()I

    move-result v6

    new-instance v8, Lcom/cloud/hisavana/sdk/o2;

    invoke-direct {v8, p0}, Lcom/cloud/hisavana/sdk/o2;-><init>(Lcom/cloud/hisavana/sdk/p2;)V

    invoke-virtual/range {v1 .. v8}, Lcom/cloud/hisavana/sdk/Z;->j(ILjava/lang/String;IZILjava/util/concurrent/ConcurrentHashMap;Lcom/cloud/hisavana/sdk/t0;)V

    :cond_2
    return-void
.end method
